import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:historias_encantadas/providers/locale_provider.dart';
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

  @override
  void initState() {
    super.initState();
    _flutterTts = FlutterTts();
    _flutterTts.setSpeechRate(0.35);
    _flutterTts.setPitch(1.2);
    _flutterTts.setVolume(1);
    _flutterTts.awaitSpeakCompletion(true);

    _audioPlayer = AudioPlayer();
    _audioPlayer.setPlayerMode(PlayerMode.lowLatency);
    _audioPlayer.setReleaseMode(ReleaseMode.stop);

    _flutterTts.setCompletionHandler(() {
      if (mounted) {
        setState(() => _isPlaying = false);
      }
    });

    _flutterTts.setErrorHandler((msg) {
      if (mounted) {
        setState(() => _isPlaying = false);
      }
    });

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
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _flutterTts.stop();
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _stopAudio() async {
    await _audioPlayer.stop();
    await _flutterTts.stop();
    if (mounted) setState(() => _isPlaying = false);
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

  void _showError(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  Future<void> _playCurrentPageAudio() async {
    final originalText = widget.storyConfig.pages[_currentPage].text;

    if (_isPlaying) {
      await _stopAudio();
      return;
    }

    final pageNumber = _currentPage + 1;
    final languageCode = context.read<LocaleProvider>().locale.languageCode;

    // ▶️ MARCA COMO TOCANDO ANTES
    setState(() => _isPlaying = true);

    // 🇧🇷 PORTUGUÊS → áudio local
    if (languageCode == 'pt') {
      try {
        final audioPath = widget.storyConfig.getAudioPath(pageNumber);
        await _audioPlayer.play(AssetSource(audioPath));
      } catch (e) {
        _showError('Erro ao tocar áudio local');
        setState(() => _isPlaying = false);
      }
      return;
    }

    // 🌍 OUTROS IDIOMAS → IA + TTS
    try {
      final translatedText = await _translateText(originalText, languageCode);
      await _flutterTts.setLanguage(_ttsLocaleFromLang(languageCode));

      final preparedText = _prepareTextForTts(translatedText);
      await _flutterTts.speak(preparedText);
    } catch (e) {
      _showError('Erro ao gerar narração');
      setState(() => _isPlaying = false);
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

  // void _gotToStart() {
  //   if (_currentPage == widget.storyConfig.pages.length) {
  //     print("paginas no total: ${widget.storyConfig.pages.length}");
  //     print('pagina atual ${widget.storyConfig.pages}');
  //     print(_pageController.initialPage);
  //     _pageController.initialPage;
  //   }
  // }

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
        title: Text(
          widget.storyConfig.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: widget.storyConfig.primaryColor,
        elevation: 4,
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
