import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '__generated__/queries.gql.dart';

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
