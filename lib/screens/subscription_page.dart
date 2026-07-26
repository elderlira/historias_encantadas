import 'package:flutter/material.dart';
import 'package:historias_encantadas/purchase/providers/purchase_provider.dart';
import 'package:provider/provider.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final purchase = context.watch<PurchaseProvider>();

    if (purchase.isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: Colors.transparent,

      appBar: AppBar(
        title: const Text(
          'Premium',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),

        backgroundColor: const Color.fromARGB(255, 5, 87, 125),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/purchase_screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        // decoration: BoxDecoration(
        //   gradient: SweepGradient(
        //     startAngle: 0,

        //     endAngle: math.pi * 2,

        //     colors: const [
        //       Colors.blue,
        //       Colors.green,
        //       Colors.yellow,
        //       Colors.red,
        //       Colors.blue,
        //     ],
        //   ),
        // ),
        child: Center(
          child: purchase.isPremium
              ? const Text(
                  '🎉 Premium ativo!\n'
                  'Aproveite todas as histórias.',

                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 20,

                    color: Colors.white,

                    fontWeight: FontWeight.bold,
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      purchase.premiumProduct.title,

                      style: const TextStyle(
                        fontSize: 24,

                        color: Colors.white,

                        fontWeight: FontWeight.bold,

                        letterSpacing: 2,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      purchase.premiumProduct.price,

                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),

                    const SizedBox(height: 24),

                    ElevatedButton(
                      onPressed: purchase.isLoading
                          ? null
                          : purchase.buyPremium,

                      child: purchase.isLoading
                          ? const SizedBox(
                              height: 20,

                              width: 20,

                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text('Desbloquear Premium'),
                    ),

                    TextButton(
                      onPressed: purchase.restorePurchases,

                      child: const Text(
                        'Restaurar Premium',

                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    if (purchase.errorMessage != null)
                      Padding(
                        padding: const EdgeInsets.all(16),

                        child: Text(
                          purchase.errorMessage!,

                          textAlign: TextAlign.center,

                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                  ],
                ),
        ),
      ),
    );
  }
}
