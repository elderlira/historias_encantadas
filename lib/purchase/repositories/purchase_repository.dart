import 'package:historias_encantadas/purchase/models/premium_product.dart';
import 'package:historias_encantadas/purchase/services/billing/in_app_purchase_service.dart';
import 'package:historias_encantadas/purchase/storage/purchase_storage.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseRepository {
  final InAppPurchaseService _purchaseService;
  final PurchaseStorage _storage;

  PurchaseRepository({
    InAppPurchaseService? purchaseService,
    PurchaseStorage? storage,
  }) : _purchaseService = purchaseService ?? InAppPurchaseService(),
       _storage = storage ?? PurchaseStorage();

  Future<void> initialize() async {
    await _purchaseService.initialize();
  }

  // Future<void> initialize() {
  //   return _purchaseService.initialize();
  // }

  Future<PremiumProduct> getPremiumProduct() {
    return _purchaseService.getPremiumProduct();
  }

  Future<void> buyPremium() {
    return _purchaseService.buyPremium();
  }

  Future<void> restorePurchases() {
    return _purchaseService.restorePurchases();
  }

  Stream<List<PurchaseDetails>> get purchaseStream =>
      _purchaseService.purchaseStream;

  Future<void> completePurchase(PurchaseDetails purchase) {
    return _purchaseService.completePurchase(purchase);
  }

  Future<bool> getCachedPremiumStatus() {
    return _storage.isPremium();
  }

  Future<void> cachePremiumStatus(bool value) {
    return _storage.savePremium(value);
  }

  Future<void> clearPremium() {
    return _storage.clear();
  }
}
