import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class HomeDailyDataEvent extends Equatable {
  const HomeDailyDataEvent();

  @override
  List<Object?> get props => [];
}

final class LoadHomeDailyData extends HomeDailyDataEvent {
  const LoadHomeDailyData();
}

final class HomeDailyDataGetNew extends HomeDailyDataEvent {
  final HomeDailyDataType type;

  const HomeDailyDataGetNew(this.type);
}
