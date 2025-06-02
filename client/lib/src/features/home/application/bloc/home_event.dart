import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

final class LoadHomeDailyData extends HomeEvent {
  const LoadHomeDailyData();
}

final class HomeDailyDataGetNew extends HomeEvent {
  final HomeDailyDataType type;

  const HomeDailyDataGetNew(this.type);
}
