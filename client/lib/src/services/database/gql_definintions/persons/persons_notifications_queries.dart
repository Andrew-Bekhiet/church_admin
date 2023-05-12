import 'package:church_admin/church_admin.dart';
import 'package:graphql/client.dart';

import '__generated__/queries.gql.dart';

class PersonsNotificationsQueries {
  final DatabaseService db;

  const PersonsNotificationsQueries({required this.db});

  DBGraphQLClient get graphQLClient => db.graphQLClient;

  Future<Iterable<Person>> _getPersonsNames({
    List<Input_PersonsBoolExp>? where,
    int? limit,
    List<Input_PersonsOrderBy>? orderBy,
  }) {
    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQuerypersonsNames,
        operationName: 'personsNames',
        variables: Variables_Query_personsNames(
          where: where,
          limit: limit,
          orderBy: orderBy,
        ).toJson(),
        parserFn: db.parser.singleListParser(Person.fromJson),
      ),
    );
  }

  Future<Iterable<Person>> getPersonsConfessionWarning({
    required DateTime date,
  }) {
    return _getPersonsNames(
      where: [
        Input_PersonsBoolExp(
          confessionHistoryAggregate:
              Input_HistoryConfessionHistoryAggregateBoolExp(
            count: Input_historyConfessionHistoryAggregateBoolExpCount(
              predicate: Input_IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input_PersonsBoolExp(
            confessionHistory: Input_HistoryConfessionHistoryBoolExp(
              dayId: Input_DateComparisonExp(
                $_gt: date,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<Iterable<Person>> getPersonsKodasWarning({
    required DateTime date,
  }) {
    return _getPersonsNames(
      where: [
        Input_PersonsBoolExp(
          kodasHistoryAggregate: Input_HistoryKodasHistoryAggregateBoolExp(
            count: Input_historyKodasHistoryAggregateBoolExpCount(
              predicate: Input_IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input_PersonsBoolExp(
            kodasHistory: Input_HistoryKodasHistoryBoolExp(
              dayId: Input_DateComparisonExp(
                $_gt: date,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<Iterable<Person>> getPersonsMeetingWarning({
    required DateTime date,
  }) {
    return _getPersonsNames(
      where: [
        Input_PersonsBoolExp(
          attendanceHistoryAggregate:
              Input_HistoryAttendanceHistoryAggregateBoolExp(
            count: Input_historyAttendanceHistoryAggregateBoolExpCount(
              predicate: Input_IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input_PersonsBoolExp(
            attendanceHistory: Input_HistoryAttendanceHistoryBoolExp(
              dayId: Input_DateComparisonExp(
                $_gt: date,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<Iterable<Person>> getPersonsVisitWarning({
    required DateTime date,
  }) {
    return _getPersonsNames(
      where: [
        Input_PersonsBoolExp(
          visitHistoryAggregate: Input_HistoryVisitHistoryAggregateBoolExp(
            count: Input_historyVisitHistoryAggregateBoolExpCount(
              predicate: Input_IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input_PersonsBoolExp(
            visitHistory: Input_HistoryVisitHistoryBoolExp(
              time: Input_TimestamptzComparisonExp(
                $_gt: date,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<Iterable<Person>> getBirthdayPersons({
    required DateTime date,
  }) {
    return _getPersonsNames(
      where: [
        Input_PersonsBoolExp(
          birthday: Input_StringComparisonExp(
            //2022-06-25T12:30:00.440Z => 06-25
            $_eq: date.toIso8601String().split('-').sublist(1, 3).join('-'),
          ),
        ),
      ],
    );
  }
}
