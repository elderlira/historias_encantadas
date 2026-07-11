import 'package:shared_preferences/shared_preferences.dart';

import '../constants/storage_keys.dart';
import '../exceptions/purchase_storage_exception.dart';
import '../models/premium_license.dart';
import 'premium_storage.dart';

class SharedPreferencesPremiumStorage implements PremiumStorage {
  const SharedPreferencesPremiumStorage();

  Future<SharedPreferences> get _preferences async =>
      SharedPreferences.getInstance();

  @override
  Future<void> save(PremiumLicense license) async {
    final prefs = await _preferences;

    final success = await prefs.setString(
      StorageKeys.premiumLicense,
      license.toJson(),
    );

    if (!success) {
      throw const PurchaseStorageException(
        'Não foi possível salvar a licença Premium.',
      );
    }
  }

  @override
  Future<PremiumLicense> load() async {
    final prefs = await _preferences;

    final json = prefs.getString(StorageKeys.premiumLicense);

    if (json == null || json.isEmpty) {
      return PremiumLicense.free();
    }

    return PremiumLicense.fromJson(json);
  }

  @override
  Future<void> clear() async {
    final prefs = await _preferences;

    final success = await prefs.remove(StorageKeys.premiumLicense);

    if (!success) {
      throw Exception('Não foi possível remover a licença Premium.');
    }
  }
}
