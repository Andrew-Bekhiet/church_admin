import 'package:gql/ast.dart';

/// Hasura serves a subscription's root fields under `query_root` with the
/// same arguments, so only the operation type needs to change.
class SubscriptionToQueryConverter extends TransformingVisitor {
  static DocumentNode convert(DocumentNode document) =>
      transform(document, const [SubscriptionToQueryConverter()]);

  const SubscriptionToQueryConverter();

  @override
  OperationDefinitionNode visitOperationDefinitionNode(
    OperationDefinitionNode node,
  ) => switch (node.type) {
    OperationType.subscription => OperationDefinitionNode(
      span: node.span,
      type: OperationType.query,
      name: node.name,
      variableDefinitions: node.variableDefinitions,
      directives: node.directives,
      selectionSet: node.selectionSet,
    ),
    _ => node,
  };
}
