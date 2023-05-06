import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import 'study_years/__generated__/queries.gql.dart';
import 'study_years/__generated__/subscriptions.gql.dart';

class StudyYearsDAO extends DAOBase<StudyYear> {
  const StudyYearsDAO({
    required super.db,
  });

  @override
  GQLPaginatableStream<StudyYear> streamAll({
    Stream<String?>? searchQuery,
  }) {
    return GQLPaginatableStream<StudyYear>(
      searchQuery: searchQuery,
      subscriptionStreamCallback: (event) {
        return graphQLClient.subscribeAndReturnParsed(
          SubscriptionOptions(
            document: documentNodeSubscriptionwatchAllStudyYears,
            operationName: 'watchAllStudyYears',
            variables: graphQLClient
                .getDefaultSearchVars(
                  event,
                  Variables_Subscription_watchAllStudyYears.new,
                  Input_StudyYearsBoolExp.new,
                )
                .toJson(),
            parserFn: db.parser.singleListParser(StudyYear.fromJson),
          ),
        );
      },
    );
  }

  Future<StudyYear?> getStudyYearName(int order) {
    return graphQLClient.queryAndReturnParsedNullable(
      QueryOptions(
        document: documentNodeQuerygetStudyYearName,
        operationName: 'getStudyYearName',
        variables: Variables_Query_getStudyYearName(order: order).toJson(),
        parserFn: db.parser.singleParser(StudyYear.fromJson),
      ),
    );
  }
}
