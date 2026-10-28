import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class ListArrangementController {
  final QueryableType type;
  final bool inServiceContext;

  final BehaviorSubject<ListArrangement> _arrangementSubject;

  ListArrangement get value => _arrangementSubject.value;

  Stream<ListArrangement> get stream => _arrangementSubject.stream;

  Stream<List<OrderBy>> get orderByStream => _arrangementSubject
      .map((arrangement) => arrangement.orderBy)
      .distinct(const ListEquality<OrderBy>().equals);

  Stream<FieldMetadata?> get secondLineFieldStream => _arrangementSubject
      .map((arrangement) => arrangement.secondLineField)
      .distinct();

  ListArrangementController({
    required this.type,
    required List<OrderBy> Function() defaultOrderBy,
    this.inServiceContext = false,
  }) : _arrangementSubject = BehaviorSubject.seeded(
         ViewObjectDetails.getLastArrangementFor(
           type: type,
           orElse: defaultOrderBy,
           inServiceContext: inServiceContext,
         ),
       );

  Future<void> edit(BuildContext context) async {
    final editedArrangement = await ListArrangementSheet.show(
      context,
      queryableType: type,
      initialArrangement: value,
    );
    if (editedArrangement == null) return;

    _maybeTrackArrangementSave(editedArrangement);
    _arrangementSubject.add(editedArrangement);
    unawaited(
      ViewObjectDetails.saveLastArrangementFor(
        type: type,
        arrangement: editedArrangement,
        inServiceContext: inServiceContext,
      ),
    );
  }

  void _maybeTrackArrangementSave(ListArrangement editedArrangement) {
    if (editedArrangement == value) return;

    AnalyticsService.I.track(ListArrangementSave(type, editedArrangement));
  }

  void dispose() {
    unawaited(_arrangementSubject.close());
  }
}
