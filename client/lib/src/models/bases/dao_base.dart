import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

abstract class DAOBase {
  const DAOBase({
    required this.db,
  });

  final DatabaseService db;

  GraphQLClient get graphQLClient => db.graphQLClient;
}
