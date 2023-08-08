import 'package:equatable/equatable.dart';

class MultiFactorInfo extends Equatable {
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

  @override
  List<Object?> get props => [uid, displayName, factorId, enrollmentTimestamp];
}
