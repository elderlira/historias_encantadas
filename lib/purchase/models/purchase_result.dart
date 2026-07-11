import 'purchase_status_type.dart';

class PurchaseResult {
  final PurchaseStatusType status;
  final String? message;

  const PurchaseResult({required this.status, this.message});

  bool get isSuccess => status == PurchaseStatusType.success;

  bool get isCancelled => status == PurchaseStatusType.cancelled;

  bool get isPending => status == PurchaseStatusType.pending;

  bool get isRestored => status == PurchaseStatusType.restored;

  bool get isError => status == PurchaseStatusType.error;
}
