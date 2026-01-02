import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LanguageFlag extends StatelessWidget {
  final String languageCode;
  final String countryCode;
  final String selectedLang;
  final VoidCallback onTap;

  const LanguageFlag({
    super.key,
    required this.languageCode,
    required this.countryCode,
    required this.selectedLang,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = languageCode == selectedLang;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.purple : Colors.transparent,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: SvgPicture.asset(
          'assets/flags/$countryCode.svg',
          width: 48,
          height: 40,
        ),
      ),
    );
  }
}
