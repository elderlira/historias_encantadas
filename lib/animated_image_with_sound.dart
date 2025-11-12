import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AnimatedImageWithSound extends StatefulWidget {
  final String imagePath;
  final String? audioPath;
  final double initialScale;
  final double finalScale;
  final Duration duration;

  const AnimatedImageWithSound({
    super.key,
    required this.imagePath,
    this.audioPath,
    this.initialScale = 0.6,
    this.finalScale = 1.2,
    this.duration = const Duration(seconds: 6),
  });

  @override
  State<AnimatedImageWithSound> createState() => _AnimatedImageWithSoundState();
}

class _AnimatedImageWithSoundState extends State<AnimatedImageWithSound>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration);
    _scaleAnimation = Tween<double>(
      begin: widget.initialScale,
      end: widget.finalScale,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller.forward();

    _playSound();
  }

  Future<void> _playSound() async {
    if (widget.audioPath != null && widget.audioPath!.isNotEmpty) {
      await _audioPlayer.play(AssetSource(widget.audioPath!));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return FadeTransition(
      opacity: _controller,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            widget.imagePath,
            fit: BoxFit.cover,
            width: screenWidth - 10,
          ),
        ),
      ),
    );
  }
}
