class PremiumProduct {
  final String id;
  final String title;
  final String description;
  final String price;
  final bool available;

  const PremiumProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.available,
  });

  bool get isAvailable => available;

  bool get isUnavailable => !available;
}
