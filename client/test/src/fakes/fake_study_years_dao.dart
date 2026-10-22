import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/study_years_dao.dart';
import 'package:flutter_test/flutter_test.dart';

class FakeStudyYearsDAO extends Fake implements StudyYearsDAO {
  List<StudyYear> studyYears = const [];

  @override
  PaginatableStreamBase<StudyYear> streamAll({
    Stream<String?>? searchQuery,
    Stream<List<Filter>>? where,
    Stream<List<OrderBy>>? orderBy,
    Stream<FieldMetadata?>? secondLineField,
    int? overrideTotalLimit,
  }) => PaginatableStream.simple(
    factory: (_) => Stream.value(
      PaginatableStreamResponse(
        data: studyYears,
        totalCount: studyYears.length,
      ),
    ),
  );
}
