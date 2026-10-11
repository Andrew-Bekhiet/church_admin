import 'package:church_admin/church_admin.dart';
import 'package:gql/ast.dart';
import 'package:meta/meta.dart';

abstract class DAOBase<T extends ViewableWithID> {
  final DatabaseService db;

  @protected
  final T Function(Json json) fromJson;

  DBGraphQLClient get graphQLClient => db.graphQLClient;
  const DAOBase({
    required this.db,
    required this.fromJson,
  });

  @protected
  @mustCallSuper
  DocumentNode transformDocument(
    DocumentNode document, {
    StreamableDAOParameters<T>? parameters,
  }) =>
      ArrangedListDocument(
        document,
      ).arrangedBy(
        parameters?.arrangement ?? const ListArrangement(orderBy: []),
      );
}
