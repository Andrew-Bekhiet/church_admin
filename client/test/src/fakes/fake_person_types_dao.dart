import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types_dao.dart';
import 'package:flutter_test/flutter_test.dart';

class FakePersonTypesDAO extends Fake implements PersonTypesDAO {
  List<PersonType> familyRoles = const [];

  @override
  Future<List<PersonType>> fetchFamilyRoles() async => familyRoles;
}
