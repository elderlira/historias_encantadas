// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get selectLanguage => '¿Qué idioma prefieres?';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Devolver';

  @override
  String get storiesTitle => 'Elige un cuento';

  @override
  String get littleRed => 'Caperucita Roja';

  @override
  String get threePigs => 'The Three Little Pigs';

  @override
  String get page => 'páginas';

  @override
  String get start => 'Inicio';

  @override
  String get next => 'Siguiente';

  @override
  String get previous => 'Anterior';

  @override
  String get historyDay => 'historia del dia';

  @override
  String get choiceHistory => 'Elige una historia';

  @override
  String get initialTitle => 'Historias encantadas';

  @override
  String get subtitleHistory =>
      "Un mundo mágico de historias para encantar a los niños.";
}
