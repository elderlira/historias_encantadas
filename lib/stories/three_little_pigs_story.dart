import 'package:flutter/material.dart';

import '../models/story_config.dart';
import '../models/story_page.dart';

final StoryConfig threeLittlePigsStory = StoryConfig(
  title: 'Os Três Porquinhos',
  storyId: 'three_little_pigs',
  primaryColor: Colors.pink.shade600,
  accentColor: Colors.pink.shade700,
  audioBasePath: 'sounds/threeLittlePigs',
  imageBasePath: 'assets/images/threeLittlePigs',
  pages: [
    StoryPage(
      pageNumber: 1,
      text:
          """Era uma vez três porquinhos que decidiram construir suas próprias casas.""",
      imageDescription: """Três porquinhos felizes em um campo verde.""",
    ),
    StoryPage(
      pageNumber: 2,
      text:
          """O primeiro porquinho construiu sua casa de palha, porque era mais rápido.""",
      imageDescription: """Porquinho construindo casa de palha.""",
    ),
    // ... continue adicionando páginas
  ],
);
