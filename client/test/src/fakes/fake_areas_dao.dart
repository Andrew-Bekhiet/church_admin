import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeAreasDAO extends Fake implements AreasDAO {
  final areasByStreetId = <String, List<Area>>{};
  final areasAtPoint = <Point, Area>{};
  final lookupGatesByStreetId = <String, Completer<void>>{};
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
    if (boundsFilter != null) return [?areasAtPoint[boundsFilter.value]];

    return areasByStreetId[streetId] ?? const [];
  }
}
