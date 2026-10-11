import 'package:gql/ast.dart';

class OperationVariableCollector extends RecursiveVisitor {
  final Map<String, FragmentDefinitionNode> fragments;
  final Set<String> variables = {};
  final Set<String> reachableFragments = {};

  OperationVariableCollector(this.fragments);

  @override
  void visitVariableNode(VariableNode node) {
    variables.add(node.name.value);
  }

  @override
  void visitFragmentSpreadNode(FragmentSpreadNode node) {
    node.visitChildren(this);
    if (!reachableFragments.add(node.name.value)) return;

    fragments[node.name.value]?.accept(this);
  }
}
