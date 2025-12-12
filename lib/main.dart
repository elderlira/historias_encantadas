import 'package:flutter/material.dart';

import 'screens/story_viewer_screen.dart';
import 'stories/story_registry.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AnimalMelodyStoriesApp());
}

class AnimalMelodyStoriesApp extends StatelessWidget {
  const AnimalMelodyStoriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Histórias Infantis',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Inter',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: const Color(0xFFF9E0),
      ),
      home: StoryViewerScreen(
        storyConfig: StoryRegistry.getStory('three_little_pigs')!,
      ),
    );
  }
}
