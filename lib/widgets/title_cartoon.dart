import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleCartoon extends StatelessWidget {
  final String text;
  final double fontSize;

  const TitleCartoon({super.key, required this.text, this.fontSize = 20});

  @override
  Widget build(BuildContext context) {
    // Usando Cinzel Decorative para aquele aspecto de "Realeza/Magia"
    final baseStyle = GoogleFonts.cinzelDecorative(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        // 1. SOMBRA DE FUNDO (Glow/Profundidade)
        Text(
          text,
          textAlign: TextAlign.center,
          style: baseStyle.copyWith(
            color: Colors.transparent,
            shadows: [
              Shadow(
                offset: const Offset(0, 8),
                blurRadius: 12.0,
                color: Colors.black.withOpacity(0.5),
              ),
            ],
          ),
        ),

        // 2. CONTORNO GROSSO (Borda de Ouro Escuro)
        Text(
          text,
          textAlign: TextAlign.center,
          style: baseStyle.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 8
              ..strokeJoin = StrokeJoin.round
              ..color = const Color(0xFF633D0D), // Marrom profundo/Bronze
          ),
        ),

        // 3. TEXTO COM DEGRADÊ METÁLICO
        ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (bounds) => const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFF9C4), // Brilho no topo (Amarelo quase branco)
              Color(0xFFFFD700), // Ouro puro no meio
              Color(0xFFF57C00), // Laranja metálico na base
            ],
            stops: [0.1, 0.5, 0.9],
          ).createShader(bounds),
          child: Text(text, textAlign: TextAlign.center, style: baseStyle),
        ),

        // 4. BRILHO INTERNO (Opcional - para dar mais realismo)
        Text(
          text,
          textAlign: TextAlign.center,
          style: baseStyle.copyWith(
            color: Colors.transparent,
            shadows: const [
              Shadow(
                offset: Offset(0, 1),
                blurRadius: 1,
                color: Color(0x80FFFFFF), // Reflexo branco no topo
              ),
            ],
          ),
        ),
      ],
    );
  }
}
