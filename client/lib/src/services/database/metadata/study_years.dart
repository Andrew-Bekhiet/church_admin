import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '../../../../graphql/__generated__/schema.graphql.dart';
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
        return graphQLClient.subscribe(
          SubscriptionOptions(
            document: documentNodeSubscriptiongetStudyYearsStream,
            operationName: 'getStudyYearsStream',
            variables: getDefaultVariables(
              event,
              Variables$Subscription$getStudyYearsStream.new,
              Input$StudyYearsBoolExp.new,
            ).toJson(),
            parserFn: (d) => db.parseListOfT(d, StudyYear.fromJson),
          ),
        );
      },
    );
  }

  Future<StudyYear?> getStudyYearName(int order) {
    return graphQLClient
        .query(
          QueryOptions(
            document: documentNodeQuerygetStudyYearName,
            operationName: 'getStudyYearName',
            variables: Variables$Query$getStudyYearName(order: order).toJson(),
            parserFn: (d) {
              if (d.values.first == null) return null;

              return StudyYear.fromJson(d.values.first);
            },
          ),
        )
        .then(exceptionsMiddleware)
        .then((value) => value.parsedData);
  }
}
