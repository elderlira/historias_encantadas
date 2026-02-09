import 'package:flutter/material.dart';
import 'package:historias_encantadas/widgets/title_cartoon.dart';
import 'package:provider/provider.dart';

import '../database/app_database.dart';
import '../l10n/app_localizations.dart';
import '../providers/locale_provider.dart';
import '../widgets/language_flag.dart';
import 'story_list_screen.dart';

class LanguageSelectionScreen extends StatefulWidget {
  final bool isSettings;

  const LanguageSelectionScreen({super.key, this.isSettings = false});

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  late String _selectedLang;
  late String _initialLang;

  @override
  void initState() {
    super.initState();
    final currentLang = context.read<LocaleProvider>().locale.languageCode;
    _selectedLang = _initialLang = currentLang;
  }

  void _selectLanguage(String code) {
    setState(() => _selectedLang = code);
    context.read<LocaleProvider>().setLocale(code);
  }

  Future<void> _save() async {
    await AppDatabase.saveLanguage(_selectedLang);

    context.read<LocaleProvider>().setLocale(_selectedLang);

    if (widget.isSettings) {
      Navigator.pop(context);
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const StoryListScreen()),
      );
    }
  }

  void _return() {
    context.read<LocaleProvider>().setLocale(_initialLang);
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    print(context.read<LocaleProvider>());

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleCartoon(text: t.selectLanguage),

              const SizedBox(height: 32),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: 14,
                runSpacing: 10,
                children: [
                  LanguageFlag(
                    languageCode: 'pt',
                    countryCode: 'br',
                    selectedLang: _selectedLang,
                    onTap: () => _selectLanguage('pt'),
                  ),
                  LanguageFlag(
                    languageCode: 'en',
                    countryCode: 'us',
                    selectedLang: _selectedLang,
                    onTap: () => _selectLanguage('en'),
                  ),
                  LanguageFlag(
                    languageCode: 'fr',
                    countryCode: 'fr',
                    selectedLang: _selectedLang,
                    onTap: () => _selectLanguage('fr'),
                  ),
                  LanguageFlag(
                    languageCode: 'es',
                    countryCode: 'es',
                    selectedLang: _selectedLang,
                    onTap: () => _selectLanguage('es'),
                  ),
                  LanguageFlag(
                    languageCode: 'zh',
                    countryCode: 'cn',
                    selectedLang: _selectedLang,
                    onTap: () => _selectLanguage('zh'),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _save,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 38,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(t.save, style: const TextStyle(fontSize: 18)),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _return,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 38,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(t.cancel, style: const TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
