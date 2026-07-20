import 'package:equatable/equatable.dart';

class PremiumProduct extends Equatable {
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

  factory PremiumProduct.unavailable() {
    return const PremiumProduct(
      id: '',
      title: '',
      description: '',
      price: '',
      available: false,
    );
  }

  @override
  List<Object?> get props => [id, title, description, price, available];
}
