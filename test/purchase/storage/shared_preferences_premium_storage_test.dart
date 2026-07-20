import 'package:flutter_test/flutter_test.dart';
import 'package:historias_encantadas/purchase/models/premium_license.dart';
import 'package:historias_encantadas/purchase/storage/shared_preferences_premium_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('SharedPreferencesPremiumStorage', () {
    late SharedPreferencesPremiumStorage storage;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});

      storage = const SharedPreferencesPremiumStorage();
    });

    test(
      'Deve retornar licença gratuita quando não existir nenhuma licença salva',
      () async {
        final license = await storage.load();

        expect(license, equals(PremiumLicense.free()));
      },
    );
  });
}
