import 'localized_text.dart';

abstract class StoryData {
  String get historyId;
  LocalizedText get title;
  List<LocalizedText> get pages;
  List<String> get imageDescriptions;
}
