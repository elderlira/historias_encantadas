import 'package:historias_encantadas/purchase/constants/purchase_constants.dart';
import 'package:historias_encantadas/purchase/exceptions/billing_unavailable_exception.dart';
import 'package:historias_encantadas/purchase/models/premium_product.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class InAppPurchaseService {
  final InAppPurchase _inAppPurchase;

  InAppPurchaseService({InAppPurchase? inAppPurchase})
    : _inAppPurchase = inAppPurchase ?? InAppPurchase.instance;

  /// Verifica se a Google Play/App Store está disponível.
  Future<void> initialize() async {
    final available = await _inAppPurchase.isAvailable();

    if (!available) {
      throw const BillingUnavailableException();
    }
  }

  Stream<List<PurchaseDetails>> get purchaseStream =>
      _inAppPurchase.purchaseStream;

  Future<PremiumProduct> getPremiumProduct() async {
    try {
      final response = await _inAppPurchase.queryProductDetails({
        PurchaseConstants.premiumProductId,
      });

      if (response.error != null) {
        return PremiumProduct.unavailable();
      }

      if (response.notFoundIDs.isNotEmpty) {
        return PremiumProduct.unavailable();
      }

      if (response.productDetails.isEmpty) {
        return PremiumProduct.unavailable();
      }

      return _toPremiumProduct(response.productDetails.first);
    } catch (_) {
      return PremiumProduct.unavailable();
    }
  }

  Future<void> buyPremium() async {
    final response = await _inAppPurchase.queryProductDetails({
      PurchaseConstants.premiumProductId,
    });

    if (response.productDetails.isEmpty) {
      throw Exception('Produto Premium não encontrado.');
    }

    final purchaseParam = PurchaseParam(
      productDetails: response.productDetails.first,
    );

    await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
  }

  Future<void> restorePurchases() async {
    await _inAppPurchase.restorePurchases();
  }

  Future<void> completePurchase(PurchaseDetails purchase) async {
    if (purchase.pendingCompletePurchase) {
      await _inAppPurchase.completePurchase(purchase);
    }
  }

  PremiumProduct _toPremiumProduct(ProductDetails product) {
    return PremiumProduct(
      id: product.id,
      title: product.title,
      description: product.description,
      price: product.price,
      available: true,
    );
  }
}
