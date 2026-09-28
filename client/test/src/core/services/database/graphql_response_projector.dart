import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

/// Answers a document the way the server does: projects stored rows onto
/// exactly what the document selects, merging repeated fields.
class GraphQLResponseProjector {
  final DocumentNode document;

  Map<String, FragmentDefinitionNode> get _fragments => {
    for (final fragment
        in document.definitions.whereType<FragmentDefinitionNode>())
      fragment.name.value: fragment,
  };

  const GraphQLResponseProjector(this.document);

  Json respond(Json rootRows) => _project(
    document.definitions
        .whereType<OperationDefinitionNode>()
        .single
        .selectionSet,
    rootRows,
  );

  Json _project(SelectionSetNode selectionSet, Json row) {
    final response = <String, Object?>{};

    for (final selection in selectionSet.selections) {
      switch (selection) {
        case FieldNode(:final alias, :final name, :final selectionSet):
          final key = (alias ?? name).value;
          response[key] = _merge(
            response[key],
            _projectValue(row[name.value], selectionSet),
          );

        case FragmentSpreadNode(:final name):
          final fragmentResponse = _project(
            _fragments[name.value]!.selectionSet,
            row,
          );
          for (final MapEntry(:key, :value) in fragmentResponse.entries) {
            response[key] = _merge(response[key], value);
          }

        case InlineFragmentNode(:final selectionSet):
          response.addAll(_project(selectionSet, row));
      }
    }

    return response;
  }

  Object? _projectValue(Object? value, SelectionSetNode? selectionSet) =>
      switch ((value, selectionSet)) {
        (final List<Object?> items, _) =>
          items.map((item) => _projectValue(item, selectionSet)).toList(),
        (final Json object, final selectionSet?) => _project(
          selectionSet,
          object,
        ),
        _ => value,
      };

  Object? _merge(Object? existing, Object? incoming) =>
      switch ((existing, incoming)) {
        (final Json existing, final Json incoming) => {
          ...existing,
          for (final MapEntry(:key, :value) in incoming.entries)
            key: _merge(existing[key], value),
        },
        _ => incoming,
      };
}
