import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class HomeSearchCubit extends Cubit<HomeSearchState> {
  static const Duration debounceDuration = Duration(milliseconds: 500);

  final HomeDAO _homeDao;
  final BehaviorSubject<String> _queries = BehaviorSubject();
  late final StreamSubscription<HomeSearchState> _subscription;

  HomeSearchCubit({HomeDAO? homeDao})
    : _homeDao = homeDao ?? DatabaseService.I.home,
      super(const HomeSearchIdle()) {
    _subscription = _queries
        .debounce(
          (query) => query.isEmpty
              ? Stream<void>.value(null)
              : TimerStream<void>(null, debounceDuration),
        )
        .distinct()
        .switchMap(_statesOfSearching)
        .listen(emit);
  }

  void search(String query) {
    _queries.add(query);
  }

  Stream<HomeSearchState> _statesOfSearching(String query) {
    if (query.isEmpty) return Stream.value(const HomeSearchIdle());

    return Stream.fromFuture(Future.sync(() => _homeDao.searchAll(query)))
        .map<HomeSearchState>(
          (results) => switch (results.sections) {
            [] => const HomeSearchNothingFound(),
            final sections => HomeSearchFound(sections),
          },
        )
        .onErrorReturnWith((error, _) => HomeSearchFailed(error))
        .startWith(const HomeSearchLoading());
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    await _queries.close();

    return super.close();
  }
}
