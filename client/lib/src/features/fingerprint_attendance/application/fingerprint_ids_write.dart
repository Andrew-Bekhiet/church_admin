import 'package:equatable/equatable.dart';

sealed class FingerprintIdsWrite extends Equatable {
  @override
  List<Object?> get props => [];

  const FingerprintIdsWrite();
}

class NoFingerprintIdsWrite extends FingerprintIdsWrite {
  const NoFingerprintIdsWrite();
}

class FingerprintIdsWriteInProgress extends FingerprintIdsWrite {
  const FingerprintIdsWriteInProgress();
}

class FingerprintEmployeeCodeAdded extends FingerprintIdsWrite {
  final String employeeCode;

  @override
  List<Object?> get props => [employeeCode];

  const FingerprintEmployeeCodeAdded(this.employeeCode);
}

class FingerprintIdRemoved extends FingerprintIdsWrite {
  final String fingerprintId;

  @override
  List<Object?> get props => [fingerprintId];

  const FingerprintIdRemoved(this.fingerprintId);
}

class FingerprintIdsWriteFailed extends FingerprintIdsWrite {
  final Object error;

  @override
  List<Object?> get props => [error];

  const FingerprintIdsWriteFailed(this.error);
}
