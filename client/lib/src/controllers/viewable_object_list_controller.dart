import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:rxdart_ext/single.dart';

class ViewableObjectListController<T extends Viewable> {
  final PaginatableStreamBase<T> objectsPaginatableStream;

  final SelectionController<T> selectionController;

  final Stream<String?>? filterStream;

  ValueStream<List<T>> get filteredObjectsStream =>
      _filteredObjectsSubject?.stream ?? objectsPaginatableStream.stream;

  List<T>? get currentFilteredObjectsOrNull =>
      _filteredObjectsSubject?.valueOrNull ??
      objectsPaginatableStream.currentValueOrNull;

  late final BehaviorSubject<List<T>>? _filteredObjectsSubject;
  late final StreamSubscription<List<T>>? _filteredObjectsStreamSubscription;

  ViewableObjectListController({
    required this.objectsPaginatableStream,
    this.filterStream,
    SelectionController<T>? selectionController,
  }) : selectionController = selectionController ??
            SelectionController<T>(
              equality: EqualityBy(
                (o) => (o is ID) ? (o as ID).id : o,
              ),
            ) {
    if (filterStream != null) {
      _filteredObjectsSubject = BehaviorSubject<List<T>>();

      _filteredObjectsStreamSubscription = Rx.combineLatest2(
        objectsPaginatableStream.stream,
        filterStream!.map((f) => normalizeString(f ?? '')).distinct(),
        (objects, filter) {
          if (filter.isEmpty) return objects;

          return objects
              .where((o) => normalizeString(o.name).contains(filter))
              .toList();
        },
      ).listen(
        _filteredObjectsSubject!.add,
        onError: _filteredObjectsSubject.addError,
        onDone: _filteredObjectsSubject.close,
      );
    } else {
      _filteredObjectsSubject = null;
      _filteredObjectsStreamSubscription = null;
    }
  }

  Future<void> dispose() async {
    await selectionController.dispose();
    await objectsPaginatableStream.dispose();
    await _filteredObjectsSubject?.close();
    await _filteredObjectsStreamSubscription?.cancel();
  }
}

String normalizeString(String s) =>
    s.trim().toLowerCase().replaceAll(RegExp('أ|إ|آ'), 'ا');

int defaultOffsetFromIndex(int limit, int index) => (index / limit).floor();
