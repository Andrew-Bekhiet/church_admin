import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class PersonFingerprintIdsState with Equatable {
  bool get acceptsWrites => false;

  @override
  List<Object?> get props => [];

  const PersonFingerprintIdsState();
}

final class PersonFingerprintIdsLoading extends PersonFingerprintIdsState {
  const PersonFingerprintIdsLoading();
}

final class PersonFingerprintIdsFailedToLoad extends PersonFingerprintIdsState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const PersonFingerprintIdsFailedToLoad({required this.error});
}

final class PersonFingerprintIdsLoaded extends PersonFingerprintIdsState {
  final List<PersonFingerprintId> fingerprintIds;
  final FingerprintIdsWrite write;

  @override
  bool get acceptsWrites => write is! FingerprintIdsWriteInProgress;

  @override
  List<Object?> get props => [fingerprintIds, write];

  const PersonFingerprintIdsLoaded({
    required this.fingerprintIds,
    this.write = const NoFingerprintIdsWrite(),
  });

  PersonFingerprintIdsLoaded copyWith({
    List<PersonFingerprintId>? fingerprintIds,
    FingerprintIdsWrite? write,
  }) => PersonFingerprintIdsLoaded(
    fingerprintIds: fingerprintIds ?? this.fingerprintIds,
    write: write ?? this.write,
  );
}
