// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get selectLanguage => 'Which language do you prefer?';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Return';

  @override
  String get storiesTitle => 'Choose a story';

  @override
  String get littleRed => 'Little Red Riding Hood';

  @override
  String get threePigs => 'The Three Little Pigs';
}
