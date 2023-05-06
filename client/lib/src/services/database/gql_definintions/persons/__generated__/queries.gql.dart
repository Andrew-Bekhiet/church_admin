import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
import '../../classes/__generated__/fragments.gql.dart';
import '../../families/__generated__/fragments.gql.dart';
import '../../groups/__generated__/fragments.gql.dart';
import '../../services/__generated__/fragments.gql.dart';
import '../../stores/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_personsNames {
  factory Variables_Query_personsNames({
    List<Input_PersonsBoolExp>? where,
    List<Input_PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Query_personsNames._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Query_personsNames._(this._$data);

  factory Variables_Query_personsNames.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input_PersonsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input_PersonsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Query_personsNames._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonsBoolExp>? get where =>
      (_$data['where'] as List<Input_PersonsBoolExp>?);
  List<Input_PersonsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_PersonsOrderBy>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith_Variables_Query_personsNames<Variables_Query_personsNames>
      get copyWith => CopyWith_Variables_Query_personsNames(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Query_personsNames) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != null && lOther$where != null) {
      if (l$where.length != lOther$where.length) {
        return false;
      }
      for (int i = 0; i < l$where.length; i++) {
        final l$where$entry = l$where[i];
        final lOther$where$entry = lOther$where[i];
        if (l$where$entry != lOther$where$entry) {
          return false;
        }
      }
    } else if (l$where != lOther$where) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$orderBy = orderBy;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_personsNames<TRes> {
  factory CopyWith_Variables_Query_personsNames(
    Variables_Query_personsNames instance,
    TRes Function(Variables_Query_personsNames) then,
  ) = _CopyWithImpl_Variables_Query_personsNames;

  factory CopyWith_Variables_Query_personsNames.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_personsNames;

  TRes call({
    List<Input_PersonsBoolExp>? where,
    List<Input_PersonsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Query_personsNames<TRes>
    implements CopyWith_Variables_Query_personsNames<TRes> {
  _CopyWithImpl_Variables_Query_personsNames(
    this._instance,
    this._then,
  );

  final Variables_Query_personsNames _instance;

  final TRes Function(Variables_Query_personsNames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Query_personsNames._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_PersonsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_PersonsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Query_personsNames<TRes>
    implements CopyWith_Variables_Query_personsNames<TRes> {
  _CopyWithStubImpl_Variables_Query_personsNames(this._res);

  TRes _res;

  call({
    List<Input_PersonsBoolExp>? where,
    List<Input_PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Query_personsNames {
  Query_personsNames({
    required this.persons,
    this.$__typename = 'query_root',
  });

  factory Query_personsNames.fromJson(Map<String, dynamic> json) {
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query_personsNames(
      persons: (l$persons as List<dynamic>)
          .map((e) =>
              Query_personsNames_persons.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query_personsNames_persons> persons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$persons = persons;
    _resultData['persons'] = l$persons.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$persons = persons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$persons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personsNames) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (l$persons.length != lOther$persons.length) {
      return false;
    }
    for (int i = 0; i < l$persons.length; i++) {
      final l$persons$entry = l$persons[i];
      final lOther$persons$entry = lOther$persons[i];
      if (l$persons$entry != lOther$persons$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personsNames on Query_personsNames {
  CopyWith_Query_personsNames<Query_personsNames> get copyWith =>
      CopyWith_Query_personsNames(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_personsNames<TRes> {
  factory CopyWith_Query_personsNames(
    Query_personsNames instance,
    TRes Function(Query_personsNames) then,
  ) = _CopyWithImpl_Query_personsNames;

  factory CopyWith_Query_personsNames.stub(TRes res) =
      _CopyWithStubImpl_Query_personsNames;

  TRes call({
    List<Query_personsNames_persons>? persons,
    String? $__typename,
  });
  TRes persons(
      Iterable<Query_personsNames_persons> Function(
              Iterable<
                  CopyWith_Query_personsNames_persons<
                      Query_personsNames_persons>>)
          _fn);
}

class _CopyWithImpl_Query_personsNames<TRes>
    implements CopyWith_Query_personsNames<TRes> {
  _CopyWithImpl_Query_personsNames(
    this._instance,
    this._then,
  );

  final Query_personsNames _instance;

  final TRes Function(Query_personsNames) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? persons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personsNames(
        persons: persons == _undefined || persons == null
            ? _instance.persons
            : (persons as List<Query_personsNames_persons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes persons(
          Iterable<Query_personsNames_persons> Function(
                  Iterable<
                      CopyWith_Query_personsNames_persons<
                          Query_personsNames_persons>>)
              _fn) =>
      call(
          persons: _fn(
              _instance.persons.map((e) => CopyWith_Query_personsNames_persons(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Query_personsNames<TRes>
    implements CopyWith_Query_personsNames<TRes> {
  _CopyWithStubImpl_Query_personsNames(this._res);

  TRes _res;

  call({
    List<Query_personsNames_persons>? persons,
    String? $__typename,
  }) =>
      _res;
  persons(_fn) => _res;
}

const documentNodeQuerypersonsNames = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'personsNames'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'name'),
            value: EnumValueNode(name: NameNode(value: 'ASC')),
          )
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'persons'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'where')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query_personsNames_persons {
  Query_personsNames_persons({
    required this.name,
    this.$__typename = 'Persons',
  });

  factory Query_personsNames_persons.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_personsNames_persons(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personsNames_persons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personsNames_persons
    on Query_personsNames_persons {
  CopyWith_Query_personsNames_persons<Query_personsNames_persons>
      get copyWith => CopyWith_Query_personsNames_persons(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personsNames_persons<TRes> {
  factory CopyWith_Query_personsNames_persons(
    Query_personsNames_persons instance,
    TRes Function(Query_personsNames_persons) then,
  ) = _CopyWithImpl_Query_personsNames_persons;

  factory CopyWith_Query_personsNames_persons.stub(TRes res) =
      _CopyWithStubImpl_Query_personsNames_persons;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personsNames_persons<TRes>
    implements CopyWith_Query_personsNames_persons<TRes> {
  _CopyWithImpl_Query_personsNames_persons(
    this._instance,
    this._then,
  );

  final Query_personsNames_persons _instance;

  final TRes Function(Query_personsNames_persons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personsNames_persons(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personsNames_persons<TRes>
    implements CopyWith_Query_personsNames_persons<TRes> {
  _CopyWithStubImpl_Query_personsNames_persons(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables_Query_personsGeolocations {
  factory Variables_Query_personsGeolocations({
    required bool getAreas,
    required bool getStreets,
    required bool getFamilies,
    required bool getStores,
    required bool getPersons,
    List<UuidValue>? areasIds,
    List<UuidValue>? streetsIds,
    List<UuidValue>? familiesIds,
    List<UuidValue>? storesIds,
    List<Input_PersonsBoolExp>? personsConditions,
  }) =>
      Variables_Query_personsGeolocations._({
        r'getAreas': getAreas,
        r'getStreets': getStreets,
        r'getFamilies': getFamilies,
        r'getStores': getStores,
        r'getPersons': getPersons,
        if (areasIds != null) r'areasIds': areasIds,
        if (streetsIds != null) r'streetsIds': streetsIds,
        if (familiesIds != null) r'familiesIds': familiesIds,
        if (storesIds != null) r'storesIds': storesIds,
        if (personsConditions != null) r'personsConditions': personsConditions,
      });

  Variables_Query_personsGeolocations._(this._$data);

  factory Variables_Query_personsGeolocations.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$getAreas = data['getAreas'];
    result$data['getAreas'] = (l$getAreas as bool);
    final l$getStreets = data['getStreets'];
    result$data['getStreets'] = (l$getStreets as bool);
    final l$getFamilies = data['getFamilies'];
    result$data['getFamilies'] = (l$getFamilies as bool);
    final l$getStores = data['getStores'];
    result$data['getStores'] = (l$getStores as bool);
    final l$getPersons = data['getPersons'];
    result$data['getPersons'] = (l$getPersons as bool);
    if (data.containsKey('areasIds')) {
      final l$areasIds = data['areasIds'];
      result$data['areasIds'] =
          (l$areasIds as List<dynamic>?)?.map((e) => stringToUuid(e)).toList();
    }
    if (data.containsKey('streetsIds')) {
      final l$streetsIds = data['streetsIds'];
      result$data['streetsIds'] = (l$streetsIds as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('familiesIds')) {
      final l$familiesIds = data['familiesIds'];
      result$data['familiesIds'] = (l$familiesIds as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('storesIds')) {
      final l$storesIds = data['storesIds'];
      result$data['storesIds'] =
          (l$storesIds as List<dynamic>?)?.map((e) => stringToUuid(e)).toList();
    }
    if (data.containsKey('personsConditions')) {
      final l$personsConditions = data['personsConditions'];
      result$data['personsConditions'] = (l$personsConditions as List<dynamic>?)
          ?.map(
              (e) => Input_PersonsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables_Query_personsGeolocations._(result$data);
  }

  Map<String, dynamic> _$data;

  bool get getAreas => (_$data['getAreas'] as bool);
  bool get getStreets => (_$data['getStreets'] as bool);
  bool get getFamilies => (_$data['getFamilies'] as bool);
  bool get getStores => (_$data['getStores'] as bool);
  bool get getPersons => (_$data['getPersons'] as bool);
  List<UuidValue>? get areasIds => (_$data['areasIds'] as List<UuidValue>?);
  List<UuidValue>? get streetsIds => (_$data['streetsIds'] as List<UuidValue>?);
  List<UuidValue>? get familiesIds =>
      (_$data['familiesIds'] as List<UuidValue>?);
  List<UuidValue>? get storesIds => (_$data['storesIds'] as List<UuidValue>?);
  List<Input_PersonsBoolExp>? get personsConditions =>
      (_$data['personsConditions'] as List<Input_PersonsBoolExp>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$getAreas = getAreas;
    result$data['getAreas'] = l$getAreas;
    final l$getStreets = getStreets;
    result$data['getStreets'] = l$getStreets;
    final l$getFamilies = getFamilies;
    result$data['getFamilies'] = l$getFamilies;
    final l$getStores = getStores;
    result$data['getStores'] = l$getStores;
    final l$getPersons = getPersons;
    result$data['getPersons'] = l$getPersons;
    if (_$data.containsKey('areasIds')) {
      final l$areasIds = areasIds;
      result$data['areasIds'] =
          l$areasIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('streetsIds')) {
      final l$streetsIds = streetsIds;
      result$data['streetsIds'] =
          l$streetsIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('familiesIds')) {
      final l$familiesIds = familiesIds;
      result$data['familiesIds'] =
          l$familiesIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('storesIds')) {
      final l$storesIds = storesIds;
      result$data['storesIds'] =
          l$storesIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('personsConditions')) {
      final l$personsConditions = personsConditions;
      result$data['personsConditions'] =
          l$personsConditions?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith_Variables_Query_personsGeolocations<
          Variables_Query_personsGeolocations>
      get copyWith => CopyWith_Variables_Query_personsGeolocations(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Query_personsGeolocations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getAreas = getAreas;
    final lOther$getAreas = other.getAreas;
    if (l$getAreas != lOther$getAreas) {
      return false;
    }
    final l$getStreets = getStreets;
    final lOther$getStreets = other.getStreets;
    if (l$getStreets != lOther$getStreets) {
      return false;
    }
    final l$getFamilies = getFamilies;
    final lOther$getFamilies = other.getFamilies;
    if (l$getFamilies != lOther$getFamilies) {
      return false;
    }
    final l$getStores = getStores;
    final lOther$getStores = other.getStores;
    if (l$getStores != lOther$getStores) {
      return false;
    }
    final l$getPersons = getPersons;
    final lOther$getPersons = other.getPersons;
    if (l$getPersons != lOther$getPersons) {
      return false;
    }
    final l$areasIds = areasIds;
    final lOther$areasIds = other.areasIds;
    if (_$data.containsKey('areasIds') !=
        other._$data.containsKey('areasIds')) {
      return false;
    }
    if (l$areasIds != null && lOther$areasIds != null) {
      if (l$areasIds.length != lOther$areasIds.length) {
        return false;
      }
      for (int i = 0; i < l$areasIds.length; i++) {
        final l$areasIds$entry = l$areasIds[i];
        final lOther$areasIds$entry = lOther$areasIds[i];
        if (l$areasIds$entry != lOther$areasIds$entry) {
          return false;
        }
      }
    } else if (l$areasIds != lOther$areasIds) {
      return false;
    }
    final l$streetsIds = streetsIds;
    final lOther$streetsIds = other.streetsIds;
    if (_$data.containsKey('streetsIds') !=
        other._$data.containsKey('streetsIds')) {
      return false;
    }
    if (l$streetsIds != null && lOther$streetsIds != null) {
      if (l$streetsIds.length != lOther$streetsIds.length) {
        return false;
      }
      for (int i = 0; i < l$streetsIds.length; i++) {
        final l$streetsIds$entry = l$streetsIds[i];
        final lOther$streetsIds$entry = lOther$streetsIds[i];
        if (l$streetsIds$entry != lOther$streetsIds$entry) {
          return false;
        }
      }
    } else if (l$streetsIds != lOther$streetsIds) {
      return false;
    }
    final l$familiesIds = familiesIds;
    final lOther$familiesIds = other.familiesIds;
    if (_$data.containsKey('familiesIds') !=
        other._$data.containsKey('familiesIds')) {
      return false;
    }
    if (l$familiesIds != null && lOther$familiesIds != null) {
      if (l$familiesIds.length != lOther$familiesIds.length) {
        return false;
      }
      for (int i = 0; i < l$familiesIds.length; i++) {
        final l$familiesIds$entry = l$familiesIds[i];
        final lOther$familiesIds$entry = lOther$familiesIds[i];
        if (l$familiesIds$entry != lOther$familiesIds$entry) {
          return false;
        }
      }
    } else if (l$familiesIds != lOther$familiesIds) {
      return false;
    }
    final l$storesIds = storesIds;
    final lOther$storesIds = other.storesIds;
    if (_$data.containsKey('storesIds') !=
        other._$data.containsKey('storesIds')) {
      return false;
    }
    if (l$storesIds != null && lOther$storesIds != null) {
      if (l$storesIds.length != lOther$storesIds.length) {
        return false;
      }
      for (int i = 0; i < l$storesIds.length; i++) {
        final l$storesIds$entry = l$storesIds[i];
        final lOther$storesIds$entry = lOther$storesIds[i];
        if (l$storesIds$entry != lOther$storesIds$entry) {
          return false;
        }
      }
    } else if (l$storesIds != lOther$storesIds) {
      return false;
    }
    final l$personsConditions = personsConditions;
    final lOther$personsConditions = other.personsConditions;
    if (_$data.containsKey('personsConditions') !=
        other._$data.containsKey('personsConditions')) {
      return false;
    }
    if (l$personsConditions != null && lOther$personsConditions != null) {
      if (l$personsConditions.length != lOther$personsConditions.length) {
        return false;
      }
      for (int i = 0; i < l$personsConditions.length; i++) {
        final l$personsConditions$entry = l$personsConditions[i];
        final lOther$personsConditions$entry = lOther$personsConditions[i];
        if (l$personsConditions$entry != lOther$personsConditions$entry) {
          return false;
        }
      }
    } else if (l$personsConditions != lOther$personsConditions) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$getAreas = getAreas;
    final l$getStreets = getStreets;
    final l$getFamilies = getFamilies;
    final l$getStores = getStores;
    final l$getPersons = getPersons;
    final l$areasIds = areasIds;
    final l$streetsIds = streetsIds;
    final l$familiesIds = familiesIds;
    final l$storesIds = storesIds;
    final l$personsConditions = personsConditions;
    return Object.hashAll([
      l$getAreas,
      l$getStreets,
      l$getFamilies,
      l$getStores,
      l$getPersons,
      _$data.containsKey('areasIds')
          ? l$areasIds == null
              ? null
              : Object.hashAll(l$areasIds.map((v) => v))
          : const {},
      _$data.containsKey('streetsIds')
          ? l$streetsIds == null
              ? null
              : Object.hashAll(l$streetsIds.map((v) => v))
          : const {},
      _$data.containsKey('familiesIds')
          ? l$familiesIds == null
              ? null
              : Object.hashAll(l$familiesIds.map((v) => v))
          : const {},
      _$data.containsKey('storesIds')
          ? l$storesIds == null
              ? null
              : Object.hashAll(l$storesIds.map((v) => v))
          : const {},
      _$data.containsKey('personsConditions')
          ? l$personsConditions == null
              ? null
              : Object.hashAll(l$personsConditions.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Variables_Query_personsGeolocations<TRes> {
  factory CopyWith_Variables_Query_personsGeolocations(
    Variables_Query_personsGeolocations instance,
    TRes Function(Variables_Query_personsGeolocations) then,
  ) = _CopyWithImpl_Variables_Query_personsGeolocations;

  factory CopyWith_Variables_Query_personsGeolocations.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_personsGeolocations;

  TRes call({
    bool? getAreas,
    bool? getStreets,
    bool? getFamilies,
    bool? getStores,
    bool? getPersons,
    List<UuidValue>? areasIds,
    List<UuidValue>? streetsIds,
    List<UuidValue>? familiesIds,
    List<UuidValue>? storesIds,
    List<Input_PersonsBoolExp>? personsConditions,
  });
}

class _CopyWithImpl_Variables_Query_personsGeolocations<TRes>
    implements CopyWith_Variables_Query_personsGeolocations<TRes> {
  _CopyWithImpl_Variables_Query_personsGeolocations(
    this._instance,
    this._then,
  );

  final Variables_Query_personsGeolocations _instance;

  final TRes Function(Variables_Query_personsGeolocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getAreas = _undefined,
    Object? getStreets = _undefined,
    Object? getFamilies = _undefined,
    Object? getStores = _undefined,
    Object? getPersons = _undefined,
    Object? areasIds = _undefined,
    Object? streetsIds = _undefined,
    Object? familiesIds = _undefined,
    Object? storesIds = _undefined,
    Object? personsConditions = _undefined,
  }) =>
      _then(Variables_Query_personsGeolocations._({
        ..._instance._$data,
        if (getAreas != _undefined && getAreas != null)
          'getAreas': (getAreas as bool),
        if (getStreets != _undefined && getStreets != null)
          'getStreets': (getStreets as bool),
        if (getFamilies != _undefined && getFamilies != null)
          'getFamilies': (getFamilies as bool),
        if (getStores != _undefined && getStores != null)
          'getStores': (getStores as bool),
        if (getPersons != _undefined && getPersons != null)
          'getPersons': (getPersons as bool),
        if (areasIds != _undefined) 'areasIds': (areasIds as List<UuidValue>?),
        if (streetsIds != _undefined)
          'streetsIds': (streetsIds as List<UuidValue>?),
        if (familiesIds != _undefined)
          'familiesIds': (familiesIds as List<UuidValue>?),
        if (storesIds != _undefined)
          'storesIds': (storesIds as List<UuidValue>?),
        if (personsConditions != _undefined)
          'personsConditions':
              (personsConditions as List<Input_PersonsBoolExp>?),
      }));
}

class _CopyWithStubImpl_Variables_Query_personsGeolocations<TRes>
    implements CopyWith_Variables_Query_personsGeolocations<TRes> {
  _CopyWithStubImpl_Variables_Query_personsGeolocations(this._res);

  TRes _res;

  call({
    bool? getAreas,
    bool? getStreets,
    bool? getFamilies,
    bool? getStores,
    bool? getPersons,
    List<UuidValue>? areasIds,
    List<UuidValue>? streetsIds,
    List<UuidValue>? familiesIds,
    List<UuidValue>? storesIds,
    List<Input_PersonsBoolExp>? personsConditions,
  }) =>
      _res;
}

class Query_personsGeolocations {
  Query_personsGeolocations({
    required this.areas,
    required this.streets,
    required this.families,
    required this.stores,
    required this.persons,
    this.$__typename = 'query_root',
  });

  factory Query_personsGeolocations.fromJson(Map<String, dynamic> json) {
    final l$areas = json['areas'];
    final l$streets = json['streets'];
    final l$families = json['families'];
    final l$stores = json['stores'];
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query_personsGeolocations(
      areas: (l$areas as List<dynamic>)
          .map((e) => Query_personsGeolocations_areas.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      streets: (l$streets as List<dynamic>)
          .map((e) => Query_personsGeolocations_streets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      families: (l$families as List<dynamic>)
          .map((e) => Query_personsGeolocations_families.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      stores: (l$stores as List<dynamic>)
          .map((e) => Query_personsGeolocations_stores.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      persons: (l$persons as List<dynamic>)
          .map((e) => Query_personsGeolocations_persons.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query_personsGeolocations_areas> areas;

  final List<Query_personsGeolocations_streets> streets;

  final List<Query_personsGeolocations_families> families;

  final List<Query_personsGeolocations_stores> stores;

  final List<Query_personsGeolocations_persons> persons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$areas = areas;
    _resultData['areas'] = l$areas.map((e) => e.toJson()).toList();
    final l$streets = streets;
    _resultData['streets'] = l$streets.map((e) => e.toJson()).toList();
    final l$families = families;
    _resultData['families'] = l$families.map((e) => e.toJson()).toList();
    final l$stores = stores;
    _resultData['stores'] = l$stores.map((e) => e.toJson()).toList();
    final l$persons = persons;
    _resultData['persons'] = l$persons.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$areas = areas;
    final l$streets = streets;
    final l$families = families;
    final l$stores = stores;
    final l$persons = persons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$areas.map((v) => v)),
      Object.hashAll(l$streets.map((v) => v)),
      Object.hashAll(l$families.map((v) => v)),
      Object.hashAll(l$stores.map((v) => v)),
      Object.hashAll(l$persons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personsGeolocations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas.length != lOther$areas.length) {
      return false;
    }
    for (int i = 0; i < l$areas.length; i++) {
      final l$areas$entry = l$areas[i];
      final lOther$areas$entry = lOther$areas[i];
      if (l$areas$entry != lOther$areas$entry) {
        return false;
      }
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets.length != lOther$streets.length) {
      return false;
    }
    for (int i = 0; i < l$streets.length; i++) {
      final l$streets$entry = l$streets[i];
      final lOther$streets$entry = lOther$streets[i];
      if (l$streets$entry != lOther$streets$entry) {
        return false;
      }
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families.length != lOther$families.length) {
      return false;
    }
    for (int i = 0; i < l$families.length; i++) {
      final l$families$entry = l$families[i];
      final lOther$families$entry = lOther$families[i];
      if (l$families$entry != lOther$families$entry) {
        return false;
      }
    }
    final l$stores = stores;
    final lOther$stores = other.stores;
    if (l$stores.length != lOther$stores.length) {
      return false;
    }
    for (int i = 0; i < l$stores.length; i++) {
      final l$stores$entry = l$stores[i];
      final lOther$stores$entry = lOther$stores[i];
      if (l$stores$entry != lOther$stores$entry) {
        return false;
      }
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (l$persons.length != lOther$persons.length) {
      return false;
    }
    for (int i = 0; i < l$persons.length; i++) {
      final l$persons$entry = l$persons[i];
      final lOther$persons$entry = lOther$persons[i];
      if (l$persons$entry != lOther$persons$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personsGeolocations
    on Query_personsGeolocations {
  CopyWith_Query_personsGeolocations<Query_personsGeolocations> get copyWith =>
      CopyWith_Query_personsGeolocations(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Query_personsGeolocations<TRes> {
  factory CopyWith_Query_personsGeolocations(
    Query_personsGeolocations instance,
    TRes Function(Query_personsGeolocations) then,
  ) = _CopyWithImpl_Query_personsGeolocations;

  factory CopyWith_Query_personsGeolocations.stub(TRes res) =
      _CopyWithStubImpl_Query_personsGeolocations;

  TRes call({
    List<Query_personsGeolocations_areas>? areas,
    List<Query_personsGeolocations_streets>? streets,
    List<Query_personsGeolocations_families>? families,
    List<Query_personsGeolocations_stores>? stores,
    List<Query_personsGeolocations_persons>? persons,
    String? $__typename,
  });
  TRes areas(
      Iterable<Query_personsGeolocations_areas> Function(
              Iterable<
                  CopyWith_Query_personsGeolocations_areas<
                      Query_personsGeolocations_areas>>)
          _fn);
  TRes streets(
      Iterable<Query_personsGeolocations_streets> Function(
              Iterable<
                  CopyWith_Query_personsGeolocations_streets<
                      Query_personsGeolocations_streets>>)
          _fn);
  TRes families(
      Iterable<Query_personsGeolocations_families> Function(
              Iterable<
                  CopyWith_Query_personsGeolocations_families<
                      Query_personsGeolocations_families>>)
          _fn);
  TRes stores(
      Iterable<Query_personsGeolocations_stores> Function(
              Iterable<
                  CopyWith_Query_personsGeolocations_stores<
                      Query_personsGeolocations_stores>>)
          _fn);
  TRes persons(
      Iterable<Query_personsGeolocations_persons> Function(
              Iterable<
                  CopyWith_Query_personsGeolocations_persons<
                      Query_personsGeolocations_persons>>)
          _fn);
}

class _CopyWithImpl_Query_personsGeolocations<TRes>
    implements CopyWith_Query_personsGeolocations<TRes> {
  _CopyWithImpl_Query_personsGeolocations(
    this._instance,
    this._then,
  );

  final Query_personsGeolocations _instance;

  final TRes Function(Query_personsGeolocations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? areas = _undefined,
    Object? streets = _undefined,
    Object? families = _undefined,
    Object? stores = _undefined,
    Object? persons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personsGeolocations(
        areas: areas == _undefined || areas == null
            ? _instance.areas
            : (areas as List<Query_personsGeolocations_areas>),
        streets: streets == _undefined || streets == null
            ? _instance.streets
            : (streets as List<Query_personsGeolocations_streets>),
        families: families == _undefined || families == null
            ? _instance.families
            : (families as List<Query_personsGeolocations_families>),
        stores: stores == _undefined || stores == null
            ? _instance.stores
            : (stores as List<Query_personsGeolocations_stores>),
        persons: persons == _undefined || persons == null
            ? _instance.persons
            : (persons as List<Query_personsGeolocations_persons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes areas(
          Iterable<Query_personsGeolocations_areas> Function(
                  Iterable<
                      CopyWith_Query_personsGeolocations_areas<
                          Query_personsGeolocations_areas>>)
              _fn) =>
      call(
          areas: _fn(_instance.areas
              .map((e) => CopyWith_Query_personsGeolocations_areas(
                    e,
                    (i) => i,
                  ))).toList());
  TRes streets(
          Iterable<Query_personsGeolocations_streets> Function(
                  Iterable<
                      CopyWith_Query_personsGeolocations_streets<
                          Query_personsGeolocations_streets>>)
              _fn) =>
      call(
          streets: _fn(_instance.streets
              .map((e) => CopyWith_Query_personsGeolocations_streets(
                    e,
                    (i) => i,
                  ))).toList());
  TRes families(
          Iterable<Query_personsGeolocations_families> Function(
                  Iterable<
                      CopyWith_Query_personsGeolocations_families<
                          Query_personsGeolocations_families>>)
              _fn) =>
      call(
          families: _fn(_instance.families
              .map((e) => CopyWith_Query_personsGeolocations_families(
                    e,
                    (i) => i,
                  ))).toList());
  TRes stores(
          Iterable<Query_personsGeolocations_stores> Function(
                  Iterable<
                      CopyWith_Query_personsGeolocations_stores<
                          Query_personsGeolocations_stores>>)
              _fn) =>
      call(
          stores: _fn(_instance.stores
              .map((e) => CopyWith_Query_personsGeolocations_stores(
                    e,
                    (i) => i,
                  ))).toList());
  TRes persons(
          Iterable<Query_personsGeolocations_persons> Function(
                  Iterable<
                      CopyWith_Query_personsGeolocations_persons<
                          Query_personsGeolocations_persons>>)
              _fn) =>
      call(
          persons: _fn(_instance.persons
              .map((e) => CopyWith_Query_personsGeolocations_persons(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Query_personsGeolocations<TRes>
    implements CopyWith_Query_personsGeolocations<TRes> {
  _CopyWithStubImpl_Query_personsGeolocations(this._res);

  TRes _res;

  call({
    List<Query_personsGeolocations_areas>? areas,
    List<Query_personsGeolocations_streets>? streets,
    List<Query_personsGeolocations_families>? families,
    List<Query_personsGeolocations_stores>? stores,
    List<Query_personsGeolocations_persons>? persons,
    String? $__typename,
  }) =>
      _res;
  areas(_fn) => _res;
  streets(_fn) => _res;
  families(_fn) => _res;
  stores(_fn) => _res;
  persons(_fn) => _res;
}

const documentNodeQuerypersonsGeolocations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'personsGeolocations'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'getAreas')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'getStreets')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'getFamilies')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'getStores')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'getPersons')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'areasIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'streetsIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familiesIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'storesIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personsConditions')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonsBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'areas'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_or'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_in'),
                          value:
                              VariableNode(name: NameNode(value: 'areasIds')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'streets'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'streetsIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'families'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'familiesIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'persons'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_and'),
                          value: VariableNode(
                              name: NameNode(value: 'personsConditions')),
                        )
                      ]),
                    )
                  ]),
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'bounds'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_isNull'),
                    value: BooleanValueNode(value: false),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(name: NameNode(value: 'getAreas')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'AreaNoPhoto'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'bounds'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'streets'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_or'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_in'),
                          value:
                              VariableNode(name: NameNode(value: 'streetsIds')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'areas'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'areasIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'families'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'familiesIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'persons'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_and'),
                          value: VariableNode(
                              name: NameNode(value: 'personsConditions')),
                        )
                      ]),
                    )
                  ]),
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'line'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_isNull'),
                    value: BooleanValueNode(value: false),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(name: NameNode(value: 'getStreets')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'StreetNoPhoto'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'line'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'families'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_or'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_in'),
                          value: VariableNode(
                              name: NameNode(value: 'familiesIds')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'areas'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'areasIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'streets'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'streetsIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'persons'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_and'),
                          value: VariableNode(
                              name: NameNode(value: 'personsConditions')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'parents'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'parentFamilyId'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'familiesIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'children'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'childFamilyId'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'familiesIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'geolocation'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_isNull'),
                    value: BooleanValueNode(value: false),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(name: NameNode(value: 'getFamilies')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'FamilyNoPhoto'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'geolocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'stores'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_or'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_in'),
                          value:
                              VariableNode(name: NameNode(value: 'storesIds')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'streets'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'streetsIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'areas'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'id'),
                          value: ObjectValueNode(fields: [
                            ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value: VariableNode(
                                  name: NameNode(value: 'areasIds')),
                            )
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'adminFamily'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_in'),
                          value: VariableNode(
                              name: NameNode(value: 'familiesIds')),
                        )
                      ]),
                    )
                  ]),
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'geolocation'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_isNull'),
                    value: BooleanValueNode(value: false),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(name: NameNode(value: 'getStores')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'StoreNoPhoto'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'geolocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'persons'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'personsConditions')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'geolocation'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_isNull'),
                    value: BooleanValueNode(value: false),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [
          DirectiveNode(
            name: NameNode(value: 'include'),
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'if'),
                value: VariableNode(name: NameNode(value: 'getPersons')),
              )
            ],
          )
        ],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PersonNoPhoto'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'geolocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionAreaNoPhoto,
  fragmentDefinitionStreetNoPhoto,
  fragmentDefinitionFamilyNoPhoto,
  fragmentDefinitionStoreNoPhoto,
  fragmentDefinitionPersonNoPhoto,
]);

class Query_personsGeolocations_areas implements Fragment_AreaNoPhoto {
  Query_personsGeolocations_areas({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Areas',
    this.bounds,
  });

  factory Query_personsGeolocations_areas.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$bounds = json['bounds'];
    return Query_personsGeolocations_areas(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      bounds: (l$bounds as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Map<String, dynamic>? bounds;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$bounds = bounds;
    _resultData['bounds'] = l$bounds;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$bounds = bounds;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$bounds,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personsGeolocations_areas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (l$bounds != lOther$bounds) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personsGeolocations_areas
    on Query_personsGeolocations_areas {
  CopyWith_Query_personsGeolocations_areas<Query_personsGeolocations_areas>
      get copyWith => CopyWith_Query_personsGeolocations_areas(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personsGeolocations_areas<TRes> {
  factory CopyWith_Query_personsGeolocations_areas(
    Query_personsGeolocations_areas instance,
    TRes Function(Query_personsGeolocations_areas) then,
  ) = _CopyWithImpl_Query_personsGeolocations_areas;

  factory CopyWith_Query_personsGeolocations_areas.stub(TRes res) =
      _CopyWithStubImpl_Query_personsGeolocations_areas;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? bounds,
  });
}

class _CopyWithImpl_Query_personsGeolocations_areas<TRes>
    implements CopyWith_Query_personsGeolocations_areas<TRes> {
  _CopyWithImpl_Query_personsGeolocations_areas(
    this._instance,
    this._then,
  );

  final Query_personsGeolocations_areas _instance;

  final TRes Function(Query_personsGeolocations_areas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? bounds = _undefined,
  }) =>
      _then(Query_personsGeolocations_areas(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        bounds: bounds == _undefined
            ? _instance.bounds
            : (bounds as Map<String, dynamic>?),
      ));
}

class _CopyWithStubImpl_Query_personsGeolocations_areas<TRes>
    implements CopyWith_Query_personsGeolocations_areas<TRes> {
  _CopyWithStubImpl_Query_personsGeolocations_areas(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? bounds,
  }) =>
      _res;
}

class Query_personsGeolocations_streets implements Fragment_StreetNoPhoto {
  Query_personsGeolocations_streets({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Streets',
    this.line,
  });

  factory Query_personsGeolocations_streets.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$line = json['line'];
    return Query_personsGeolocations_streets(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      line: (l$line as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Map<String, dynamic>? line;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$line = line;
    _resultData['line'] = l$line;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$line = line;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$line,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personsGeolocations_streets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personsGeolocations_streets
    on Query_personsGeolocations_streets {
  CopyWith_Query_personsGeolocations_streets<Query_personsGeolocations_streets>
      get copyWith => CopyWith_Query_personsGeolocations_streets(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personsGeolocations_streets<TRes> {
  factory CopyWith_Query_personsGeolocations_streets(
    Query_personsGeolocations_streets instance,
    TRes Function(Query_personsGeolocations_streets) then,
  ) = _CopyWithImpl_Query_personsGeolocations_streets;

  factory CopyWith_Query_personsGeolocations_streets.stub(TRes res) =
      _CopyWithStubImpl_Query_personsGeolocations_streets;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? line,
  });
}

class _CopyWithImpl_Query_personsGeolocations_streets<TRes>
    implements CopyWith_Query_personsGeolocations_streets<TRes> {
  _CopyWithImpl_Query_personsGeolocations_streets(
    this._instance,
    this._then,
  );

  final Query_personsGeolocations_streets _instance;

  final TRes Function(Query_personsGeolocations_streets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? line = _undefined,
  }) =>
      _then(Query_personsGeolocations_streets(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        line: line == _undefined
            ? _instance.line
            : (line as Map<String, dynamic>?),
      ));
}

class _CopyWithStubImpl_Query_personsGeolocations_streets<TRes>
    implements CopyWith_Query_personsGeolocations_streets<TRes> {
  _CopyWithStubImpl_Query_personsGeolocations_streets(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? line,
  }) =>
      _res;
}

class Query_personsGeolocations_families implements Fragment_FamilyNoPhoto {
  Query_personsGeolocations_families({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Families',
    this.geolocation,
  });

  factory Query_personsGeolocations_families.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$geolocation = json['geolocation'];
    return Query_personsGeolocations_families(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      geolocation: (l$geolocation as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Map<String, dynamic>? geolocation;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$geolocation = geolocation;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$geolocation,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personsGeolocations_families) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personsGeolocations_families
    on Query_personsGeolocations_families {
  CopyWith_Query_personsGeolocations_families<
          Query_personsGeolocations_families>
      get copyWith => CopyWith_Query_personsGeolocations_families(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personsGeolocations_families<TRes> {
  factory CopyWith_Query_personsGeolocations_families(
    Query_personsGeolocations_families instance,
    TRes Function(Query_personsGeolocations_families) then,
  ) = _CopyWithImpl_Query_personsGeolocations_families;

  factory CopyWith_Query_personsGeolocations_families.stub(TRes res) =
      _CopyWithStubImpl_Query_personsGeolocations_families;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? geolocation,
  });
}

class _CopyWithImpl_Query_personsGeolocations_families<TRes>
    implements CopyWith_Query_personsGeolocations_families<TRes> {
  _CopyWithImpl_Query_personsGeolocations_families(
    this._instance,
    this._then,
  );

  final Query_personsGeolocations_families _instance;

  final TRes Function(Query_personsGeolocations_families) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? geolocation = _undefined,
  }) =>
      _then(Query_personsGeolocations_families(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
      ));
}

class _CopyWithStubImpl_Query_personsGeolocations_families<TRes>
    implements CopyWith_Query_personsGeolocations_families<TRes> {
  _CopyWithStubImpl_Query_personsGeolocations_families(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? geolocation,
  }) =>
      _res;
}

class Query_personsGeolocations_stores implements Fragment_StoreNoPhoto {
  Query_personsGeolocations_stores({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Stores',
    this.geolocation,
  });

  factory Query_personsGeolocations_stores.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$geolocation = json['geolocation'];
    return Query_personsGeolocations_stores(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      geolocation: (l$geolocation as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Map<String, dynamic>? geolocation;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$geolocation = geolocation;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$geolocation,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personsGeolocations_stores) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personsGeolocations_stores
    on Query_personsGeolocations_stores {
  CopyWith_Query_personsGeolocations_stores<Query_personsGeolocations_stores>
      get copyWith => CopyWith_Query_personsGeolocations_stores(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personsGeolocations_stores<TRes> {
  factory CopyWith_Query_personsGeolocations_stores(
    Query_personsGeolocations_stores instance,
    TRes Function(Query_personsGeolocations_stores) then,
  ) = _CopyWithImpl_Query_personsGeolocations_stores;

  factory CopyWith_Query_personsGeolocations_stores.stub(TRes res) =
      _CopyWithStubImpl_Query_personsGeolocations_stores;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? geolocation,
  });
}

class _CopyWithImpl_Query_personsGeolocations_stores<TRes>
    implements CopyWith_Query_personsGeolocations_stores<TRes> {
  _CopyWithImpl_Query_personsGeolocations_stores(
    this._instance,
    this._then,
  );

  final Query_personsGeolocations_stores _instance;

  final TRes Function(Query_personsGeolocations_stores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? geolocation = _undefined,
  }) =>
      _then(Query_personsGeolocations_stores(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
      ));
}

class _CopyWithStubImpl_Query_personsGeolocations_stores<TRes>
    implements CopyWith_Query_personsGeolocations_stores<TRes> {
  _CopyWithStubImpl_Query_personsGeolocations_stores(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? geolocation,
  }) =>
      _res;
}

class Query_personsGeolocations_persons implements Fragment_PersonNoPhoto {
  Query_personsGeolocations_persons({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Persons',
    this.geolocation,
  });

  factory Query_personsGeolocations_persons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$geolocation = json['geolocation'];
    return Query_personsGeolocations_persons(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      geolocation: (l$geolocation as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Map<String, dynamic>? geolocation;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$geolocation = geolocation;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$geolocation,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personsGeolocations_persons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personsGeolocations_persons
    on Query_personsGeolocations_persons {
  CopyWith_Query_personsGeolocations_persons<Query_personsGeolocations_persons>
      get copyWith => CopyWith_Query_personsGeolocations_persons(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personsGeolocations_persons<TRes> {
  factory CopyWith_Query_personsGeolocations_persons(
    Query_personsGeolocations_persons instance,
    TRes Function(Query_personsGeolocations_persons) then,
  ) = _CopyWithImpl_Query_personsGeolocations_persons;

  factory CopyWith_Query_personsGeolocations_persons.stub(TRes res) =
      _CopyWithStubImpl_Query_personsGeolocations_persons;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? geolocation,
  });
}

class _CopyWithImpl_Query_personsGeolocations_persons<TRes>
    implements CopyWith_Query_personsGeolocations_persons<TRes> {
  _CopyWithImpl_Query_personsGeolocations_persons(
    this._instance,
    this._then,
  );

  final Query_personsGeolocations_persons _instance;

  final TRes Function(Query_personsGeolocations_persons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? geolocation = _undefined,
  }) =>
      _then(Query_personsGeolocations_persons(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
      ));
}

class _CopyWithStubImpl_Query_personsGeolocations_persons<TRes>
    implements CopyWith_Query_personsGeolocations_persons<TRes> {
  _CopyWithStubImpl_Query_personsGeolocations_persons(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? geolocation,
  }) =>
      _res;
}

class Variables_Query_personHistoryAnalysis {
  factory Variables_Query_personHistoryAnalysis({
    required DateTime dateFrom,
    required DateTime dateTo,
    required DateTime timeFrom,
    required DateTime timeTo,
    required UuidValue personId,
    List<UuidValue>? groupsIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? servicesIds,
    required bool callHistory,
    required bool visitHistory,
    required bool editHistory,
    required bool confessionHistory,
    required bool kodasHistory,
  }) =>
      Variables_Query_personHistoryAnalysis._({
        r'dateFrom': dateFrom,
        r'dateTo': dateTo,
        r'timeFrom': timeFrom,
        r'timeTo': timeTo,
        r'personId': personId,
        if (groupsIds != null) r'groupsIds': groupsIds,
        if (classesIds != null) r'classesIds': classesIds,
        if (servicesIds != null) r'servicesIds': servicesIds,
        r'callHistory': callHistory,
        r'visitHistory': visitHistory,
        r'editHistory': editHistory,
        r'confessionHistory': confessionHistory,
        r'kodasHistory': kodasHistory,
      });

  Variables_Query_personHistoryAnalysis._(this._$data);

  factory Variables_Query_personHistoryAnalysis.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$dateFrom = data['dateFrom'];
    result$data['dateFrom'] = dateFromString(l$dateFrom);
    final l$dateTo = data['dateTo'];
    result$data['dateTo'] = dateFromString(l$dateTo);
    final l$timeFrom = data['timeFrom'];
    result$data['timeFrom'] = tstzFromString(l$timeFrom);
    final l$timeTo = data['timeTo'];
    result$data['timeTo'] = tstzFromString(l$timeTo);
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('groupsIds')) {
      final l$groupsIds = data['groupsIds'];
      result$data['groupsIds'] =
          (l$groupsIds as List<dynamic>?)?.map((e) => stringToUuid(e)).toList();
    }
    if (data.containsKey('classesIds')) {
      final l$classesIds = data['classesIds'];
      result$data['classesIds'] = (l$classesIds as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('servicesIds')) {
      final l$servicesIds = data['servicesIds'];
      result$data['servicesIds'] = (l$servicesIds as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    final l$callHistory = data['callHistory'];
    result$data['callHistory'] = (l$callHistory as bool);
    final l$visitHistory = data['visitHistory'];
    result$data['visitHistory'] = (l$visitHistory as bool);
    final l$editHistory = data['editHistory'];
    result$data['editHistory'] = (l$editHistory as bool);
    final l$confessionHistory = data['confessionHistory'];
    result$data['confessionHistory'] = (l$confessionHistory as bool);
    final l$kodasHistory = data['kodasHistory'];
    result$data['kodasHistory'] = (l$kodasHistory as bool);
    return Variables_Query_personHistoryAnalysis._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get dateFrom => (_$data['dateFrom'] as DateTime);
  DateTime get dateTo => (_$data['dateTo'] as DateTime);
  DateTime get timeFrom => (_$data['timeFrom'] as DateTime);
  DateTime get timeTo => (_$data['timeTo'] as DateTime);
  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<UuidValue>? get groupsIds => (_$data['groupsIds'] as List<UuidValue>?);
  List<UuidValue>? get classesIds => (_$data['classesIds'] as List<UuidValue>?);
  List<UuidValue>? get servicesIds =>
      (_$data['servicesIds'] as List<UuidValue>?);
  bool get callHistory => (_$data['callHistory'] as bool);
  bool get visitHistory => (_$data['visitHistory'] as bool);
  bool get editHistory => (_$data['editHistory'] as bool);
  bool get confessionHistory => (_$data['confessionHistory'] as bool);
  bool get kodasHistory => (_$data['kodasHistory'] as bool);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$dateFrom = dateFrom;
    result$data['dateFrom'] = dateToString(l$dateFrom);
    final l$dateTo = dateTo;
    result$data['dateTo'] = dateToString(l$dateTo);
    final l$timeFrom = timeFrom;
    result$data['timeFrom'] = tstzToString(l$timeFrom);
    final l$timeTo = timeTo;
    result$data['timeTo'] = tstzToString(l$timeTo);
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('groupsIds')) {
      final l$groupsIds = groupsIds;
      result$data['groupsIds'] =
          l$groupsIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('classesIds')) {
      final l$classesIds = classesIds;
      result$data['classesIds'] =
          l$classesIds?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('servicesIds')) {
      final l$servicesIds = servicesIds;
      result$data['servicesIds'] =
          l$servicesIds?.map((e) => uuidToString(e)).toList();
    }
    final l$callHistory = callHistory;
    result$data['callHistory'] = l$callHistory;
    final l$visitHistory = visitHistory;
    result$data['visitHistory'] = l$visitHistory;
    final l$editHistory = editHistory;
    result$data['editHistory'] = l$editHistory;
    final l$confessionHistory = confessionHistory;
    result$data['confessionHistory'] = l$confessionHistory;
    final l$kodasHistory = kodasHistory;
    result$data['kodasHistory'] = l$kodasHistory;
    return result$data;
  }

  CopyWith_Variables_Query_personHistoryAnalysis<
          Variables_Query_personHistoryAnalysis>
      get copyWith => CopyWith_Variables_Query_personHistoryAnalysis(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Query_personHistoryAnalysis) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dateFrom = dateFrom;
    final lOther$dateFrom = other.dateFrom;
    if (l$dateFrom != lOther$dateFrom) {
      return false;
    }
    final l$dateTo = dateTo;
    final lOther$dateTo = other.dateTo;
    if (l$dateTo != lOther$dateTo) {
      return false;
    }
    final l$timeFrom = timeFrom;
    final lOther$timeFrom = other.timeFrom;
    if (l$timeFrom != lOther$timeFrom) {
      return false;
    }
    final l$timeTo = timeTo;
    final lOther$timeTo = other.timeTo;
    if (l$timeTo != lOther$timeTo) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$groupsIds = groupsIds;
    final lOther$groupsIds = other.groupsIds;
    if (_$data.containsKey('groupsIds') !=
        other._$data.containsKey('groupsIds')) {
      return false;
    }
    if (l$groupsIds != null && lOther$groupsIds != null) {
      if (l$groupsIds.length != lOther$groupsIds.length) {
        return false;
      }
      for (int i = 0; i < l$groupsIds.length; i++) {
        final l$groupsIds$entry = l$groupsIds[i];
        final lOther$groupsIds$entry = lOther$groupsIds[i];
        if (l$groupsIds$entry != lOther$groupsIds$entry) {
          return false;
        }
      }
    } else if (l$groupsIds != lOther$groupsIds) {
      return false;
    }
    final l$classesIds = classesIds;
    final lOther$classesIds = other.classesIds;
    if (_$data.containsKey('classesIds') !=
        other._$data.containsKey('classesIds')) {
      return false;
    }
    if (l$classesIds != null && lOther$classesIds != null) {
      if (l$classesIds.length != lOther$classesIds.length) {
        return false;
      }
      for (int i = 0; i < l$classesIds.length; i++) {
        final l$classesIds$entry = l$classesIds[i];
        final lOther$classesIds$entry = lOther$classesIds[i];
        if (l$classesIds$entry != lOther$classesIds$entry) {
          return false;
        }
      }
    } else if (l$classesIds != lOther$classesIds) {
      return false;
    }
    final l$servicesIds = servicesIds;
    final lOther$servicesIds = other.servicesIds;
    if (_$data.containsKey('servicesIds') !=
        other._$data.containsKey('servicesIds')) {
      return false;
    }
    if (l$servicesIds != null && lOther$servicesIds != null) {
      if (l$servicesIds.length != lOther$servicesIds.length) {
        return false;
      }
      for (int i = 0; i < l$servicesIds.length; i++) {
        final l$servicesIds$entry = l$servicesIds[i];
        final lOther$servicesIds$entry = lOther$servicesIds[i];
        if (l$servicesIds$entry != lOther$servicesIds$entry) {
          return false;
        }
      }
    } else if (l$servicesIds != lOther$servicesIds) {
      return false;
    }
    final l$callHistory = callHistory;
    final lOther$callHistory = other.callHistory;
    if (l$callHistory != lOther$callHistory) {
      return false;
    }
    final l$visitHistory = visitHistory;
    final lOther$visitHistory = other.visitHistory;
    if (l$visitHistory != lOther$visitHistory) {
      return false;
    }
    final l$editHistory = editHistory;
    final lOther$editHistory = other.editHistory;
    if (l$editHistory != lOther$editHistory) {
      return false;
    }
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (l$confessionHistory != lOther$confessionHistory) {
      return false;
    }
    final l$kodasHistory = kodasHistory;
    final lOther$kodasHistory = other.kodasHistory;
    if (l$kodasHistory != lOther$kodasHistory) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dateFrom = dateFrom;
    final l$dateTo = dateTo;
    final l$timeFrom = timeFrom;
    final l$timeTo = timeTo;
    final l$personId = personId;
    final l$groupsIds = groupsIds;
    final l$classesIds = classesIds;
    final l$servicesIds = servicesIds;
    final l$callHistory = callHistory;
    final l$visitHistory = visitHistory;
    final l$editHistory = editHistory;
    final l$confessionHistory = confessionHistory;
    final l$kodasHistory = kodasHistory;
    return Object.hashAll([
      l$dateFrom,
      l$dateTo,
      l$timeFrom,
      l$timeTo,
      l$personId,
      _$data.containsKey('groupsIds')
          ? l$groupsIds == null
              ? null
              : Object.hashAll(l$groupsIds.map((v) => v))
          : const {},
      _$data.containsKey('classesIds')
          ? l$classesIds == null
              ? null
              : Object.hashAll(l$classesIds.map((v) => v))
          : const {},
      _$data.containsKey('servicesIds')
          ? l$servicesIds == null
              ? null
              : Object.hashAll(l$servicesIds.map((v) => v))
          : const {},
      l$callHistory,
      l$visitHistory,
      l$editHistory,
      l$confessionHistory,
      l$kodasHistory,
    ]);
  }
}

abstract class CopyWith_Variables_Query_personHistoryAnalysis<TRes> {
  factory CopyWith_Variables_Query_personHistoryAnalysis(
    Variables_Query_personHistoryAnalysis instance,
    TRes Function(Variables_Query_personHistoryAnalysis) then,
  ) = _CopyWithImpl_Variables_Query_personHistoryAnalysis;

  factory CopyWith_Variables_Query_personHistoryAnalysis.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_personHistoryAnalysis;

  TRes call({
    DateTime? dateFrom,
    DateTime? dateTo,
    DateTime? timeFrom,
    DateTime? timeTo,
    UuidValue? personId,
    List<UuidValue>? groupsIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? servicesIds,
    bool? callHistory,
    bool? visitHistory,
    bool? editHistory,
    bool? confessionHistory,
    bool? kodasHistory,
  });
}

class _CopyWithImpl_Variables_Query_personHistoryAnalysis<TRes>
    implements CopyWith_Variables_Query_personHistoryAnalysis<TRes> {
  _CopyWithImpl_Variables_Query_personHistoryAnalysis(
    this._instance,
    this._then,
  );

  final Variables_Query_personHistoryAnalysis _instance;

  final TRes Function(Variables_Query_personHistoryAnalysis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dateFrom = _undefined,
    Object? dateTo = _undefined,
    Object? timeFrom = _undefined,
    Object? timeTo = _undefined,
    Object? personId = _undefined,
    Object? groupsIds = _undefined,
    Object? classesIds = _undefined,
    Object? servicesIds = _undefined,
    Object? callHistory = _undefined,
    Object? visitHistory = _undefined,
    Object? editHistory = _undefined,
    Object? confessionHistory = _undefined,
    Object? kodasHistory = _undefined,
  }) =>
      _then(Variables_Query_personHistoryAnalysis._({
        ..._instance._$data,
        if (dateFrom != _undefined && dateFrom != null)
          'dateFrom': (dateFrom as DateTime),
        if (dateTo != _undefined && dateTo != null)
          'dateTo': (dateTo as DateTime),
        if (timeFrom != _undefined && timeFrom != null)
          'timeFrom': (timeFrom as DateTime),
        if (timeTo != _undefined && timeTo != null)
          'timeTo': (timeTo as DateTime),
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (groupsIds != _undefined)
          'groupsIds': (groupsIds as List<UuidValue>?),
        if (classesIds != _undefined)
          'classesIds': (classesIds as List<UuidValue>?),
        if (servicesIds != _undefined)
          'servicesIds': (servicesIds as List<UuidValue>?),
        if (callHistory != _undefined && callHistory != null)
          'callHistory': (callHistory as bool),
        if (visitHistory != _undefined && visitHistory != null)
          'visitHistory': (visitHistory as bool),
        if (editHistory != _undefined && editHistory != null)
          'editHistory': (editHistory as bool),
        if (confessionHistory != _undefined && confessionHistory != null)
          'confessionHistory': (confessionHistory as bool),
        if (kodasHistory != _undefined && kodasHistory != null)
          'kodasHistory': (kodasHistory as bool),
      }));
}

class _CopyWithStubImpl_Variables_Query_personHistoryAnalysis<TRes>
    implements CopyWith_Variables_Query_personHistoryAnalysis<TRes> {
  _CopyWithStubImpl_Variables_Query_personHistoryAnalysis(this._res);

  TRes _res;

  call({
    DateTime? dateFrom,
    DateTime? dateTo,
    DateTime? timeFrom,
    DateTime? timeTo,
    UuidValue? personId,
    List<UuidValue>? groupsIds,
    List<UuidValue>? classesIds,
    List<UuidValue>? servicesIds,
    bool? callHistory,
    bool? visitHistory,
    bool? editHistory,
    bool? confessionHistory,
    bool? kodasHistory,
  }) =>
      _res;
}

class Query_personHistoryAnalysis {
  Query_personHistoryAnalysis({
    this.personsByPk,
    this.$__typename = 'query_root',
  });

  factory Query_personHistoryAnalysis.fromJson(Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis(
      personsByPk: l$personsByPk == null
          ? null
          : Query_personHistoryAnalysis_personsByPk.fromJson(
              (l$personsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk? personsByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personsByPk = personsByPk;
    _resultData['personsByPk'] = l$personsByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personsByPk = personsByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$personsByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personHistoryAnalysis) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personsByPk = personsByPk;
    final lOther$personsByPk = other.personsByPk;
    if (l$personsByPk != lOther$personsByPk) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis
    on Query_personHistoryAnalysis {
  CopyWith_Query_personHistoryAnalysis<Query_personHistoryAnalysis>
      get copyWith => CopyWith_Query_personHistoryAnalysis(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis<TRes> {
  factory CopyWith_Query_personHistoryAnalysis(
    Query_personHistoryAnalysis instance,
    TRes Function(Query_personHistoryAnalysis) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis;

  factory CopyWith_Query_personHistoryAnalysis.stub(TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis;

  TRes call({
    Query_personHistoryAnalysis_personsByPk? personsByPk,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl_Query_personHistoryAnalysis<TRes>
    implements CopyWith_Query_personHistoryAnalysis<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis _instance;

  final TRes Function(Query_personHistoryAnalysis) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis(
        personsByPk: personsByPk == _undefined
            ? _instance.personsByPk
            : (personsByPk as Query_personHistoryAnalysis_personsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk.stub(
            _then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis<TRes>
    implements CopyWith_Query_personHistoryAnalysis<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis(this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk? personsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk<TRes> get personsByPk =>
      CopyWith_Query_personHistoryAnalysis_personsByPk.stub(_res);
}

const documentNodeQuerypersonHistoryAnalysis = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'personHistoryAnalysis'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'dateFrom')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'dateTo')),
        type: NamedTypeNode(
          name: NameNode(value: 'date'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'timeFrom')),
        type: NamedTypeNode(
          name: NameNode(value: 'timestamptz'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'timeTo')),
        type: NamedTypeNode(
          name: NameNode(value: 'timestamptz'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'personId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'groupsIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classesIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'servicesIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'uuid'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ListValueNode(values: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'callHistory')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'visitHistory')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'editHistory')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'confessionHistory')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'kodasHistory')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'personsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'personId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'callHistoryAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'time'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_gte'),
                        value: VariableNode(name: NameNode(value: 'timeFrom')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: '_lte'),
                        value: VariableNode(name: NameNode(value: 'timeTo')),
                      ),
                    ]),
                  )
                ]),
              )
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(name: NameNode(value: 'callHistory')),
                  )
                ],
              )
            ],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'aggregate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'max'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'time'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'visitHistoryAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'time'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_gte'),
                        value: VariableNode(name: NameNode(value: 'timeFrom')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: '_lte'),
                        value: VariableNode(name: NameNode(value: 'timeTo')),
                      ),
                    ]),
                  )
                ]),
              )
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(name: NameNode(value: 'visitHistory')),
                  )
                ],
              )
            ],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'aggregate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'max'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'time'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'editHistoryAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'time'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_gte'),
                        value: VariableNode(name: NameNode(value: 'timeFrom')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: '_lte'),
                        value: VariableNode(name: NameNode(value: 'timeTo')),
                      ),
                    ]),
                  )
                ]),
              )
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(name: NameNode(value: 'editHistory')),
                  )
                ],
              )
            ],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'aggregate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'max'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'time'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'kodasHistoryAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'dayId'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_gte'),
                        value: VariableNode(name: NameNode(value: 'dateFrom')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: '_lte'),
                        value: VariableNode(name: NameNode(value: 'dateTo')),
                      ),
                    ]),
                  )
                ]),
              )
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(name: NameNode(value: 'kodasHistory')),
                  )
                ],
              )
            ],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'aggregate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'max'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'time'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'confessionHistoryAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'dayId'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_gte'),
                        value: VariableNode(name: NameNode(value: 'dateFrom')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: '_lte'),
                        value: VariableNode(name: NameNode(value: 'dateTo')),
                      ),
                    ]),
                  )
                ]),
              )
            ],
            directives: [
              DirectiveNode(
                name: NameNode(value: 'include'),
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'if'),
                    value: VariableNode(
                        name: NameNode(value: 'confessionHistory')),
                  )
                ],
              )
            ],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'aggregate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'max'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'time'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'time'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'services'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'serviceId'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_in'),
                        value:
                            VariableNode(name: NameNode(value: 'servicesIds')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'service'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ServiceNoPhoto'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'attendanceHistoryAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'dayId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_gte'),
                                value: VariableNode(
                                    name: NameNode(value: 'dateFrom')),
                              ),
                              ObjectFieldNode(
                                name: NameNode(value: '_lte'),
                                value: VariableNode(
                                    name: NameNode(value: 'dateTo')),
                              ),
                            ]),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'personId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value: VariableNode(
                                    name: NameNode(value: 'personId')),
                              )
                            ]),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'asAdmin'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value: BooleanValueNode(value: false),
                              )
                            ]),
                          ),
                        ]),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'aggregate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'count'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'max'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'dayId'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ]),
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'dayId'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'attendanceDaysConstraintsAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'dayId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_gte'),
                                value: VariableNode(
                                    name: NameNode(value: 'dateFrom')),
                              ),
                              ObjectFieldNode(
                                name: NameNode(value: '_lte'),
                                value: VariableNode(
                                    name: NameNode(value: 'dateTo')),
                              ),
                            ]),
                          )
                        ]),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'aggregate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'count'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'dayId'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'classes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'id'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_in'),
                        value:
                            VariableNode(name: NameNode(value: 'classesIds')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ClassNoPhoto'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'attendanceHistoryAggregate'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'where'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'dayId'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_gte'),
                            value:
                                VariableNode(name: NameNode(value: 'dateFrom')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: '_lte'),
                            value:
                                VariableNode(name: NameNode(value: 'dateTo')),
                          ),
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'personId'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value:
                                VariableNode(name: NameNode(value: 'personId')),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'asAdmin'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: BooleanValueNode(value: false),
                          )
                        ]),
                      ),
                    ]),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'aggregate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'max'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'dayId'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'dayId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'attendanceDaysConstraintsAggregate'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'where'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'dayId'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_gte'),
                            value:
                                VariableNode(name: NameNode(value: 'dateFrom')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: '_lte'),
                            value:
                                VariableNode(name: NameNode(value: 'dateTo')),
                          ),
                        ]),
                      )
                    ]),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'aggregate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'dayId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'groups'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'groupId'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_in'),
                        value: VariableNode(name: NameNode(value: 'groupsIds')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'group'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'GroupNoPhoto'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'attendanceHistoryAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'dayId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_gte'),
                                value: VariableNode(
                                    name: NameNode(value: 'dateFrom')),
                              ),
                              ObjectFieldNode(
                                name: NameNode(value: '_lte'),
                                value: VariableNode(
                                    name: NameNode(value: 'dateTo')),
                              ),
                            ]),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'personId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value: VariableNode(
                                    name: NameNode(value: 'personId')),
                              )
                            ]),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'asAdmin'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value: BooleanValueNode(value: false),
                              )
                            ]),
                          ),
                        ]),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'aggregate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'count'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'max'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'dayId'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ]),
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'dayId'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'attendanceDaysConstraintsAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'dayId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_gte'),
                                value: VariableNode(
                                    name: NameNode(value: 'dateFrom')),
                              ),
                              ObjectFieldNode(
                                name: NameNode(value: '_lte'),
                                value: VariableNode(
                                    name: NameNode(value: 'dateTo')),
                              ),
                            ]),
                          )
                        ]),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'aggregate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'count'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'nodes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'dayId'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionClassNoPhoto,
  fragmentDefinitionGroupNoPhoto,
]);

