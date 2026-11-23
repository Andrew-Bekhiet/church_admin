import 'package:equatable/equatable.dart';

sealed class FingerprintLastSyncState extends Equatable {
  @override
  List<Object?> get props => [];

  const FingerprintLastSyncState();
}

class FingerprintLastSyncLoading extends FingerprintLastSyncState {
  const FingerprintLastSyncLoading();
}

class FingerprintLastSyncNever extends FingerprintLastSyncState {
  const FingerprintLastSyncNever();
}

class FingerprintLastSyncKnown extends FingerprintLastSyncState {
  final DateTime time;

  @override
  List<Object?> get props => [time];

  const FingerprintLastSyncKnown(this.time);
}

class FingerprintLastSyncUnavailable extends FingerprintLastSyncState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const FingerprintLastSyncUnavailable(this.error);
}
