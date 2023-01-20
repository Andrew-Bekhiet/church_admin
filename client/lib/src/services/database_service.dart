import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart' show Viewable;
import 'package:firebase_database/firebase_database.dart';
import 'package:get_it/get_it.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart';
import 'package:tuple/tuple.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:uuid/uuid.dart';

import '../../graphql/__generated__/schema.graphql.dart';
import 'database/areas.dart';
import 'database/classes.dart';
import 'database/families.dart';
import 'database/groups.dart';
import 'database/metadata.dart';
import 'database/persons.dart';
import 'database/services.dart';
import 'database/streets.dart';
import 'database/users.dart';

class DatabaseService {
  static DatabaseService get instance => GetIt.I<DatabaseService>();
  static DatabaseService get I => instance;

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

  DatabaseService(this.graphQLClient);

  final GraphQLClient graphQLClient;

  late final areas = AreasDAO(db: this);
  late final streets = StreetsDAO(db: this);
  late final families = FamiliesDAO(db: this);

  late final persons = PersonsDAO(db: this);

  late final services = ServicesDAO(db: this);
  late final classes = ClassesDAO(db: this);
  late final groups = GroupsDAO(db: this);

  late final users = UsersDAO(db: this);

  late final metadata = MetadataDAO(db: this);

  Iterable<T> parseListOfT<T>(Json d, T Function(Json) mapper) =>
      (d.values.first as List).map(
        (o) => mapper(
          castAllHashMaps(o),
        ),
      );
}

VarsType getDefaultVariables<VarsType, BoolExp, T extends Viewable>(
  GQLPaginatableStreamEvent<T> event,
  VarsConstructor<VarsType, BoolExp> varsConstructor,
  BoolExpConstructor<BoolExp> boolExpConstructor,
) {
  final instance = event.instance;
  final offset = event.offset;
  final search = event.search;
  final lastSearch = event.lastSearch;

  return varsConstructor(
    limit: instance.limit + 1,
    where: [
      if (search != null && search.isNotEmpty)
        boolExpConstructor(
          name: Input$StringComparisonExp(
            $_ilike: '%$search%',
          ),
        ),
      if (lastSearch == search && offset > 0)
        boolExpConstructor(
          name: Input$StringComparisonExp(
            $_gt: instance
                .currentValue[
                    (offset - 1) * instance.limit + instance.limit - 1]
                .name,
          ),
        ),
    ],
  );
}

typedef VarsConstructor<T, BoolExp> = T Function({
  int limit,
  List<BoolExp> where,
});

typedef BoolExpConstructor<T> = T Function({
  Input$StringComparisonExp? name,
});

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
