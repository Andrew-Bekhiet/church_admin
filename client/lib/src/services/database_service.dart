import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/metadata/churches/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/colleges/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/fathers/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/jobs/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/person_states/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/person_types/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/qualifications/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/schools/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/shammas_levels/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/study_years/__generated__/queries.graphql.dart';
import 'package:church_admin/src/services/database/metadata/study_years/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/metadata/tags/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/persons/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/services/database/persons/__generated__/queries.graphql.dart';
import 'package:church_admin/src/services/database/persons/__generated__/subscriptions.graphql.dart';
import 'package:church_admin/src/services/database/users/__generated__/queries.graphql.dart';
import 'package:churchdata_core/churchdata_core.dart' show ID;
import 'package:collection/collection.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' hide JsonSerializable;
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:uuid/uuid.dart';

import '../../graphql/__generated__/schema.graphql.dart';
import 'database/areas/__generated__/subscriptions.graphql.dart';
import 'database/classes/__generated__/subscriptions.graphql.dart';
import 'database/families/__generated__/subscriptions.graphql.dart';
import 'database/groups/__generated__/subscriptions.graphql.dart';
import 'database/services/__generated__/subscriptions.graphql.dart';
import 'database/streets/__generated__/subscriptions.graphql.dart';
import 'database/users/__generated__/subscriptions.graphql.dart';

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

class CADatabaseRepository {
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
        return GetIt.I<CAFunctionsService>().checkHasuraHealth();
      }
    } on Exception {
      return false;
    }
  }

  const CADatabaseRepository();

  AreasQueries get areas => const AreasQueries._();
  StreetsQueries get streets => const StreetsQueries._();
  FamiliesQueries get families => const FamiliesQueries._();

  PersonsQueries get persons => const PersonsQueries._();

  ServicesQueries get services => const ServicesQueries._();
  ClassesQueries get classes => const ClassesQueries._();
  GroupsQueries get groups => const GroupsQueries._();

  UsersQueries get users => const UsersQueries._();

  MetadataQueries get metadata => const MetadataQueries._();
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

Q exceptionsMiddleware<T, Q extends QueryResult<T>>(
  Q result, [
  bool ignoreUnexpectedStructure = false,
]) {
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
    (d.values.first as List).map(
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

extension StringToUuid on String {
  UuidValue toUuid() => UuidValue(this);

  void validateUuid() => Uuid.isValidOrThrow(
        fromString: this,
        validationMode: ValidationMode.nonStrict,
      );
}
