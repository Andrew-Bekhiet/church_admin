import 'package:gql/ast.dart';

/// Selects `__typename` on every object a field selects, as generated
/// selections do, so the cache can identify it.
class TypenameAdder extends TransformingVisitor {
  static const _typename = FieldNode(name: NameNode(value: '__typename'));

  const TypenameAdder();

  @override
  FieldNode visitFieldNode(FieldNode node) => switch (node.selectionSet) {
    SelectionSetNode(:final selections) when !selections.contains(_typename) =>
      FieldNode(
        alias: node.alias,
        name: node.name,
        arguments: node.arguments,
        directives: node.directives,
        selectionSet: SelectionSetNode(selections: [_typename, ...selections]),
      ),
    _ => node,
  };
}
