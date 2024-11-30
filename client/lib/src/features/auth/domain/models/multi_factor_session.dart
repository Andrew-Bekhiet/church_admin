class MultiFactorSession {
  final dynamic platformSession;
  final String id;
  final String email;
  final String password;

  MultiFactorSession({
    required this.platformSession,
    required this.id,
    required this.email,
    required this.password,
  });
}
