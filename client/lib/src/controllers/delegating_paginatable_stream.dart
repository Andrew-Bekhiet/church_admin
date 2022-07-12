import 'dart:async';

import 'package:churchdata_core/churchdata_core.dart';
import 'package:rxdart/rxdart.dart';

class DelegatingPaginatableStream<T extends ViewableWithID>
    extends PaginatableStreamBase<T> {
  DelegatingPaginatableStream({
    required OnQuery<T> onQuery,
    super.limit = 19,
  })  : _query = onQuery,
        super.private() {
    _querySubscription = _controller
        .switchMap(
          (v) => _query(this, v).map(
            (r) {
              _canPaginateBackward =
                  r.canPaginateBackward ?? _canPaginateBackward;
              _canPaginateForward = r.canPaginateForward ?? _canPaginateForward;
              _isLoading = false;

              return r.result;
            },
          ),
        )
        .listen(_subject.add, onError: _subject.addError);
  }

  late final StreamSubscription<Set<T>> _querySubscription;

  final OnQuery<T> _query;

  bool _isLoading = true;
  @override
  bool get isLoading => _isLoading;

  bool _canPaginateBackward = false;
  @override
  bool get canPaginateBackward => _canPaginateBackward;

  bool _canPaginateForward = false;
  @override
  bool get canPaginateForward => _canPaginateForward;

  final BehaviorSubject<Set<T>> _subject = BehaviorSubject();
  final BehaviorSubject<UpdateQueryEvent> _controller =
      BehaviorSubject.seeded(UpdateQueryEvent.newQuery);

  @override
  ValueStream<List<T>> get stream =>
      _subject.map((event) => event.toList()).shareValue();

  @override
  List<T> get currentValue => _subject.value.toList();

  @override
  List<T>? get currentValueOrNull => _subject.valueOrNull?.toList();

  Set<T> get currentSet => _subject.value;
  Set<T>? get currentSetOrNull => _subject.valueOrNull;

  @override
  Future<void> loadNextPage() async {
    if (canPaginateForward) {
      _canPaginateForward = false;
      _isLoading = true;
      _controller.add(UpdateQueryEvent.forward);
    } else {
      throw StateError('Cannot paginate forward');
    }
  }

  @override
  Future<void> loadPreviousPage() async {
    if (canPaginateBackward) {
      _canPaginateBackward = false;
      _isLoading = true;
      _controller.add(UpdateQueryEvent.backward);
    } else {
      throw StateError('Cannot paginate backward');
    }
  }

  @override
  Future<void> dispose() async {
    await _subject.close();
    await _querySubscription.cancel();
    await _controller.close();
  }
}

typedef OnQuery<TParsed extends ViewableWithID>
    = Stream<DelegatingStreamResult<TParsed>> Function(
  DelegatingPaginatableStream<TParsed> instance,
  UpdateQueryEvent updateEvent,
);

class DelegatingStreamResult<T> {
  final Set<T> result;
  final bool? canPaginateBackward;
  final bool? canPaginateForward;

  DelegatingStreamResult({
    required this.result,
    this.canPaginateBackward,
    this.canPaginateForward,
  });
}
