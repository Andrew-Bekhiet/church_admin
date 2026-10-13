import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts_dao.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeDistrictsDAO extends Fake implements DistrictsDAO {
  final districtsByName = <String, District>{};

  @override
  PaginatableStreamBase<District> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
  }) => PaginatableStream.simple(
    factory: (_) async* {
      final name = await searchQuery?.first;

      yield PaginatableStreamResponse(
        data: [?districtsByName[name]],
      );
    },
  );
}
