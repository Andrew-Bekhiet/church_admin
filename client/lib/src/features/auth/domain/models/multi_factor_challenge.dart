import 'package:equatable/equatable.dart';

class MultiFactorChallenge extends Equatable {
  const MultiFactorChallenge({
    required this.createdAt,
    required this.verificationId,
    this.resendToken,
  });

  final DateTime createdAt;
  final String verificationId;
  final int? resendToken;

  @override
  List<Object?> get props => [createdAt, verificationId, resendToken];
}
