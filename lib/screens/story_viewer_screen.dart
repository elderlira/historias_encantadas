import 'dart:async';
import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:historias_encantadas/providers/locale_provider.dart';
import 'package:historias_encantadas/widgets/title_cartoon.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../apikey.dart';
import '../models/story_config.dart';
import '../widgets/navigation_controls.dart';
import '../widgets/story_page_widget.dart';

class StoryViewerScreen extends StatefulWidget {
  final StoryConfig storyConfig;

  const StoryViewerScreen({super.key, required this.storyConfig});

  @override
  State<StoryViewerScreen> createState() => _StoryViewerScreenState();
}

class _StoryViewerScreenState extends State<StoryViewerScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _isPlaying = false;
  late AudioPlayer _audioPlayer;
  static const String groqApiKey = grok;
  late FlutterTts _flutterTts;
  Timer? _statusCheckTimer;
  bool _ttsIsActive = false;

  String _prepareTextForTts(String text) {
    return text
        .replaceAll('.', '.\n\n')
        .replaceAll('!', '!\n\n')
        .replaceAll('?', '?\n\n')
        .replaceAll(',', ',\n')
        .replaceAll(';', ';\n')
        .replaceAll(':', ':\n');
  }

  String _ttsLocaleFromLang(String langCode) {
    switch (langCode) {
      case 'en':
        return 'en-US';
      case 'es':
        return 'es-ES';
      case 'fr':
        return 'fr-FR';
      case 'zh':
      case 'zh-CN':
        return 'zh-CN';
      case 'zh-TW':
        return 'zh-TW';
      default:
        return 'en-US';
    }
  }

  Duration _estimateTtsDuration(String text) {
    final wordCount = text.split(RegExp(r'\s+')).length;
    // Calcula duração baseada em palavras por minuto
    final seconds = (wordCount * 0.55).ceil();
    return Duration(seconds: seconds);
  }

  /// Inicia monitoramento ativo do TTS com base em tempo estimado
  void _startTtsMonitoring(String text) {
    _statusCheckTimer?.cancel();
    _ttsIsActive = true;

    final estimatedDuration = _estimateTtsDuration(text);

    _statusCheckTimer = Timer(estimatedDuration, () {
      _ttsIsActive = false;

      if (mounted) {
        setState(() {
          _isPlaying = false;
        });

        // Força rebuild adicional após 100ms
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted) {
            setState(() {});
          }
        });
      }

      _statusCheckTimer?.cancel();
      _statusCheckTimer = null;
    });
  }

  void _stopMonitoring() {
    _statusCheckTimer?.cancel();
    _statusCheckTimer = null;
    _ttsIsActive = false;
  }

  @override
  void initState() {
    super.initState();

    _flutterTts = FlutterTts();
    _flutterTts.setSpeechRate(0.35);
    _flutterTts.setPitch(1.2);
    _flutterTts.setVolume(1.0);

    _flutterTts.setCompletionHandler(() {
      _stopMonitoring();

      if (mounted) {
        setState(() {
          _isPlaying = false;
          _ttsIsActive = false;
        });

        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted) {
            setState(() {});
          }
        });
      }
    });

    _flutterTts.setErrorHandler((msg) {
      print('TTS: Erro - $msg');
      _stopMonitoring();
      if (mounted) {
        setState(() {
          _isPlaying = false;
          _ttsIsActive = false;
        });
      }
    });

    _audioPlayer = AudioPlayer();
    _audioPlayer.setReleaseMode(ReleaseMode.stop);

    _pageController.addListener(() {
      final newPage = _pageController.page?.round() ?? 0;
      if (newPage != _currentPage) {
        _stopAudio();
        setState(() => _currentPage = newPage);
      }
    });

    _audioPlayer.onPlayerComplete.listen((event) {
      if (mounted) {
        setState(() => _isPlaying = false);
      }
    });

    _audioPlayer.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.completed || state == PlayerState.stopped) {
        if (mounted) {
          setState(() => _isPlaying = false);
        }
      }
    });
  }

  @override
  void dispose() {
    _stopMonitoring();
    _audioPlayer.dispose();
    _flutterTts.stop();
    _pageController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  Future<void> _stopAudio() async {
    _stopMonitoring();

    await _audioPlayer.stop();
    await _flutterTts.stop();

    if (mounted) {
      setState(() {
        _isPlaying = false;
        _ttsIsActive = false;
      });
    }
  }

  Future<String> _translateText(
    String originalText,
    String targetLanguage,
  ) async {
    try {
      final response = await http.post(
        Uri.parse('https://api.groq.com/openai/v1/chat/completions'),
        headers: {
          'Authorization': 'Bearer $groqApiKey',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'model': 'llama-3.1-70b-versatile',
          'messages': [
            {
              'role': 'system',
              'content':
                  'Traduza o texto para $targetLanguage de forma natural, '
                  'com tom alegre e infantil para crianças. '
                  'Preserve nomes próprios.',
            },
            {'role': 'user', 'content': originalText},
          ],
          'max_tokens': 300,
          'temperature': 0.3,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['choices'][0]['message']['content'].trim();
      }
    } catch (e) {
      print('Erro na tradução: $e');
    }

    return originalText;
  }

  Future<void> _playCurrentPageAudio() async {
    final originalText = widget.storyConfig.pages[_currentPage].text;

    if (_isPlaying) {
      await _stopAudio();
      return;
    }

    final languageCode = context.read<LocaleProvider>().locale.languageCode;

    if (languageCode == 'pt') {
      try {
        setState(() => _isPlaying = true);

        final audioPath = widget.storyConfig.getAudioPath(_currentPage + 1);
        await _audioPlayer.play(AssetSource(audioPath));
      } catch (e) {
        print('Erro ao reproduzir áudio: $e');
        if (mounted) {
          setState(() => _isPlaying = false);
        }
      }
      return;
    }

    try {
      setState(() => _isPlaying = true);

      final translatedText = await _translateText(originalText, languageCode);
      await _flutterTts.setLanguage(_ttsLocaleFromLang(languageCode));

      final preparedText = _prepareTextForTts(translatedText);

      await _flutterTts.speak(preparedText);

      _startTtsMonitoring(preparedText);
    } catch (e) {
      print('Erro no TTS: $e');
      if (mounted) {
        setState(() {
          _isPlaying = false;
          _ttsIsActive = false;
        });
      }
    }
  }

  void _goToNextPage() {
    if (_currentPage < widget.storyConfig.pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToStart() async {
    await _stopAudio();

    _pageController.animateToPage(
      0,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );

    setState(() {
      _currentPage = 0;
    });
  }

  void _goToPreviousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleCartoon(text: widget.storyConfig.title, fontSize: 16),
        // Text(
        //   widget.storyConfig.title,
        //   style: const TextStyle(
        //     fontWeight: FontWeight.bold,
        //     color: Colors.white,
        //   ),
        // ),
        // backgroundColor: widget.storyConfig.primaryColor,
        backgroundColor: Colors.transparent,
        elevation: 4,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                widget.storyConfig.primaryColor,
                widget.storyConfig.secondGradient,
                widget.storyConfig.thirdGradient,
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: widget.storyConfig.pages.length,
              itemBuilder: (context, index) {
                final page = widget.storyConfig.pages[index];
                return StoryPageWidget(
                  page: page,
                  isPlaying: index == _currentPage && _isPlaying,
                  onPlay: index == _currentPage ? _playCurrentPageAudio : null,
                  imagePath: widget.storyConfig.getImagePath(page.pageNumber),
                  accentColor: widget.storyConfig.accentColor,
                );
              },
            ),
          ),
          NavigationControls(
            currentPage: _currentPage,
            totalPages: widget.storyConfig.pages.length,
            onPrevious: _currentPage > 0 ? _goToPreviousPage : null,
            onNext: _currentPage < widget.storyConfig.pages.length - 1
                ? _goToNextPage
                : _goToStart,
            backgroundColor: widget.storyConfig.primaryColor,
            buttonColor: widget.storyConfig.accentColor,
          ),
        ],
      ),
    );
  }
}
