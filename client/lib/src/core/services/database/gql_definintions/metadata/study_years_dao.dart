import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years/__generated__/queries.graphql.dart';
import 'package:graphql/client.dart';

class StudyYearsDAO extends DAOBase<StudyYear>
    with KeysetStreamableDAO<StudyYear> {
  @override
  StreamAllConfig<StudyYear> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQuerystudyYears,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultOrderBy: [OrderBy(field: StudyYearFields().order)],
    ),
  );

  @override
  StreamSingleByIdConfig<StudyYear> get baseStreamSingleByIdConfig =>
      throw UnimplementedError();

  StudyYearsDAO({
    required super.db,
  }) : super(fromJson: StudyYear.fromJson);

  Future<StudyYear?> getStudyYearName(int order) =>
      graphQLClient.queryAndReturnParsedNullable(
        QueryOptions(
          document: documentNodeQuerystudyYear,
          variables: Variables_Query_studyYear(id: '$order').toJson(),
          parserFn: AshResultParser(
            documentNodeQuerystudyYear,
          ).entity(fromJson),
        ),
      );
}
