import 'package:equatable/equatable.dart';

sealed class RecordKodasState with Equatable {
  bool get isTracking => true;

  @override
  List<Object?> get props => [];

  const RecordKodasState();
}

final class RecordKodasDisabled extends RecordKodasState {
  @override
  bool get isTracking => false;

  const RecordKodasDisabled();
}

final class RecordKodasLoading extends RecordKodasState {
  const RecordKodasLoading();
}

final class RecordKodasReady extends RecordKodasState {
  final Set<String> communicantIds;

  @override
  List<Object?> get props => [communicantIds];

  const RecordKodasReady({required this.communicantIds});

  bool tookKodas(String personId) => communicantIds.contains(personId);
}
