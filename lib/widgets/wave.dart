import 'package:flutter/material.dart';

class WaveTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, 40);

    path.quadraticBezierTo(size.width * 0.25, 0, size.width * 0.5, 30);

    path.quadraticBezierTo(size.width * 0.75, 60, size.width, 30);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
