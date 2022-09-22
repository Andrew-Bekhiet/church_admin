import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show
        DatabaseRepository,
        ID,
        Json,
        JsonRef,
        QueryCompleter,
        ViewableWithID,
        kDefaultQueryCompleter;
import 'package:collection/collection.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:gql/ast.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide JsonSerializable;
import 'package:http/http.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:uuid/uuid.dart';

import 'database/graphql.graphql.dart';

part 'database/areas.dart';
part 'database/classes.dart';
part 'database/families.dart';
part 'database/groups.dart';
part 'database/metadata.dart';
part 'database/metadata/churches.dart';
part 'database/metadata/colleges.dart';
part 'database/metadata/fathers.dart';
part 'database/metadata/jobs.dart';
part 'database/metadata/person_states.dart';
part 'database/metadata/person_types.dart';
part 'database/metadata/qualifications.dart';
part 'database/metadata/schools.dart';
part 'database/metadata/shammas_levels.dart';
part 'database/metadata/study_years.dart';
part 'database/metadata/tags.dart';
part 'database/persons.dart';
part 'database/services.dart';
part 'database/streets.dart';
part 'database/users.dart';

class CADatabaseRepository implements DatabaseRepository {
  static CADatabaseRepository get instance => GetIt.I<CADatabaseRepository>();
  static CADatabaseRepository get I => instance;

  static Future<bool> isConnectedToInternet() async {
    try {
      if (!UniversalPlatform.isDesktop) {
        final data = await GetIt.I<FirebaseDatabase>()
            .ref()
            .child('.info/connected')
            .once();
        return data.snapshot.value == true;
      } else {
        final res = await get(
          Uri.parse(dotenv.env['HASURA_SERVER']!)
              .replace(pathSegments: ['healthz']),
        ).timeout(const Duration(seconds: 15));
        return res.body == 'OK';
      }
    } on Exception {
      return false;
    }
  }

  final areas = AreasQueries._();
  final streets = StreetsQueries._();
  final families = FamiliesQueries._();

  final persons = PersonsQueries._();

  final services = ServicesQueries._();
  final classes = ClassesQueries._();
  final groups = GroupsQueries._();

  final users = UsersQueries._();

  final metadata = MetadataQueries._();

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

DocumentNode removeTopFields(
  Set<String> fieldsToRemove,
  DocumentNode document,
) {
  return DocumentNode(
    definitions: document.definitions
        .map(
          (d) => d is OperationDefinitionNode
              ? OperationDefinitionNode(
                  type: d.type,
                  directives: d.directives,
                  name: d.name,
                  span: d.span,
                  variableDefinitions: d.variableDefinitions,
                  selectionSet: SelectionSetNode(
                    span: d.selectionSet.span,
                    selections: d.selectionSet.selections
                        .where(
                          (e) =>
                              e is! FieldNode ||
                              !fieldsToRemove.contains(e.name.value),
                        )
                        .toList(),
                  ),
                )
              : d,
        )
        .toList(),
    span: document.span,
  );
}

DocumentNode addSelectionFields(
  Map<String, List<FieldNode>> fieldsToAdd,
  DocumentNode document,
) {
  return DocumentNode(
    definitions: document.definitions
        .map(
          (d) => d is OperationDefinitionNode
              ? OperationDefinitionNode(
                  type: d.type,
                  directives: d.directives,
                  name: d.name,
                  span: d.span,
                  variableDefinitions: d.variableDefinitions,
                  selectionSet: SelectionSetNode(
                    span: d.selectionSet.span,
                    selections: d.selectionSet.selections
                        .map(
                          (f) => f is FieldNode &&
                                  fieldsToAdd.containsKey(f.name.value)
                              ? FieldNode(
                                  name: f.name,
                                  alias: f.alias,
                                  arguments: f.arguments,
                                  directives: f.directives,
                                  span: f.span,
                                  selectionSet: SelectionSetNode(
                                    span: f.selectionSet?.span,
                                    selections: [
                                      ...f.selectionSet?.selections ?? [],
                                      ...fieldsToAdd[f.name.value] ?? []
                                    ],
                                  ),
                                )
                              : f,
                        )
                        .toList(),
                  ),
                )
              : d,
        )
        .toList(),
    span: document.span,
  );
}

DocumentNode removeVariables(
  Set<String> varsToRemove,
  DocumentNode document,
) {
  return DocumentNode(
    definitions: document.definitions
        .map(
          (d) => d is OperationDefinitionNode
              ? OperationDefinitionNode(
                  type: d.type,
                  directives: d.directives,
                  name: d.name,
                  span: d.span,
                  variableDefinitions: d.variableDefinitions
                      .where(
                        (v) => !varsToRemove.contains(v.variable.name.value),
                      )
                      .toList(),
                  selectionSet: d.selectionSet,
                )
              : d,
        )
        .toList(),
    span: document.span,
  );
}

Q exceptionsMiddleware<T, Q extends QueryResult<T>>(Q result,
    [bool ignoreUnexpectedStructure = false]) {
  if (result.hasException &&
      (!ignoreUnexpectedStructure ||
          result.exception!.linkException
              is! UnexpectedResponseStructureException)) {
    throw result.exception!;
  }
  return result;
}

Json castAllHashMaps(Map d) => d.map(
      (k, v) => MapEntry(
        k as String,
        v is Map && v is! Json ? castAllHashMaps(v) : v,
      ),
    );

Iterable<T> _parseListOfT<T>(Json d, T Function(Json) mapper) =>
    (d.values.single as List).map(
      (o) => mapper(
        castAllHashMaps(o),
      ),
    );

T stripNullValuesFrom<T>(T json, [Set<String> keep = const {}]) => json is Json
    ? {
        for (final kv in json.entries)
          if (kv.value is Json || kv.value is List)
            kv.key: stripNullValuesFrom(kv.value, keep)
          else if (kv.value != null || keep.contains(kv.key))
            kv.key: kv.value,
      } as T
    : json is List
        ? [
            for (final e in json)
              if (e is Json || e is List)
                stripNullValuesFrom(e, keep)
              else if (e != null)
                e,
          ] as T
        : json;

Tuple2<Iterable<T>, Iterable<T>> diff<T>(Set<T> old, Set<T> $new) {
  return Tuple2(
    old.where((s) => !$new.contains(s)).toSet(),
    $new.where((s) => !old.contains(s)).toSet(),
  );
}

extension JsonX on Json {
  Json stripNullValues([Set<String> keep = const {}]) => stripNullValuesFrom(
        this,
        keep,
      );
}

extension ListX on List {
  List stripNullValues([Set<String> keep = const {}]) => stripNullValuesFrom(
        this,
        keep,
      );
}

DelegatingStreamResult<T> clampResults<T extends ViewableWithID>(
  String? lastSearch,
  String? search,
  int offset,
  DelegatingPaginatableStream<T> instance,
  List<T> result,
) {
  final List<T> sublist = result.sublist(0, min(instance.limit, result.length));
  final current = instance.currentValueOrNull ?? <T>[];
  final start = instance.currentOffset * instance.limit;
  final int end = start + min(instance.limit, current.length);

  if (lastSearch == search) {
    return DelegatingStreamResult(
      result: start < current.length
          ? (current..replaceRange(start, min(end, current.length), sublist))
          : (current..addAll(sublist)),
      canPaginateForward: result.length >= instance.limit,
    );
  } else {
    return DelegatingStreamResult(
      result: sublist,
      canPaginateForward: result.length >= instance.limit,
    );
  }
}

extension StringToUuid on String {
  UuidValue toUuid() => UuidValue(this);
}
