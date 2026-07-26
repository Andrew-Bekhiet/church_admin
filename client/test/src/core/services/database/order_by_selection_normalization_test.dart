import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/fragments.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/subscriptions.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:graphql/client.dart';

import '../../graphql/gql_key_field_checker.dart';

/// Builds `watchAllPersons` exactly as [StreamableDAOProxy] does for a sorted
/// list: the generated document with the order-by selections injected.
DocumentNode personsDocumentOrderedBy(OrderBy orderBy) => transform(
  transform(documentNodeSubscriptionwatchAllPersons, [
    AddSelectionFieldsVisitor({
      'persons': [
        ...orderBy.getSecondLineField().fieldSelection.asGQLSelectionNode(),
        ...orderBy.field.orderBySelection.asGQLSelectionNode(),
      ],
    }),
  ]),
  [const MergeDuplicateSelectionsVisitor()],
);

/// Guards the round-trip cache re-read of `watchAllPersons` when it is ordered
/// by `personType.order`.
///
/// The order-by selections are injected into the document after code
/// generation, so nothing adds `__typename` to them and they select no key
/// field. Without an identity `normalize` embeds `personType` in its parent,
/// while `watchPerson` — which selects `personType { id name }` — stores it as a
/// reference. Both writes land on the same `Persons` entity and `deepMerge`
/// keeps the union of their keys, so the entity ends up holding a reference
/// *and* the embedded fields. `denormalize` prefers the reference, whose target
/// has no `order`, and the read fails as partial data — surfacing as the
/// `CacheMissException` that kills the subscription.
void main() {
  group('order-by selection normalization', () {
    const personId = '11111111-1111-1111-1111-111111111111';
    const personTypeId = '22222222-2222-2222-2222-222222222222';
    const personTypeName = 'أرملة';
    const personTypeOrder = 18;

    late InMemoryStore store;
    late GraphQLCache cache;

    setUp(() {
      store = InMemoryStore();
      cache = GraphQLCache(
        store: store,
        typePolicies: GqlTypePolicies.policies,
      );
    });

    final orderBy = OrderBy(field: PersonFields().personType);

    final listRequest = Request(
      operation: Operation(
        document: personsDocumentOrderedBy(orderBy),
        operationName: 'watchAllPersons',
      ),
      variables: const {
        'where': <dynamic>[],
        'orderBy': [
          {
            'personType': {'order': 'ASC_NULLS_LAST'},
          },
        ],
        'limit': 101,
      },
    );

    /// The person as `watchAllPersons` returns it: the generated selections plus
    /// the injected `personType`, which has no generated counterpart.
    Json listData(Json personType) => {
      'persons': [
        {
          ...Fragment_Person(
            id: stringToUuid(personId),
            name: 'Nabil',
          ).toJson(),
          'personType': personType,
        },
      ],
    };

    /// The fields the built document actually asks the server for, so the
    /// payload never claims an identity the operation did not select.
    Json injectedPersonType() {
      const values = {
        '__typename': 'PersonTypes',
        'id': personTypeId,
        'name': personTypeName,
        'order': personTypeOrder,
      };

      final persons = listRequest.operation.document.definitions
          .whereType<OperationDefinitionNode>()
          .first
          .selectionSet
          .selections
          .whereType<FieldNode>()
          .firstWhere((f) => f.name.value == 'persons');
      final personType = persons.selectionSet!.selections
          .whereType<FieldNode>()
          .firstWhere((f) => f.name.value == 'personType');

      return {
        for (final field
            in personType.selectionSet!.selections.whereType<FieldNode>())
          field.name.value: values[field.name.value],
      };
    }

    /// Opening a person's details caches `personType` as a reference.
    void writePersonDetail() {
      cache.writeQuery(
        const Request(
          operation: Operation(
            document: documentNodeSubscriptionwatchPerson,
            operationName: 'watchPerson',
          ),
          variables: {'id': personId},
        ),
        broadcast: false,
        data: Subscription_watchPerson(
          personsByPk: Subscription_watchPerson_personsByPk(
            id: stringToUuid(personId),
            name: 'Nabil',
            classes: [],
            gender: true,
            groups: [],
            isServant: false,
            isShammas: false,
            otherPhones: const {},
            martialStatus: 'single',
            services: [],
            hobbies: [],
            tags: [],
            personType: Subscription_watchPerson_personsByPk_personType(
              id: stringToUuid(personTypeId),
              name: personTypeName,
            ),
          ),
        ).toJson(),
      );
    }

    test('selects an identity for the injected order-by object', () {
      expect(
        injectedPersonType().keys,
        containsAll(['__typename', 'id']),
        reason:
            'without these normalize embeds personType instead of keying it',
      );
    });

    test('injects keyable selections for every orderable person field', () {
      final schema = GqlSchemaIndex.fromDocument(
        parseString(File('lib/src/core/graphql/schema.graphql').readAsStringSync()),
      );
      final violations = <String>[];

      for (final field in PersonFields().allFields) {
        if (!field.isOrderable || field.isCodeOnly) continue;

        final document = personsDocumentOrderedBy(OrderBy(field: field));
        final visitor = KeyFieldCompletenessVisitor(
          schema: schema,
          fragments: {
            for (final def
                in document.definitions.whereType<FragmentDefinitionNode>())
              def.name.value: def,
          },
          rules: const KeyFieldRules(
            // `Addresses` has an id and `fragment Address` selects it, so
            // ordering by an address sub-field still produces the reference /
            // embedded split this test guards against. `AddressFields` exposes
            // no `id`, so [FieldMetadata.wrapSelection] cannot see one to
            // select — closing this needs the id declared on the metadata.
            exemptions: [
              (operation: 'watchAllPersons', field: 'address'),
            ],
            transientSuffixes: [],
          ),
        );

        for (final operation
            in document.definitions.whereType<OperationDefinitionNode>()) {
          visitor.visitOperation(
            operation,
            schema.rootType(operation.type)!,
          );
        }

        violations.addAll(
          visitor.violations.map((v) => 'orderBy ${field.name}: ${v.message}'),
        );
      }

      expect(violations, isEmpty, reason: '\n${violations.join('\n')}');
    });

    test('re-reads the list when nothing else has cached the person type', () {
      cache.writeQuery(
        listRequest,
        broadcast: false,
        data: listData(injectedPersonType()),
      );

      expect(cache.readQuery(listRequest), isNotNull);
    });

    test('re-reads the list after a detail operation cached the person type', () {
      writePersonDetail();

      cache.writeQuery(
        listRequest,
        broadcast: false,
        data: listData(injectedPersonType()),
      );

      expect(cache.readQuery(listRequest), isNotNull);
      expect(
        store.get('Persons:$personId')!['personType'],
        isNot(allOf(contains(r'$ref'), contains('order'))),
        reason:
            'personType must be stored either as a reference or embedded, '
            'never as a merge of both',
      );
    });
  });
}