class Query_personHistoryAnalysis_personsByPk {
  Query_personHistoryAnalysis_personsByPk({
    required this.id,
    required this.name,
    required this.callHistoryAggregate,
    required this.visitHistoryAggregate,
    required this.editHistoryAggregate,
    required this.kodasHistoryAggregate,
    required this.confessionHistoryAggregate,
    required this.services,
    this.classes,
    required this.groups,
    this.$__typename = 'Persons',
  });

  factory Query_personHistoryAnalysis_personsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$callHistoryAggregate = json['callHistoryAggregate'];
    final l$visitHistoryAggregate = json['visitHistoryAggregate'];
    final l$editHistoryAggregate = json['editHistoryAggregate'];
    final l$kodasHistoryAggregate = json['kodasHistoryAggregate'];
    final l$confessionHistoryAggregate = json['confessionHistoryAggregate'];
    final l$services = json['services'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      callHistoryAggregate:
          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate.fromJson(
              (l$callHistoryAggregate as Map<String, dynamic>)),
      visitHistoryAggregate:
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate
              .fromJson((l$visitHistoryAggregate as Map<String, dynamic>)),
      editHistoryAggregate:
          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>)),
      kodasHistoryAggregate:
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate
              .fromJson((l$kodasHistoryAggregate as Map<String, dynamic>)),
      confessionHistoryAggregate:
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate
              .fromJson((l$confessionHistoryAggregate as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Query_personHistoryAnalysis_personsByPk_services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Query_personHistoryAnalysis_personsByPk_classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) => Query_personHistoryAnalysis_personsByPk_groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Query_personHistoryAnalysis_personsByPk_callHistoryAggregate
      callHistoryAggregate;

  final Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate
      visitHistoryAggregate;

  final Query_personHistoryAnalysis_personsByPk_editHistoryAggregate
      editHistoryAggregate;

  final Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate
      kodasHistoryAggregate;

  final Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate
      confessionHistoryAggregate;

  final List<Query_personHistoryAnalysis_personsByPk_services> services;

  final List<Query_personHistoryAnalysis_personsByPk_classes>? classes;

  final List<Query_personHistoryAnalysis_personsByPk_groups> groups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$callHistoryAggregate = callHistoryAggregate;
    _resultData['callHistoryAggregate'] = l$callHistoryAggregate.toJson();
    final l$visitHistoryAggregate = visitHistoryAggregate;
    _resultData['visitHistoryAggregate'] = l$visitHistoryAggregate.toJson();
    final l$editHistoryAggregate = editHistoryAggregate;
    _resultData['editHistoryAggregate'] = l$editHistoryAggregate.toJson();
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    _resultData['kodasHistoryAggregate'] = l$kodasHistoryAggregate.toJson();
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    _resultData['confessionHistoryAggregate'] =
        l$confessionHistoryAggregate.toJson();
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    final l$classes = classes;
    _resultData['classes'] = l$classes?.map((e) => e.toJson()).toList();
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$callHistoryAggregate = callHistoryAggregate;
    final l$visitHistoryAggregate = visitHistoryAggregate;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$services = services;
    final l$classes = classes;
    final l$groups = groups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$callHistoryAggregate,
      l$visitHistoryAggregate,
      l$editHistoryAggregate,
      l$kodasHistoryAggregate,
      l$confessionHistoryAggregate,
      Object.hashAll(l$services.map((v) => v)),
      l$classes == null ? null : Object.hashAll(l$classes.map((v) => v)),
      Object.hashAll(l$groups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personHistoryAnalysis_personsByPk) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$callHistoryAggregate = callHistoryAggregate;
    final lOther$callHistoryAggregate = other.callHistoryAggregate;
    if (l$callHistoryAggregate != lOther$callHistoryAggregate) {
      return false;
    }
    final l$visitHistoryAggregate = visitHistoryAggregate;
    final lOther$visitHistoryAggregate = other.visitHistoryAggregate;
    if (l$visitHistoryAggregate != lOther$visitHistoryAggregate) {
      return false;
    }
    final l$editHistoryAggregate = editHistoryAggregate;
    final lOther$editHistoryAggregate = other.editHistoryAggregate;
    if (l$editHistoryAggregate != lOther$editHistoryAggregate) {
      return false;
    }
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final lOther$kodasHistoryAggregate = other.kodasHistoryAggregate;
    if (l$kodasHistoryAggregate != lOther$kodasHistoryAggregate) {
      return false;
    }
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (l$confessionHistoryAggregate != lOther$confessionHistoryAggregate) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services.length != lOther$services.length) {
      return false;
    }
    for (int i = 0; i < l$services.length; i++) {
      final l$services$entry = l$services[i];
      final lOther$services$entry = lOther$services[i];
      if (l$services$entry != lOther$services$entry) {
        return false;
      }
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes != null && lOther$classes != null) {
      if (l$classes.length != lOther$classes.length) {
        return false;
      }
      for (int i = 0; i < l$classes.length; i++) {
        final l$classes$entry = l$classes[i];
        final lOther$classes$entry = lOther$classes[i];
        if (l$classes$entry != lOther$classes$entry) {
          return false;
        }
      }
    } else if (l$classes != lOther$classes) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups.length != lOther$groups.length) {
      return false;
    }
    for (int i = 0; i < l$groups.length; i++) {
      final l$groups$entry = l$groups[i];
      final lOther$groups$entry = lOther$groups[i];
      if (l$groups$entry != lOther$groups$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk
    on Query_personHistoryAnalysis_personsByPk {
  CopyWith_Query_personHistoryAnalysis_personsByPk<
          Query_personHistoryAnalysis_personsByPk>
      get copyWith => CopyWith_Query_personHistoryAnalysis_personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk<TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk(
    Query_personHistoryAnalysis_personsByPk instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk.stub(TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate?
        callHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate?
        visitHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate?
        editHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate?
        kodasHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate?
        confessionHistoryAggregate,
    List<Query_personHistoryAnalysis_personsByPk_services>? services,
    List<Query_personHistoryAnalysis_personsByPk_classes>? classes,
    List<Query_personHistoryAnalysis_personsByPk_groups>? groups,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate<TRes>
      get callHistoryAggregate;
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate<TRes>
      get visitHistoryAggregate;
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate<TRes>
      get editHistoryAggregate;
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate<TRes>
      get kodasHistoryAggregate;
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate<
      TRes> get confessionHistoryAggregate;
  TRes services(
      Iterable<Query_personHistoryAnalysis_personsByPk_services> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_services<
                      Query_personHistoryAnalysis_personsByPk_services>>)
          _fn);
  TRes classes(
      Iterable<Query_personHistoryAnalysis_personsByPk_classes>? Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_classes<
                      Query_personHistoryAnalysis_personsByPk_classes>>?)
          _fn);
  TRes groups(
      Iterable<Query_personHistoryAnalysis_personsByPk_groups> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_groups<
                      Query_personHistoryAnalysis_personsByPk_groups>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk<TRes>
    implements CopyWith_Query_personHistoryAnalysis_personsByPk<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk _instance;

  final TRes Function(Query_personHistoryAnalysis_personsByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? callHistoryAggregate = _undefined,
    Object? visitHistoryAggregate = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? kodasHistoryAggregate = _undefined,
    Object? confessionHistoryAggregate = _undefined,
    Object? services = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        callHistoryAggregate: callHistoryAggregate == _undefined ||
                callHistoryAggregate == null
            ? _instance.callHistoryAggregate
            : (callHistoryAggregate
                as Query_personHistoryAnalysis_personsByPk_callHistoryAggregate),
        visitHistoryAggregate: visitHistoryAggregate == _undefined ||
                visitHistoryAggregate == null
            ? _instance.visitHistoryAggregate
            : (visitHistoryAggregate
                as Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate),
        editHistoryAggregate: editHistoryAggregate == _undefined ||
                editHistoryAggregate == null
            ? _instance.editHistoryAggregate
            : (editHistoryAggregate
                as Query_personHistoryAnalysis_personsByPk_editHistoryAggregate),
        kodasHistoryAggregate: kodasHistoryAggregate == _undefined ||
                kodasHistoryAggregate == null
            ? _instance.kodasHistoryAggregate
            : (kodasHistoryAggregate
                as Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate),
        confessionHistoryAggregate: confessionHistoryAggregate == _undefined ||
                confessionHistoryAggregate == null
            ? _instance.confessionHistoryAggregate
            : (confessionHistoryAggregate
                as Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate),
        services: services == _undefined || services == null
            ? _instance.services
            : (services
                as List<Query_personHistoryAnalysis_personsByPk_services>),
        classes: classes == _undefined
            ? _instance.classes
            : (classes
                as List<Query_personHistoryAnalysis_personsByPk_classes>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Query_personHistoryAnalysis_personsByPk_groups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate<TRes>
      get callHistoryAggregate {
    final local$callHistoryAggregate = _instance.callHistoryAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate(
        local$callHistoryAggregate, (e) => call(callHistoryAggregate: e));
  }

  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate<TRes>
      get visitHistoryAggregate {
    final local$visitHistoryAggregate = _instance.visitHistoryAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate(
        local$visitHistoryAggregate, (e) => call(visitHistoryAggregate: e));
  }

  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate<TRes>
      get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate(
        local$editHistoryAggregate, (e) => call(editHistoryAggregate: e));
  }

  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate<TRes>
      get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate(
        local$kodasHistoryAggregate, (e) => call(kodasHistoryAggregate: e));
  }

  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate<
      TRes> get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate(
        local$confessionHistoryAggregate,
        (e) => call(confessionHistoryAggregate: e));
  }

  TRes services(
          Iterable<Query_personHistoryAnalysis_personsByPk_services> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_services<
                          Query_personHistoryAnalysis_personsByPk_services>>)
              _fn) =>
      call(
          services: _fn(_instance.services.map(
              (e) => CopyWith_Query_personHistoryAnalysis_personsByPk_services(
                    e,
                    (i) => i,
                  ))).toList());
  TRes classes(
          Iterable<Query_personHistoryAnalysis_personsByPk_classes>? Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_classes<
                          Query_personHistoryAnalysis_personsByPk_classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map(
              (e) => CopyWith_Query_personHistoryAnalysis_personsByPk_classes(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes groups(
          Iterable<Query_personHistoryAnalysis_personsByPk_groups> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_groups<
                          Query_personHistoryAnalysis_personsByPk_groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups.map(
              (e) => CopyWith_Query_personHistoryAnalysis_personsByPk_groups(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk<TRes>
    implements CopyWith_Query_personHistoryAnalysis_personsByPk<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate?
        callHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate?
        visitHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate?
        editHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate?
        kodasHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate?
        confessionHistoryAggregate,
    List<Query_personHistoryAnalysis_personsByPk_services>? services,
    List<Query_personHistoryAnalysis_personsByPk_classes>? classes,
    List<Query_personHistoryAnalysis_personsByPk_groups>? groups,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate<TRes>
      get callHistoryAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate
              .stub(_res);
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate<TRes>
      get visitHistoryAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate
              .stub(_res);
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate<TRes>
      get editHistoryAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate
              .stub(_res);
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate<TRes>
      get kodasHistoryAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate
              .stub(_res);
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate<
          TRes>
      get confessionHistoryAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate
              .stub(_res);
  services(_fn) => _res;
  classes(_fn) => _res;
  groups(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_callHistoryAggregate {
  Query_personHistoryAnalysis_personsByPk_callHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryCallHistoryAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_callHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_callHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate?
      aggregate;

  final List<Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_callHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate
    on Query_personHistoryAnalysis_personsByPk_callHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate<
          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate(
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk_callHistoryAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_callHistoryAggregate _instance;

  final TRes Function(
      Query_personHistoryAnalysis_personsByPk_callHistoryAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_callHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryCallHistoryAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max {
  Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryCallHistoryMaxFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max(
      time: l$time == null ? null : tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max
    on Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max {
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max<
          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max(
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes({
    required this.time,
    this.$__typename = 'HistoryCallHistory',
  });

  factory Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes(
      time: tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes
      _instance;

  final TRes Function(
      Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_callHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate {
  Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryVisitHistoryAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate?
      aggregate;

  final List<
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate
    on Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate<
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate(
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate _instance;

  final TRes Function(
      Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryVisitHistoryAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max {
  Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryVisitHistoryMaxFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max(
      time: l$time == null ? null : tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max
    on Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max {
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max<
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max(
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes({
    required this.time,
    this.$__typename = 'HistoryVisitHistory',
  });

  factory Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes(
      time: tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_visitHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_editHistoryAggregate {
  Query_personHistoryAnalysis_personsByPk_editHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryEditHistoryAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_editHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_editHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate?
      aggregate;

  final List<Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_editHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate
    on Query_personHistoryAnalysis_personsByPk_editHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate<
          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate(
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk_editHistoryAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_editHistoryAggregate _instance;

  final TRes Function(
      Query_personHistoryAnalysis_personsByPk_editHistoryAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_editHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryEditHistoryAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max {
  Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryEditHistoryMaxFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max(
      time: l$time == null ? null : tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max
    on Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max {
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max<
          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max(
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes({
    required this.time,
    this.$__typename = 'HistoryEditHistory',
  });

  factory Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes(
      time: tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes
      _instance;

  final TRes Function(
      Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_editHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate {
  Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryKodasHistoryAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate?
      aggregate;

  final List<
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate
    on Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate<
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate(
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate _instance;

  final TRes Function(
      Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryKodasHistoryAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max {
  Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryKodasHistoryMaxFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max(
      time: l$time == null ? null : dateFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max
    on Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max {
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max<
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max(
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes({
    this.time,
    this.$__typename = 'HistoryKodasHistory',
  });

  factory Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes(
      time: l$time == null ? null : dateFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_kodasHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate {
  Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryConfessionHistoryAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate?
      aggregate;

  final List<
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate
    on Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate<
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate(
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate
      _instance;

  final TRes Function(
      Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryConfessionHistoryAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max {
  Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max({
    this.time,
    this.$__typename = 'HistoryConfessionHistoryMaxFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max(
      time: l$time == null ? null : dateFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max
    on Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max {
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max<
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max(
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes({
    this.time,
    this.$__typename = 'HistoryConfessionHistory',
  });

  factory Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes(
      time: l$time == null ? null : dateFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_confessionHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_services {
  Query_personHistoryAnalysis_personsByPk_services({
    required this.service,
    this.$__typename = 'PersonsServices',
  });

  factory Query_personHistoryAnalysis_personsByPk_services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_services(
      service:
          Query_personHistoryAnalysis_personsByPk_services_service.fromJson(
              (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_services_service service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$service,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personHistoryAnalysis_personsByPk_services) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_services
    on Query_personHistoryAnalysis_personsByPk_services {
  CopyWith_Query_personHistoryAnalysis_personsByPk_services<
          Query_personHistoryAnalysis_personsByPk_services>
      get copyWith => CopyWith_Query_personHistoryAnalysis_personsByPk_services(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_services<TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services(
    Query_personHistoryAnalysis_personsByPk_services instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk_services) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_services_service? service,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service<TRes>
      get service;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services<TRes>
    implements CopyWith_Query_personHistoryAnalysis_personsByPk_services<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_services _instance;

  final TRes Function(Query_personHistoryAnalysis_personsByPk_services) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query_personHistoryAnalysis_personsByPk_services_service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_services_service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services<TRes>
    implements CopyWith_Query_personHistoryAnalysis_personsByPk_services<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services(this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_services_service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service<TRes>
      get service =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_services_service
    implements Fragment_ServiceNoPhoto {
  Query_personHistoryAnalysis_personsByPk_services_service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Query_personHistoryAnalysis_personsByPk_services_service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Query_personHistoryAnalysis_personsByPk_services_service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      attendanceHistoryAggregate:
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personHistoryAnalysis_personsByPk_services_service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_services_service
    on Query_personHistoryAnalysis_personsByPk_services_service {
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service<
          Query_personHistoryAnalysis_personsByPk_services_service>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_services_service<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service(
    Query_personHistoryAnalysis_personsByPk_services_service instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk_services_service)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_services_service _instance;

  final TRes Function(Query_personHistoryAnalysis_personsByPk_services_service)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_services_service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate
              .stub(_res);
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate {
  Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate?
      aggregate;

  final List<
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate
    on Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate<
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate(
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max {
  Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
      dayId: l$dayId == null ? null : dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
    on Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate {
  Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate?
      aggregate;

  final List<
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate
    on Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate<
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate(
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_services_service_attendanceDaysConstraintsAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_classes
    implements Fragment_ClassNoPhoto {
  Query_personHistoryAnalysis_personsByPk_classes({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Query_personHistoryAnalysis_personsByPk_classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Query_personHistoryAnalysis_personsByPk_classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      attendanceHistoryAggregate:
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personHistoryAnalysis_personsByPk_classes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_classes
    on Query_personHistoryAnalysis_personsByPk_classes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes<
          Query_personHistoryAnalysis_personsByPk_classes>
      get copyWith => CopyWith_Query_personHistoryAnalysis_personsByPk_classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_classes<TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes(
    Query_personHistoryAnalysis_personsByPk_classes instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk_classes) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes<TRes>
    implements CopyWith_Query_personHistoryAnalysis_personsByPk_classes<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_classes _instance;

  final TRes Function(Query_personHistoryAnalysis_personsByPk_classes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes<TRes>
    implements CopyWith_Query_personHistoryAnalysis_personsByPk_classes<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate
              .stub(_res);
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate {
  Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate?
      aggregate;

  final List<
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate
    on Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate<
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate(
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max {
  Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
      dayId: l$dayId == null ? null : dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
    on Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate {
  Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate?
      aggregate;

  final List<
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate
    on Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate<
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate(
    Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_classes_attendanceDaysConstraintsAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_groups {
  Query_personHistoryAnalysis_personsByPk_groups({
    required this.group,
    this.$__typename = 'PersonsGroups',
  });

  factory Query_personHistoryAnalysis_personsByPk_groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_groups(
      group: Query_personHistoryAnalysis_personsByPk_groups_group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_groups_group group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$group = group;
    _resultData['group'] = l$group.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$group,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personHistoryAnalysis_personsByPk_groups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_groups
    on Query_personHistoryAnalysis_personsByPk_groups {
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups<
          Query_personHistoryAnalysis_personsByPk_groups>
      get copyWith => CopyWith_Query_personHistoryAnalysis_personsByPk_groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_groups<TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups(
    Query_personHistoryAnalysis_personsByPk_groups instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk_groups) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_groups_group? group,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group<TRes> get group;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups<TRes>
    implements CopyWith_Query_personHistoryAnalysis_personsByPk_groups<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_groups _instance;

  final TRes Function(Query_personHistoryAnalysis_personsByPk_groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Query_personHistoryAnalysis_personsByPk_groups_group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group<TRes>
      get group {
    final local$group = _instance.group;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups<TRes>
    implements CopyWith_Query_personHistoryAnalysis_personsByPk_groups<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups(this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_groups_group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group<TRes>
      get group =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group.stub(
              _res);
}

class Query_personHistoryAnalysis_personsByPk_groups_group
    implements Fragment_GroupNoPhoto {
  Query_personHistoryAnalysis_personsByPk_groups_group({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Groups',
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Query_personHistoryAnalysis_personsByPk_groups_group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Query_personHistoryAnalysis_personsByPk_groups_group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      attendanceHistoryAggregate:
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personHistoryAnalysis_personsByPk_groups_group) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_groups_group
    on Query_personHistoryAnalysis_personsByPk_groups_group {
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group<
          Query_personHistoryAnalysis_personsByPk_groups_group>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group(
    Query_personHistoryAnalysis_personsByPk_groups_group instance,
    TRes Function(Query_personHistoryAnalysis_personsByPk_groups_group) then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group<TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group<TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_groups_group _instance;

  final TRes Function(Query_personHistoryAnalysis_personsByPk_groups_group)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Query_personHistoryAnalysis_personsByPk_groups_group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group<TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate
              .stub(_res);
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate {
  Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceHistoryAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate?
      aggregate;

  final List<
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate
    on Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate<
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate(
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate({
    required this.count,
    this.max,
    this.$__typename = 'HistoryAttendanceHistoryAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$max,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate;

  TRes call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
      TRes> get max;
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
          TRes>
      get max =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
              .stub(_res);
}

class Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max {
  Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max({
    this.dayId,
    this.$__typename = 'HistoryAttendanceHistoryMaxFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
      dayId: l$dayId == null ? null : dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
    on Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max {
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_aggregate_max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceHistory',
  });

  factory Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceHistoryAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate {
  Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregate',
  });

  factory Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate?
      aggregate;

  final List<
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes>
      nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate
    on Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate<
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate(
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate;

  TRes call({
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes> Function(
              Iterable<
                  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes<
                      Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes>>)
          _fn);
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate
            .stub(_then(_instance))
        : CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes> Function(
                  Iterable<
                      CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes<
                          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate?
        aggregate,
    List<Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate<
          TRes>
      get aggregate =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate {
  Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate({
    required this.count,
    this.$__typename = 'HistoryAttendanceDaysConstraintsAggregateFields',
  });

  factory Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate
    on Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate {
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate<
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate(
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes {
  Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes({
    required this.dayId,
    this.$__typename = 'HistoryAttendanceDaysConstraints',
  });

  factory Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes(
      dayId: dateFromString(l$dayId),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime dayId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dayId = dayId;
    _resultData['dayId'] = dateToString(l$dayId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dayId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (l$dayId != lOther$dayId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes
    on Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes {
  CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes<
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes>
      get copyWith =>
          CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes<
    TRes> {
  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes(
    Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes
        instance,
    TRes Function(
            Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes)
        then,
  ) = _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes;

  factory CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes(
    this._instance,
    this._then,
  );

  final Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes
      _instance;

  final TRes Function(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes<
        TRes>
    implements
        CopyWith_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes<
            TRes> {
  _CopyWithStubImpl_Query_personHistoryAnalysis_personsByPk_groups_group_attendanceDaysConstraintsAggregate_nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Variables_Query_personServicesClassesGroups {
  factory Variables_Query_personServicesClassesGroups(
          {required UuidValue id}) =>
      Variables_Query_personServicesClassesGroups._({
        r'id': id,
      });

  Variables_Query_personServicesClassesGroups._(this._$data);

  factory Variables_Query_personServicesClassesGroups.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Query_personServicesClassesGroups._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Query_personServicesClassesGroups<
          Variables_Query_personServicesClassesGroups>
      get copyWith => CopyWith_Variables_Query_personServicesClassesGroups(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Query_personServicesClassesGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Query_personServicesClassesGroups<TRes> {
  factory CopyWith_Variables_Query_personServicesClassesGroups(
    Variables_Query_personServicesClassesGroups instance,
    TRes Function(Variables_Query_personServicesClassesGroups) then,
  ) = _CopyWithImpl_Variables_Query_personServicesClassesGroups;

  factory CopyWith_Variables_Query_personServicesClassesGroups.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_personServicesClassesGroups;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Query_personServicesClassesGroups<TRes>
    implements CopyWith_Variables_Query_personServicesClassesGroups<TRes> {
  _CopyWithImpl_Variables_Query_personServicesClassesGroups(
    this._instance,
    this._then,
  );

  final Variables_Query_personServicesClassesGroups _instance;

  final TRes Function(Variables_Query_personServicesClassesGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables_Query_personServicesClassesGroups._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Query_personServicesClassesGroups<TRes>
    implements CopyWith_Variables_Query_personServicesClassesGroups<TRes> {
  _CopyWithStubImpl_Variables_Query_personServicesClassesGroups(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Query_personServicesClassesGroups {
  Query_personServicesClassesGroups({
    this.personsByPk,
    this.$__typename = 'query_root',
  });

  factory Query_personServicesClassesGroups.fromJson(
      Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups(
      personsByPk: l$personsByPk == null
          ? null
          : Query_personServicesClassesGroups_personsByPk.fromJson(
              (l$personsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personServicesClassesGroups_personsByPk? personsByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personsByPk = personsByPk;
    _resultData['personsByPk'] = l$personsByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personsByPk = personsByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$personsByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personServicesClassesGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personsByPk = personsByPk;
    final lOther$personsByPk = other.personsByPk;
    if (l$personsByPk != lOther$personsByPk) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups
    on Query_personServicesClassesGroups {
  CopyWith_Query_personServicesClassesGroups<Query_personServicesClassesGroups>
      get copyWith => CopyWith_Query_personServicesClassesGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups<TRes> {
  factory CopyWith_Query_personServicesClassesGroups(
    Query_personServicesClassesGroups instance,
    TRes Function(Query_personServicesClassesGroups) then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups;

  factory CopyWith_Query_personServicesClassesGroups.stub(TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups;

  TRes call({
    Query_personServicesClassesGroups_personsByPk? personsByPk,
    String? $__typename,
  });
  CopyWith_Query_personServicesClassesGroups_personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl_Query_personServicesClassesGroups<TRes>
    implements CopyWith_Query_personServicesClassesGroups<TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups _instance;

  final TRes Function(Query_personServicesClassesGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personServicesClassesGroups(
        personsByPk: personsByPk == _undefined
            ? _instance.personsByPk
            : (personsByPk as Query_personServicesClassesGroups_personsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personServicesClassesGroups_personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith_Query_personServicesClassesGroups_personsByPk.stub(
            _then(_instance))
        : CopyWith_Query_personServicesClassesGroups_personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl_Query_personServicesClassesGroups<TRes>
    implements CopyWith_Query_personServicesClassesGroups<TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups(this._res);

  TRes _res;

  call({
    Query_personServicesClassesGroups_personsByPk? personsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personServicesClassesGroups_personsByPk<TRes>
      get personsByPk =>
          CopyWith_Query_personServicesClassesGroups_personsByPk.stub(_res);
}

const documentNodeQuerypersonServicesClassesGroups = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'personServicesClassesGroups'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'personsByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'services'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'service'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'service'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Service'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'fromStudyYear'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'toStudyYear'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'classes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Class'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'service'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Service'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'fromStudyYear'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'toStudyYear'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'groups'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'group'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'group'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'Group'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'service'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Service'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'fromStudyYear'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'order'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'toStudyYear'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'order'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionService,
  fragmentDefinitionServiceNoPhoto,
  fragmentDefinitionClass,
  fragmentDefinitionClassNoPhoto,
  fragmentDefinitionGroup,
  fragmentDefinitionGroupNoPhoto,
]);

class Query_personServicesClassesGroups_personsByPk {
  Query_personServicesClassesGroups_personsByPk({
    required this.id,
    required this.name,
    required this.services,
    this.classes,
    required this.groups,
    this.$__typename = 'Persons',
  });

  factory Query_personServicesClassesGroups_personsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$services = json['services'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups_personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      services: (l$services as List<dynamic>)
          .map((e) =>
              Query_personServicesClassesGroups_personsByPk_services.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) =>
              Query_personServicesClassesGroups_personsByPk_classes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) =>
              Query_personServicesClassesGroups_personsByPk_groups.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final List<Query_personServicesClassesGroups_personsByPk_services> services;

  final List<Query_personServicesClassesGroups_personsByPk_classes>? classes;

  final List<Query_personServicesClassesGroups_personsByPk_groups> groups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    final l$classes = classes;
    _resultData['classes'] = l$classes?.map((e) => e.toJson()).toList();
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$services = services;
    final l$classes = classes;
    final l$groups = groups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$services.map((v) => v)),
      l$classes == null ? null : Object.hashAll(l$classes.map((v) => v)),
      Object.hashAll(l$groups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personServicesClassesGroups_personsByPk) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services.length != lOther$services.length) {
      return false;
    }
    for (int i = 0; i < l$services.length; i++) {
      final l$services$entry = l$services[i];
      final lOther$services$entry = lOther$services[i];
      if (l$services$entry != lOther$services$entry) {
        return false;
      }
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes != null && lOther$classes != null) {
      if (l$classes.length != lOther$classes.length) {
        return false;
      }
      for (int i = 0; i < l$classes.length; i++) {
        final l$classes$entry = l$classes[i];
        final lOther$classes$entry = lOther$classes[i];
        if (l$classes$entry != lOther$classes$entry) {
          return false;
        }
      }
    } else if (l$classes != lOther$classes) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups.length != lOther$groups.length) {
      return false;
    }
    for (int i = 0; i < l$groups.length; i++) {
      final l$groups$entry = l$groups[i];
      final lOther$groups$entry = lOther$groups[i];
      if (l$groups$entry != lOther$groups$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk
    on Query_personServicesClassesGroups_personsByPk {
  CopyWith_Query_personServicesClassesGroups_personsByPk<
          Query_personServicesClassesGroups_personsByPk>
      get copyWith => CopyWith_Query_personServicesClassesGroups_personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk<TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk(
    Query_personServicesClassesGroups_personsByPk instance,
    TRes Function(Query_personServicesClassesGroups_personsByPk) then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    List<Query_personServicesClassesGroups_personsByPk_services>? services,
    List<Query_personServicesClassesGroups_personsByPk_classes>? classes,
    List<Query_personServicesClassesGroups_personsByPk_groups>? groups,
    String? $__typename,
  });
  TRes services(
      Iterable<Query_personServicesClassesGroups_personsByPk_services> Function(
              Iterable<
                  CopyWith_Query_personServicesClassesGroups_personsByPk_services<
                      Query_personServicesClassesGroups_personsByPk_services>>)
          _fn);
  TRes classes(
      Iterable<Query_personServicesClassesGroups_personsByPk_classes>? Function(
              Iterable<
                  CopyWith_Query_personServicesClassesGroups_personsByPk_classes<
                      Query_personServicesClassesGroups_personsByPk_classes>>?)
          _fn);
  TRes groups(
      Iterable<Query_personServicesClassesGroups_personsByPk_groups> Function(
              Iterable<
                  CopyWith_Query_personServicesClassesGroups_personsByPk_groups<
                      Query_personServicesClassesGroups_personsByPk_groups>>)
          _fn);
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk<TRes>
    implements CopyWith_Query_personServicesClassesGroups_personsByPk<TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk _instance;

  final TRes Function(Query_personServicesClassesGroups_personsByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? services = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personServicesClassesGroups_personsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<
                Query_personServicesClassesGroups_personsByPk_services>),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<
                Query_personServicesClassesGroups_personsByPk_classes>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups
                as List<Query_personServicesClassesGroups_personsByPk_groups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes services(
          Iterable<Query_personServicesClassesGroups_personsByPk_services> Function(
                  Iterable<
                      CopyWith_Query_personServicesClassesGroups_personsByPk_services<
                          Query_personServicesClassesGroups_personsByPk_services>>)
              _fn) =>
      call(
          services: _fn(_instance.services.map((e) =>
              CopyWith_Query_personServicesClassesGroups_personsByPk_services(
                e,
                (i) => i,
              ))).toList());
  TRes classes(
          Iterable<Query_personServicesClassesGroups_personsByPk_classes>? Function(
                  Iterable<
                      CopyWith_Query_personServicesClassesGroups_personsByPk_classes<
                          Query_personServicesClassesGroups_personsByPk_classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map((e) =>
              CopyWith_Query_personServicesClassesGroups_personsByPk_classes(
                e,
                (i) => i,
              )))?.toList());
  TRes groups(
          Iterable<Query_personServicesClassesGroups_personsByPk_groups> Function(
                  Iterable<
                      CopyWith_Query_personServicesClassesGroups_personsByPk_groups<
                          Query_personServicesClassesGroups_personsByPk_groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups.map((e) =>
              CopyWith_Query_personServicesClassesGroups_personsByPk_groups(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk<TRes>
    implements CopyWith_Query_personServicesClassesGroups_personsByPk<TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    List<Query_personServicesClassesGroups_personsByPk_services>? services,
    List<Query_personServicesClassesGroups_personsByPk_classes>? classes,
    List<Query_personServicesClassesGroups_personsByPk_groups>? groups,
    String? $__typename,
  }) =>
      _res;
  services(_fn) => _res;
  classes(_fn) => _res;
  groups(_fn) => _res;
}

class Query_personServicesClassesGroups_personsByPk_services {
  Query_personServicesClassesGroups_personsByPk_services({
    required this.service,
    this.$__typename = 'PersonsServices',
  });

  factory Query_personServicesClassesGroups_personsByPk_services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups_personsByPk_services(
      service: Query_personServicesClassesGroups_personsByPk_services_service
          .fromJson((l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personServicesClassesGroups_personsByPk_services_service service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$service,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personServicesClassesGroups_personsByPk_services) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_services
    on Query_personServicesClassesGroups_personsByPk_services {
  CopyWith_Query_personServicesClassesGroups_personsByPk_services<
          Query_personServicesClassesGroups_personsByPk_services>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_services(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_services<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_services(
    Query_personServicesClassesGroups_personsByPk_services instance,
    TRes Function(Query_personServicesClassesGroups_personsByPk_services) then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_services.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services;

  TRes call({
    Query_personServicesClassesGroups_personsByPk_services_service? service,
    String? $__typename,
  });
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service<TRes>
      get service;
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services<TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_services<TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_services _instance;

  final TRes Function(Query_personServicesClassesGroups_personsByPk_services)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personServicesClassesGroups_personsByPk_services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query_personServicesClassesGroups_personsByPk_services_service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith_Query_personServicesClassesGroups_personsByPk_services_service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_services<TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services(
      this._res);

  TRes _res;

  call({
    Query_personServicesClassesGroups_personsByPk_services_service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service<TRes>
      get service =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_services_service
              .stub(_res);
}

class Query_personServicesClassesGroups_personsByPk_services_service
    implements Fragment_Service, Fragment_ServiceNoPhoto {
  Query_personServicesClassesGroups_personsByPk_services_service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    this.fromStudyYear,
    this.toStudyYear,
  });

  factory Query_personServicesClassesGroups_personsByPk_services_service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$toStudyYear = json['toStudyYear'];
    return Query_personServicesClassesGroups_personsByPk_services_service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear
              .fromJson((l$fromStudyYear as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear
              .fromJson((l$toStudyYear as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear?
      fromStudyYear;

  final Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear?
      toStudyYear;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$fromStudyYear = fromStudyYear;
    _resultData['fromStudyYear'] = l$fromStudyYear?.toJson();
    final l$toStudyYear = toStudyYear;
    _resultData['toStudyYear'] = l$toStudyYear?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$fromStudyYear = fromStudyYear;
    final l$toStudyYear = toStudyYear;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$fromStudyYear,
      l$toStudyYear,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_services_service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$fromStudyYear = fromStudyYear;
    final lOther$fromStudyYear = other.fromStudyYear;
    if (l$fromStudyYear != lOther$fromStudyYear) {
      return false;
    }
    final l$toStudyYear = toStudyYear;
    final lOther$toStudyYear = other.toStudyYear;
    if (l$toStudyYear != lOther$toStudyYear) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_services_service
    on Query_personServicesClassesGroups_personsByPk_services_service {
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service<
          Query_personServicesClassesGroups_personsByPk_services_service>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_services_service(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_services_service<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_services_service(
    Query_personServicesClassesGroups_personsByPk_services_service instance,
    TRes Function(
            Query_personServicesClassesGroups_personsByPk_services_service)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services_service;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_services_service.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services_service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear?
        fromStudyYear,
    Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear?
        toStudyYear,
  });
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear<
      TRes> get fromStudyYear;
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear<
      TRes> get toStudyYear;
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services_service<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_services_service<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services_service(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_services_service
      _instance;

  final TRes Function(
      Query_personServicesClassesGroups_personsByPk_services_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? fromStudyYear = _undefined,
    Object? toStudyYear = _undefined,
  }) =>
      _then(Query_personServicesClassesGroups_personsByPk_services_service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        fromStudyYear: fromStudyYear == _undefined
            ? _instance.fromStudyYear
            : (fromStudyYear
                as Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear?),
      ));
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear<
      TRes> get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear
            .stub(_then(_instance))
        : CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear<
      TRes> get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear
            .stub(_then(_instance))
        : CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services_service<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_services_service<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services_service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear?
        fromStudyYear,
    Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear?
        toStudyYear,
  }) =>
      _res;
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear<
          TRes>
      get fromStudyYear =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear
              .stub(_res);
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear<
          TRes>
      get toStudyYear =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear
              .stub(_res);
}

class Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear {
  Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear
    on Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear {
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear<
          Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear(
    Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear
        instance,
    TRes Function(
            Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear
      _instance;

  final TRes Function(
          Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services_service_fromStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear {
  Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear
    on Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear {
  CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear<
          Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear(
    Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear
        instance,
    TRes Function(
            Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear
      _instance;

  final TRes Function(
          Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_services_service_toStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query_personServicesClassesGroups_personsByPk_classes
    implements Fragment_Class, Fragment_ClassNoPhoto {
  Query_personServicesClassesGroups_personsByPk_classes({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Classes',
    this.photoUpdatedAt,
    required this.service,
  });

  factory Query_personServicesClassesGroups_personsByPk_classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$service = json['service'];
    return Query_personServicesClassesGroups_personsByPk_classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      service: Query_personServicesClassesGroups_personsByPk_classes_service
          .fromJson((l$service as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query_personServicesClassesGroups_personsByPk_classes_service service;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$service,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personServicesClassesGroups_personsByPk_classes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_classes
    on Query_personServicesClassesGroups_personsByPk_classes {
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes<
          Query_personServicesClassesGroups_personsByPk_classes>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_classes<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_classes(
    Query_personServicesClassesGroups_personsByPk_classes instance,
    TRes Function(Query_personServicesClassesGroups_personsByPk_classes) then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_classes.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_classes_service? service,
  });
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service<TRes>
      get service;
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes<TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_classes<TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_classes _instance;

  final TRes Function(Query_personServicesClassesGroups_personsByPk_classes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Query_personServicesClassesGroups_personsByPk_classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query_personServicesClassesGroups_personsByPk_classes_service),
      ));
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_classes<TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_classes_service? service,
  }) =>
      _res;
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service<TRes>
      get service =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service
              .stub(_res);
}

class Query_personServicesClassesGroups_personsByPk_classes_service
    implements Fragment_Service, Fragment_ServiceNoPhoto {
  Query_personServicesClassesGroups_personsByPk_classes_service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    this.fromStudyYear,
    this.toStudyYear,
  });

  factory Query_personServicesClassesGroups_personsByPk_classes_service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$toStudyYear = json['toStudyYear'];
    return Query_personServicesClassesGroups_personsByPk_classes_service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear
              .fromJson((l$fromStudyYear as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear
              .fromJson((l$toStudyYear as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear?
      fromStudyYear;

  final Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear?
      toStudyYear;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$fromStudyYear = fromStudyYear;
    _resultData['fromStudyYear'] = l$fromStudyYear?.toJson();
    final l$toStudyYear = toStudyYear;
    _resultData['toStudyYear'] = l$toStudyYear?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$fromStudyYear = fromStudyYear;
    final l$toStudyYear = toStudyYear;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$fromStudyYear,
      l$toStudyYear,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_classes_service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$fromStudyYear = fromStudyYear;
    final lOther$fromStudyYear = other.fromStudyYear;
    if (l$fromStudyYear != lOther$fromStudyYear) {
      return false;
    }
    final l$toStudyYear = toStudyYear;
    final lOther$toStudyYear = other.toStudyYear;
    if (l$toStudyYear != lOther$toStudyYear) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_classes_service
    on Query_personServicesClassesGroups_personsByPk_classes_service {
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service<
          Query_personServicesClassesGroups_personsByPk_classes_service>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service(
    Query_personServicesClassesGroups_personsByPk_classes_service instance,
    TRes Function(Query_personServicesClassesGroups_personsByPk_classes_service)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes_service;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes_service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear?
        fromStudyYear,
    Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear?
        toStudyYear,
  });
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear<
      TRes> get fromStudyYear;
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear<
      TRes> get toStudyYear;
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes_service<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes_service(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_classes_service _instance;

  final TRes Function(
      Query_personServicesClassesGroups_personsByPk_classes_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? fromStudyYear = _undefined,
    Object? toStudyYear = _undefined,
  }) =>
      _then(Query_personServicesClassesGroups_personsByPk_classes_service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        fromStudyYear: fromStudyYear == _undefined
            ? _instance.fromStudyYear
            : (fromStudyYear
                as Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear?),
      ));
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear<
      TRes> get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear
            .stub(_then(_instance))
        : CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear<
      TRes> get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear
            .stub(_then(_instance))
        : CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes_service<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes_service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear?
        fromStudyYear,
    Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear?
        toStudyYear,
  }) =>
      _res;
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear<
          TRes>
      get fromStudyYear =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear
              .stub(_res);
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear<
          TRes>
      get toStudyYear =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear
              .stub(_res);
}

class Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear {
  Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear
    on Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear {
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear<
          Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear(
    Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear
        instance,
    TRes Function(
            Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear
      _instance;

  final TRes Function(
          Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes_service_fromStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear {
  Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear
    on Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear {
  CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear<
          Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear(
    Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear
        instance,
    TRes Function(
            Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear
      _instance;

  final TRes Function(
          Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_classes_service_toStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query_personServicesClassesGroups_personsByPk_groups {
  Query_personServicesClassesGroups_personsByPk_groups({
    required this.group,
    this.$__typename = 'PersonsGroups',
  });

  factory Query_personServicesClassesGroups_personsByPk_groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups_personsByPk_groups(
      group:
          Query_personServicesClassesGroups_personsByPk_groups_group.fromJson(
              (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_personServicesClassesGroups_personsByPk_groups_group group;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$group = group;
    _resultData['group'] = l$group.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$group = group;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$group,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_personServicesClassesGroups_personsByPk_groups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (l$group != lOther$group) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_groups
    on Query_personServicesClassesGroups_personsByPk_groups {
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups<
          Query_personServicesClassesGroups_personsByPk_groups>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_groups<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups(
    Query_personServicesClassesGroups_personsByPk_groups instance,
    TRes Function(Query_personServicesClassesGroups_personsByPk_groups) then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups;

  TRes call({
    Query_personServicesClassesGroups_personsByPk_groups_group? group,
    String? $__typename,
  });
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group<TRes>
      get group;
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups<TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups<TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_groups _instance;

  final TRes Function(Query_personServicesClassesGroups_personsByPk_groups)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_personServicesClassesGroups_personsByPk_groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group
                as Query_personServicesClassesGroups_personsByPk_groups_group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group<TRes>
      get group {
    final local$group = _instance.group;
    return CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups<TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups(
      this._res);

  TRes _res;

  call({
    Query_personServicesClassesGroups_personsByPk_groups_group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group<TRes>
      get group =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group
              .stub(_res);
}

class Query_personServicesClassesGroups_personsByPk_groups_group
    implements Fragment_Group, Fragment_GroupNoPhoto {
  Query_personServicesClassesGroups_personsByPk_groups_group({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Groups',
    this.photoUpdatedAt,
    required this.service,
  });

  factory Query_personServicesClassesGroups_personsByPk_groups_group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$service = json['service'];
    return Query_personServicesClassesGroups_personsByPk_groups_group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      service:
          Query_personServicesClassesGroups_personsByPk_groups_group_service
              .fromJson((l$service as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query_personServicesClassesGroups_personsByPk_groups_group_service
      service;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$service,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_groups_group) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_groups_group
    on Query_personServicesClassesGroups_personsByPk_groups_group {
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group<
          Query_personServicesClassesGroups_personsByPk_groups_group>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group(
    Query_personServicesClassesGroups_personsByPk_groups_group instance,
    TRes Function(Query_personServicesClassesGroups_personsByPk_groups_group)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_groups_group_service? service,
  });
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service<
      TRes> get service;
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_groups_group _instance;

  final TRes Function(
      Query_personServicesClassesGroups_personsByPk_groups_group) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Query_personServicesClassesGroups_personsByPk_groups_group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query_personServicesClassesGroups_personsByPk_groups_group_service),
      ));
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service<
      TRes> get service {
    final local$service = _instance.service;
    return CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_groups_group_service? service,
  }) =>
      _res;
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service<
          TRes>
      get service =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service
              .stub(_res);
}

class Query_personServicesClassesGroups_personsByPk_groups_group_service
    implements Fragment_Service, Fragment_ServiceNoPhoto {
  Query_personServicesClassesGroups_personsByPk_groups_group_service({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Services',
    this.photoUpdatedAt,
    this.fromStudyYear,
    this.toStudyYear,
  });

  factory Query_personServicesClassesGroups_personsByPk_groups_group_service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$toStudyYear = json['toStudyYear'];
    return Query_personServicesClassesGroups_personsByPk_groups_group_service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear
              .fromJson((l$fromStudyYear as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear
              .fromJson((l$toStudyYear as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear?
      fromStudyYear;

  final Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear?
      toStudyYear;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$fromStudyYear = fromStudyYear;
    _resultData['fromStudyYear'] = l$fromStudyYear?.toJson();
    final l$toStudyYear = toStudyYear;
    _resultData['toStudyYear'] = l$toStudyYear?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$fromStudyYear = fromStudyYear;
    final l$toStudyYear = toStudyYear;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$fromStudyYear,
      l$toStudyYear,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_groups_group_service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$fromStudyYear = fromStudyYear;
    final lOther$fromStudyYear = other.fromStudyYear;
    if (l$fromStudyYear != lOther$fromStudyYear) {
      return false;
    }
    final l$toStudyYear = toStudyYear;
    final lOther$toStudyYear = other.toStudyYear;
    if (l$toStudyYear != lOther$toStudyYear) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_groups_group_service
    on Query_personServicesClassesGroups_personsByPk_groups_group_service {
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service<
          Query_personServicesClassesGroups_personsByPk_groups_group_service>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service(
    Query_personServicesClassesGroups_personsByPk_groups_group_service instance,
    TRes Function(
            Query_personServicesClassesGroups_personsByPk_groups_group_service)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear?
        fromStudyYear,
    Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear?
        toStudyYear,
  });
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear<
      TRes> get fromStudyYear;
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear<
      TRes> get toStudyYear;
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_groups_group_service
      _instance;

  final TRes Function(
      Query_personServicesClassesGroups_personsByPk_groups_group_service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? fromStudyYear = _undefined,
    Object? toStudyYear = _undefined,
  }) =>
      _then(Query_personServicesClassesGroups_personsByPk_groups_group_service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        fromStudyYear: fromStudyYear == _undefined
            ? _instance.fromStudyYear
            : (fromStudyYear
                as Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear?),
      ));
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear<
      TRes> get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear
            .stub(_then(_instance))
        : CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear<
      TRes> get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear
            .stub(_then(_instance))
        : CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear?
        fromStudyYear,
    Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear?
        toStudyYear,
  }) =>
      _res;
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear<
          TRes>
      get fromStudyYear =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear
              .stub(_res);
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear<
          TRes>
      get toStudyYear =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear
              .stub(_res);
}

class Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear {
  Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear
    on Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear {
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear<
          Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear(
    Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear
        instance,
    TRes Function(
            Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear
      _instance;

  final TRes Function(
          Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_fromStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear {
  Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear({
    required this.order,
    required this.name,
    this.$__typename = 'StudyYears',
  });

  factory Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear(
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear
    on Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear {
  CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear<
          Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear>
      get copyWith =>
          CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear<
    TRes> {
  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear(
    Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear
        instance,
    TRes Function(
            Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear)
        then,
  ) = _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear;

  factory CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear<
            TRes> {
  _CopyWithImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear(
    this._instance,
    this._then,
  );

  final Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear
      _instance;

  final TRes Function(
          Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear<
        TRes>
    implements
        CopyWith_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear<
            TRes> {
  _CopyWithStubImpl_Query_personServicesClassesGroups_personsByPk_groups_group_service_toStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
