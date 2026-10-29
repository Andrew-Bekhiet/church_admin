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

sealed class HomeSearchSettled extends HomeSearchState {
  const HomeSearchSettled();
}

final class HomeSearchFound extends HomeSearchSettled {
  final List<HomeSearchSection> sections;

  @override
  List<Object?> get props => [sections];

  const HomeSearchFound(this.sections);
}

final class HomeSearchNothingFound extends HomeSearchSettled {
  const HomeSearchNothingFound();
}

final class HomeSearchFailed extends HomeSearchSettled {
  final Object error;

  @override
  List<Object?> get props => [error];

  const HomeSearchFailed(this.error);
}
