class FingerprintIdNotRemovedException implements Exception {
  final String fingerprintId;

  const FingerprintIdNotRemovedException(this.fingerprintId);

  @override
  String toString() => 'FingerprintIdNotRemovedException($fingerprintId)';
}
