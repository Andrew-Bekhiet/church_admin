import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';

class AshResultParser {
  static final _rootFields = Expando<String>();

  static String rootFieldOf(DocumentNode document) =>
      _rootFields[document] ??= switch (document.definitions
          .whereType<OperationDefinitionNode>()
          .first
          .selectionSet
          .selections
          .whereType<FieldNode>()
          .firstWhere((field) => field.name.value != '__typename')) {
        FieldNode(:final alias?) => alias.value,
        FieldNode(:final name) => name.value,
      };

  final String rootField;

  AshResultParser(DocumentNode document) : rootField = rootFieldOf(document);

  KeysetPage<T> Function(Json data) page<T>(T Function(Json) fromJson) =>
      (data) {
        final page = _root(data)! as Map;

        return KeysetPage(
          items: [
            for (final item in page['results'] as List? ?? const [])
              fromJson((item as Map).cast<String, dynamic>()),
          ],
          count: page['count'] as int?,
          endKeyset: page['endKeyset'] as String?,
        );
      };

  T? Function(Json data) entity<T>(T Function(Json) fromJson) => (data) {
    final entity = _root(data) as Map?;

    return entity == null ? null : fromJson(entity.cast<String, dynamic>());
  };

  T Function(Json data) mutationResult<T>(T Function(Json) fromJson) =>
      (data) =>
          mutationResultOrNull(fromJson)(data) ??
          (throw StateError('$rootField answered without a result record'));

  T? Function(Json data) mutationResultOrNull<T>(T Function(Json) fromJson) =>
      (data) {
        final result = (_root(data) as Map?)?['result'] as Map?;

        return result == null ? null : fromJson(result.cast<String, dynamic>());
      };

  T Function(Json data) actionResult<T>(T Function(Object? value) convert) =>
      (data) => convert(_root(data));

  Object? _root(Json data) => data[rootField];
}
