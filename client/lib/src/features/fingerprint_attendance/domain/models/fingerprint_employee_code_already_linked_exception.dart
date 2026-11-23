class FingerprintEmployeeCodeAlreadyLinkedException implements Exception {
  final String employeeCode;
  final String upstreamMessage;

  const FingerprintEmployeeCodeAlreadyLinkedException({
    required this.employeeCode,
    required this.upstreamMessage,
  });

  @override
  String toString() =>
      'FingerprintEmployeeCodeAlreadyLinkedException($employeeCode): '
      '$upstreamMessage';
}
