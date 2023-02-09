import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/__generated__/schema.graphql.dart';
import 'package:graphql/client.dart';

import '__generated__/queries.graphql.dart';

class PersonsNotificationsQueries extends DAOBase {
  const PersonsNotificationsQueries({required super.db});

  Future<Iterable<Person>> _getPersonsNames({
    List<Input$PersonsBoolExp>? where,
    int? limit,
    List<Input$PersonsOrderBy>? orderBy,
  }) async {
    return graphQLClient.queryAndReturnParsed(
      QueryOptions(
        document: documentNodeQuerypersonsNames,
        operationName: 'personsNames',
        variables: Variables$Query$personsNames(
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
        Input$PersonsBoolExp(
          confessionHistory_aggregate:
              Input$history_confession_history_aggregate_bool_exp(
            count: Input$history_confession_history_aggregate_bool_exp_count(
              predicate: Input$IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input$PersonsBoolExp(
            confessionHistory: Input$HistoryConfessionHistoryBoolExp(
              dayId: Input$DateComparisonExp(
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
        Input$PersonsBoolExp(
          kodasHistory_aggregate:
              Input$history_kodas_history_aggregate_bool_exp(
            count: Input$history_kodas_history_aggregate_bool_exp_count(
              predicate: Input$IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input$PersonsBoolExp(
            kodasHistory: Input$HistoryKodasHistoryBoolExp(
              dayId: Input$DateComparisonExp(
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
        Input$PersonsBoolExp(
          attendanceHistory_aggregate:
              Input$history_attendance_history_aggregate_bool_exp(
            count: Input$history_attendance_history_aggregate_bool_exp_count(
              predicate: Input$IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input$PersonsBoolExp(
            attendanceHistory: Input$HistoryAttendanceHistoryBoolExp(
              dayId: Input$DateComparisonExp(
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
        Input$PersonsBoolExp(
          visitHistory_aggregate:
              Input$history_visit_history_aggregate_bool_exp(
            count: Input$history_visit_history_aggregate_bool_exp_count(
              predicate: Input$IntComparisonExp(
                $_neq: 0,
              ),
            ),
          ),
          $_not: Input$PersonsBoolExp(
            visitHistory: Input$HistoryVisitHistoryBoolExp(
              time: Input$TimestamptzComparisonExp(
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
        Input$PersonsBoolExp(
          birthday: Input$StringComparisonExp(
            //2022-06-25T12:30:00.440Z => 06-25
            $_eq: date.toIso8601String().split('-').sublist(1, 3).join('-'),
          ),
        ),
      ],
    );
  }
}
