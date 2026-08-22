import 'package:gql/ast.dart';

import 'gql_key_field_checker.dart';

/// Selections of an editable type that intentionally never reach
/// `User.canEditObject`.
typedef UserCanEditExemption = ({String operation, String field});

/// A single selection of an editable type that omits `userCanEdit`.
class UserCanEditViolation {
  final String operation;
  final String fieldPath;
  final String type;

  const UserCanEditViolation({
    required this.operation,
    required this.fieldPath,
    required this.type,
  });

  String get message =>
      'Operation "$operation": selection "$fieldPath" of editable type "$type" '
      'does not select $userCanEditField, so `User.canEditObject` reads the '
      'model default and the edit button can never render.';
}

/// Decides whether a single selection of an editable type is a violation.
class UserCanEditRules {
  final List<UserCanEditExemption> exemptions;

  const UserCanEditRules({required this.exemptions});

  UserCanEditViolation? evaluate({
    required String type,
    required Set<String> presentFields,
    required String operation,
    required String fieldPath,
  }) {
    if (presentFields.contains(userCanEditField)) return null;
    if (exemptions.any(
      (e) => e.operation == operation && e.field == fieldPath,
    )) {
      return null;
    }

    return UserCanEditViolation(
      operation: operation,
      fieldPath: fieldPath,
      type: type,
    );
  }
}

/// Walks operation selection sets, delegating every selection of a type that
/// declares `userCanEdit` to [UserCanEditRules]. Mirrors
/// [KeyFieldCompletenessVisitor]: gql visitors carry no ancestor context, so
/// the resolved parent type is tracked on an explicit stack.
class UserCanEditCompletenessVisitor extends RecursiveVisitor {
  final GqlSchemaIndex schema;
  final Map<String, FragmentDefinitionNode> fragments;
  final UserCanEditRules rules;
  final PresentFields presentFields;
  final List<UserCanEditViolation> violations = [];
  final List<String> _typeStack = [];
  String _operation = '<anonymous>';

  UserCanEditCompletenessVisitor({
    required this.schema,
    required this.fragments,
    required this.rules,
  }) : presentFields = PresentFields(fragments);

  void visitOperation(OperationDefinitionNode operation, String rootType) {
    _operation = operation.name?.value ?? '<anonymous>';
    _typeStack
      ..clear()
      ..add(rootType);
    visitSelectionSetNode(operation.selectionSet);
  }

  @override
  void visitFieldNode(FieldNode node) {
    final childSet = node.selectionSet;
    if (childSet == null) return;

    final fieldType = schema.fieldType(_typeStack.last, node.name.value);
    if (fieldType == null || !schema.isObjectType(fieldType)) return;

    if (schema.fieldType(fieldType, userCanEditField) != null) {
      final violation = rules.evaluate(
        type: fieldType,
        presentFields: presentFields.at(fieldType, childSet),
        operation: _operation,
        fieldPath: (node.alias ?? node.name).value,
      );
      if (violation != null) violations.add(violation);
    }

    _typeStack.add(fieldType);
    visitSelectionSetNode(childSet);
    _typeStack.removeLast();
  }

  @override
  void visitFragmentSpreadNode(FragmentSpreadNode node) {
    final fragment = fragments[node.name.value];
    if (fragment == null) return;

    _typeStack.add(fragment.typeCondition.on.name.value);
    visitSelectionSetNode(fragment.selectionSet);
    _typeStack.removeLast();
  }

  @override
  void visitInlineFragmentNode(InlineFragmentNode node) {
    _typeStack.add(node.typeCondition?.on.name.value ?? _typeStack.last);
    visitSelectionSetNode(node.selectionSet);
    _typeStack.removeLast();
  }
}

const userCanEditField = 'userCanEdit';
