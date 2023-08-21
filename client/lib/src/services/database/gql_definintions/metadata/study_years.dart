import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/metadata/study_years/__generated__/queries.gql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'study_years/__generated__/subscriptions.gql.dart';

class StudyYearsDAO extends DAOBase<StudyYear>
    with StreamableDAO<StudyYear, Input_StudyYearsBoolExp> {
  StudyYearsDAO({
    required super.db,
  }) : super(fromJson: StudyYear.fromJson);

  @override
  StreamAllConfig<StudyYear, Input_StudyYearsBoolExp> get baseStreamAllConfig =>
      StreamAllConfig(
        document: documentNodeSubscriptionwatchAllStudyYears,
        varsConstructor: ({required event, required where}) => graphQLClient
            .getDefaultSearchVars(
              event,
              Variables_Subscription_watchAllStudyYears.new,
              Input_StudyYearsBoolExp.new,
            )
            .toJson(),
      );

  @override
  StreamSingleByIdConfig<StudyYear> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

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
