import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

class InMemoryFamiliesDAO extends Fake implements FamiliesDAO {
  final savedFamilies = <Family>[];

  @override
  Future<Family?> getFamilyRelatedFamilies({required String familyId}) async =>
      null;

  @override
  Future<Family?> updateFamily({
    required Family newFamily,
    required Family oldFamily,
  }) async {
    savedFamilies.add(newFamily);

    return newFamily;
  }
}
