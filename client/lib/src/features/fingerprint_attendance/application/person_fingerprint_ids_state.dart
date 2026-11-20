import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

class PersonFingerprintIdsState extends Equatable {
  final List<PersonFingerprintId>? fingerprintIds;
  final Object? loadError;
  final FingerprintIdsWrite write;

  @override
  List<Object?> get props => [fingerprintIds, loadError, write];

  const PersonFingerprintIdsState({
    this.write = const NoFingerprintIdsWrite(),
    this.fingerprintIds,
    this.loadError,
  });

  PersonFingerprintIdsState loaded(List<PersonFingerprintId> fingerprintIds) =>
      PersonFingerprintIdsState(fingerprintIds: fingerprintIds, write: write);

  PersonFingerprintIdsState failedToLoad(Object error) =>
      PersonFingerprintIdsState(
        fingerprintIds: fingerprintIds,
        loadError: error,
        write: write,
      );

  PersonFingerprintIdsState withWrite(FingerprintIdsWrite write) =>
      PersonFingerprintIdsState(
        fingerprintIds: fingerprintIds,
        loadError: loadError,
        write: write,
      );
}
