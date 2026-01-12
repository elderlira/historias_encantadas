import 'package:flutter/material.dart';

class TitleCartoon extends StatelessWidget {
  final String text;

  const TitleCartoon({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        /// CONTORNO (stroke)
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Baloo2',
            fontSize: 34,
            fontWeight: FontWeight.w800,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 6
              ..color = const Color(0xFFE96A1A), // laranja do contorno
          ),
        ),

        /// TEXTO PRINCIPAL
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'Baloo2',
            fontSize: 34,
            fontWeight: FontWeight.w800,
            color: Color(0xFFFFF1B5), // amarelo claro
            shadows: [
              Shadow(
                offset: Offset(0, 4),
                blurRadius: 6,
                color: Colors.black26,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
