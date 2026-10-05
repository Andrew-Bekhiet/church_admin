import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/contacts/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/contacts/__generated__/mutations.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/contacts/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/contacts/__generated__/subscriptions.gql.dart';
import 'package:graphql/client.dart';

class ContactsDAO {
  final DatabaseService _db;
  DBGraphQLClient get graphQLClient => _db.graphQLClient;

  ContactsDAO({required this._db});

  Future<List<PhoneContact>> fetchOwnContacts({required String personId}) {
    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQueryownPhoneContacts,
        operationName: 'ownPhoneContacts',
        variables: Variables_Query_ownPhoneContacts(
          personId: personId.toUuid(),
        ).toJson(),
        parserFn: (data) => Query_ownPhoneContacts.fromJson(
          data,
        ).contacts.map(_phoneContactOf).toList(),
      ),
    );
  }

  Stream<List<PhoneContact>> watchOwnContacts({required String personId}) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchOwnPhoneContacts,
        operationName: 'watchOwnPhoneContacts',
        variables: Variables_Subscription_watchOwnPhoneContacts(
          personId: personId.toUuid(),
        ).toJson(),
        parserFn: (data) => Subscription_watchOwnPhoneContacts.fromJson(
          data,
        ).contacts.map(_phoneContactOf).toList(),
      ),
    );
  }

  Future<List<FamilyPhoneContact>> fetchFamilyContacts({
    required String familyId,
    String? excludedPersonId,
  }) {
    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQueryfamilyPhoneContacts,
        operationName: 'familyPhoneContacts',
        variables: Variables_Query_familyPhoneContacts(
          familyId: familyId.toUuid(),
        ).toJson(),
        parserFn: (data) => _relativesExcept(
          excludedPersonId,
          Query_familyPhoneContacts.fromJson(data).resolvedContacts,
        ),
      ),
    );
  }

  Stream<List<FamilyPhoneContact>> watchFamilyContacts({
    required String familyId,
    String? excludedPersonId,
  }) {
    return graphQLClient.subscribeAndReturnParsed(
      SubscriptionOptions(
        document: documentNodeSubscriptionwatchFamilyPhoneContacts,
        operationName: 'watchFamilyPhoneContacts',
        variables: Variables_Subscription_watchFamilyPhoneContacts(
          familyId: familyId.toUuid(),
        ).toJson(),
        parserFn: (data) => _relativesExcept(
          excludedPersonId,
          Subscription_watchFamilyPhoneContacts.fromJson(
            data,
          ).resolvedContacts,
        ),
      ),
    );
  }

  Future<List<PersonType>> fetchFamilyRoles() {
    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQueryfamilyRoles,
        operationName: 'familyRoles',
        parserFn: (data) => Query_familyRoles.fromJson(data).personTypes
            .map(
              (role) => PersonType(
                id: role.id.uuid,
                name: role.name,
                order: role.order,
                isFamilyAdmin: role.isFamilyAdmin,
                isHidden: role.isHidden,
              ),
            )
            .toList(),
      ),
    );
  }

  Future<void> applyChanges(PhoneContactChanges changes) async {
    await graphQLClient.mutate(
      MutationOptions(
        document: documentNodeMutationapplyPhoneContactChanges,
        operationName: 'applyPhoneContactChanges',
        variables: Variables_Mutation_applyPhoneContactChanges(
          deletedIds: changes.deletedIds.map((id) => id.toUuid()).toList(),
          updates: [
            for (final contact in changes.updates)
              Input_ContactsUpdates(
                where: Input_ContactsBoolExp(
                  id: Input_UuidComparisonExp($_eq: contact.id.toUuid()),
                ),
                $_set: Input_ContactsSetInput.fromJson({
                  'phone': contact.phone,
                  'label': contact.label,
                  'isMainPhone': contact.isMainPhone,
                }),
              ),
          ],
          inserts: [
            for (final contact in changes.inserts)
              Input_ContactsInsertInput(
                id: contact.id.toUuid(),
                phone: contact.phone,
                label: contact.label,
                isMainPhone: contact.isMainPhone,
                personId: switch (contact.owner) {
                  PersonPhoneOwner(:final personId) => personId.toUuid(),
                  FamilyRolePhoneOwner() => null,
                },
                familyId: switch (contact.owner) {
                  FamilyRolePhoneOwner(:final familyId) => familyId.toUuid(),
                  PersonPhoneOwner() => null,
                },
                personTypeId: switch (contact.owner) {
                  FamilyRolePhoneOwner(:final personTypeId) =>
                    personTypeId.toUuid(),
                  PersonPhoneOwner() => null,
                },
              ),
          ],
        ).toJson(),
      ),
    );
  }

  List<FamilyPhoneContact> _relativesExcept(
    String? excludedPersonId,
    List<Fragment_FamilyPhoneContact> rows,
  ) => [
    for (final row in rows)
      if (row case Fragment_FamilyPhoneContact(
        id: final id?,
        phone: final phone?,
        isMainPhone: final isMainPhone?,
        personType: final role?,
      ) when excludedPersonId == null || row.personId?.uuid != excludedPersonId)
        FamilyPhoneContact(
          contact: PhoneContact.fromColumns(
            id: id.uuid,
            phone: phone,
            label: row.label,
            isMainPhone: isMainPhone,
            personId: row.personId?.uuid,
            familyId: row.familyId?.uuid,
            personTypeId: row.personTypeId?.uuid,
          ),
          role: PersonType(
            id: role.id.uuid,
            name: role.name,
            order: role.order,
            isFamilyAdmin: role.isFamilyAdmin,
            isHidden: role.isHidden,
          ),
        ),
  ];

  PhoneContact _phoneContactOf(Fragment_PhoneContact row) =>
      PhoneContact.fromColumns(
        id: row.id.uuid,
        phone: row.phone,
        label: row.label,
        isMainPhone: row.isMainPhone,
        personId: row.personId?.uuid,
        familyId: row.familyId?.uuid,
        personTypeId: row.personTypeId?.uuid,
      );
}
