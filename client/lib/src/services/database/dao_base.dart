import 'package:church_admin/church_admin.dart';
import 'package:meta/meta.dart';

abstract class DAOBase<T extends ViewableWithID> {
  const DAOBase({
    required this.db,
    required this.fromJson,
  });

  final DatabaseService db;

  DBGraphQLClient get graphQLClient => db.graphQLClient;

  @protected
  final T Function(Json json) fromJson;
}
