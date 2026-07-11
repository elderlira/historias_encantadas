import '../models/premium_license.dart';

abstract class PremiumStorage {
  Future<void> save(PremiumLicense license);

  Future<PremiumLicense> load();

  Future<void> clear();
}
