import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'fake_object_writes.dart';

class InMemoryFamiliesDAO extends Fake
    with FakeObjectWrites<Family>
    implements FamiliesDAO {
  final savedFamilies = <Family>[];
  List<Family> families = const [];
  Family? relatedFamilies;
  Completer<void>? relatedFamiliesGate;
  Object? relatedFamiliesError;

  @override
  PaginatableStreamBase<Family> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => PaginatableStream.simple(
    factory: (_) => Stream.value(PaginatableStreamResponse(data: families)),
  );

  @override
  PaginatableStreamBase<Family> streamAllWithAddresses({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
  }) => PaginatableStream.simple(
    factory: (_) => Stream.value(PaginatableStreamResponse(data: families)),
  );

  @override
  Future<Family?> getFamilyRelatedFamilies({required String familyId}) async {
    await relatedFamiliesGate?.future;
    if (relatedFamiliesError case final error?) throw error;

    return relatedFamilies;
  }

  @override
  Future<Family?> updateFamily({
    required Family newFamily,
    required Family oldFamily,
  }) async {
    savedFamilies.add(newFamily);

    return newFamily;
  }
}
