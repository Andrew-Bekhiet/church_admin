import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fakes/fake_person_types_dao.dart';
import '../../../utils.dart';

void main() {
  const father = PersonType(id: 'father', name: 'الأب', isFamilyAdmin: true);
  const mother = PersonType(id: 'mother', name: 'الأم', isFamilyAdmin: true);

  late FakePersonTypesDAO personTypes;

  setUp(
    () => personTypes = FakePersonTypesDAO()..familyRoles = [father, mother],
  );
  tearDown(defaultTearDown);

  blocTest<FamilyRolesCubit, List<PersonType>>(
    'no family roles are available before they are loaded',
    build: () => FamilyRolesCubit(personTypes),
    verify: (cubit) => expect(cubit.state, isEmpty),
  );

  blocTest<FamilyRolesCubit, List<PersonType>>(
    'the family roles become available once loaded',
    build: () => FamilyRolesCubit(personTypes),
    act: (cubit) => cubit.load(),
    expect: () => [personTypes.familyRoles],
  );

  blocTest<FamilyRolesCubit, List<PersonType>>(
    'roles that arrive after the cubit is closed are dropped',
    build: () => FamilyRolesCubit(personTypes),
    act: (cubit) async {
      final loading = cubit.load();
      await cubit.close();
      await loading;
    },
    expect: () => const <List<PersonType>>[],
  );
}
