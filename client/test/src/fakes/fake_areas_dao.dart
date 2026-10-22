import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_object_writes.dart';

class FakeAreasDAO extends Fake
    with FakeObjectWrites<Area>
    implements AreasDAO {
  final areasByStreetId = <String, List<Area>>{};
  final areasAtPoint = <Point, Area>{};
  final lookupGatesByStreetId = <String, Completer<void>>{};
  final areaIdsContainingPoint = <Point, Set<String>>{};
  List<Area> pickableAreas = const [];
  Object? lookupFailure;

  @override
  PaginatableStreamBase<Area> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => PaginatableStream.simple(
    factory: (_) =>
        Stream.value(PaginatableStreamResponse(data: pickableAreas)),
  );

  @override
  Future<List<Area>> query({
    bool onlineFirst = false,
    String? searchQuery,
    List<Filter>? where,
    List<OrderBy>? orderBy,
    int? limit,
  }) async {
    final streetId = where?.firstOrNull?.value;
    await lookupGatesByStreetId[streetId]?.future;
    if (lookupFailure case final failure?) throw failure;

    final boundsFilter = where?.firstWhereOrNull(
      (filter) => filter.operator == PointSpatialOperator.intersects,
    );
    if (boundsFilter != null && where?.length == 1) {
      return [?areasAtPoint[boundsFilter.value]];
    }

    final areasOfStreet = areasByStreetId[streetId] ?? const [];
    if (boundsFilter == null) return areasOfStreet;

    final idsContainingPoint = areaIdsContainingPoint[boundsFilter.value];

    return areasOfStreet
        .where((area) => idsContainingPoint?.contains(area.id) ?? false)
        .toList();
  }
}
