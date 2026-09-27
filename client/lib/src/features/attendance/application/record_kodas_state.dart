import 'package:equatable/equatable.dart';

sealed class RecordKodasState with Equatable {
  bool get isVisible => true;

  @override
  List<Object?> get props => [];

  const RecordKodasState();
}

final class RecordKodasHidden extends RecordKodasState {
  final bool hiddenForDay;

  @override
  bool get isVisible => false;

  @override
  List<Object?> get props => [hiddenForDay];

  const RecordKodasHidden({this.hiddenForDay = false});
}

final class RecordKodasLoading extends RecordKodasState {
  final DateTime day;

  @override
  List<Object?> get props => [day];

  const RecordKodasLoading({required this.day});
}

final class RecordKodasReady extends RecordKodasState {
  final DateTime day;
  final Set<String> communicantIds;

  @override
  List<Object?> get props => [day, communicantIds];

  const RecordKodasReady({required this.day, required this.communicantIds});

  bool tookKodas(String personId) => communicantIds.contains(personId);
}
