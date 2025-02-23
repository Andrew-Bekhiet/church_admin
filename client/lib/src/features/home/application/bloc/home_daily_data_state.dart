import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class HomeDailyDataState extends Equatable {
  const HomeDailyDataState();

  @override
  List<Object?> get props => [];
}

final class HomeDailyDataLoading extends HomeDailyDataState {
  const HomeDailyDataLoading();

  @override
  List<Object?> get props => [];
}

final class HomeDailyDataLoaded extends HomeDailyDataState {
  final HomeDailyData data;

  const HomeDailyDataLoaded({required this.data});

  @override
  List<Object?> get props => [data];
}
