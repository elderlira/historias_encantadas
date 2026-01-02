import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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

  @override
  void initState() {
    super.initState();
    _selectedLang = context.read<LocaleProvider>().locale.languageCode;
  }

  void _selectLanguage(String code) {
    setState(() => _selectedLang = code);
    context.read<LocaleProvider>().setLocale(code);
  }

  Future<void> _save() async {
    await AppDatabase.saveLanguage(_selectedLang);

    if (widget.isSettings) {
      Navigator.pop(context);
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const StoryListScreen()),
      );
    }
  }

  Future<void> _return() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const StoryListScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t.selectLanguage,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

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
    );
  }

  Widget _flag(String lang, String country) {
    final selected = _selectedLang == lang;

    return GestureDetector(
      onTap: () => _selectLanguage(lang),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(
            color: selected ? Colors.purple : Colors.transparent,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        child: SvgPicture.asset(
          'assets/flags/$country.svg',
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
