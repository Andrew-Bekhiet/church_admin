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

class Variables$Query$personsNames {
  factory Variables$Query$personsNames({
    List<Input$PersonsBoolExp>? where,
    List<Input$PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables$Query$personsNames._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables$Query$personsNames._(this._$data);

  factory Variables$Query$personsNames.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$PersonsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input$PersonsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Query$personsNames._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PersonsBoolExp>? get where =>
      (_$data['where'] as List<Input$PersonsBoolExp>?);
  List<Input$PersonsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$PersonsOrderBy>?);
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

  CopyWith$Variables$Query$personsNames<Variables$Query$personsNames>
      get copyWith => CopyWith$Variables$Query$personsNames(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$personsNames) ||
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

abstract class CopyWith$Variables$Query$personsNames<TRes> {
  factory CopyWith$Variables$Query$personsNames(
    Variables$Query$personsNames instance,
    TRes Function(Variables$Query$personsNames) then,
  ) = _CopyWithImpl$Variables$Query$personsNames;

  factory CopyWith$Variables$Query$personsNames.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$personsNames;

  TRes call({
    List<Input$PersonsBoolExp>? where,
    List<Input$PersonsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Query$personsNames<TRes>
    implements CopyWith$Variables$Query$personsNames<TRes> {
  _CopyWithImpl$Variables$Query$personsNames(
    this._instance,
    this._then,
  );

  final Variables$Query$personsNames _instance;

  final TRes Function(Variables$Query$personsNames) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Query$personsNames._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$PersonsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$PersonsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$personsNames<TRes>
    implements CopyWith$Variables$Query$personsNames<TRes> {
  _CopyWithStubImpl$Variables$Query$personsNames(this._res);

  TRes _res;

  call({
    List<Input$PersonsBoolExp>? where,
    List<Input$PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Query$personsNames {
  Query$personsNames({
    required this.persons,
    required this.$__typename,
  });

  factory Query$personsNames.fromJson(Map<String, dynamic> json) {
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query$personsNames(
      persons: (l$persons as List<dynamic>)
          .map((e) =>
              Query$personsNames$persons.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$personsNames$persons> persons;

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
    if (!(other is Query$personsNames) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$personsNames on Query$personsNames {
  CopyWith$Query$personsNames<Query$personsNames> get copyWith =>
      CopyWith$Query$personsNames(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$personsNames<TRes> {
  factory CopyWith$Query$personsNames(
    Query$personsNames instance,
    TRes Function(Query$personsNames) then,
  ) = _CopyWithImpl$Query$personsNames;

  factory CopyWith$Query$personsNames.stub(TRes res) =
      _CopyWithStubImpl$Query$personsNames;

  TRes call({
    List<Query$personsNames$persons>? persons,
    String? $__typename,
  });
  TRes persons(
      Iterable<Query$personsNames$persons> Function(
              Iterable<
                  CopyWith$Query$personsNames$persons<
                      Query$personsNames$persons>>)
          _fn);
}

class _CopyWithImpl$Query$personsNames<TRes>
    implements CopyWith$Query$personsNames<TRes> {
  _CopyWithImpl$Query$personsNames(
    this._instance,
    this._then,
  );

  final Query$personsNames _instance;

  final TRes Function(Query$personsNames) _then;

  static const _undefined = {};

  TRes call({
    Object? persons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personsNames(
        persons: persons == _undefined || persons == null
            ? _instance.persons
            : (persons as List<Query$personsNames$persons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes persons(
          Iterable<Query$personsNames$persons> Function(
                  Iterable<
                      CopyWith$Query$personsNames$persons<
                          Query$personsNames$persons>>)
              _fn) =>
      call(
          persons: _fn(
              _instance.persons.map((e) => CopyWith$Query$personsNames$persons(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$personsNames<TRes>
    implements CopyWith$Query$personsNames<TRes> {
  _CopyWithStubImpl$Query$personsNames(this._res);

  TRes _res;

  call({
    List<Query$personsNames$persons>? persons,
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

class Query$personsNames$persons {
  Query$personsNames$persons({
    required this.name,
    required this.$__typename,
  });

  factory Query$personsNames$persons.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$personsNames$persons(
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
    if (!(other is Query$personsNames$persons) ||
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

extension UtilityExtension$Query$personsNames$persons
    on Query$personsNames$persons {
  CopyWith$Query$personsNames$persons<Query$personsNames$persons>
      get copyWith => CopyWith$Query$personsNames$persons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personsNames$persons<TRes> {
  factory CopyWith$Query$personsNames$persons(
    Query$personsNames$persons instance,
    TRes Function(Query$personsNames$persons) then,
  ) = _CopyWithImpl$Query$personsNames$persons;

  factory CopyWith$Query$personsNames$persons.stub(TRes res) =
      _CopyWithStubImpl$Query$personsNames$persons;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personsNames$persons<TRes>
    implements CopyWith$Query$personsNames$persons<TRes> {
  _CopyWithImpl$Query$personsNames$persons(
    this._instance,
    this._then,
  );

  final Query$personsNames$persons _instance;

  final TRes Function(Query$personsNames$persons) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personsNames$persons(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personsNames$persons<TRes>
    implements CopyWith$Query$personsNames$persons<TRes> {
  _CopyWithStubImpl$Query$personsNames$persons(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$personsGeolocations {
  factory Variables$Query$personsGeolocations({
    required bool getAreas,
    required bool getStreets,
    required bool getFamilies,
    required bool getStores,
    required bool getPersons,
    List<UuidValue>? areasIds,
    List<UuidValue>? streetsIds,
    List<UuidValue>? familiesIds,
    List<UuidValue>? storesIds,
    List<Input$PersonsBoolExp>? personsConditions,
  }) =>
      Variables$Query$personsGeolocations._({
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

  Variables$Query$personsGeolocations._(this._$data);

  factory Variables$Query$personsGeolocations.fromJson(
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
              (e) => Input$PersonsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$personsGeolocations._(result$data);
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
  List<Input$PersonsBoolExp>? get personsConditions =>
      (_$data['personsConditions'] as List<Input$PersonsBoolExp>?);
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

  CopyWith$Variables$Query$personsGeolocations<
          Variables$Query$personsGeolocations>
      get copyWith => CopyWith$Variables$Query$personsGeolocations(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$personsGeolocations) ||
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

abstract class CopyWith$Variables$Query$personsGeolocations<TRes> {
  factory CopyWith$Variables$Query$personsGeolocations(
    Variables$Query$personsGeolocations instance,
    TRes Function(Variables$Query$personsGeolocations) then,
  ) = _CopyWithImpl$Variables$Query$personsGeolocations;

  factory CopyWith$Variables$Query$personsGeolocations.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$personsGeolocations;

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
    List<Input$PersonsBoolExp>? personsConditions,
  });
}

class _CopyWithImpl$Variables$Query$personsGeolocations<TRes>
    implements CopyWith$Variables$Query$personsGeolocations<TRes> {
  _CopyWithImpl$Variables$Query$personsGeolocations(
    this._instance,
    this._then,
  );

  final Variables$Query$personsGeolocations _instance;

  final TRes Function(Variables$Query$personsGeolocations) _then;

  static const _undefined = {};

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
      _then(Variables$Query$personsGeolocations._({
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
              (personsConditions as List<Input$PersonsBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$personsGeolocations<TRes>
    implements CopyWith$Variables$Query$personsGeolocations<TRes> {
  _CopyWithStubImpl$Variables$Query$personsGeolocations(this._res);

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
    List<Input$PersonsBoolExp>? personsConditions,
  }) =>
      _res;
}

class Query$personsGeolocations {
  Query$personsGeolocations({
    required this.areas,
    required this.streets,
    required this.families,
    required this.stores,
    required this.persons,
    required this.$__typename,
  });

  factory Query$personsGeolocations.fromJson(Map<String, dynamic> json) {
    final l$areas = json['areas'];
    final l$streets = json['streets'];
    final l$families = json['families'];
    final l$stores = json['stores'];
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query$personsGeolocations(
      areas: (l$areas as List<dynamic>)
          .map((e) => Query$personsGeolocations$areas.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      streets: (l$streets as List<dynamic>)
          .map((e) => Query$personsGeolocations$streets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      families: (l$families as List<dynamic>)
          .map((e) => Query$personsGeolocations$families.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      stores: (l$stores as List<dynamic>)
          .map((e) => Query$personsGeolocations$stores.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      persons: (l$persons as List<dynamic>)
          .map((e) => Query$personsGeolocations$persons.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$personsGeolocations$areas> areas;

  final List<Query$personsGeolocations$streets> streets;

  final List<Query$personsGeolocations$families> families;

  final List<Query$personsGeolocations$stores> stores;

  final List<Query$personsGeolocations$persons> persons;

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
    if (!(other is Query$personsGeolocations) ||
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

extension UtilityExtension$Query$personsGeolocations
    on Query$personsGeolocations {
  CopyWith$Query$personsGeolocations<Query$personsGeolocations> get copyWith =>
      CopyWith$Query$personsGeolocations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$personsGeolocations<TRes> {
  factory CopyWith$Query$personsGeolocations(
    Query$personsGeolocations instance,
    TRes Function(Query$personsGeolocations) then,
  ) = _CopyWithImpl$Query$personsGeolocations;

  factory CopyWith$Query$personsGeolocations.stub(TRes res) =
      _CopyWithStubImpl$Query$personsGeolocations;

  TRes call({
    List<Query$personsGeolocations$areas>? areas,
    List<Query$personsGeolocations$streets>? streets,
    List<Query$personsGeolocations$families>? families,
    List<Query$personsGeolocations$stores>? stores,
    List<Query$personsGeolocations$persons>? persons,
    String? $__typename,
  });
  TRes areas(
      Iterable<Query$personsGeolocations$areas> Function(
              Iterable<
                  CopyWith$Query$personsGeolocations$areas<
                      Query$personsGeolocations$areas>>)
          _fn);
  TRes streets(
      Iterable<Query$personsGeolocations$streets> Function(
              Iterable<
                  CopyWith$Query$personsGeolocations$streets<
                      Query$personsGeolocations$streets>>)
          _fn);
  TRes families(
      Iterable<Query$personsGeolocations$families> Function(
              Iterable<
                  CopyWith$Query$personsGeolocations$families<
                      Query$personsGeolocations$families>>)
          _fn);
  TRes stores(
      Iterable<Query$personsGeolocations$stores> Function(
              Iterable<
                  CopyWith$Query$personsGeolocations$stores<
                      Query$personsGeolocations$stores>>)
          _fn);
  TRes persons(
      Iterable<Query$personsGeolocations$persons> Function(
              Iterable<
                  CopyWith$Query$personsGeolocations$persons<
                      Query$personsGeolocations$persons>>)
          _fn);
}

class _CopyWithImpl$Query$personsGeolocations<TRes>
    implements CopyWith$Query$personsGeolocations<TRes> {
  _CopyWithImpl$Query$personsGeolocations(
    this._instance,
    this._then,
  );

  final Query$personsGeolocations _instance;

  final TRes Function(Query$personsGeolocations) _then;

  static const _undefined = {};

  TRes call({
    Object? areas = _undefined,
    Object? streets = _undefined,
    Object? families = _undefined,
    Object? stores = _undefined,
    Object? persons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personsGeolocations(
        areas: areas == _undefined || areas == null
            ? _instance.areas
            : (areas as List<Query$personsGeolocations$areas>),
        streets: streets == _undefined || streets == null
            ? _instance.streets
            : (streets as List<Query$personsGeolocations$streets>),
        families: families == _undefined || families == null
            ? _instance.families
            : (families as List<Query$personsGeolocations$families>),
        stores: stores == _undefined || stores == null
            ? _instance.stores
            : (stores as List<Query$personsGeolocations$stores>),
        persons: persons == _undefined || persons == null
            ? _instance.persons
            : (persons as List<Query$personsGeolocations$persons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes areas(
          Iterable<Query$personsGeolocations$areas> Function(
                  Iterable<
                      CopyWith$Query$personsGeolocations$areas<
                          Query$personsGeolocations$areas>>)
              _fn) =>
      call(
          areas: _fn(_instance.areas
              .map((e) => CopyWith$Query$personsGeolocations$areas(
                    e,
                    (i) => i,
                  ))).toList());
  TRes streets(
          Iterable<Query$personsGeolocations$streets> Function(
                  Iterable<
                      CopyWith$Query$personsGeolocations$streets<
                          Query$personsGeolocations$streets>>)
              _fn) =>
      call(
          streets: _fn(_instance.streets
              .map((e) => CopyWith$Query$personsGeolocations$streets(
                    e,
                    (i) => i,
                  ))).toList());
  TRes families(
          Iterable<Query$personsGeolocations$families> Function(
                  Iterable<
                      CopyWith$Query$personsGeolocations$families<
                          Query$personsGeolocations$families>>)
              _fn) =>
      call(
          families: _fn(_instance.families
              .map((e) => CopyWith$Query$personsGeolocations$families(
                    e,
                    (i) => i,
                  ))).toList());
  TRes stores(
          Iterable<Query$personsGeolocations$stores> Function(
                  Iterable<
                      CopyWith$Query$personsGeolocations$stores<
                          Query$personsGeolocations$stores>>)
              _fn) =>
      call(
          stores: _fn(_instance.stores
              .map((e) => CopyWith$Query$personsGeolocations$stores(
                    e,
                    (i) => i,
                  ))).toList());
  TRes persons(
          Iterable<Query$personsGeolocations$persons> Function(
                  Iterable<
                      CopyWith$Query$personsGeolocations$persons<
                          Query$personsGeolocations$persons>>)
              _fn) =>
      call(
          persons: _fn(_instance.persons
              .map((e) => CopyWith$Query$personsGeolocations$persons(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$personsGeolocations<TRes>
    implements CopyWith$Query$personsGeolocations<TRes> {
  _CopyWithStubImpl$Query$personsGeolocations(this._res);

  TRes _res;

  call({
    List<Query$personsGeolocations$areas>? areas,
    List<Query$personsGeolocations$streets>? streets,
    List<Query$personsGeolocations$families>? families,
    List<Query$personsGeolocations$stores>? stores,
    List<Query$personsGeolocations$persons>? persons,
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

class Query$personsGeolocations$areas implements Fragment$AreaNoPhoto {
  Query$personsGeolocations$areas({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.bounds,
  });

  factory Query$personsGeolocations$areas.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$bounds = json['bounds'];
    return Query$personsGeolocations$areas(
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
    if (!(other is Query$personsGeolocations$areas) ||
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

extension UtilityExtension$Query$personsGeolocations$areas
    on Query$personsGeolocations$areas {
  CopyWith$Query$personsGeolocations$areas<Query$personsGeolocations$areas>
      get copyWith => CopyWith$Query$personsGeolocations$areas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personsGeolocations$areas<TRes> {
  factory CopyWith$Query$personsGeolocations$areas(
    Query$personsGeolocations$areas instance,
    TRes Function(Query$personsGeolocations$areas) then,
  ) = _CopyWithImpl$Query$personsGeolocations$areas;

  factory CopyWith$Query$personsGeolocations$areas.stub(TRes res) =
      _CopyWithStubImpl$Query$personsGeolocations$areas;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? bounds,
  });
}

class _CopyWithImpl$Query$personsGeolocations$areas<TRes>
    implements CopyWith$Query$personsGeolocations$areas<TRes> {
  _CopyWithImpl$Query$personsGeolocations$areas(
    this._instance,
    this._then,
  );

  final Query$personsGeolocations$areas _instance;

  final TRes Function(Query$personsGeolocations$areas) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? bounds = _undefined,
  }) =>
      _then(Query$personsGeolocations$areas(
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

class _CopyWithStubImpl$Query$personsGeolocations$areas<TRes>
    implements CopyWith$Query$personsGeolocations$areas<TRes> {
  _CopyWithStubImpl$Query$personsGeolocations$areas(this._res);

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

class Query$personsGeolocations$streets implements Fragment$StreetNoPhoto {
  Query$personsGeolocations$streets({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.line,
  });

  factory Query$personsGeolocations$streets.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$line = json['line'];
    return Query$personsGeolocations$streets(
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
    if (!(other is Query$personsGeolocations$streets) ||
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

extension UtilityExtension$Query$personsGeolocations$streets
    on Query$personsGeolocations$streets {
  CopyWith$Query$personsGeolocations$streets<Query$personsGeolocations$streets>
      get copyWith => CopyWith$Query$personsGeolocations$streets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personsGeolocations$streets<TRes> {
  factory CopyWith$Query$personsGeolocations$streets(
    Query$personsGeolocations$streets instance,
    TRes Function(Query$personsGeolocations$streets) then,
  ) = _CopyWithImpl$Query$personsGeolocations$streets;

  factory CopyWith$Query$personsGeolocations$streets.stub(TRes res) =
      _CopyWithStubImpl$Query$personsGeolocations$streets;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? line,
  });
}

class _CopyWithImpl$Query$personsGeolocations$streets<TRes>
    implements CopyWith$Query$personsGeolocations$streets<TRes> {
  _CopyWithImpl$Query$personsGeolocations$streets(
    this._instance,
    this._then,
  );

  final Query$personsGeolocations$streets _instance;

  final TRes Function(Query$personsGeolocations$streets) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? line = _undefined,
  }) =>
      _then(Query$personsGeolocations$streets(
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

class _CopyWithStubImpl$Query$personsGeolocations$streets<TRes>
    implements CopyWith$Query$personsGeolocations$streets<TRes> {
  _CopyWithStubImpl$Query$personsGeolocations$streets(this._res);

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

class Query$personsGeolocations$families implements Fragment$FamilyNoPhoto {
  Query$personsGeolocations$families({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.geolocation,
  });

  factory Query$personsGeolocations$families.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$geolocation = json['geolocation'];
    return Query$personsGeolocations$families(
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
    if (!(other is Query$personsGeolocations$families) ||
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

extension UtilityExtension$Query$personsGeolocations$families
    on Query$personsGeolocations$families {
  CopyWith$Query$personsGeolocations$families<
          Query$personsGeolocations$families>
      get copyWith => CopyWith$Query$personsGeolocations$families(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personsGeolocations$families<TRes> {
  factory CopyWith$Query$personsGeolocations$families(
    Query$personsGeolocations$families instance,
    TRes Function(Query$personsGeolocations$families) then,
  ) = _CopyWithImpl$Query$personsGeolocations$families;

  factory CopyWith$Query$personsGeolocations$families.stub(TRes res) =
      _CopyWithStubImpl$Query$personsGeolocations$families;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? geolocation,
  });
}

class _CopyWithImpl$Query$personsGeolocations$families<TRes>
    implements CopyWith$Query$personsGeolocations$families<TRes> {
  _CopyWithImpl$Query$personsGeolocations$families(
    this._instance,
    this._then,
  );

  final Query$personsGeolocations$families _instance;

  final TRes Function(Query$personsGeolocations$families) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? geolocation = _undefined,
  }) =>
      _then(Query$personsGeolocations$families(
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

class _CopyWithStubImpl$Query$personsGeolocations$families<TRes>
    implements CopyWith$Query$personsGeolocations$families<TRes> {
  _CopyWithStubImpl$Query$personsGeolocations$families(this._res);

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

class Query$personsGeolocations$stores implements Fragment$StoreNoPhoto {
  Query$personsGeolocations$stores({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.geolocation,
  });

  factory Query$personsGeolocations$stores.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$geolocation = json['geolocation'];
    return Query$personsGeolocations$stores(
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
    if (!(other is Query$personsGeolocations$stores) ||
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

extension UtilityExtension$Query$personsGeolocations$stores
    on Query$personsGeolocations$stores {
  CopyWith$Query$personsGeolocations$stores<Query$personsGeolocations$stores>
      get copyWith => CopyWith$Query$personsGeolocations$stores(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personsGeolocations$stores<TRes> {
  factory CopyWith$Query$personsGeolocations$stores(
    Query$personsGeolocations$stores instance,
    TRes Function(Query$personsGeolocations$stores) then,
  ) = _CopyWithImpl$Query$personsGeolocations$stores;

  factory CopyWith$Query$personsGeolocations$stores.stub(TRes res) =
      _CopyWithStubImpl$Query$personsGeolocations$stores;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? geolocation,
  });
}

class _CopyWithImpl$Query$personsGeolocations$stores<TRes>
    implements CopyWith$Query$personsGeolocations$stores<TRes> {
  _CopyWithImpl$Query$personsGeolocations$stores(
    this._instance,
    this._then,
  );

  final Query$personsGeolocations$stores _instance;

  final TRes Function(Query$personsGeolocations$stores) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? geolocation = _undefined,
  }) =>
      _then(Query$personsGeolocations$stores(
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

class _CopyWithStubImpl$Query$personsGeolocations$stores<TRes>
    implements CopyWith$Query$personsGeolocations$stores<TRes> {
  _CopyWithStubImpl$Query$personsGeolocations$stores(this._res);

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

class Query$personsGeolocations$persons implements Fragment$PersonNoPhoto {
  Query$personsGeolocations$persons({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.geolocation,
  });

  factory Query$personsGeolocations$persons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$geolocation = json['geolocation'];
    return Query$personsGeolocations$persons(
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
    if (!(other is Query$personsGeolocations$persons) ||
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

extension UtilityExtension$Query$personsGeolocations$persons
    on Query$personsGeolocations$persons {
  CopyWith$Query$personsGeolocations$persons<Query$personsGeolocations$persons>
      get copyWith => CopyWith$Query$personsGeolocations$persons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personsGeolocations$persons<TRes> {
  factory CopyWith$Query$personsGeolocations$persons(
    Query$personsGeolocations$persons instance,
    TRes Function(Query$personsGeolocations$persons) then,
  ) = _CopyWithImpl$Query$personsGeolocations$persons;

  factory CopyWith$Query$personsGeolocations$persons.stub(TRes res) =
      _CopyWithStubImpl$Query$personsGeolocations$persons;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Map<String, dynamic>? geolocation,
  });
}

class _CopyWithImpl$Query$personsGeolocations$persons<TRes>
    implements CopyWith$Query$personsGeolocations$persons<TRes> {
  _CopyWithImpl$Query$personsGeolocations$persons(
    this._instance,
    this._then,
  );

  final Query$personsGeolocations$persons _instance;

  final TRes Function(Query$personsGeolocations$persons) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? geolocation = _undefined,
  }) =>
      _then(Query$personsGeolocations$persons(
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

class _CopyWithStubImpl$Query$personsGeolocations$persons<TRes>
    implements CopyWith$Query$personsGeolocations$persons<TRes> {
  _CopyWithStubImpl$Query$personsGeolocations$persons(this._res);

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

class Variables$Query$personHistoryAnalysis {
  factory Variables$Query$personHistoryAnalysis({
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
      Variables$Query$personHistoryAnalysis._({
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

  Variables$Query$personHistoryAnalysis._(this._$data);

  factory Variables$Query$personHistoryAnalysis.fromJson(
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
    return Variables$Query$personHistoryAnalysis._(result$data);
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

  CopyWith$Variables$Query$personHistoryAnalysis<
          Variables$Query$personHistoryAnalysis>
      get copyWith => CopyWith$Variables$Query$personHistoryAnalysis(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$personHistoryAnalysis) ||
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

abstract class CopyWith$Variables$Query$personHistoryAnalysis<TRes> {
  factory CopyWith$Variables$Query$personHistoryAnalysis(
    Variables$Query$personHistoryAnalysis instance,
    TRes Function(Variables$Query$personHistoryAnalysis) then,
  ) = _CopyWithImpl$Variables$Query$personHistoryAnalysis;

  factory CopyWith$Variables$Query$personHistoryAnalysis.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$personHistoryAnalysis;

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

class _CopyWithImpl$Variables$Query$personHistoryAnalysis<TRes>
    implements CopyWith$Variables$Query$personHistoryAnalysis<TRes> {
  _CopyWithImpl$Variables$Query$personHistoryAnalysis(
    this._instance,
    this._then,
  );

  final Variables$Query$personHistoryAnalysis _instance;

  final TRes Function(Variables$Query$personHistoryAnalysis) _then;

  static const _undefined = {};

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
      _then(Variables$Query$personHistoryAnalysis._({
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

class _CopyWithStubImpl$Variables$Query$personHistoryAnalysis<TRes>
    implements CopyWith$Variables$Query$personHistoryAnalysis<TRes> {
  _CopyWithStubImpl$Variables$Query$personHistoryAnalysis(this._res);

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

class Query$personHistoryAnalysis {
  Query$personHistoryAnalysis({
    this.personsByPk,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis.fromJson(Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis(
      personsByPk: l$personsByPk == null
          ? null
          : Query$personHistoryAnalysis$personsByPk.fromJson(
              (l$personsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk? personsByPk;

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
    if (!(other is Query$personHistoryAnalysis) ||
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

extension UtilityExtension$Query$personHistoryAnalysis
    on Query$personHistoryAnalysis {
  CopyWith$Query$personHistoryAnalysis<Query$personHistoryAnalysis>
      get copyWith => CopyWith$Query$personHistoryAnalysis(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis<TRes> {
  factory CopyWith$Query$personHistoryAnalysis(
    Query$personHistoryAnalysis instance,
    TRes Function(Query$personHistoryAnalysis) then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis;

  factory CopyWith$Query$personHistoryAnalysis.stub(TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis;

  TRes call({
    Query$personHistoryAnalysis$personsByPk? personsByPk,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl$Query$personHistoryAnalysis<TRes>
    implements CopyWith$Query$personHistoryAnalysis<TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis _instance;

  final TRes Function(Query$personHistoryAnalysis) _then;

  static const _undefined = {};

  TRes call({
    Object? personsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis(
        personsByPk: personsByPk == _undefined
            ? _instance.personsByPk
            : (personsByPk as Query$personHistoryAnalysis$personsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk.stub(
            _then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis<TRes>
    implements CopyWith$Query$personHistoryAnalysis<TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis(this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk? personsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk<TRes> get personsByPk =>
      CopyWith$Query$personHistoryAnalysis$personsByPk.stub(_res);
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

class Query$personHistoryAnalysis$personsByPk {
  Query$personHistoryAnalysis$personsByPk({
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
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk.fromJson(
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
    return Query$personHistoryAnalysis$personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      callHistoryAggregate:
          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate.fromJson(
              (l$callHistoryAggregate as Map<String, dynamic>)),
      visitHistoryAggregate:
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate
              .fromJson((l$visitHistoryAggregate as Map<String, dynamic>)),
      editHistoryAggregate:
          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>)),
      kodasHistoryAggregate:
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate
              .fromJson((l$kodasHistoryAggregate as Map<String, dynamic>)),
      confessionHistoryAggregate:
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate
              .fromJson((l$confessionHistoryAggregate as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Query$personHistoryAnalysis$personsByPk$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Query$personHistoryAnalysis$personsByPk$classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) => Query$personHistoryAnalysis$personsByPk$groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Query$personHistoryAnalysis$personsByPk$callHistoryAggregate
      callHistoryAggregate;

  final Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate
      visitHistoryAggregate;

  final Query$personHistoryAnalysis$personsByPk$editHistoryAggregate
      editHistoryAggregate;

  final Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate
      kodasHistoryAggregate;

  final Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate
      confessionHistoryAggregate;

  final List<Query$personHistoryAnalysis$personsByPk$services> services;

  final List<Query$personHistoryAnalysis$personsByPk$classes>? classes;

  final List<Query$personHistoryAnalysis$personsByPk$groups> groups;

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
    if (!(other is Query$personHistoryAnalysis$personsByPk) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk
    on Query$personHistoryAnalysis$personsByPk {
  CopyWith$Query$personHistoryAnalysis$personsByPk<
          Query$personHistoryAnalysis$personsByPk>
      get copyWith => CopyWith$Query$personHistoryAnalysis$personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk<TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk(
    Query$personHistoryAnalysis$personsByPk instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk) then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk.stub(TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate?
        callHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate?
        visitHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate?
        editHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate?
        kodasHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate?
        confessionHistoryAggregate,
    List<Query$personHistoryAnalysis$personsByPk$services>? services,
    List<Query$personHistoryAnalysis$personsByPk$classes>? classes,
    List<Query$personHistoryAnalysis$personsByPk$groups>? groups,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate<TRes>
      get callHistoryAggregate;
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate<TRes>
      get visitHistoryAggregate;
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate<TRes>
      get editHistoryAggregate;
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate<TRes>
      get kodasHistoryAggregate;
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate<
      TRes> get confessionHistoryAggregate;
  TRes services(
      Iterable<Query$personHistoryAnalysis$personsByPk$services> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$services<
                      Query$personHistoryAnalysis$personsByPk$services>>)
          _fn);
  TRes classes(
      Iterable<Query$personHistoryAnalysis$personsByPk$classes>? Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$classes<
                      Query$personHistoryAnalysis$personsByPk$classes>>?)
          _fn);
  TRes groups(
      Iterable<Query$personHistoryAnalysis$personsByPk$groups> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$groups<
                      Query$personHistoryAnalysis$personsByPk$groups>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk<TRes>
    implements CopyWith$Query$personHistoryAnalysis$personsByPk<TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk _instance;

  final TRes Function(Query$personHistoryAnalysis$personsByPk) _then;

  static const _undefined = {};

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
      _then(Query$personHistoryAnalysis$personsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        callHistoryAggregate: callHistoryAggregate == _undefined ||
                callHistoryAggregate == null
            ? _instance.callHistoryAggregate
            : (callHistoryAggregate
                as Query$personHistoryAnalysis$personsByPk$callHistoryAggregate),
        visitHistoryAggregate: visitHistoryAggregate == _undefined ||
                visitHistoryAggregate == null
            ? _instance.visitHistoryAggregate
            : (visitHistoryAggregate
                as Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate),
        editHistoryAggregate: editHistoryAggregate == _undefined ||
                editHistoryAggregate == null
            ? _instance.editHistoryAggregate
            : (editHistoryAggregate
                as Query$personHistoryAnalysis$personsByPk$editHistoryAggregate),
        kodasHistoryAggregate: kodasHistoryAggregate == _undefined ||
                kodasHistoryAggregate == null
            ? _instance.kodasHistoryAggregate
            : (kodasHistoryAggregate
                as Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate),
        confessionHistoryAggregate: confessionHistoryAggregate == _undefined ||
                confessionHistoryAggregate == null
            ? _instance.confessionHistoryAggregate
            : (confessionHistoryAggregate
                as Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate),
        services: services == _undefined || services == null
            ? _instance.services
            : (services
                as List<Query$personHistoryAnalysis$personsByPk$services>),
        classes: classes == _undefined
            ? _instance.classes
            : (classes
                as List<Query$personHistoryAnalysis$personsByPk$classes>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Query$personHistoryAnalysis$personsByPk$groups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate<TRes>
      get callHistoryAggregate {
    final local$callHistoryAggregate = _instance.callHistoryAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate(
        local$callHistoryAggregate, (e) => call(callHistoryAggregate: e));
  }

  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate<TRes>
      get visitHistoryAggregate {
    final local$visitHistoryAggregate = _instance.visitHistoryAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate(
        local$visitHistoryAggregate, (e) => call(visitHistoryAggregate: e));
  }

  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate<TRes>
      get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate(
        local$editHistoryAggregate, (e) => call(editHistoryAggregate: e));
  }

  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate<TRes>
      get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate(
        local$kodasHistoryAggregate, (e) => call(kodasHistoryAggregate: e));
  }

  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate<
      TRes> get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate(
        local$confessionHistoryAggregate,
        (e) => call(confessionHistoryAggregate: e));
  }

  TRes services(
          Iterable<Query$personHistoryAnalysis$personsByPk$services> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$services<
                          Query$personHistoryAnalysis$personsByPk$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services.map(
              (e) => CopyWith$Query$personHistoryAnalysis$personsByPk$services(
                    e,
                    (i) => i,
                  ))).toList());
  TRes classes(
          Iterable<Query$personHistoryAnalysis$personsByPk$classes>? Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$classes<
                          Query$personHistoryAnalysis$personsByPk$classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map(
              (e) => CopyWith$Query$personHistoryAnalysis$personsByPk$classes(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes groups(
          Iterable<Query$personHistoryAnalysis$personsByPk$groups> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$groups<
                          Query$personHistoryAnalysis$personsByPk$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups.map(
              (e) => CopyWith$Query$personHistoryAnalysis$personsByPk$groups(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk<TRes>
    implements CopyWith$Query$personHistoryAnalysis$personsByPk<TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate?
        callHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate?
        visitHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate?
        editHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate?
        kodasHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate?
        confessionHistoryAggregate,
    List<Query$personHistoryAnalysis$personsByPk$services>? services,
    List<Query$personHistoryAnalysis$personsByPk$classes>? classes,
    List<Query$personHistoryAnalysis$personsByPk$groups>? groups,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate<TRes>
      get callHistoryAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate
              .stub(_res);
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate<TRes>
      get visitHistoryAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate
              .stub(_res);
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate<TRes>
      get editHistoryAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate
              .stub(_res);
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate<TRes>
      get kodasHistoryAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate
              .stub(_res);
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate<
          TRes>
      get confessionHistoryAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate
              .stub(_res);
  services(_fn) => _res;
  classes(_fn) => _res;
  groups(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$callHistoryAggregate {
  Query$personHistoryAnalysis$personsByPk$callHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$callHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$callHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate?
      aggregate;

  final List<Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$callHistoryAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate
    on Query$personHistoryAnalysis$personsByPk$callHistoryAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate<
          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate(
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk$callHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$callHistoryAggregate _instance;

  final TRes Function(
      Query$personHistoryAnalysis$personsByPk$callHistoryAggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$callHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max?
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
            is Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max {
  Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max(
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
            is Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max
    on Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max {
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max<
          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max(
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes({
    required this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes
      _instance;

  final TRes Function(
      Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$callHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate {
  Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate
    on Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate<
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate(
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate _instance;

  final TRes Function(
      Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max?
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
            is Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max {
  Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max(
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
            is Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max
    on Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max {
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max<
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max(
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes({
    required this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$visitHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$editHistoryAggregate {
  Query$personHistoryAnalysis$personsByPk$editHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$editHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$editHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate?
      aggregate;

  final List<Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$editHistoryAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate
    on Query$personHistoryAnalysis$personsByPk$editHistoryAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate<
          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate(
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk$editHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$editHistoryAggregate _instance;

  final TRes Function(
      Query$personHistoryAnalysis$personsByPk$editHistoryAggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$editHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max?
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
            is Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max {
  Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max(
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
            is Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max
    on Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max {
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max<
          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max(
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes({
    required this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes
      _instance;

  final TRes Function(
      Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$editHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate {
  Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate
    on Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate<
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate(
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate _instance;

  final TRes Function(
      Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max?
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
            is Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max {
  Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max(
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
            is Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max
    on Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max {
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max<
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max(
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes({
    this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$kodasHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate {
  Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate
    on Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate<
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate(
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate
      _instance;

  final TRes Function(
      Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max?
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
            is Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max {
  Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max(
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
            is Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max
    on Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max {
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max<
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max(
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes({
    this.time,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$confessionHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$services {
  Query$personHistoryAnalysis$personsByPk$services({
    required this.service,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$services(
      service:
          Query$personHistoryAnalysis$personsByPk$services$service.fromJson(
              (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$services$service service;

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
    if (!(other is Query$personHistoryAnalysis$personsByPk$services) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$services
    on Query$personHistoryAnalysis$personsByPk$services {
  CopyWith$Query$personHistoryAnalysis$personsByPk$services<
          Query$personHistoryAnalysis$personsByPk$services>
      get copyWith => CopyWith$Query$personHistoryAnalysis$personsByPk$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$services<TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services(
    Query$personHistoryAnalysis$personsByPk$services instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk$services) then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$services$service? service,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service<TRes>
      get service;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services<TRes>
    implements CopyWith$Query$personHistoryAnalysis$personsByPk$services<TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$services _instance;

  final TRes Function(Query$personHistoryAnalysis$personsByPk$services) _then;

  static const _undefined = {};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query$personHistoryAnalysis$personsByPk$services$service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$services$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services<TRes>
    implements CopyWith$Query$personHistoryAnalysis$personsByPk$services<TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services(this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$services$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service<TRes>
      get service =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$services$service
    implements Fragment$ServiceNoPhoto {
  Query$personHistoryAnalysis$personsByPk$services$service({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Query$personHistoryAnalysis$personsByPk$services$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Query$personHistoryAnalysis$personsByPk$services$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      attendanceHistoryAggregate:
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate
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
    if (!(other is Query$personHistoryAnalysis$personsByPk$services$service) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$services$service
    on Query$personHistoryAnalysis$personsByPk$services$service {
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service<
          Query$personHistoryAnalysis$personsByPk$services$service>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$services$service<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service(
    Query$personHistoryAnalysis$personsByPk$services$service instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk$services$service)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$services$service _instance;

  final TRes Function(Query$personHistoryAnalysis$personsByPk$services$service)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$services$service(
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
                as Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate {
  Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate
    on Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate<
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate(
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
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
            is Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
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
            is Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
    on Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate {
  Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate
    on Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate<
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate(
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
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
            is Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$classes
    implements Fragment$ClassNoPhoto {
  Query$personHistoryAnalysis$personsByPk$classes({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Query$personHistoryAnalysis$personsByPk$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Query$personHistoryAnalysis$personsByPk$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      attendanceHistoryAggregate:
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate
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
    if (!(other is Query$personHistoryAnalysis$personsByPk$classes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$classes
    on Query$personHistoryAnalysis$personsByPk$classes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes<
          Query$personHistoryAnalysis$personsByPk$classes>
      get copyWith => CopyWith$Query$personHistoryAnalysis$personsByPk$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$classes<TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes(
    Query$personHistoryAnalysis$personsByPk$classes instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk$classes) then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes<TRes>
    implements CopyWith$Query$personHistoryAnalysis$personsByPk$classes<TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$classes _instance;

  final TRes Function(Query$personHistoryAnalysis$personsByPk$classes) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$classes(
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
                as Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes<TRes>
    implements CopyWith$Query$personHistoryAnalysis$personsByPk$classes<TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate {
  Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate
    on Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate<
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate(
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
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
            is Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max {
  Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
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
            is Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
    on Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate {
  Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate
    on Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate<
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate(
    Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
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
            is Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$groups {
  Query$personHistoryAnalysis$personsByPk$groups({
    required this.group,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$groups(
      group: Query$personHistoryAnalysis$personsByPk$groups$group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$groups$group group;

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
    if (!(other is Query$personHistoryAnalysis$personsByPk$groups) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$groups
    on Query$personHistoryAnalysis$personsByPk$groups {
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups<
          Query$personHistoryAnalysis$personsByPk$groups>
      get copyWith => CopyWith$Query$personHistoryAnalysis$personsByPk$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$groups<TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups(
    Query$personHistoryAnalysis$personsByPk$groups instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk$groups) then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$groups$group? group,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group<TRes> get group;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups<TRes>
    implements CopyWith$Query$personHistoryAnalysis$personsByPk$groups<TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$groups _instance;

  final TRes Function(Query$personHistoryAnalysis$personsByPk$groups) _then;

  static const _undefined = {};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Query$personHistoryAnalysis$personsByPk$groups$group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group<TRes>
      get group {
    final local$group = _instance.group;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups<TRes>
    implements CopyWith$Query$personHistoryAnalysis$personsByPk$groups<TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups(this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$groups$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group<TRes>
      get group =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group.stub(
              _res);
}

class Query$personHistoryAnalysis$personsByPk$groups$group
    implements Fragment$GroupNoPhoto {
  Query$personHistoryAnalysis$personsByPk$groups$group({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
  });

  factory Query$personHistoryAnalysis$personsByPk$groups$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    return Query$personHistoryAnalysis$personsByPk$groups$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      attendanceHistoryAggregate:
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate
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
    if (!(other is Query$personHistoryAnalysis$personsByPk$groups$group) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$groups$group
    on Query$personHistoryAnalysis$personsByPk$groups$group {
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group<
          Query$personHistoryAnalysis$personsByPk$groups$group>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group(
    Query$personHistoryAnalysis$personsByPk$groups$group instance,
    TRes Function(Query$personHistoryAnalysis$personsByPk$groups$group) then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group<TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group<TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$groups$group _instance;

  final TRes Function(Query$personHistoryAnalysis$personsByPk$groups$group)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
  }) =>
      _then(Query$personHistoryAnalysis$personsByPk$groups$group(
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
                as Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group<TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate {
  Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate
    on Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate<
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate(
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
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
            is Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
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
            is Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
    on Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate {
  Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>
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
            is Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate
    on Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate;

  TRes call({
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
                      Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
                          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate {
  Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
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
            is Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
    on Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes {
  Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
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
            is Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes) ||
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

extension UtilityExtension$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes
    on Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
    Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$personHistoryAnalysis$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$personServicesClassesGroups {
  factory Variables$Query$personServicesClassesGroups(
          {required UuidValue id}) =>
      Variables$Query$personServicesClassesGroups._({
        r'id': id,
      });

  Variables$Query$personServicesClassesGroups._(this._$data);

  factory Variables$Query$personServicesClassesGroups.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Query$personServicesClassesGroups._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Query$personServicesClassesGroups<
          Variables$Query$personServicesClassesGroups>
      get copyWith => CopyWith$Variables$Query$personServicesClassesGroups(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$personServicesClassesGroups) ||
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

abstract class CopyWith$Variables$Query$personServicesClassesGroups<TRes> {
  factory CopyWith$Variables$Query$personServicesClassesGroups(
    Variables$Query$personServicesClassesGroups instance,
    TRes Function(Variables$Query$personServicesClassesGroups) then,
  ) = _CopyWithImpl$Variables$Query$personServicesClassesGroups;

  factory CopyWith$Variables$Query$personServicesClassesGroups.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$personServicesClassesGroups;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Query$personServicesClassesGroups<TRes>
    implements CopyWith$Variables$Query$personServicesClassesGroups<TRes> {
  _CopyWithImpl$Variables$Query$personServicesClassesGroups(
    this._instance,
    this._then,
  );

  final Variables$Query$personServicesClassesGroups _instance;

  final TRes Function(Variables$Query$personServicesClassesGroups) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$personServicesClassesGroups._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Query$personServicesClassesGroups<TRes>
    implements CopyWith$Variables$Query$personServicesClassesGroups<TRes> {
  _CopyWithStubImpl$Variables$Query$personServicesClassesGroups(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Query$personServicesClassesGroups {
  Query$personServicesClassesGroups({
    this.personsByPk,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups.fromJson(
      Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups(
      personsByPk: l$personsByPk == null
          ? null
          : Query$personServicesClassesGroups$personsByPk.fromJson(
              (l$personsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personServicesClassesGroups$personsByPk? personsByPk;

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
    if (!(other is Query$personServicesClassesGroups) ||
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

extension UtilityExtension$Query$personServicesClassesGroups
    on Query$personServicesClassesGroups {
  CopyWith$Query$personServicesClassesGroups<Query$personServicesClassesGroups>
      get copyWith => CopyWith$Query$personServicesClassesGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups<TRes> {
  factory CopyWith$Query$personServicesClassesGroups(
    Query$personServicesClassesGroups instance,
    TRes Function(Query$personServicesClassesGroups) then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups;

  factory CopyWith$Query$personServicesClassesGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups;

  TRes call({
    Query$personServicesClassesGroups$personsByPk? personsByPk,
    String? $__typename,
  });
  CopyWith$Query$personServicesClassesGroups$personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl$Query$personServicesClassesGroups<TRes>
    implements CopyWith$Query$personServicesClassesGroups<TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups _instance;

  final TRes Function(Query$personServicesClassesGroups) _then;

  static const _undefined = {};

  TRes call({
    Object? personsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personServicesClassesGroups(
        personsByPk: personsByPk == _undefined
            ? _instance.personsByPk
            : (personsByPk as Query$personServicesClassesGroups$personsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personServicesClassesGroups$personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith$Query$personServicesClassesGroups$personsByPk.stub(
            _then(_instance))
        : CopyWith$Query$personServicesClassesGroups$personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl$Query$personServicesClassesGroups<TRes>
    implements CopyWith$Query$personServicesClassesGroups<TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups(this._res);

  TRes _res;

  call({
    Query$personServicesClassesGroups$personsByPk? personsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personServicesClassesGroups$personsByPk<TRes>
      get personsByPk =>
          CopyWith$Query$personServicesClassesGroups$personsByPk.stub(_res);
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

class Query$personServicesClassesGroups$personsByPk {
  Query$personServicesClassesGroups$personsByPk({
    required this.id,
    required this.name,
    required this.services,
    this.classes,
    required this.groups,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups$personsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$services = json['services'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups$personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      services: (l$services as List<dynamic>)
          .map((e) =>
              Query$personServicesClassesGroups$personsByPk$services.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) =>
              Query$personServicesClassesGroups$personsByPk$classes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) =>
              Query$personServicesClassesGroups$personsByPk$groups.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final List<Query$personServicesClassesGroups$personsByPk$services> services;

  final List<Query$personServicesClassesGroups$personsByPk$classes>? classes;

  final List<Query$personServicesClassesGroups$personsByPk$groups> groups;

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
    if (!(other is Query$personServicesClassesGroups$personsByPk) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk
    on Query$personServicesClassesGroups$personsByPk {
  CopyWith$Query$personServicesClassesGroups$personsByPk<
          Query$personServicesClassesGroups$personsByPk>
      get copyWith => CopyWith$Query$personServicesClassesGroups$personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk<TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk(
    Query$personServicesClassesGroups$personsByPk instance,
    TRes Function(Query$personServicesClassesGroups$personsByPk) then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    List<Query$personServicesClassesGroups$personsByPk$services>? services,
    List<Query$personServicesClassesGroups$personsByPk$classes>? classes,
    List<Query$personServicesClassesGroups$personsByPk$groups>? groups,
    String? $__typename,
  });
  TRes services(
      Iterable<Query$personServicesClassesGroups$personsByPk$services> Function(
              Iterable<
                  CopyWith$Query$personServicesClassesGroups$personsByPk$services<
                      Query$personServicesClassesGroups$personsByPk$services>>)
          _fn);
  TRes classes(
      Iterable<Query$personServicesClassesGroups$personsByPk$classes>? Function(
              Iterable<
                  CopyWith$Query$personServicesClassesGroups$personsByPk$classes<
                      Query$personServicesClassesGroups$personsByPk$classes>>?)
          _fn);
  TRes groups(
      Iterable<Query$personServicesClassesGroups$personsByPk$groups> Function(
              Iterable<
                  CopyWith$Query$personServicesClassesGroups$personsByPk$groups<
                      Query$personServicesClassesGroups$personsByPk$groups>>)
          _fn);
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk<TRes>
    implements CopyWith$Query$personServicesClassesGroups$personsByPk<TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk _instance;

  final TRes Function(Query$personServicesClassesGroups$personsByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? services = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personServicesClassesGroups$personsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<
                Query$personServicesClassesGroups$personsByPk$services>),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<
                Query$personServicesClassesGroups$personsByPk$classes>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups
                as List<Query$personServicesClassesGroups$personsByPk$groups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes services(
          Iterable<Query$personServicesClassesGroups$personsByPk$services> Function(
                  Iterable<
                      CopyWith$Query$personServicesClassesGroups$personsByPk$services<
                          Query$personServicesClassesGroups$personsByPk$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services.map((e) =>
              CopyWith$Query$personServicesClassesGroups$personsByPk$services(
                e,
                (i) => i,
              ))).toList());
  TRes classes(
          Iterable<Query$personServicesClassesGroups$personsByPk$classes>? Function(
                  Iterable<
                      CopyWith$Query$personServicesClassesGroups$personsByPk$classes<
                          Query$personServicesClassesGroups$personsByPk$classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map((e) =>
              CopyWith$Query$personServicesClassesGroups$personsByPk$classes(
                e,
                (i) => i,
              )))?.toList());
  TRes groups(
          Iterable<Query$personServicesClassesGroups$personsByPk$groups> Function(
                  Iterable<
                      CopyWith$Query$personServicesClassesGroups$personsByPk$groups<
                          Query$personServicesClassesGroups$personsByPk$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups.map((e) =>
              CopyWith$Query$personServicesClassesGroups$personsByPk$groups(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk<TRes>
    implements CopyWith$Query$personServicesClassesGroups$personsByPk<TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    List<Query$personServicesClassesGroups$personsByPk$services>? services,
    List<Query$personServicesClassesGroups$personsByPk$classes>? classes,
    List<Query$personServicesClassesGroups$personsByPk$groups>? groups,
    String? $__typename,
  }) =>
      _res;
  services(_fn) => _res;
  classes(_fn) => _res;
  groups(_fn) => _res;
}

class Query$personServicesClassesGroups$personsByPk$services {
  Query$personServicesClassesGroups$personsByPk$services({
    required this.service,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups$personsByPk$services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups$personsByPk$services(
      service: Query$personServicesClassesGroups$personsByPk$services$service
          .fromJson((l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personServicesClassesGroups$personsByPk$services$service service;

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
    if (!(other is Query$personServicesClassesGroups$personsByPk$services) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$services
    on Query$personServicesClassesGroups$personsByPk$services {
  CopyWith$Query$personServicesClassesGroups$personsByPk$services<
          Query$personServicesClassesGroups$personsByPk$services>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$services<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$services(
    Query$personServicesClassesGroups$personsByPk$services instance,
    TRes Function(Query$personServicesClassesGroups$personsByPk$services) then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$services.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services;

  TRes call({
    Query$personServicesClassesGroups$personsByPk$services$service? service,
    String? $__typename,
  });
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service<TRes>
      get service;
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services<TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$services<TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$services _instance;

  final TRes Function(Query$personServicesClassesGroups$personsByPk$services)
      _then;

  static const _undefined = {};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personServicesClassesGroups$personsByPk$services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query$personServicesClassesGroups$personsByPk$services$service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Query$personServicesClassesGroups$personsByPk$services$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$services<TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services(
      this._res);

  TRes _res;

  call({
    Query$personServicesClassesGroups$personsByPk$services$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service<TRes>
      get service =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$services$service
              .stub(_res);
}

class Query$personServicesClassesGroups$personsByPk$services$service
    implements Fragment$Service, Fragment$ServiceNoPhoto {
  Query$personServicesClassesGroups$personsByPk$services$service({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    this.fromStudyYear,
    this.toStudyYear,
  });

  factory Query$personServicesClassesGroups$personsByPk$services$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$toStudyYear = json['toStudyYear'];
    return Query$personServicesClassesGroups$personsByPk$services$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear
              .fromJson((l$fromStudyYear as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear
              .fromJson((l$toStudyYear as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear?
      fromStudyYear;

  final Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear?
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
            is Query$personServicesClassesGroups$personsByPk$services$service) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$services$service
    on Query$personServicesClassesGroups$personsByPk$services$service {
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service<
          Query$personServicesClassesGroups$personsByPk$services$service>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$services$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$services$service<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$services$service(
    Query$personServicesClassesGroups$personsByPk$services$service instance,
    TRes Function(
            Query$personServicesClassesGroups$personsByPk$services$service)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services$service;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$services$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear?
        fromStudyYear,
    Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear?
        toStudyYear,
  });
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear<
      TRes> get fromStudyYear;
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear<
      TRes> get toStudyYear;
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services$service<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$services$service<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services$service(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$services$service
      _instance;

  final TRes Function(
      Query$personServicesClassesGroups$personsByPk$services$service) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? fromStudyYear = _undefined,
    Object? toStudyYear = _undefined,
  }) =>
      _then(Query$personServicesClassesGroups$personsByPk$services$service(
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
                as Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear?),
      ));
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear<
      TRes> get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear
            .stub(_then(_instance))
        : CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear<
      TRes> get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear
            .stub(_then(_instance))
        : CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }
}

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services$service<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$services$service<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear?
        fromStudyYear,
    Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear?
        toStudyYear,
  }) =>
      _res;
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear<
          TRes>
      get fromStudyYear =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear
              .stub(_res);
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear<
          TRes>
      get toStudyYear =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear
              .stub(_res);
}

class Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear {
  Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear(
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
            is Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear
    on Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear {
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear<
          Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear(
    Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear
        instance,
    TRes Function(
            Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear
      _instance;

  final TRes Function(
          Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear(
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

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services$service$fromStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear {
  Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear(
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
            is Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear
    on Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear {
  CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear<
          Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear(
    Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear
        instance,
    TRes Function(
            Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear
      _instance;

  final TRes Function(
          Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear(
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

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$services$service$toStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$personServicesClassesGroups$personsByPk$classes
    implements Fragment$Class, Fragment$ClassNoPhoto {
  Query$personServicesClassesGroups$personsByPk$classes({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    required this.service,
  });

  factory Query$personServicesClassesGroups$personsByPk$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$service = json['service'];
    return Query$personServicesClassesGroups$personsByPk$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      service: Query$personServicesClassesGroups$personsByPk$classes$service
          .fromJson((l$service as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query$personServicesClassesGroups$personsByPk$classes$service service;

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
    if (!(other is Query$personServicesClassesGroups$personsByPk$classes) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$classes
    on Query$personServicesClassesGroups$personsByPk$classes {
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes<
          Query$personServicesClassesGroups$personsByPk$classes>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$classes<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$classes(
    Query$personServicesClassesGroups$personsByPk$classes instance,
    TRes Function(Query$personServicesClassesGroups$personsByPk$classes) then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$classes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$classes$service? service,
  });
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service<TRes>
      get service;
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes<TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$classes<TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$classes _instance;

  final TRes Function(Query$personServicesClassesGroups$personsByPk$classes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Query$personServicesClassesGroups$personsByPk$classes(
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
                as Query$personServicesClassesGroups$personsByPk$classes$service),
      ));
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$classes<TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$classes$service? service,
  }) =>
      _res;
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service<TRes>
      get service =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service
              .stub(_res);
}

class Query$personServicesClassesGroups$personsByPk$classes$service
    implements Fragment$Service, Fragment$ServiceNoPhoto {
  Query$personServicesClassesGroups$personsByPk$classes$service({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    this.fromStudyYear,
    this.toStudyYear,
  });

  factory Query$personServicesClassesGroups$personsByPk$classes$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$toStudyYear = json['toStudyYear'];
    return Query$personServicesClassesGroups$personsByPk$classes$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear
              .fromJson((l$fromStudyYear as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear
              .fromJson((l$toStudyYear as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear?
      fromStudyYear;

  final Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear?
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
            is Query$personServicesClassesGroups$personsByPk$classes$service) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$classes$service
    on Query$personServicesClassesGroups$personsByPk$classes$service {
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service<
          Query$personServicesClassesGroups$personsByPk$classes$service>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service(
    Query$personServicesClassesGroups$personsByPk$classes$service instance,
    TRes Function(Query$personServicesClassesGroups$personsByPk$classes$service)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes$service;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear?
        fromStudyYear,
    Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear?
        toStudyYear,
  });
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear<
      TRes> get fromStudyYear;
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear<
      TRes> get toStudyYear;
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes$service<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes$service(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$classes$service _instance;

  final TRes Function(
      Query$personServicesClassesGroups$personsByPk$classes$service) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? fromStudyYear = _undefined,
    Object? toStudyYear = _undefined,
  }) =>
      _then(Query$personServicesClassesGroups$personsByPk$classes$service(
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
                as Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear?),
      ));
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear<
      TRes> get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear
            .stub(_then(_instance))
        : CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear<
      TRes> get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear
            .stub(_then(_instance))
        : CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }
}

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes$service<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear?
        fromStudyYear,
    Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear?
        toStudyYear,
  }) =>
      _res;
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear<
          TRes>
      get fromStudyYear =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear
              .stub(_res);
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear<
          TRes>
      get toStudyYear =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear
              .stub(_res);
}

class Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear {
  Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear(
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
            is Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear
    on Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear {
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear<
          Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear(
    Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear
        instance,
    TRes Function(
            Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear
      _instance;

  final TRes Function(
          Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear(
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

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes$service$fromStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear {
  Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear(
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
            is Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear
    on Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear {
  CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear<
          Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear(
    Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear
        instance,
    TRes Function(
            Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear
      _instance;

  final TRes Function(
          Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear(
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

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$classes$service$toStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$personServicesClassesGroups$personsByPk$groups {
  Query$personServicesClassesGroups$personsByPk$groups({
    required this.group,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups$personsByPk$groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups$personsByPk$groups(
      group:
          Query$personServicesClassesGroups$personsByPk$groups$group.fromJson(
              (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$personServicesClassesGroups$personsByPk$groups$group group;

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
    if (!(other is Query$personServicesClassesGroups$personsByPk$groups) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$groups
    on Query$personServicesClassesGroups$personsByPk$groups {
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups<
          Query$personServicesClassesGroups$personsByPk$groups>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$groups<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups(
    Query$personServicesClassesGroups$personsByPk$groups instance,
    TRes Function(Query$personServicesClassesGroups$personsByPk$groups) then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups;

  TRes call({
    Query$personServicesClassesGroups$personsByPk$groups$group? group,
    String? $__typename,
  });
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group<TRes>
      get group;
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups<TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups<TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$groups _instance;

  final TRes Function(Query$personServicesClassesGroups$personsByPk$groups)
      _then;

  static const _undefined = {};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personServicesClassesGroups$personsByPk$groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group
                as Query$personServicesClassesGroups$personsByPk$groups$group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group<TRes>
      get group {
    final local$group = _instance.group;
    return CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups<TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups(
      this._res);

  TRes _res;

  call({
    Query$personServicesClassesGroups$personsByPk$groups$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group<TRes>
      get group =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group
              .stub(_res);
}

class Query$personServicesClassesGroups$personsByPk$groups$group
    implements Fragment$Group, Fragment$GroupNoPhoto {
  Query$personServicesClassesGroups$personsByPk$groups$group({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    required this.service,
  });

  factory Query$personServicesClassesGroups$personsByPk$groups$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$service = json['service'];
    return Query$personServicesClassesGroups$personsByPk$groups$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      service:
          Query$personServicesClassesGroups$personsByPk$groups$group$service
              .fromJson((l$service as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query$personServicesClassesGroups$personsByPk$groups$group$service
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
            is Query$personServicesClassesGroups$personsByPk$groups$group) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$groups$group
    on Query$personServicesClassesGroups$personsByPk$groups$group {
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group<
          Query$personServicesClassesGroups$personsByPk$groups$group>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group(
    Query$personServicesClassesGroups$personsByPk$groups$group instance,
    TRes Function(Query$personServicesClassesGroups$personsByPk$groups$group)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$groups$group$service? service,
  });
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service<
      TRes> get service;
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$groups$group _instance;

  final TRes Function(
      Query$personServicesClassesGroups$personsByPk$groups$group) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
  }) =>
      _then(Query$personServicesClassesGroups$personsByPk$groups$group(
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
                as Query$personServicesClassesGroups$personsByPk$groups$group$service),
      ));
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service<
      TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$groups$group$service? service,
  }) =>
      _res;
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service<
          TRes>
      get service =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service
              .stub(_res);
}

class Query$personServicesClassesGroups$personsByPk$groups$group$service
    implements Fragment$Service, Fragment$ServiceNoPhoto {
  Query$personServicesClassesGroups$personsByPk$groups$group$service({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    this.fromStudyYear,
    this.toStudyYear,
  });

  factory Query$personServicesClassesGroups$personsByPk$groups$group$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$toStudyYear = json['toStudyYear'];
    return Query$personServicesClassesGroups$personsByPk$groups$group$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear
              .fromJson((l$fromStudyYear as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear
              .fromJson((l$toStudyYear as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear?
      fromStudyYear;

  final Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear?
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
            is Query$personServicesClassesGroups$personsByPk$groups$group$service) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$groups$group$service
    on Query$personServicesClassesGroups$personsByPk$groups$group$service {
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service<
          Query$personServicesClassesGroups$personsByPk$groups$group$service>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service(
    Query$personServicesClassesGroups$personsByPk$groups$group$service instance,
    TRes Function(
            Query$personServicesClassesGroups$personsByPk$groups$group$service)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear?
        fromStudyYear,
    Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear?
        toStudyYear,
  });
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear<
      TRes> get fromStudyYear;
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear<
      TRes> get toStudyYear;
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$groups$group$service
      _instance;

  final TRes Function(
      Query$personServicesClassesGroups$personsByPk$groups$group$service) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? fromStudyYear = _undefined,
    Object? toStudyYear = _undefined,
  }) =>
      _then(Query$personServicesClassesGroups$personsByPk$groups$group$service(
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
                as Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear?),
      ));
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear<
      TRes> get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear
            .stub(_then(_instance))
        : CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear<
      TRes> get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear
            .stub(_then(_instance))
        : CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }
}

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear?
        fromStudyYear,
    Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear?
        toStudyYear,
  }) =>
      _res;
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear<
          TRes>
      get fromStudyYear =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear
              .stub(_res);
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear<
          TRes>
      get toStudyYear =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear
              .stub(_res);
}

class Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear {
  Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear(
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
            is Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear
    on Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear {
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear<
          Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear(
    Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear
        instance,
    TRes Function(
            Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear
      _instance;

  final TRes Function(
          Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear(
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

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$fromStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear {
  Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear({
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear(
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
            is Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear) ||
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

extension UtilityExtension$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear
    on Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear {
  CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear<
          Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear>
      get copyWith =>
          CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear<
    TRes> {
  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear(
    Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear
        instance,
    TRes Function(
            Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear)
        then,
  ) = _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear;

  factory CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear;

  TRes call({
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear<
            TRes> {
  _CopyWithImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear(
    this._instance,
    this._then,
  );

  final Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear
      _instance;

  final TRes Function(
          Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear)
      _then;

  static const _undefined = {};

  TRes call({
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear(
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

class _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear<
        TRes>
    implements
        CopyWith$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear<
            TRes> {
  _CopyWithStubImpl$Query$personServicesClassesGroups$personsByPk$groups$group$service$toStudyYear(
      this._res);

  TRes _res;

  call({
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
