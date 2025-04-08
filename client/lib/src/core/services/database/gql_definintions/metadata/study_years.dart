import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years/__generated__/subscriptions.gql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class StudyYearsDAO extends DAOBase<StudyYear>
    with
        StreamableDAO<StudyYear, Input_StudyYearsBoolExp,
            Input_StudyYearsOrderBy> {
  StudyYearsDAO({
    required super.db,
  }) : super(fromJson: StudyYear.fromJson);

  @override
  StreamAllConfig<StudyYear, Input_StudyYearsBoolExp, Input_StudyYearsOrderBy>
      get baseStreamAllConfig => const StreamAllConfig(
            document: documentNodeSubscriptionwatchAllStudyYears,
          );

  @override
  StreamSingleByIdConfig<StudyYear> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  PaginatableStreamBase<StudyYear> streamAll({
    Stream<String?>? searchQuery,
    List<Input_StudyYearsBoolExp>? where,
    List<Input_StudyYearsOrderBy>? orderBy,
  }) {
    return streamingProxy.streamAll(
      streamAllConfig: baseStreamAllConfig,
      searchQuery: searchQuery,
      where: where,
      orderBy: orderBy ?? [Input_StudyYearsOrderBy(order: Enum_OrderBy.ASC)],
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
