import 'package:flutter/material.dart';

import 'story_page.dart';

class StoryConfig {
  final String title;
  final String storyId;
  final List<StoryPage> pages;
  final Color primaryColor;
  final Color accentColor;
  final Color firstGradient;
  final Color secondGradient;
  final Color thirdGradient;
  final String audioBasePath;
  final String imageBasePath;

  StoryConfig({
    required this.title,
    required this.storyId,
    required this.pages,
    required this.primaryColor,
    required this.accentColor,
    required this.firstGradient,
    required this.secondGradient,
    required this.thirdGradient,
    required this.audioBasePath,
    required this.imageBasePath,
  });

  String getAudioPath(int pageNumber) {
    return '$audioBasePath/page$pageNumber.wav';
  }

  String getImagePath(int pageNumber) {
    return '$imageBasePath/page$pageNumber.png';
  }

  String get iconPath => 'assets/images/icons/$storyId.png';
}
