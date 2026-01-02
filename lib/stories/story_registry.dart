import 'package:flutter/widgets.dart';

import '../models/story_config.dart';
import 'red_hat_story.dart';
import 'three_little_pigs_story.dart';

class StoryRegistry {
  static List<StoryConfig> getAllStories(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;

    return [RedHatStory.build(lang), ThreeLittlePigsStory.build(lang)];
  }
}
