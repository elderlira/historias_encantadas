import 'package:historias_encantadas/purchase/providers/premium_provider.dart';
import 'package:historias_encantadas/purchase/services/purchase_service.dart';
import 'package:historias_encantadas/purchase/storage/shared_preferences_premium_storage.dart';

final storage = SharedPreferencesPremiumStorage();

final service = PurchaseService(storage);

final provider = PremiumProvider(service);
