import 'dart:async';
import 'dart:developer';

import 'package:churchdata_core/churchdata_core.dart';
import 'package:rxdart/rxdart.dart';

class DelegatingPaginatableStream<T extends ViewableWithID>
    extends PaginatableStreamBase<T> {
  DelegatingPaginatableStream({
    required OnQuery<T> streamDelegate,
    super.limit = 100,
  })  : _query = streamDelegate,
        super.private() {
    _querySubscription = _query(
      this,
      _offset.map(
        (o) {
          log('Listening to offset ' + o.toString());
          return o;
        },
      ),
    ).map(
      (r) {
        _canPaginateBackward = r.canPaginateBackward ?? _canPaginateBackward;
        _canPaginateForward = r.canPaginateForward ?? _canPaginateForward;
        _isLoading = false;

        return r.result;
      },
    ).listen(_subject.add, onError: _subject.addError);
  }

  late final StreamSubscription<List<T>> _querySubscription;

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

  final BehaviorSubject<List<T>> _subject = BehaviorSubject();
  final BehaviorSubject<int> _offset = BehaviorSubject.seeded(0);

  @override
  int get currentOffset => _offset.value;

  @override
  ValueStream<List<T>> get stream =>
      _subject.map((event) => event.toList()).shareValue();

  @override
  List<T> get currentValue => _subject.value.toList();

  @override
  List<T>? get currentValueOrNull => _subject.valueOrNull?.toList();

  List<T> get currentList => _subject.value;
  List<T>? get currentSetOrNull => _subject.valueOrNull;

  @override
  Future<void> loadPage(int offset) async {
    _canPaginateForward = false;
    _canPaginateBackward = false;
    _isLoading = true;

    _offset.add(offset);
  }

  @override
  Future<void> loadNextPage() async {
    if (canPaginateForward) {
      _canPaginateForward = false;
      _isLoading = true;
      _offset.add((currentValue.length / limit).ceil());
    } else {
      throw StateError('Cannot paginate forward');
    }
  }

  @override
  Future<void> loadPreviousPage() async {
    if (canPaginateBackward) {
      _canPaginateBackward = false;
      _isLoading = true;
      _offset.add(_offset.value - 1);
    } else {
      throw StateError('Cannot paginate backward');
    }
  }

  @override
  Future<void> dispose() async {
    await _subject.close();
    await _querySubscription.cancel();
    await _offset.close();
  }
}

typedef OnQuery<TParsed extends ViewableWithID>
    = Stream<DelegatingStreamResult<TParsed>> Function(
  DelegatingPaginatableStream<TParsed> instance,
  Stream<int> offset,
);

class DelegatingStreamResult<T> {
  final List<T> result;
  final bool? canPaginateBackward;
  final bool? canPaginateForward;

  DelegatingStreamResult({
    required this.result,
    this.canPaginateBackward,
    this.canPaginateForward,
  });
}
