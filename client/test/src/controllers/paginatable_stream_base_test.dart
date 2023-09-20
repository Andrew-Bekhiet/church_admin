import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/src/streams/value_stream.dart';

import 'paginatable_stream_base_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ValueStream>()])
void main() {
  test('PaginatableStreamBase.listen', () {
    final unit = FakePaginatableStreamBase(stream: MockValueStream(), limit: 1)
      ..listen((_) {});

    verify(unit.stream.listen(any));
  });
}

class FakePaginatableStreamBase<T> extends PaginatableStreamBase<T> {
  @override
  final ValueStream<List<T>> stream;

  FakePaginatableStreamBase({required this.stream, required super.limit});

  @override
  bool get canPaginateBackward => false;

  @override
  bool get canPaginateForward => false;

  @override
  int get currentOffset => 0;

  @override
  List<T> get currentValue => [];

  @override
  List<T>? get currentValueOrNull => [];

  @override
  Future<void> dispose() async {}

  @override
  bool get isLoading => false;

  @override
  Future<void> loadNextPage() async {}

  @override
  Future<void> loadPage(int offset) async {}

  @override
  Future<void> loadPreviousPage() async {}

  @override
  ValueStream<bool> get onLoadingChanged => throw UnimplementedError();
}
