import 'package:flutter/material.dart';

import 'animated_image_with_sound.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: AnimatedImageWithSound(
          imagePath: 'assets/images/capa.jpg',
          audioPath: 'sounds/abelha.mp3',
          initialScale: 0.6,
          finalScale: 1.0,
          duration: const Duration(seconds: 6),
        ),
      ),
    );
  }
}
