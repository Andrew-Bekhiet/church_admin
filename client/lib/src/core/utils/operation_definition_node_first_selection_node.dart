import 'package:gql/ast.dart';

extension OperationDefinitionNodeFirstSelectionNode on OperationDefinitionNode {
  FieldNode get firstSelectionNode => switch (selectionSet.selections.first) {
    final FieldNode node => node,
    final other => throw StateError(
      'Expected the first selection of '
      '${name?.value ?? 'the anonymous operation'} to be a field, '
      'but got ${other.runtimeType}',
    ),
  };
}
