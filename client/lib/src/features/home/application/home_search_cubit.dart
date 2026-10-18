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

  Stream<HomeSearchState> _statesOfSearching(String query) async* {
    if (query.isEmpty) {
      yield const HomeSearchIdle();

      return;
    }

    yield const HomeSearchLoading();

    try {
      final sections = (await _homeDao.searchAll(query)).sections;

      yield sections.isEmpty
          ? const HomeSearchNothingFound()
          : HomeSearchFound(sections);
    } catch (error) {
      yield HomeSearchFailed(error);
    }
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    await _queries.close();

    return super.close();
  }
}
