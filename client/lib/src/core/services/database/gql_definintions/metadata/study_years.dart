import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years/__generated__/queries.gql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years/__generated__/subscriptions.gql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class StudyYearsDAO extends DAOBase<StudyYear> with StreamableDAO<StudyYear> {
  StudyYearsDAO({
    required super.db,
  }) : super(fromJson: StudyYear.fromJson);

  @override
  StreamAllConfig<StudyYear> get baseStreamAllConfig => const StreamAllConfig(
        document: documentNodeSubscriptionwatchAllStudyYears,
      );

  @override
  StreamSingleByIdConfig<StudyYear> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  @override
  PaginatableStreamBase<StudyYear> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    int? overrideTotalLimit,
  }) {
    return streamingProxy.streamAll(
      streamAllConfig: baseStreamAllConfig,
      streamCountConfig: baseStreamCountConfig,
      searchQuery: searchQuery,
      where: where,
      orderBy:
          orderBy ?? Stream.value([OrderBy(field: StudyYearFields().order)]),
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
