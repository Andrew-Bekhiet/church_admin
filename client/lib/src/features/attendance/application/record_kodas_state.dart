import 'package:equatable/equatable.dart';

sealed class RecordKodasState with Equatable {
  bool get isVisible => true;

  @override
  List<Object?> get props => [];

  const RecordKodasState();
}

final class RecordKodasHidden extends RecordKodasState {
  @override
  bool get isVisible => false;

  const RecordKodasHidden();
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
