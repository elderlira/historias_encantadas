import 'package:flutter/material.dart';

class WavePainter extends CustomPainter {
  final Color color;

  WavePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();

    // Começa do canto superior esquerdo
    path.moveTo(0, 40);

    // Primeira curva da onda
    path.quadraticBezierTo(size.width * 0.25, 0, size.width * 0.5, 30);

    // Segunda curva da onda
    path.quadraticBezierTo(size.width * 0.75, 60, size.width, 30);

    // Completa o retângulo
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
