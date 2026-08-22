import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
  const HomeEvent();
}

final class LoadHomeSummaryAndTabs extends HomeEvent {
  const LoadHomeSummaryAndTabs();
}

final class HomeDailyDataGetNew extends HomeEvent {
  final HomeDailyDataType type;

  const HomeDailyDataGetNew(this.type);
}

final class HomeChangeMode extends HomeEvent {
  final HomeMode mode;

  const HomeChangeMode(this.mode);
}

final class HomeSwitchMode extends HomeEvent {
  const HomeSwitchMode();
}

final class HomeSwitchPageListType extends HomeEvent {
  final int pageIndex;
  final ViewableObjectListType listType;

  @override
  List<Object?> get props => [pageIndex, listType];

  const HomeSwitchPageListType(this.pageIndex, this.listType);
}

final class HomePageChange extends HomeEvent {
  final double page;

  @override
  List<Object?> get props => [page];

  const HomePageChange(this.page);
}
