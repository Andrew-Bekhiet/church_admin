class MultiFactorInfo {
  final String uid;
  final String? displayName;
  final String factorId;
  final int enrollmentTimestamp;

  const MultiFactorInfo({
    required this.uid,
    required this.displayName,
    required this.factorId,
    required this.enrollmentTimestamp,
  });
}
