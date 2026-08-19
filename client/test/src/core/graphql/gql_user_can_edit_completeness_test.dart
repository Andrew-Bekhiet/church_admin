import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';

import 'gql_key_field_checker.dart';

/// Guards the edit button: `ViewObjectDetails` gates it on
/// `User.canEditObject`, which reads `userCanEdit` off the object. A
/// single-object operation that omits the field leaves the model at its
/// `false` default, silently hiding the action from users who do have
/// permission.
void main() {
  test('every by-pk selection of an editable type selects userCanEdit', () {
    const schemaPath = 'lib/src/core/graphql/schema.graphql';
    const operationsDir = 'lib/src/core/services/database/gql_definintions';

    final schema = GqlSchemaIndex.fromDocument(
      parseString(File(schemaPath).readAsStringSync()),
    );

    final fragments = <String, FragmentDefinitionNode>{};
    final operations = <OperationDefinitionNode>[];
    for (final file in _gqlFiles(operationsDir)) {
      for (final def in parseString(file.readAsStringSync()).definitions) {
        switch (def) {
          case FragmentDefinitionNode():
            fragments[def.name.value] = def;

          case OperationDefinitionNode():
            operations.add(def);
        }
      }
    }

    final violations = <String>[];
    for (final operation in operations) {
      if (operation.type != OperationType.subscription) continue;

      final rootType = schema.rootType(operation.type);
      if (rootType == null) continue;

      for (final field
          in operation.selectionSet.selections.whereType<FieldNode>()) {
        if (!field.name.value.endsWith('ByPk')) continue;

        final type = schema.fieldType(rootType, field.name.value);
        if (type == null) continue;
        if (schema.fieldType(type, _userCanEdit) == null) continue;

        if (!_selectedFieldsOf(
          field.selectionSet,
          fragments,
        ).contains(_userCanEdit)) {
          violations.add(
            'Operation "${operation.name?.value ?? '<anonymous>'}": '
            '"${field.name.value}" of type "$type" does not select '
            '$_userCanEdit, so the edit button can never render.',
          );
        }
      }
    }

    expect(violations, isEmpty, reason: '\n${violations.join('\n')}');
  });
}

const _userCanEdit = 'userCanEdit';

Set<String> _selectedFieldsOf(
  SelectionSetNode? selectionSet,
  Map<String, FragmentDefinitionNode> fragments,
) => {
  for (final selection in selectionSet?.selections ?? const <SelectionNode>[])
    ...switch (selection) {
      FieldNode(:final name) => {name.value},
      FragmentSpreadNode(:final name) => _selectedFieldsOf(
        fragments[name.value]?.selectionSet,
        fragments,
      ),
      InlineFragmentNode(:final selectionSet) => _selectedFieldsOf(
        selectionSet,
        fragments,
      ),
      _ => const <String>{},
    },
};

Iterable<File> _gqlFiles(String dir) => Directory(dir)
    .listSync(recursive: true)
    .whereType<File>()
    .where((f) => f.path.endsWith('.gql') && !f.path.contains('__generated__'));
