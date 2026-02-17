import 'dart:async';

import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../constants/app_constants.dart';

class SubscriptionService extends ChangeNotifier {
  final InAppPurchase _iap = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;
  bool isProcessing = false;

  bool isSubscribed = false;
  ProductDetails? productDetails;

  Future<void> init() async {
    final bool available = await _iap.isAvailable();
    if (!available) {
      throw Exception('Loja não disponível');
    }

    await _loadProducts();
    _listenToPurchases();
    await _iap.restorePurchases();
  }

  Future<void> _loadProducts() async {
    const Set<String> ids = {kSubscriptionId};
    final ProductDetailsResponse response = await _iap.queryProductDetails(ids);

    if (response.productDetails.isNotEmpty) {
      productDetails = response.productDetails.first;
    }
  }

  void _listenToPurchases() {
    _subscription = _iap.purchaseStream.listen(
      (List<PurchaseDetails> purchases) {
        for (final purchase in purchases) {
          _handlePurchase(purchase);
        }
      },
      onError: (error) {
        print('Erro na compra: $error');
      },
    );
  }

  Future<void> _handlePurchase(PurchaseDetails purchase) async {
    if (purchase.status == PurchaseStatus.pending) {
      isProcessing = true;
      notifyListeners();
    } else if (purchase.status == PurchaseStatus.purchased ||
        purchase.status == PurchaseStatus.restored) {
      if (purchase.productID == kSubscriptionId) {
        isSubscribed = true;
      }

      isProcessing = false;
      notifyListeners();
    } else if (purchase.status == PurchaseStatus.error) {
      isProcessing = false;
      notifyListeners();
      print('Erro na compra: ${purchase.error}');
    }

    if (purchase.pendingCompletePurchase) {
      await _iap.completePurchase(purchase);
    }
  }

  Future<void> buySubscription() async {
    if (productDetails == null) return;

    final PurchaseParam purchaseParam = PurchaseParam(
      productDetails: productDetails!,
    );

    await _iap.buyNonConsumable(purchaseParam: purchaseParam);
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
