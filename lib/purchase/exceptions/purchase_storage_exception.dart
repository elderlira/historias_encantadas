class PurchaseStorageException implements Exception {
  final String message;

  const PurchaseStorageException(this.message);

  @override
  String toString() {
    return message;
  }
}
