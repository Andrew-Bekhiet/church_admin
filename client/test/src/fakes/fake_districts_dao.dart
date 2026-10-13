import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/districts_dao.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeDistrictsDAO extends Fake implements DistrictsDAO {
  final districtsByName = <String, District>{};

  @override
  Future<List<District>> query({
    bool onlineFirst = false,
    String? searchQuery,
    List<Filter>? where,
    List<OrderBy>? orderBy,
    int? limit,
  }) async => [?districtsByName[searchQuery]];
}
