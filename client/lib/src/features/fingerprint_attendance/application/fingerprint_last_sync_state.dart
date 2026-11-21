import 'package:equatable/equatable.dart';

sealed class FingerprintLastSyncState extends Equatable {
  @override
  List<Object?> get props => [];

  const FingerprintLastSyncState();
}

class FingerprintLastSyncLoading extends FingerprintLastSyncState {
  const FingerprintLastSyncLoading();
}

class FingerprintNeverSynced extends FingerprintLastSyncState {
  const FingerprintNeverSynced();
}

class FingerprintLastSyncedAt extends FingerprintLastSyncState {
  final DateTime time;

  @override
  List<Object?> get props => [time];

  const FingerprintLastSyncedAt(this.time);
}

class FingerprintLastSyncUnavailable extends FingerprintLastSyncState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const FingerprintLastSyncUnavailable(this.error);
}
