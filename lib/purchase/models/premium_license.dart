import 'dart:convert';

import 'package:equatable/equatable.dart';

class PremiumLicense extends Equatable {
  final bool isPremium;
  final String? productId;
  final DateTime? purchaseDate;
  final bool restored;

  const PremiumLicense({
    required this.isPremium,
    this.productId,
    this.purchaseDate,
    required this.restored,
  });

  factory PremiumLicense.free() {
    return const PremiumLicense(isPremium: false, restored: false);
  }

  factory PremiumLicense.premium({
    String? productId,
    DateTime? purchaseDate,
    bool restored = false,
  }) {
    return PremiumLicense(
      isPremium: true,
      productId: productId,
      purchaseDate: purchaseDate,
      restored: restored,
    );
  }

  factory PremiumLicense.test() {
    return PremiumLicense(
      isPremium: true,
      productId: 'historias_encantadas_premium',
      purchaseDate: DateTime(2026, 7, 11),
      restored: true,
    );
  }

  bool get isFree => !isPremium;

  bool get isRestored => restored;

  bool get hasPurchaseDate => purchaseDate != null;

  bool get hasProductId => productId != null && productId!.isNotEmpty;

  PremiumLicense copyWith({
    bool? isPremium,
    String? productId,
    DateTime? purchaseDate,
    bool? restored,
  }) {
    return PremiumLicense(
      isPremium: isPremium ?? this.isPremium,
      productId: productId ?? this.productId,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      restored: restored ?? this.restored,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isPremium': isPremium,
      'productId': productId,
      'purchaseDate': purchaseDate?.toIso8601String(),
      'restored': restored,
    };
  }

  factory PremiumLicense.fromMap(Map<String, dynamic> map) {
    return PremiumLicense(
      isPremium: map['isPremium'] ?? false,
      productId: map['productId'],
      purchaseDate: map['purchaseDate'] != null
          ? DateTime.tryParse(map['purchaseDate'])
          : null,
      restored: map['restored'] ?? false,
    );
  }

  String toJson() => jsonEncode(toMap());

  factory PremiumLicense.fromJson(String source) {
    try {
      return PremiumLicense.fromMap(jsonDecode(source));
    } catch (_) {
      return PremiumLicense.free();
    }
  }

  @override
  List<Object?> get props => [isPremium, productId, purchaseDate, restored];

  @override
  String toString() {
    return 'PremiumLicense(isPremium: $isPremium, productId: $productId, purchaseDate: $purchaseDate, restored: $restored)';
  }
}
