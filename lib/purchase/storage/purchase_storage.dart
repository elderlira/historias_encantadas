import 'package:shared_preferences/shared_preferences.dart';

class PurchaseStorage {
  static const String _premiumKey = 'premium_enabled';

  Future<void> savePremium(bool value) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(_premiumKey, value);
  }

  Future<bool> isPremium() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool(_premiumKey) ?? false;
  }

  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(_premiumKey);
  }
}
