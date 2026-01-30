import 'package:flutter/material.dart';

import '../models/story_page.dart';

class StoryPageWidget extends StatelessWidget {
  final StoryPage page;
  final bool isPlaying;
  final VoidCallback? onPlay;
  final String imagePath;
  final Color accentColor;

  const StoryPageWidget({
    super.key,
    required this.page,
    required this.isPlaying,
    required this.imagePath,
    required this.accentColor,
    this.onPlay,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Text(
          //   "Página ${page.pageNumber}",
          //   textAlign: TextAlign.center,
          //   style: TextStyle(
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.white,
          //   ),
          // ),
          // const SizedBox(height: 16),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  color: accentColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: accentColor.withValues(alpha: 0.5),
                    width: 2,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.image_not_supported,
                              size: 60,
                              color: Colors.redAccent,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Imagem não encontrada",
                              style: TextStyle(
                                fontSize: 16,
                                color: accentColor,
                              ),
                            ),
                            Text(
                              "page${page.pageNumber}.png",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  mini: true,
                  backgroundColor: isPlaying
                      ? Colors.orange.shade700
                      : Colors.green,
                  onPressed: onPlay,
                  child: isPlaying
                      ? const Icon(Icons.stop, color: Colors.white)
                      : const Icon(Icons.volume_up, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                page.text,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
