import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'database/app_database.dart';
import 'l10n/app_localizations.dart';
import 'providers/locale_provider.dart';
import 'screens/language_selection_screen.dart';
import 'screens/story_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final savedLang = await AppDatabase.getLanguage();
  final localeProvider = LocaleProvider();

  if (savedLang != null) {
    localeProvider.setLocale(savedLang);
  }

  runApp(
    ChangeNotifierProvider(
      create: (_) => localeProvider,
      child: MyApp(isFirstAccess: savedLang == null),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool isFirstAccess;

  const MyApp({super.key, required this.isFirstAccess});

  @override
  Widget build(BuildContext context) {
    final locale = context.watch<LocaleProvider>().locale;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: isFirstAccess
          ? const LanguageSelectionScreen()
          : const StoryListScreen(),
    );
  }
}
