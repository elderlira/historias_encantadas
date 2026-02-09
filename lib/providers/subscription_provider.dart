import 'package:flutter/material.dart';

import '../services/subscription_service.dart';

class SubscriptionProvider extends ChangeNotifier {
  final SubscriptionService _service = SubscriptionService();

  bool get isSubscribed => _service.isSubscribed;
  SubscriptionService get service => _service;

  Future<void> init() async {
    await _service.init();
    notifyListeners();
  }
}
