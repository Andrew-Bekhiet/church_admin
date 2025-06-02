import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

final class HomeDailyDataLoading extends HomeState {
  const HomeDailyDataLoading();
}

final class HomeDailyDataLoaded extends HomeState {
  final HomeDailyData data;

  const HomeDailyDataLoaded({required this.data});

  @override
  List<Object?> get props => [...super.props, data];
}
