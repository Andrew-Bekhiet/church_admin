import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// Object types whose id-less occurrences are intentionally embedded and are
/// neither keyed nor id-selected.
typedef KeyFieldExemption = ({String operation, String field});

/// Minimal schema view: type name -> field name -> unwrapped named type, plus
/// the object type backing each operation root.
class GqlSchemaIndex {
  final Map<String, Map<String, String>> _objectFields;
  final Map<OperationType, String> _roots;

  const GqlSchemaIndex._(this._objectFields, this._roots);

  factory GqlSchemaIndex.fromDocument(DocumentNode document) {
    final objectFields = <String, Map<String, String>>{};
    final roots = <OperationType, String>{};

    for (final def in document.definitions) {
      switch (def) {
        case ObjectTypeDefinitionNode():
          objectFields[def.name.value] = {
            for (final field in def.fields)
              field.name.value: _unwrap(field.type),
          };
        case SchemaDefinitionNode():
          for (final op in def.operationTypes) {
            roots[op.operation] = op.type.name.value;
          }
      }
    }

    if (roots.isEmpty) {
      const fallback = {
        OperationType.query: 'query_root',
        OperationType.mutation: 'mutation_root',
        OperationType.subscription: 'subscription_root',
      };
      for (final entry in fallback.entries) {
        if (objectFields.containsKey(entry.value)) {
          roots[entry.key] = entry.value;
        }
      }
    }

    return GqlSchemaIndex._(objectFields, roots);
  }

  static String _unwrap(TypeNode type) => switch (type) {
    NamedTypeNode() => type.name.value,
    ListTypeNode() => _unwrap(type.type),
    _ => throw ArgumentError('Unknown TypeNode: $type'),
  };

  bool isObjectType(String type) => _objectFields.containsKey(type);

  String? rootType(OperationType type) => _roots[type];

  String? fieldType(String parentType, String fieldName) =>
      _objectFields[parentType]?[fieldName];
}

enum ViolationKind { missingKeyFields, missingIdentity, missingTypename }

/// A single selection that would be silently embedded by `normalize`.
class KeyFieldViolation {
  final ViolationKind kind;
  final String operation;
  final String fieldPath;
  final String type;
  final List<String> missingKeyFields;

  const KeyFieldViolation({
    required this.kind,
    required this.operation,
    required this.fieldPath,
    required this.type,
    this.missingKeyFields = const [],
  });

  String get message => switch (kind) {
    ViolationKind.missingKeyFields =>
      'Operation "$operation": selection "$fieldPath" of keyed type "$type" is '
          'missing key field(s): ${missingKeyFields.join(', ')}.',
    ViolationKind.missingIdentity =>
      'Operation "$operation": selection "$fieldPath" of type "$type" has no '
          'id, no type policy, and no exemption. Add `id` to the selection, add '
          'an explicit TypePolicy, or exempt it.',
    ViolationKind.missingTypename =>
      'Operation "$operation": selection "$fieldPath" of type "$type" does '
          'not select __typename, so the cache cannot identify it.',
  };
}

/// Decides whether a single object selection satisfies its keying rules.
class KeyFieldRules {
  static const hasuraTransientSuffixes = [
    'Aggregate',
    'AggregateFields',
    'AvgFields',
    'MaxFields',
    'MinFields',
    'SumFields',
    'StddevFields',
    'StddevPopFields',
    'StddevSampFields',
    'VarPopFields',
    'VarSampFields',
    'VarianceFields',
    'MutationResponse',
  ];

  final List<KeyFieldExemption> exemptions;
  final List<String> transientSuffixes;
  final bool requireTypename;

  const KeyFieldRules({
    required this.exemptions,
    required this.transientSuffixes,
    this.requireTypename = false,
  });

  KeyFieldViolation? evaluate({
    required String type,
    required Set<String> presentFields,
    required String operation,
    required String fieldPath,
  }) {
    if (requireTypename && !presentFields.contains('__typename')) {
      return KeyFieldViolation(
        kind: ViolationKind.missingTypename,
        operation: operation,
        fieldPath: fieldPath,
        type: type,
      );
    }

    final keyFields = GqlTypePolicies.policies[type]?.keyFields;
    if (keyFields != null) {
      if (keyFields.isEmpty) return null;
      final missing = keyFields.keys
          .where((key) => !presentFields.contains(key))
          .toList();
      if (missing.isEmpty) return null;
      return KeyFieldViolation(
        kind: ViolationKind.missingKeyFields,
        operation: operation,
        fieldPath: fieldPath,
        type: type,
        missingKeyFields: missing,
      );
    }

    if (presentFields.contains('id')) return null;
    if (_isTransient(type)) return null;
    if (exemptions.any(
      (e) => e.operation == operation && e.field == fieldPath,
    )) {
      return null;
    }

    return KeyFieldViolation(
      kind: ViolationKind.missingIdentity,
      operation: operation,
      fieldPath: fieldPath,
      type: type,
    );
  }

  bool _isTransient(String type) =>
      transientSuffixes.any((suffix) => type.endsWith(suffix));
}

/// Collects the response-visible field names at a single selection level,
/// flattening through fragment spreads and inline fragments but not descending
/// into nested object selections.
class PresentFields {
  final Map<String, FragmentDefinitionNode> fragments;

  const PresentFields(this.fragments);

  Set<String> at(String parentType, SelectionSetNode selectionSet) {
    final names = <String>{};
    for (final selection in selectionSet.selections) {
      switch (selection) {
        case FieldNode():
          names.add((selection.alias ?? selection.name).value);
        case FragmentSpreadNode():
          final fragment = fragments[selection.name.value]!;
          names.addAll(
            at(fragment.typeCondition.on.name.value, fragment.selectionSet),
          );
        case InlineFragmentNode():
          final on = selection.typeCondition?.on.name.value ?? parentType;
          names.addAll(at(on, selection.selectionSet));
      }
    }
    return names;
  }
}

/// Walks operation selection sets, delegating each object selection to
/// [KeyFieldRules]. gql visitors carry no ancestor context, so the resolved
/// parent type is tracked on an explicit stack pushed in [visitFieldNode] and
/// on fragment boundaries.
class KeyFieldCompletenessVisitor extends RecursiveVisitor {
  final GqlSchemaIndex schema;
  final Map<String, FragmentDefinitionNode> fragments;
  final KeyFieldRules rules;
  final PresentFields presentFields;
  final List<KeyFieldViolation> violations = [];
  final List<String> _typeStack = [];
  String _operation = '<anonymous>';

  KeyFieldCompletenessVisitor({
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

    final violation = rules.evaluate(
      type: fieldType,
      presentFields: presentFields.at(fieldType, childSet),
      operation: _operation,
      fieldPath: (node.alias ?? node.name).value,
    );
    if (violation != null) violations.add(violation);

    _typeStack.add(fieldType);
    visitSelectionSetNode(childSet);
    _typeStack.removeLast();
  }

  @override
  void visitFragmentSpreadNode(FragmentSpreadNode node) {
    final fragment = fragments[node.name.value]!;
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
