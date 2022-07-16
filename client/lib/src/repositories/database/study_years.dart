part of '../database_repository.dart';

class StudyYearsQueries {
  StudyYearsQueries._();

  Future<StudyYear?> getStudyYearName(int order) {
    final GetStudyYearNameQuery query = GetStudyYearNameQuery(
      variables: GetStudyYearNameArguments(order: order),
    );

    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: query.document,
            operationName: query.operationName,
            variables: query.variables.toJson().stripNullValues(),
            parserFn: (d) {
              final data =
                  GetStudyYearName$QueryRoot.fromJson(d).studyYearsByPk;

              if (data == null) return null;

              return StudyYear.fromJson(data.toJson());
            },
          ),
        )
        .then(_exceptionsMiddleware)
        .then((value) => value.parsedData);
  }
}
