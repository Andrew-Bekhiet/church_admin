import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

sealed class HomeSearchState extends Equatable {
  @override
  List<Object?> get props => [];

  const HomeSearchState();
}

final class HomeSearchIdle extends HomeSearchState {
  const HomeSearchIdle();
}

final class HomeSearchLoading extends HomeSearchState {
  const HomeSearchLoading();
}

final class HomeSearchFound extends HomeSearchState {
  final List<HomeSearchSection> sections;

  @override
  List<Object?> get props => [sections];

  const HomeSearchFound(this.sections);
}

final class HomeSearchNothingFound extends HomeSearchState {
  const HomeSearchNothingFound();
}

final class HomeSearchFailed extends HomeSearchState {
  final Object error;

  @override
  List<Object?> get props => [error];

  const HomeSearchFailed(this.error);
}
