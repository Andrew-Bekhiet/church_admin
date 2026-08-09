import 'package:equatable/equatable.dart';

// TODO: support totp
enum MultiFactorType { phone }

class MultiFactorInfo extends Equatable {
  final String id;
  final MultiFactorType type;
  final String? displayName;
  final DateTime enrolledAt;
  final String? phoneNumber;

  @override
  List<Object?> get props => [id, type, displayName, enrolledAt, phoneNumber];
  const MultiFactorInfo({
    required this.id,
    required this.type,
    required this.displayName,
    required this.enrolledAt,
    this.phoneNumber,
  });
}
