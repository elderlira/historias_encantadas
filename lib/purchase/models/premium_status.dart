class PremiumStatus {
  final bool isPremium;
  final bool restored;
  final DateTime? purchaseDate;

  const PremiumStatus({
    required this.isPremium,
    required this.restored,
    this.purchaseDate,
  });

  factory PremiumStatus.free() {
    return const PremiumStatus(isPremium: false, restored: false);
  }

  factory PremiumStatus.premium() {
    return const PremiumStatus(isPremium: true, restored: false);
  }
}
