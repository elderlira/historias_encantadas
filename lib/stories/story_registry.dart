import '../models/story_config.dart';
import 'red_hat_story.dart';
import 'three_little_pigs_story.dart';

class StoryRegistry {
  static final Map<String, StoryConfig> _stories = {
    'red_hat': redHatStory,
    'three_little_pigs': threeLittlePigsStory,
  };

  static StoryConfig? getStory(String storyId) {
    return _stories[storyId];
  }

  static List<StoryConfig> getAllStories() {
    return _stories.values.toList();
  }

  static List<String> getAllStoryIds() {
    return _stories.keys.toList();
  }
}
