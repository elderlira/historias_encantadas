import 'package:flutter/material.dart';

Widget simpleImplementText(
  double pageSize,
  String? originalText,
  int fontSizeIpad,
  int fontSizeIphone,
  Color color,
) {
  return Text(
    originalText!,
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: (pageSize >= 600 ? fontSizeIpad : fontSizeIphone).toDouble(),
      color: color,
      fontWeight: FontWeight.bold,
    ),
  );
}
