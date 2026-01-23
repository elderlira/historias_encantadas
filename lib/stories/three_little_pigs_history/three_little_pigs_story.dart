import 'package:flutter/material.dart';

import '../../models/story_config.dart';
import '../../models/story_page.dart';
import 'three_little_pigs_data.dart';

final data = const ThreeLittlePigsData();

class ThreeLittlePigsStory {
  static StoryConfig build(String langCode) {
    // assert(
    //   data.pages.length == data.imageDescriptions.length,
    //   'Quantidade de textos e descrições de imagem não coincidem',
    // );
    print(data.historyId);

    return StoryConfig(
      title: data.title.of(langCode),
      storyId: data.historyId,
      primaryColor: Colors.blueAccent.shade400,
      accentColor: Colors.blueAccent.shade700,
      firstGradient: Color(0xFF2E6BA8),
      secondGradient: Color(0xFF3173AB),
      thirdGradient: Color(0xFF32468A),
      audioBasePath: 'sounds/$langCode/${data.historyId}',
      imageBasePath: 'assets/images/${data.historyId}',
      pages: List.generate(
        data.pages.length,
        (index) => StoryPage(
          pageNumber: index + 1,
          text: data.pages[index].of(langCode),
          imageDescription: data.imageDescriptions[index],
        ),
      ),
    );
  }
}
