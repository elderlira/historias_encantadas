import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

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

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.setPlayerMode(PlayerMode.lowLatency);
    _audioPlayer.setReleaseMode(ReleaseMode.stop);

    _pageController.addListener(() {
      final newPage = _pageController.page?.round() ?? 0;
      if (newPage != _currentPage) {
        _stopAudio();
        setState(() => _currentPage = newPage);
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
    _audioPlayer.dispose();
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _stopAudio() async {
    await _audioPlayer.stop();
    if (mounted) setState(() => _isPlaying = false);
  }

  Future<void> _playCurrentPageAudio() async {
    if (_isPlaying) {
      await _audioPlayer.stop();
      setState(() => _isPlaying = false);
      return;
    }

    final pageNumber = _currentPage + 1;
    final audioPath = widget.storyConfig.getAudioPath(pageNumber);

    try {
      await _audioPlayer.play(AssetSource(audioPath));
      setState(() => _isPlaying = true);
      print("Áudio tocando: $audioPath");
    } catch (e) {
      print("ERRO ao tocar áudio: $e");
      print("Caminho tentado: $audioPath");

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Erro ao tocar áudio da página $pageNumber"),
            backgroundColor: Colors.red,
          ),
        );
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
                : null,
            backgroundColor: widget.storyConfig.primaryColor,
            buttonColor: widget.storyConfig.accentColor,
          ),
        ],
      ),
    );
  }
}
