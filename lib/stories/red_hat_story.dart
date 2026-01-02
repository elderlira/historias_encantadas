import 'package:flutter/material.dart';

import '../models/story_config.dart';
import '../models/story_page.dart';
import 'red_hat_data.dart';

final data = const RedHatData();

class RedHatStory {
  static StoryConfig build(String langCode) {
    // assert(
    //   data.pages.length == data.imageDescriptions.length,
    //   'Quantidade de textos e descrições de imagem não coincidem',
    // );

    return StoryConfig(
      title: data.title.of(langCode),
      storyId: data.historyId,
      primaryColor: Colors.red.shade600,
      accentColor: Colors.red.shade700,
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
