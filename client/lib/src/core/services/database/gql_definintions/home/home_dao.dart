import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/home/__generated__/queries.gql.dart';
import 'package:graphql/client.dart';

class HomeDAO {
  final DatabaseService db;

  HomeDAO({required this.db});

  Future<HomeSearchResults> searchAll(String query) {
    return db.graphQLClient.queryAndReturnParsed<HomeSearchResults>(
      QueryOptions(
        document: documentNodeQueryhomeSearch,
        variables: {'query': '%$query%'},
        parserFn: HomeSearchResults.fromJson,
      ),
    );
  }
}
