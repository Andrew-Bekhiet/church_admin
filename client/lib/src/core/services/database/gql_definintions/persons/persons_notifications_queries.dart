import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/data_checks_document_transformer.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/persons/__generated__/queries.graphql.dart';
import 'package:graphql/client.dart';

/// The persons a warning names: those whose latest record is on or before
/// the date. A person who was never recorded has no latest record and is
/// left out.
class PersonsNotificationsQueries {
  static const int _namesShown = 25;

  final DatabaseService db;

  DBGraphQLClient get graphQLClient => db.graphQLClient;

  const PersonsNotificationsQueries({required this.db});

  Future<Iterable<Person>> getPersonsConfessionWarning({
    required DateTime date,
  }) => _personsNamed(
    Input_PersonFilterInput(
      lastConfessionDay: Input_PersonFilterLastConfessionDay(
        lessThanOrEqual: date,
      ),
    ),
  );

  Future<Iterable<Person>> getPersonsKodasWarning({required DateTime date}) =>
      _personsNamed(
        Input_PersonFilterInput(
          lastKodasDay: Input_PersonFilterLastKodasDay(lessThanOrEqual: date),
        ),
      );

  Future<Iterable<Person>> getPersonsAttendanceWarning({
    required DateTime date,
  }) => _personsNamed(
    Input_PersonFilterInput(
      lastAttendedAt: Input_PersonFilterLastAttendedAt(lessThanOrEqual: date),
    ),
  );

  Future<Iterable<Person>> getPersonsVisitWarning({required DateTime date}) =>
      _personsNamed(
        Input_PersonFilterInput(
          lastVisitAt: Input_PersonFilterLastVisitAt(lessThanOrEqual: date),
        ),
      );

  Future<Iterable<Person>> getBirthdayPersons({required DateTime date}) =>
      _personsNamed(
        Input_PersonFilterInput(
          birthday: Input_PersonFilterBirthday(
            eq:
                '${date.month.toString().padLeft(2, '0')}-'
                '${date.day.toString().padLeft(2, '0')}',
          ),
        ),
      );

  Future<Iterable<Person>> _personsNamed(Input_PersonFilterInput filter) {
    final document = DataChecksDocumentTransformer.removeDataChecksIfDisabled(
      documentNodeQuerypersons,
    );

    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: document,
        operationName: 'persons',
        variables: Variables_Query_persons(
          filter: filter,
          sort: [
            Input_PersonSortInput(
              field: Enum_PersonSortField.NAME,
              order: Enum_SortOrder.ASC,
            ),
          ],
          first: _namesShown,
        ).toJson(),
        parserFn: (data) =>
            AshResultParser(document).page(Person.fromJson)(data).items,
      ),
    );
  }
}
