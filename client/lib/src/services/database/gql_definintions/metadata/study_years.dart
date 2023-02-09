import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import 'study_years/__generated__/queries.graphql.dart';
import 'study_years/__generated__/subscriptions.graphql.dart';

class StudyYearsDAO extends DAOBase {
  const StudyYearsDAO({
    required super.db,
  });

  GQLPaginatableStream<StudyYear> paginateStudyYears({
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
                  Variables$Subscription$watchAllStudyYears.new,
                  Input$StudyYearsBoolExp.new,
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
        variables: Variables$Query$getStudyYearName(order: order).toJson(),
        parserFn: db.parser.singleParser(StudyYear.fromJson),
      ),
    );
  }
}
