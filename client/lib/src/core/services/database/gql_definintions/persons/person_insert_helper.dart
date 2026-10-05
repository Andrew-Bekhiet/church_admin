import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/mutations.gql.dart';

class PersonInsertHelper {
  final Person newPerson;

  List<Input_ContactsInsertInput> get _existingFamilyContacts =>
      switch (newPerson.family) {
        Family(:final id) =>
          newPerson.familyContacts
              .map((f) => f.toInsertInput(familyId: id))
              .toList(),
        null => const [],
      };

  Variables_Mutation_insertPerson get variables =>
      Variables_Mutation_insertPerson(
        newPerson: newPerson.toInsertInput(),
        familyContacts: _existingFamilyContacts,
        insertFamilyContacts: _existingFamilyContacts.isNotEmpty,
      );

  PersonInsertHelper({required this.newPerson});
}
