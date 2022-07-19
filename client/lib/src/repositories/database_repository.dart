import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide StudyYear;
import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide JsonSerializable;
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

part 'database/areas.dart';
part 'database/persons.dart';
part 'database/services.dart';
part 'database/study_years.dart';
part 'database/users.dart';

class CADatabaseRepository implements DatabaseRepository {
  static CADatabaseRepository get instance => GetIt.I<CADatabaseRepository>();
  static CADatabaseRepository get I => instance;

  final areas = AreasQueries._();
  final persons = PersonsQueries._();
  final services = ServicesQueries._();
  final studyYears = StudyYearsQueries._();
  final users = UsersQueries._();

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

DelegatingStreamResult<T> _clampResults<T extends ViewableWithID>(
  String? lastSearch,
  String? search,
  int offset,
  DelegatingPaginatableStream<T> instance,
  List<T> result,
) {
  final List<T> sublist = result.sublist(0, min(instance.limit, result.length));
  final current = instance.currentValueOrNull ?? <T>[];
  final start = instance.currentOffset * instance.limit;
  final int end = start + instance.limit;

  if (lastSearch == search) {
    return DelegatingStreamResult(
      result: current.length >= end
          ? (current..replaceRange(start, end, sublist))
          : (current..addAll(sublist)),
      canPaginateForward: result.length >= instance.limit,
    );
  } else {
    return DelegatingStreamResult(
      result: current.length >= end
          ? (current..replaceRange(start, end, sublist))
          : sublist,
      canPaginateForward: result.length >= instance.limit,
    );
  }
}
