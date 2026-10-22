import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_object_writes.dart';

class FakeStreetsDAO extends Fake
    with FakeObjectWrites<Street>
    implements StreetsDAO {
  List<Street> streets = const [];
  final streetsByName = <String, Street>{};
  final streetsNearPoint = <Point, List<Street>>{};
  final streetIdsByAreaId = <String, Set<String>>{};
  Object? lookupFailure;

  @override
  PaginatableStreamBase<Street> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => PaginatableStream.simple(
    factory: (_) => Stream.value(PaginatableStreamResponse(data: streets)),
  );

  @override
  Future<List<Street>> query({
    bool onlineFirst = false,
    String? searchQuery,
    List<Filter>? where,
    List<OrderBy>? orderBy,
    int? limit,
  }) async {
    if (lookupFailure case final failure?) throw failure;

    final nearFilter = where?.firstWhereOrNull(
      (filter) => filter.operator is WithinDistanceOperator,
    );
    final areaFilter = where?.firstWhereOrNull(
      (filter) => filter.operator == PrimitiveOperator.eq,
    );
    final candidates = nearFilter != null
        ? streetsNearPoint[nearFilter.value] ?? const <Street>[]
        : [?streetsByName[searchQuery]];

    return candidates
        .where(
          (street) =>
              areaFilter == null ||
              (streetIdsByAreaId[areaFilter.value]?.contains(street.id) ??
                  false),
        )
        .toList();
  }
}
