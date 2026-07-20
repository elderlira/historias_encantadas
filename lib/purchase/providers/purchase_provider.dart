import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:historias_encantadas/purchase/constants/purchase_constants.dart';
import 'package:historias_encantadas/purchase/models/premium_product.dart';
import 'package:historias_encantadas/purchase/repositories/purchase_repository.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

class PurchaseProvider extends ChangeNotifier {
  final PurchaseRepository _repository;

  PurchaseProvider({PurchaseRepository? repository})
    : _repository = repository ?? PurchaseRepository();

  StreamSubscription<List<PurchaseDetails>>? _purchaseSubscription;

  bool _isLoading = false;
  bool _isPremium = false;

  String? _errorMessage;

  PremiumProduct _premiumProduct = PremiumProduct.unavailable();

  bool get isLoading => _isLoading;

  bool get isPremium => _isPremium;

  String? get errorMessage => _errorMessage;

  PremiumProduct get premiumProduct => _premiumProduct;

  Future<void> initialize() async {
    _setLoading(true);

    try {
      await _repository.initialize();

      _isPremium = await _repository.getCachedPremiumStatus();

      _premiumProduct = await _repository.getPremiumProduct();

      _listenPurchaseUpdates();

      await _repository.restorePurchases();

      _errorMessage = null;
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  Future<void> buyPremium() async {
    try {
      _setLoading(true);

      await _repository.buyPremium();

      _errorMessage = null;
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  Future<void> restorePurchases() async {
    try {
      _setLoading(true);

      await _repository.restorePurchases();

      _errorMessage = null;
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  void _listenPurchaseUpdates() {
    _purchaseSubscription?.cancel();

    _purchaseSubscription = _repository.purchaseStream.listen(_handlePurchases);
  }

  Future<void> _handlePurchases(List<PurchaseDetails> purchases) async {
    for (final purchase in purchases) {
      switch (purchase.status) {
        case PurchaseStatus.pending:
          _setLoading(true);
          break;

        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          if (purchase.productID == PurchaseConstants.premiumProductId) {
            _isPremium = true;

            await _repository.cachePremiumStatus(true);
          }

          await _repository.completePurchase(purchase);

          _setLoading(false);

          break;

        case PurchaseStatus.error:
          _errorMessage = purchase.error?.message;

          _setLoading(false);

          break;

        case PurchaseStatus.canceled:
          _setLoading(false);
          break;
      }
    }

    notifyListeners();
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  @override
  void dispose() {
    _purchaseSubscription?.cancel();
    super.dispose();
  }
}
