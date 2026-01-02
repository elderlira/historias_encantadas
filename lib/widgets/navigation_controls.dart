import 'package:flutter/material.dart';

class NavigationControls extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final VoidCallback? onPrevious;
  final VoidCallback? onNext;
  final Color backgroundColor;
  final Color buttonColor;

  const NavigationControls({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.backgroundColor,
    required this.buttonColor,
    this.onPrevious,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: backgroundColor.withValues(alpha: 0.2),
        border: Border(
          top: BorderSide(
            color: backgroundColor.withValues(alpha: 0.5),
            width: 2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavButton(
            icon: Icons.arrow_back_ios_new,
            label: "Anterior",
            onPressed: onPrevious,
          ),
          Text(
            "Página ${currentPage + 1} de $totalPages",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: buttonColor,
            ),
          ),
          _buildNavButton(
            icon: Icons.arrow_forward_ios,
            label: currentPage == totalPages - 1 ? "Início" : "Próxima",
            onPressed: onNext,
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton({
    required IconData icon,
    required String label,
    required VoidCallback? onPressed,
  }) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: onPressed != null ? buttonColor : Colors.grey),
      label: Text(
        label,
        style: TextStyle(
          color: onPressed != null ? buttonColor : Colors.grey,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        backgroundColor: onPressed != null
            ? Colors.white
            : backgroundColor.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: onPressed != null ? 3 : 0,
      ),
    );
  }
}
