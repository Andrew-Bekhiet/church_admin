import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';

import 'gql_key_field_checker.dart';
import 'gql_user_can_edit_checker.dart';

/// Guards the edit button: `ViewObjectDetails` gates it on
/// `User.canEditObject`, which reads `userCanEdit` off the object. A read
/// operation that omits the field leaves the model at its `false` default,
/// silently hiding the action from users who do have permission.
void main() {
  const rules = UserCanEditRules(
    exemptions: [
      (operation: 'classesForService', field: 'classes'),
      (operation: 'personsNames', field: 'persons'),
      (operation: 'personHistoryAnalysis', field: 'personsByPk'),
      (operation: 'personServicesClassesGroups', field: 'personsByPk'),
    ],
  );

  test('every read selection of an editable type selects userCanEdit', () {
    const schemaPath = 'lib/src/core/graphql/schema.graphql';
    const operationsDir = 'lib/src/core/services/database/gql_definintions';

    final schema = GqlSchemaIndex.fromDocument(
      parseString(File(schemaPath).readAsStringSync()),
    );

    final fragments = <String, FragmentDefinitionNode>{};
    final operations = <OperationDefinitionNode>[];
    for (final file in _allGqlFilesIn(operationsDir)) {
      for (final def in parseString(file.readAsStringSync()).definitions) {
        switch (def) {
          case FragmentDefinitionNode():
            fragments[def.name.value] = def;

          case OperationDefinitionNode():
            operations.add(def);
        }
      }
    }

    final visitor = UserCanEditCompletenessVisitor(
      schema: schema,
      fragments: fragments,
      rules: rules,
    );

    for (final operation in operations) {
      if (operation.type == OperationType.mutation) continue;

      final rootType = schema.rootType(operation.type);
      expect(
        rootType,
        isNotNull,
        reason:
            'No root type for ${operation.type} '
            '(operation "${operation.name?.value ?? '<anonymous>'}").',
      );
      visitor.visitOperation(operation, rootType!);
    }

    final violations = visitor.violations;
    expect(
      violations,
      isEmpty,
      reason: '\n${violations.map((v) => v.message).join('\n')}',
    );
  });

  group('checker behavior', () {
    const schemaSource = '''
type subscription_root {
  familiesByPk: Families
  districtsByPk: Districts
}

type Families {
  id: uuid
  name: String
  userCanEdit: Boolean
  address: Addresses
}

type Addresses {
  id: uuid
  area: Areas
}

type Areas {
  id: uuid
  userCanEdit: Boolean
}

type Districts {
  id: uuid
  name: String
}
''';

    List<UserCanEditViolation> run(
      String operationSource, {
      UserCanEditRules rules = const UserCanEditRules(exemptions: []),
    }) {
      final schema = GqlSchemaIndex.fromDocument(parseString(schemaSource));
      final fragments = <String, FragmentDefinitionNode>{};
      final operations = <OperationDefinitionNode>[];
      for (final def in parseString(operationSource).definitions) {
        switch (def) {
          case FragmentDefinitionNode():
            fragments[def.name.value] = def;

          case OperationDefinitionNode():
            operations.add(def);
        }
      }

      final visitor = UserCanEditCompletenessVisitor(
        schema: schema,
        fragments: fragments,
        rules: rules,
      );
      for (final operation in operations) {
        visitor.visitOperation(operation, schema.rootType(operation.type)!);
      }

      return visitor.violations;
    }

    test('visitor_whenSelectionOmitsUserCanEdit_reportsTheSelection', () {
      final violations = run('''
subscription watchFamily {
  familiesByPk {
    id
    name
  }
}
''');

      expect(
        violations.single,
        isA<UserCanEditViolation>()
            .having((v) => v.operation, 'operation', 'watchFamily')
            .having((v) => v.fieldPath, 'fieldPath', 'familiesByPk')
            .having((v) => v.type, 'type', 'Families'),
      );
    });

    test('visitor_whenSelectionNamesUserCanEdit_reportsNothing', () {
      final violations = run('''
subscription watchFamily {
  familiesByPk {
    id
    userCanEdit
  }
}
''');

      expect(violations, isEmpty);
    });

    test('visitor_whenAFragmentSuppliesUserCanEdit_reportsNothing', () {
      final violations = run('''
fragment Family on Families {
  id
  userCanEdit
}

subscription watchFamily {
  familiesByPk {
    ...Family
  }
}
''');

      expect(violations, isEmpty);
    });

    test('visitor_whenTheTypeHasNoUserCanEditField_reportsNothing', () {
      final violations = run('''
subscription watchDistrict {
  districtsByPk {
    id
    name
  }
}
''');

      expect(violations, isEmpty);
    });

    test('visitor_whenAnEditableTypeIsNestedDeeper_reportsTheNestedPath', () {
      final violations = run('''
subscription watchFamily {
  familiesByPk {
    userCanEdit
    address {
      id
      area {
        id
      }
    }
  }
}
''');

      expect(
        violations.single,
        isA<UserCanEditViolation>()
            .having((v) => v.fieldPath, 'fieldPath', 'area')
            .having((v) => v.type, 'type', 'Areas'),
      );
    });

    test('visitor_whenTheSelectionIsExempt_reportsNothing', () {
      final violations = run(
        '''
subscription watchFamily {
  familiesByPk {
    id
  }
}
''',
        rules: const UserCanEditRules(
          exemptions: [(operation: 'watchFamily', field: 'familiesByPk')],
        ),
      );

      expect(violations, isEmpty);
    });
  });
}

Iterable<File> _allGqlFilesIn(String dir) => Directory(dir)
    .listSync(recursive: true)
    .whereType<File>()
    .where((f) => f.path.endsWith('.gql') && !f.path.contains('__generated__'));
