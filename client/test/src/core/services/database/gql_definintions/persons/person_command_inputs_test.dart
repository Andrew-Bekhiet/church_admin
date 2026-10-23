import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/person_command_inputs.dart';
import 'package:flutter_test/flutter_test.dart';

import '../places/place_fixtures.dart';
import 'person_fixtures.dart';

void main() {
  test('a person created in an existing family sends no address', () {
    final person = const CreatePersonInFamily(
      family: PersonFixtures.gergesFamily,
    ).draftPerson('person-new');

    final input = PersonCommandInputs(person: person).create;

    expect(input.familyId, PersonFixtures.gergesFamily.id);
    expect(input.address, isNull);
  });

  test('a person without a family sends the area and street it lives on', () {
    final person = Person(
      id: 'person-new',
      name: 'مينا',
      address: Address(area: PlaceFixtures.shubra, street: PlaceFixtures.nile),
    );

    final input = PersonCommandInputs(person: person).create;

    expect(input.familyId, isNull);
    expect(input.address?.areaId, PlaceFixtures.shubra.id);
    expect(input.address?.streetId, PlaceFixtures.nile.id);
  });
}
