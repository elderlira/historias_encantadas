class BillingUnavailableException implements Exception {
  const BillingUnavailableException();

  @override
  String toString() {
    return 'Google Play Billing não está disponível.';
  }
}
