import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide JsonSerializable;
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

class CADatabaseRepository implements DatabaseRepository {
  static CADatabaseRepository get instance => GetIt.I<CADatabaseRepository>();
  static CADatabaseRepository get I => instance;

  Stream<QueryResult<GetUserInfoStream$SubscriptionRoot$Users>>
      getUserInfoStream({required String uid}) {
    final subscription = GetUserInfoStreamSubscription(
      variables: GetUserInfoStreamArguments(uid: UuidValue(uid)),
    );
    return GetIt.I<GraphQLClient>()
        .subscribe(
          SubscriptionOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) => GetUserInfoStream$SubscriptionRoot$Users.fromJson(
                m.values.single),
          ),
        )
        .map(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsKodasWarning$QueryRoot>> getPersonsKodasWarning(
      {required DateTime date}) {
    final subscription = GetPersonsKodasWarningQuery(
      variables: GetPersonsKodasWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsKodasWarning$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsAttendanceWarning$QueryRoot>>
      getPersonsMeetingWarning({required DateTime date}) {
    final subscription = GetPersonsAttendanceWarningQuery(
      variables: GetPersonsAttendanceWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsAttendanceWarning$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsVisitWarning$QueryRoot>> getPersonsVisitWarning(
      {required DateTime date}) {
    final subscription = GetPersonsVisitWarningQuery(
      variables: GetPersonsVisitWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsVisitWarning$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsConfessionWarning$QueryRoot>>
      getPersonsConfessionWarning({required DateTime date}) {
    final subscription = GetPersonsConfessionWarningQuery(
      variables: GetPersonsConfessionWarningArguments(dateFilter: date),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsConfessionWarning$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }

  Future<QueryResult<GetPersonsBirthday$QueryRoot>> getBirthdayPersons(
      {required DateTime date}) {
    final subscription = GetPersonsBirthdayQuery(
      variables: GetPersonsBirthdayArguments(
        //2022-06-25T12:30:00.440Z => 06-25
        dateFilter: date.toIso8601String().split('-').sublist(1, 3).join('-'),
      ),
    );
    return GetIt.I<GraphQLClient>()
        .query(
          QueryOptions(
            document: subscription.document,
            operationName: subscription.operationName,
            variables: subscription.variables.toJson().stripNullValues(),
            parserFn: (m) =>
                GetPersonsBirthday$QueryRoot.fromJson(m.values.single),
          ),
        )
        .then(_exceptionsMiddleware);
  }

  DelegatingPaginatableStream<Person> getPersonsStream$({
    Stream<String?>? searchQuery,
  }) {
    String? lastSearch;

    return DelegatingPaginatableStream<Person>(
      onQuery: (instance, offset) {
        return (searchQuery ?? Stream.value(null))
            .debounceTime(const Duration(milliseconds: 400))
            .distinct(
              (p, n) =>
                  p == n || (n == '' && p == null) || (p == '' && n == null),
            )
            .switchMap(
          (search) {
            if (search != null &&
                search.isNotEmpty &&
                lastSearch != search &&
                offset != 0) {
              instance.loadPage(0);
              return Stream.value(DelegatingStreamResult(result: []));
            }

            final Stream<QueryResult<Iterable<Person>>> subscriptionStream;

            final addWhere = [
              if (lastSearch == search && offset > 0)
                PersonsBoolExp(
                  name: StringComparisonExp(
                    $gt: instance
                        .currentValue[
                            (offset - 1) * instance.limit + instance.limit - 1]
                        .name,
                  ),
                ),
            ];

            if (search != null && search.isNotEmpty) {
              final SearchPersonsSubscription subscription =
                  SearchPersonsSubscription(
                variables: SearchPersonsArguments(
                  limit: instance.limit,
                  addWhere: addWhere,
                  searchQuery: '%' + search + '%',
                ),
              );

              subscriptionStream = GetIt.I<GraphQLClient>().subscribe(
                SubscriptionOptions(
                  document: subscription.document,
                  operationName: subscription.operationName,
                  variables: subscription.variables.toJson().stripNullValues(),
                  parserFn: (d) => SearchPersons$SubscriptionRoot.fromJson(d)
                      .persons
                      .map((e) => Person.fromJson(e.toJson())),
                ),
              );
            } else {
              final GetPersonsStreamSubscription subscription =
                  GetPersonsStreamSubscription(
                variables: GetPersonsStreamArguments(
                  limit: instance.limit,
                  addWhere: addWhere,
                ),
              );

              subscriptionStream = GetIt.I<GraphQLClient>().subscribe(
                SubscriptionOptions(
                  document: subscription.document,
                  operationName: subscription.operationName,
                  variables: subscription.variables.toJson().stripNullValues(),
                  parserFn: (d) => GetPersonsStream$SubscriptionRoot.fromJson(d)
                      .persons
                      .map((e) => Person.fromJson(e.toJson())),
                ),
              );
            }

            return subscriptionStream
                .map(_exceptionsMiddleware)
                .map(
                  (event) => _clampResults(
                    lastSearch,
                    search,
                    offset,
                    instance,
                    event.parsedData!.toList(),
                  ),
                )
                .map((event) {
              lastSearch = search;
              return event;
            });
          },
        );
      },
    );
  }

  DelegatingStreamResult<T> _clampResults<T extends ViewableWithID>(
    String? lastSearch,
    String? search,
    int updateEvent,
    DelegatingPaginatableStream<T> instance,
    List<T> result,
  ) {
    final List<T> sublist;
    final current = instance.currentValueOrNull ?? <T>[];
    final start = instance.currentOffset * instance.limit;
    final end = start + instance.limit;

    if (lastSearch == search) {
      sublist = result.sublist(0, min(instance.limit, result.length));

      return DelegatingStreamResult(
        result: current.length >= end
            ? (current..replaceRange(start, end, sublist))
            : (current..addAll(sublist)),
        canPaginateForward: result.length >= instance.limit,
        canPaginateBackward: result.length >= instance.limit,
      );
    } else {
      return DelegatingStreamResult(
        result: result.sublist(0, min(instance.limit, result.length)),
        canPaginateBackward: result.length >= instance.limit,
        canPaginateForward: result.length >= instance.limit,
      );
    }
  }

  @override
  Never batch() => throw UnimplementedError();
  @override
  Never collection(String path) => throw UnimplementedError();
  @override
  Never collectionGroup(String path) => throw UnimplementedError();
  @override
  Never disableNetwork() => throw UnimplementedError();
  @override
  Never doc(String path) => throw UnimplementedError();
  @override
  Never enableNetwork() => throw UnimplementedError();
  @override
  Never getObjectFromLink(Uri deepLink) => throw UnimplementedError();
  @override
  Never getPerson(String id) => throw UnimplementedError();
  @override
  Never getUserData(String uid) => throw UnimplementedError();
  @override
  Never recoverDocument(
    BuildContext context,
    JsonRef documentRef, {
    bool nested = true,
    bool keepBackup = true,
  }) =>
      throw UnimplementedError();
  @override
  Never get runTransaction => throw UnimplementedError();

  @override
  Never getPersonsStream({
    String orderBy = 'Name',
    bool descending = false,
    QueryCompleter queryCompleter = kDefaultQueryCompleter,
  }) =>
      throw UnimplementedError();
}

Q _exceptionsMiddleware<T, Q extends QueryResult<T>>(Q result) {
  if (result.hasException) throw result.exception!;
  return result;
}

T stripNullValuesFrom<T>(T json) => json is Json
    ? {
        for (final kv in json.entries)
          if (kv.value is Json || kv.value is List)
            kv.key: stripNullValuesFrom(kv.value)
          else if (kv.value != null)
            kv.key: kv.value,
      } as T
    : json is List
        ? [
            for (final e in json)
              if (e is Json || e is List)
                stripNullValuesFrom(e)
              else if (e != null)
                e,
          ] as T
        : json;

Set<S> getEmptySet<S>() => isSubtype<ViewableWithID?, S>()
    ? EqualitySet<S>(
        EqualityBy<S, String?>((o) => (o as ViewableWithID?)?.id),
      )
    : <S>{};

Set<S> setWrapper<S>(Iterable<S> old) => isSubtype<ViewableWithID?, S>()
    ? EqualitySet<S>.from(
        EqualityBy<S, String?>((o) => (o as ViewableWithID?)?.id),
        old,
      )
    : old.toSet();

extension JsonX on Json {
  Json stripNullValues() => stripNullValuesFrom(this);
}

extension ListX on List {
  List stripNullValues() => stripNullValuesFrom(this);
}
