class LocalizedText {
  final Map<String, String> values;

  const LocalizedText(this.values);

  String of(String langCode) {
    return values[langCode] ?? values['en'] ?? '';
  }
}
