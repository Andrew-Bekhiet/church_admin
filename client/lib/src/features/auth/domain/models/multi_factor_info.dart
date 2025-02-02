import 'package:equatable/equatable.dart';

enum MultiFactorType { phone }

class MultiFactorInfo extends Equatable {
  const MultiFactorInfo({
    required this.id,
    required this.type,
    required this.displayName,
    required this.enrolledAt,
  });

  final String id;
  final MultiFactorType type;
  final String? displayName;
  final DateTime enrolledAt;

  @override
  List<Object?> get props => [id, type, displayName, enrolledAt];
}
