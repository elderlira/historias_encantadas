import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';

import '../services/subscription_service.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  final SubscriptionService _service = SubscriptionService();
  bool loading = true;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await _service.init();
    setState(() => loading = false);
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text(
          'Assinatura',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 87, 125),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            startAngle: 0,
            endAngle: math.pi * 2,
            colors: <Color>[
              Colors.blue,
              Colors.green,
              Colors.yellow,
              Colors.red,
              Colors
                  .blue, // Looping back to the start color makes a smooth transition
            ],
          ),
        ),
        child: Center(
          child: _service.isSubscribed
              ? const Text(
                  '🎉 Assinatura ativa!\nAproveite todas as histórias.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _service.productDetails?.title ?? 'Plano Mensal',
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _service.productDetails?.price ?? '',
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: _service.buySubscription,
                      child: const Text('Assinar agora'),
                    ),
                    TextButton(
                      onPressed: () {
                        InAppPurchase.instance.restorePurchases();
                      },
                      child: const Text('Restaurar assinatura'),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
