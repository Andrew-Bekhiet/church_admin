import 'package:church_admin/church_admin.dart';

abstract class DAOBase {
  const DAOBase({
    required this.db,
  });

  final DatabaseService db;

  DBGraphQLClient get graphQLClient => db.graphQLClient;
}
