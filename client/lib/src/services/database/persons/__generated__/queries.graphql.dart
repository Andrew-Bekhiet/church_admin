import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Query$getPersonsNames {
  factory Variables$Query$getPersonsNames({
    List<Input$PersonsBoolExp>? where,
    List<Input$PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables$Query$getPersonsNames._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables$Query$getPersonsNames._(this._$data);

  factory Variables$Query$getPersonsNames.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$getPersonsNames._(result$data);
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

  CopyWith$Variables$Query$getPersonsNames<Variables$Query$getPersonsNames>
      get copyWith => CopyWith$Variables$Query$getPersonsNames(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getPersonsNames) ||
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

abstract class CopyWith$Variables$Query$getPersonsNames<TRes> {
  factory CopyWith$Variables$Query$getPersonsNames(
    Variables$Query$getPersonsNames instance,
    TRes Function(Variables$Query$getPersonsNames) then,
  ) = _CopyWithImpl$Variables$Query$getPersonsNames;

  factory CopyWith$Variables$Query$getPersonsNames.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getPersonsNames;

  TRes call({
    List<Input$PersonsBoolExp>? where,
    List<Input$PersonsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Query$getPersonsNames<TRes>
    implements CopyWith$Variables$Query$getPersonsNames<TRes> {
  _CopyWithImpl$Variables$Query$getPersonsNames(
    this._instance,
    this._then,
  );

  final Variables$Query$getPersonsNames _instance;

  final TRes Function(Variables$Query$getPersonsNames) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Query$getPersonsNames._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$PersonsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$PersonsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getPersonsNames<TRes>
    implements CopyWith$Variables$Query$getPersonsNames<TRes> {
  _CopyWithStubImpl$Variables$Query$getPersonsNames(this._res);

  TRes _res;

  call({
    List<Input$PersonsBoolExp>? where,
    List<Input$PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Query$getPersonsNames {
  Query$getPersonsNames({
    required this.persons,
    required this.$__typename,
  });

  factory Query$getPersonsNames.fromJson(Map<String, dynamic> json) {
    final l$persons = json['persons'];
    final l$$__typename = json['__typename'];
    return Query$getPersonsNames(
      persons: (l$persons as List<dynamic>)
          .map((e) => Query$getPersonsNames$persons.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getPersonsNames$persons> persons;

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
    if (!(other is Query$getPersonsNames) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getPersonsNames on Query$getPersonsNames {
  CopyWith$Query$getPersonsNames<Query$getPersonsNames> get copyWith =>
      CopyWith$Query$getPersonsNames(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getPersonsNames<TRes> {
  factory CopyWith$Query$getPersonsNames(
    Query$getPersonsNames instance,
    TRes Function(Query$getPersonsNames) then,
  ) = _CopyWithImpl$Query$getPersonsNames;

  factory CopyWith$Query$getPersonsNames.stub(TRes res) =
      _CopyWithStubImpl$Query$getPersonsNames;

  TRes call({
    List<Query$getPersonsNames$persons>? persons,
    String? $__typename,
  });
  TRes persons(
      Iterable<Query$getPersonsNames$persons> Function(
              Iterable<
                  CopyWith$Query$getPersonsNames$persons<
                      Query$getPersonsNames$persons>>)
          _fn);
}

class _CopyWithImpl$Query$getPersonsNames<TRes>
    implements CopyWith$Query$getPersonsNames<TRes> {
  _CopyWithImpl$Query$getPersonsNames(
    this._instance,
    this._then,
  );

  final Query$getPersonsNames _instance;

  final TRes Function(Query$getPersonsNames) _then;

  static const _undefined = {};

  TRes call({
    Object? persons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPersonsNames(
        persons: persons == _undefined || persons == null
            ? _instance.persons
            : (persons as List<Query$getPersonsNames$persons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes persons(
          Iterable<Query$getPersonsNames$persons> Function(
                  Iterable<
                      CopyWith$Query$getPersonsNames$persons<
                          Query$getPersonsNames$persons>>)
              _fn) =>
      call(
          persons: _fn(_instance.persons
              .map((e) => CopyWith$Query$getPersonsNames$persons(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getPersonsNames<TRes>
    implements CopyWith$Query$getPersonsNames<TRes> {
  _CopyWithStubImpl$Query$getPersonsNames(this._res);

  TRes _res;

  call({
    List<Query$getPersonsNames$persons>? persons,
    String? $__typename,
  }) =>
      _res;
  persons(_fn) => _res;
}

const documentNodeQuerygetPersonsNames = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getPersonsNames'),
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

class Query$getPersonsNames$persons {
  Query$getPersonsNames$persons({
    required this.name,
    required this.$__typename,
  });

  factory Query$getPersonsNames$persons.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getPersonsNames$persons(
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
    if (!(other is Query$getPersonsNames$persons) ||
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

extension UtilityExtension$Query$getPersonsNames$persons
    on Query$getPersonsNames$persons {
  CopyWith$Query$getPersonsNames$persons<Query$getPersonsNames$persons>
      get copyWith => CopyWith$Query$getPersonsNames$persons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPersonsNames$persons<TRes> {
  factory CopyWith$Query$getPersonsNames$persons(
    Query$getPersonsNames$persons instance,
    TRes Function(Query$getPersonsNames$persons) then,
  ) = _CopyWithImpl$Query$getPersonsNames$persons;

  factory CopyWith$Query$getPersonsNames$persons.stub(TRes res) =
      _CopyWithStubImpl$Query$getPersonsNames$persons;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getPersonsNames$persons<TRes>
    implements CopyWith$Query$getPersonsNames$persons<TRes> {
  _CopyWithImpl$Query$getPersonsNames$persons(
    this._instance,
    this._then,
  );

  final Query$getPersonsNames$persons _instance;

  final TRes Function(Query$getPersonsNames$persons) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPersonsNames$persons(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getPersonsNames$persons<TRes>
    implements CopyWith$Query$getPersonsNames$persons<TRes> {
  _CopyWithStubImpl$Query$getPersonsNames$persons(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getMorePersonData {
  factory Variables$Query$getMorePersonData({
    required UuidValue id,
    String? areasAfter,
    String? classesAfter,
    String? groupsAfter,
    String? servicesAfter,
  }) =>
      Variables$Query$getMorePersonData._({
        r'id': id,
        if (areasAfter != null) r'areasAfter': areasAfter,
        if (classesAfter != null) r'classesAfter': classesAfter,
        if (groupsAfter != null) r'groupsAfter': groupsAfter,
        if (servicesAfter != null) r'servicesAfter': servicesAfter,
      });

  Variables$Query$getMorePersonData._(this._$data);

  factory Variables$Query$getMorePersonData.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    if (data.containsKey('areasAfter')) {
      final l$areasAfter = data['areasAfter'];
      result$data['areasAfter'] = (l$areasAfter as String?);
    }
    if (data.containsKey('classesAfter')) {
      final l$classesAfter = data['classesAfter'];
      result$data['classesAfter'] = (l$classesAfter as String?);
    }
    if (data.containsKey('groupsAfter')) {
      final l$groupsAfter = data['groupsAfter'];
      result$data['groupsAfter'] = (l$groupsAfter as String?);
    }
    if (data.containsKey('servicesAfter')) {
      final l$servicesAfter = data['servicesAfter'];
      result$data['servicesAfter'] = (l$servicesAfter as String?);
    }
    return Variables$Query$getMorePersonData._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  String? get areasAfter => (_$data['areasAfter'] as String?);
  String? get classesAfter => (_$data['classesAfter'] as String?);
  String? get groupsAfter => (_$data['groupsAfter'] as String?);
  String? get servicesAfter => (_$data['servicesAfter'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    if (_$data.containsKey('areasAfter')) {
      final l$areasAfter = areasAfter;
      result$data['areasAfter'] = l$areasAfter;
    }
    if (_$data.containsKey('classesAfter')) {
      final l$classesAfter = classesAfter;
      result$data['classesAfter'] = l$classesAfter;
    }
    if (_$data.containsKey('groupsAfter')) {
      final l$groupsAfter = groupsAfter;
      result$data['groupsAfter'] = l$groupsAfter;
    }
    if (_$data.containsKey('servicesAfter')) {
      final l$servicesAfter = servicesAfter;
      result$data['servicesAfter'] = l$servicesAfter;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getMorePersonData<Variables$Query$getMorePersonData>
      get copyWith => CopyWith$Variables$Query$getMorePersonData(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getMorePersonData) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$areasAfter = areasAfter;
    final lOther$areasAfter = other.areasAfter;
    if (_$data.containsKey('areasAfter') !=
        other._$data.containsKey('areasAfter')) {
      return false;
    }
    if (l$areasAfter != lOther$areasAfter) {
      return false;
    }
    final l$classesAfter = classesAfter;
    final lOther$classesAfter = other.classesAfter;
    if (_$data.containsKey('classesAfter') !=
        other._$data.containsKey('classesAfter')) {
      return false;
    }
    if (l$classesAfter != lOther$classesAfter) {
      return false;
    }
    final l$groupsAfter = groupsAfter;
    final lOther$groupsAfter = other.groupsAfter;
    if (_$data.containsKey('groupsAfter') !=
        other._$data.containsKey('groupsAfter')) {
      return false;
    }
    if (l$groupsAfter != lOther$groupsAfter) {
      return false;
    }
    final l$servicesAfter = servicesAfter;
    final lOther$servicesAfter = other.servicesAfter;
    if (_$data.containsKey('servicesAfter') !=
        other._$data.containsKey('servicesAfter')) {
      return false;
    }
    if (l$servicesAfter != lOther$servicesAfter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$areasAfter = areasAfter;
    final l$classesAfter = classesAfter;
    final l$groupsAfter = groupsAfter;
    final l$servicesAfter = servicesAfter;
    return Object.hashAll([
      l$id,
      _$data.containsKey('areasAfter') ? l$areasAfter : const {},
      _$data.containsKey('classesAfter') ? l$classesAfter : const {},
      _$data.containsKey('groupsAfter') ? l$groupsAfter : const {},
      _$data.containsKey('servicesAfter') ? l$servicesAfter : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getMorePersonData<TRes> {
  factory CopyWith$Variables$Query$getMorePersonData(
    Variables$Query$getMorePersonData instance,
    TRes Function(Variables$Query$getMorePersonData) then,
  ) = _CopyWithImpl$Variables$Query$getMorePersonData;

  factory CopyWith$Variables$Query$getMorePersonData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getMorePersonData;

  TRes call({
    UuidValue? id,
    String? areasAfter,
    String? classesAfter,
    String? groupsAfter,
    String? servicesAfter,
  });
}

class _CopyWithImpl$Variables$Query$getMorePersonData<TRes>
    implements CopyWith$Variables$Query$getMorePersonData<TRes> {
  _CopyWithImpl$Variables$Query$getMorePersonData(
    this._instance,
    this._then,
  );

  final Variables$Query$getMorePersonData _instance;

  final TRes Function(Variables$Query$getMorePersonData) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? areasAfter = _undefined,
    Object? classesAfter = _undefined,
    Object? groupsAfter = _undefined,
    Object? servicesAfter = _undefined,
  }) =>
      _then(Variables$Query$getMorePersonData._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
        if (areasAfter != _undefined) 'areasAfter': (areasAfter as String?),
        if (classesAfter != _undefined)
          'classesAfter': (classesAfter as String?),
        if (groupsAfter != _undefined) 'groupsAfter': (groupsAfter as String?),
        if (servicesAfter != _undefined)
          'servicesAfter': (servicesAfter as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getMorePersonData<TRes>
    implements CopyWith$Variables$Query$getMorePersonData<TRes> {
  _CopyWithStubImpl$Variables$Query$getMorePersonData(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? areasAfter,
    String? classesAfter,
    String? groupsAfter,
    String? servicesAfter,
  }) =>
      _res;
}

class Query$getMorePersonData {
  Query$getMorePersonData({
    this.personsByPk,
    required this.$__typename,
  });

  factory Query$getMorePersonData.fromJson(Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData(
      personsByPk: l$personsByPk == null
          ? null
          : Query$getMorePersonData$personsByPk.fromJson(
              (l$personsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMorePersonData$personsByPk? personsByPk;

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
    if (!(other is Query$getMorePersonData) ||
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

extension UtilityExtension$Query$getMorePersonData on Query$getMorePersonData {
  CopyWith$Query$getMorePersonData<Query$getMorePersonData> get copyWith =>
      CopyWith$Query$getMorePersonData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getMorePersonData<TRes> {
  factory CopyWith$Query$getMorePersonData(
    Query$getMorePersonData instance,
    TRes Function(Query$getMorePersonData) then,
  ) = _CopyWithImpl$Query$getMorePersonData;

  factory CopyWith$Query$getMorePersonData.stub(TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData;

  TRes call({
    Query$getMorePersonData$personsByPk? personsByPk,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl$Query$getMorePersonData<TRes>
    implements CopyWith$Query$getMorePersonData<TRes> {
  _CopyWithImpl$Query$getMorePersonData(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData _instance;

  final TRes Function(Query$getMorePersonData) _then;

  static const _undefined = {};

  TRes call({
    Object? personsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMorePersonData(
        personsByPk: personsByPk == _undefined
            ? _instance.personsByPk
            : (personsByPk as Query$getMorePersonData$personsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith$Query$getMorePersonData$personsByPk.stub(_then(_instance))
        : CopyWith$Query$getMorePersonData$personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData<TRes>
    implements CopyWith$Query$getMorePersonData<TRes> {
  _CopyWithStubImpl$Query$getMorePersonData(this._res);

  TRes _res;

  call({
    Query$getMorePersonData$personsByPk? personsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk<TRes> get personsByPk =>
      CopyWith$Query$getMorePersonData$personsByPk.stub(_res);
}

const documentNodeQuerygetMorePersonData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getMorePersonData'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'areasAfter')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: StringValueNode(
          value: '',
          isBlock: false,
        )),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'classesAfter')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: StringValueNode(
          value: '',
          isBlock: false,
        )),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'groupsAfter')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: StringValueNode(
          value: '',
          isBlock: false,
        )),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'servicesAfter')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: StringValueNode(
          value: '',
          isBlock: false,
        )),
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
            name: NameNode(value: 'areas'),
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
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_gt'),
                        value:
                            VariableNode(name: NameNode(value: 'areasAfter')),
                      )
                    ]),
                  )
                ]),
              ),
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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
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
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_gt'),
                        value:
                            VariableNode(name: NameNode(value: 'classesAfter')),
                      )
                    ]),
                  )
                ]),
              ),
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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'attendanceHistoryAggregate'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'where'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'personId'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: VariableNode(name: NameNode(value: 'id')),
                          )
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
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'group'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_gt'),
                            value: VariableNode(
                                name: NameNode(value: 'groupsAfter')),
                          )
                        ]),
                      )
                    ]),
                  )
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'group'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'photoUpdatedAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'attendanceHistoryAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'personId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value:
                                    VariableNode(name: NameNode(value: 'id')),
                              )
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
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'service'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_gt'),
                            value: VariableNode(
                                name: NameNode(value: 'servicesAfter')),
                          )
                        ]),
                      )
                    ]),
                  )
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'service'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'photoUpdatedAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'attendanceHistoryAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'personId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value:
                                    VariableNode(name: NameNode(value: 'id')),
                              )
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
]);

class Query$getMorePersonData$personsByPk {
  Query$getMorePersonData$personsByPk({
    required this.id,
    required this.name,
    this.areas,
    this.classes,
    required this.groups,
    required this.services,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$areas = json['areas'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    final l$services = json['services'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Query$getMorePersonData$personsByPk$areas.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Query$getMorePersonData$personsByPk$classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) => Query$getMorePersonData$personsByPk$groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      services: (l$services as List<dynamic>)
          .map((e) => Query$getMorePersonData$personsByPk$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final List<Query$getMorePersonData$personsByPk$areas>? areas;

  final List<Query$getMorePersonData$personsByPk$classes>? classes;

  final List<Query$getMorePersonData$personsByPk$groups> groups;

  final List<Query$getMorePersonData$personsByPk$services> services;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$areas = areas;
    _resultData['areas'] = l$areas?.map((e) => e.toJson()).toList();
    final l$classes = classes;
    _resultData['classes'] = l$classes?.map((e) => e.toJson()).toList();
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$areas = areas;
    final l$classes = classes;
    final l$groups = groups;
    final l$services = services;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$areas == null ? null : Object.hashAll(l$areas.map((v) => v)),
      l$classes == null ? null : Object.hashAll(l$classes.map((v) => v)),
      Object.hashAll(l$groups.map((v) => v)),
      Object.hashAll(l$services.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMorePersonData$personsByPk) ||
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
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas != null && lOther$areas != null) {
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
    } else if (l$areas != lOther$areas) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMorePersonData$personsByPk
    on Query$getMorePersonData$personsByPk {
  CopyWith$Query$getMorePersonData$personsByPk<
          Query$getMorePersonData$personsByPk>
      get copyWith => CopyWith$Query$getMorePersonData$personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk<TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk(
    Query$getMorePersonData$personsByPk instance,
    TRes Function(Query$getMorePersonData$personsByPk) then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk;

  factory CopyWith$Query$getMorePersonData$personsByPk.stub(TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    List<Query$getMorePersonData$personsByPk$areas>? areas,
    List<Query$getMorePersonData$personsByPk$classes>? classes,
    List<Query$getMorePersonData$personsByPk$groups>? groups,
    List<Query$getMorePersonData$personsByPk$services>? services,
    String? $__typename,
  });
  TRes areas(
      Iterable<Query$getMorePersonData$personsByPk$areas>? Function(
              Iterable<
                  CopyWith$Query$getMorePersonData$personsByPk$areas<
                      Query$getMorePersonData$personsByPk$areas>>?)
          _fn);
  TRes classes(
      Iterable<Query$getMorePersonData$personsByPk$classes>? Function(
              Iterable<
                  CopyWith$Query$getMorePersonData$personsByPk$classes<
                      Query$getMorePersonData$personsByPk$classes>>?)
          _fn);
  TRes groups(
      Iterable<Query$getMorePersonData$personsByPk$groups> Function(
              Iterable<
                  CopyWith$Query$getMorePersonData$personsByPk$groups<
                      Query$getMorePersonData$personsByPk$groups>>)
          _fn);
  TRes services(
      Iterable<Query$getMorePersonData$personsByPk$services> Function(
              Iterable<
                  CopyWith$Query$getMorePersonData$personsByPk$services<
                      Query$getMorePersonData$personsByPk$services>>)
          _fn);
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk<TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk _instance;

  final TRes Function(Query$getMorePersonData$personsByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? areas = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
    Object? services = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMorePersonData$personsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Query$getMorePersonData$personsByPk$areas>?),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<Query$getMorePersonData$personsByPk$classes>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Query$getMorePersonData$personsByPk$groups>),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Query$getMorePersonData$personsByPk$services>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes areas(
          Iterable<Query$getMorePersonData$personsByPk$areas>? Function(
                  Iterable<
                      CopyWith$Query$getMorePersonData$personsByPk$areas<
                          Query$getMorePersonData$personsByPk$areas>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas
              ?.map((e) => CopyWith$Query$getMorePersonData$personsByPk$areas(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes classes(
          Iterable<Query$getMorePersonData$personsByPk$classes>? Function(
                  Iterable<
                      CopyWith$Query$getMorePersonData$personsByPk$classes<
                          Query$getMorePersonData$personsByPk$classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes
              ?.map((e) => CopyWith$Query$getMorePersonData$personsByPk$classes(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes groups(
          Iterable<Query$getMorePersonData$personsByPk$groups> Function(
                  Iterable<
                      CopyWith$Query$getMorePersonData$personsByPk$groups<
                          Query$getMorePersonData$personsByPk$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith$Query$getMorePersonData$personsByPk$groups(
                    e,
                    (i) => i,
                  ))).toList());
  TRes services(
          Iterable<Query$getMorePersonData$personsByPk$services> Function(
                  Iterable<
                      CopyWith$Query$getMorePersonData$personsByPk$services<
                          Query$getMorePersonData$personsByPk$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith$Query$getMorePersonData$personsByPk$services(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk<TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    List<Query$getMorePersonData$personsByPk$areas>? areas,
    List<Query$getMorePersonData$personsByPk$classes>? classes,
    List<Query$getMorePersonData$personsByPk$groups>? groups,
    List<Query$getMorePersonData$personsByPk$services>? services,
    String? $__typename,
  }) =>
      _res;
  areas(_fn) => _res;
  classes(_fn) => _res;
  groups(_fn) => _res;
  services(_fn) => _res;
}

class Query$getMorePersonData$personsByPk$areas {
  Query$getMorePersonData$personsByPk$areas({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$areas.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$areas(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMorePersonData$personsByPk$areas) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$areas
    on Query$getMorePersonData$personsByPk$areas {
  CopyWith$Query$getMorePersonData$personsByPk$areas<
          Query$getMorePersonData$personsByPk$areas>
      get copyWith => CopyWith$Query$getMorePersonData$personsByPk$areas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$areas<TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$areas(
    Query$getMorePersonData$personsByPk$areas instance,
    TRes Function(Query$getMorePersonData$personsByPk$areas) then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$areas;

  factory CopyWith$Query$getMorePersonData$personsByPk$areas.stub(TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$areas;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$areas<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$areas<TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$areas(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$areas _instance;

  final TRes Function(Query$getMorePersonData$personsByPk$areas) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMorePersonData$personsByPk$areas(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$areas<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$areas<TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$areas(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$getMorePersonData$personsByPk$classes {
  Query$getMorePersonData$personsByPk$classes({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMorePersonData$personsByPk$classes) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$classes
    on Query$getMorePersonData$personsByPk$classes {
  CopyWith$Query$getMorePersonData$personsByPk$classes<
          Query$getMorePersonData$personsByPk$classes>
      get copyWith => CopyWith$Query$getMorePersonData$personsByPk$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$classes<TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$classes(
    Query$getMorePersonData$personsByPk$classes instance,
    TRes Function(Query$getMorePersonData$personsByPk$classes) then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$classes;

  factory CopyWith$Query$getMorePersonData$personsByPk$classes.stub(TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$classes<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$classes<TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$classes(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$classes _instance;

  final TRes Function(Query$getMorePersonData$personsByPk$classes) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMorePersonData$personsByPk$classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$classes<TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate
              .stub(_res);
}

class Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate {
  Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate
    on Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate {
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate<
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate(
    Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate;

  factory CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate;

  TRes call({
    Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate {
  Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate({
    this.max,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate
    on Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate<
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate(
    Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate;

  TRes call({
    Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max {
  Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
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
            is Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
    on Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
    Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$getMorePersonData$personsByPk$groups {
  Query$getMorePersonData$personsByPk$groups({
    required this.group,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$groups(
      group: Query$getMorePersonData$personsByPk$groups$group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMorePersonData$personsByPk$groups$group group;

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
    if (!(other is Query$getMorePersonData$personsByPk$groups) ||
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$groups
    on Query$getMorePersonData$personsByPk$groups {
  CopyWith$Query$getMorePersonData$personsByPk$groups<
          Query$getMorePersonData$personsByPk$groups>
      get copyWith => CopyWith$Query$getMorePersonData$personsByPk$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$groups<TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$groups(
    Query$getMorePersonData$personsByPk$groups instance,
    TRes Function(Query$getMorePersonData$personsByPk$groups) then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$groups;

  factory CopyWith$Query$getMorePersonData$personsByPk$groups.stub(TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups;

  TRes call({
    Query$getMorePersonData$personsByPk$groups$group? group,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$groups$group<TRes> get group;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$groups<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$groups<TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$groups(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$groups _instance;

  final TRes Function(Query$getMorePersonData$personsByPk$groups) _then;

  static const _undefined = {};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMorePersonData$personsByPk$groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Query$getMorePersonData$personsByPk$groups$group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$groups$group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith$Query$getMorePersonData$personsByPk$groups$group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$groups<TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups(this._res);

  TRes _res;

  call({
    Query$getMorePersonData$personsByPk$groups$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$groups$group<TRes> get group =>
      CopyWith$Query$getMorePersonData$personsByPk$groups$group.stub(_res);
}

class Query$getMorePersonData$personsByPk$groups$group {
  Query$getMorePersonData$personsByPk$groups$group({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$groups$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$groups$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMorePersonData$personsByPk$groups$group) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$groups$group
    on Query$getMorePersonData$personsByPk$groups$group {
  CopyWith$Query$getMorePersonData$personsByPk$groups$group<
          Query$getMorePersonData$personsByPk$groups$group>
      get copyWith => CopyWith$Query$getMorePersonData$personsByPk$groups$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$groups$group<TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$groups$group(
    Query$getMorePersonData$personsByPk$groups$group instance,
    TRes Function(Query$getMorePersonData$personsByPk$groups$group) then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group;

  factory CopyWith$Query$getMorePersonData$personsByPk$groups$group.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$groups$group<TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$groups$group _instance;

  final TRes Function(Query$getMorePersonData$personsByPk$groups$group) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMorePersonData$personsByPk$groups$group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$groups$group<TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate
              .stub(_res);
}

class Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate {
  Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate
    on Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate {
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate<
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate(
    Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate;

  factory CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate;

  TRes call({
    Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate({
    this.max,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
    on Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  TRes call({
    Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
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
            is Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
    on Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$getMorePersonData$personsByPk$services {
  Query$getMorePersonData$personsByPk$services({
    required this.service,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$services(
      service: Query$getMorePersonData$personsByPk$services$service.fromJson(
          (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMorePersonData$personsByPk$services$service service;

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
    if (!(other is Query$getMorePersonData$personsByPk$services) ||
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$services
    on Query$getMorePersonData$personsByPk$services {
  CopyWith$Query$getMorePersonData$personsByPk$services<
          Query$getMorePersonData$personsByPk$services>
      get copyWith => CopyWith$Query$getMorePersonData$personsByPk$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$services<TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$services(
    Query$getMorePersonData$personsByPk$services instance,
    TRes Function(Query$getMorePersonData$personsByPk$services) then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$services;

  factory CopyWith$Query$getMorePersonData$personsByPk$services.stub(TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services;

  TRes call({
    Query$getMorePersonData$personsByPk$services$service? service,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$services$service<TRes>
      get service;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$services<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$services<TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$services(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$services _instance;

  final TRes Function(Query$getMorePersonData$personsByPk$services) _then;

  static const _undefined = {};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMorePersonData$personsByPk$services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Query$getMorePersonData$personsByPk$services$service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$services$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Query$getMorePersonData$personsByPk$services$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services<TRes>
    implements CopyWith$Query$getMorePersonData$personsByPk$services<TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services(this._res);

  TRes _res;

  call({
    Query$getMorePersonData$personsByPk$services$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$services$service<TRes>
      get service =>
          CopyWith$Query$getMorePersonData$personsByPk$services$service.stub(
              _res);
}

class Query$getMorePersonData$personsByPk$services$service {
  Query$getMorePersonData$personsByPk$services$service({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$services$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$services$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$attendanceHistoryAggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getMorePersonData$personsByPk$services$service) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$services$service
    on Query$getMorePersonData$personsByPk$services$service {
  CopyWith$Query$getMorePersonData$personsByPk$services$service<
          Query$getMorePersonData$personsByPk$services$service>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$services$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$services$service<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$services$service(
    Query$getMorePersonData$personsByPk$services$service instance,
    TRes Function(Query$getMorePersonData$personsByPk$services$service) then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service;

  factory CopyWith$Query$getMorePersonData$personsByPk$services$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service<TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$services$service<TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$services$service _instance;

  final TRes Function(Query$getMorePersonData$personsByPk$services$service)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getMorePersonData$personsByPk$services$service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$services$service<TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate
              .stub(_res);
}

class Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate {
  Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate
    on Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate {
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate<
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate(
    Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate;

  factory CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate;

  TRes call({
    Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate({
    this.max,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
    on Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  TRes call({
    Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    required this.$__typename,
  });

  factory Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
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
            is Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
    on Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$getMorePersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$personsGeolocations {
  factory Variables$Query$personsGeolocations({
    List<UuidValue>? areasIds,
    List<UuidValue>? streetsIds,
    List<UuidValue>? familiesIds,
    List<Input$PersonsBoolExp>? personsConditions,
  }) =>
      Variables$Query$personsGeolocations._({
        if (areasIds != null) r'areasIds': areasIds,
        if (streetsIds != null) r'streetsIds': streetsIds,
        if (familiesIds != null) r'familiesIds': familiesIds,
        if (personsConditions != null) r'personsConditions': personsConditions,
      });

  Variables$Query$personsGeolocations._(this._$data);

  factory Variables$Query$personsGeolocations.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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

  List<UuidValue>? get areasIds => (_$data['areasIds'] as List<UuidValue>?);
  List<UuidValue>? get streetsIds => (_$data['streetsIds'] as List<UuidValue>?);
  List<UuidValue>? get familiesIds =>
      (_$data['familiesIds'] as List<UuidValue>?);
  List<Input$PersonsBoolExp>? get personsConditions =>
      (_$data['personsConditions'] as List<Input$PersonsBoolExp>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    final l$areasIds = areasIds;
    final l$streetsIds = streetsIds;
    final l$familiesIds = familiesIds;
    final l$personsConditions = personsConditions;
    return Object.hashAll([
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
    List<UuidValue>? areasIds,
    List<UuidValue>? streetsIds,
    List<UuidValue>? familiesIds,
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
    Object? areasIds = _undefined,
    Object? streetsIds = _undefined,
    Object? familiesIds = _undefined,
    Object? personsConditions = _undefined,
  }) =>
      _then(Variables$Query$personsGeolocations._({
        ..._instance._$data,
        if (areasIds != _undefined) 'areasIds': (areasIds as List<UuidValue>?),
        if (streetsIds != _undefined)
          'streetsIds': (streetsIds as List<UuidValue>?),
        if (familiesIds != _undefined)
          'familiesIds': (familiesIds as List<UuidValue>?),
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
    List<UuidValue>? areasIds,
    List<UuidValue>? streetsIds,
    List<UuidValue>? familiesIds,
    List<Input$PersonsBoolExp>? personsConditions,
  }) =>
      _res;
}

class Query$personsGeolocations {
  Query$personsGeolocations({
    required this.areas,
    required this.streets,
    required this.families,
    required this.persons,
    required this.$__typename,
  });

  factory Query$personsGeolocations.fromJson(Map<String, dynamic> json) {
    final l$areas = json['areas'];
    final l$streets = json['streets'];
    final l$families = json['families'];
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
    final l$persons = persons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$areas.map((v) => v)),
      Object.hashAll(l$streets.map((v) => v)),
      Object.hashAll(l$families.map((v) => v)),
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
    List<Query$personsGeolocations$persons>? persons,
    String? $__typename,
  }) =>
      _res;
  areas(_fn) => _res;
  streets(_fn) => _res;
  families(_fn) => _res;
  persons(_fn) => _res;
}

const documentNodeQuerypersonsGeolocations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'personsGeolocations'),
    variableDefinitions: [
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
]);

class Query$personsGeolocations$areas {
  Query$personsGeolocations$areas({
    required this.id,
    required this.name,
    this.color,
    this.bounds,
    required this.$__typename,
  });

  factory Query$personsGeolocations$areas.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$bounds = json['bounds'];
    final l$$__typename = json['__typename'];
    return Query$personsGeolocations$areas(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      bounds: (l$bounds as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final Map<String, dynamic>? bounds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$bounds = bounds;
    _resultData['bounds'] = l$bounds;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$bounds = bounds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$bounds,
      l$$__typename,
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
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (l$bounds != lOther$bounds) {
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
    Map<String, dynamic>? bounds,
    String? $__typename,
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
    Object? bounds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personsGeolocations$areas(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        bounds: bounds == _undefined
            ? _instance.bounds
            : (bounds as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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
    Map<String, dynamic>? bounds,
    String? $__typename,
  }) =>
      _res;
}

class Query$personsGeolocations$streets {
  Query$personsGeolocations$streets({
    required this.id,
    required this.name,
    this.color,
    this.line,
    required this.$__typename,
  });

  factory Query$personsGeolocations$streets.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$line = json['line'];
    final l$$__typename = json['__typename'];
    return Query$personsGeolocations$streets(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      line: (l$line as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final Map<String, dynamic>? line;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$line = line;
    _resultData['line'] = l$line;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$line = line;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$line,
      l$$__typename,
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
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
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
    Map<String, dynamic>? line,
    String? $__typename,
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
    Object? line = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personsGeolocations$streets(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        line: line == _undefined
            ? _instance.line
            : (line as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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
    Map<String, dynamic>? line,
    String? $__typename,
  }) =>
      _res;
}

class Query$personsGeolocations$families {
  Query$personsGeolocations$families({
    required this.id,
    required this.name,
    this.color,
    this.geolocation,
    required this.$__typename,
  });

  factory Query$personsGeolocations$families.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$geolocation = json['geolocation'];
    final l$$__typename = json['__typename'];
    return Query$personsGeolocations$families(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final Map<String, dynamic>? geolocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$geolocation = geolocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$geolocation,
      l$$__typename,
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
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
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
    Map<String, dynamic>? geolocation,
    String? $__typename,
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
    Object? geolocation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personsGeolocations$families(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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
    Map<String, dynamic>? geolocation,
    String? $__typename,
  }) =>
      _res;
}

class Query$personsGeolocations$persons {
  Query$personsGeolocations$persons({
    required this.id,
    required this.name,
    this.color,
    this.geolocation,
    required this.$__typename,
  });

  factory Query$personsGeolocations$persons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$geolocation = json['geolocation'];
    final l$$__typename = json['__typename'];
    return Query$personsGeolocations$persons(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final Map<String, dynamic>? geolocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$geolocation = geolocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$geolocation,
      l$$__typename,
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
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
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
    Map<String, dynamic>? geolocation,
    String? $__typename,
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
    Object? geolocation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$personsGeolocations$persons(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
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
    Map<String, dynamic>? geolocation,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$analyzePerson {
  factory Variables$Query$analyzePerson({
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
      Variables$Query$analyzePerson._({
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

  Variables$Query$analyzePerson._(this._$data);

  factory Variables$Query$analyzePerson.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$analyzePerson._(result$data);
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

  CopyWith$Variables$Query$analyzePerson<Variables$Query$analyzePerson>
      get copyWith => CopyWith$Variables$Query$analyzePerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$analyzePerson) ||
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

abstract class CopyWith$Variables$Query$analyzePerson<TRes> {
  factory CopyWith$Variables$Query$analyzePerson(
    Variables$Query$analyzePerson instance,
    TRes Function(Variables$Query$analyzePerson) then,
  ) = _CopyWithImpl$Variables$Query$analyzePerson;

  factory CopyWith$Variables$Query$analyzePerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$analyzePerson;

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

class _CopyWithImpl$Variables$Query$analyzePerson<TRes>
    implements CopyWith$Variables$Query$analyzePerson<TRes> {
  _CopyWithImpl$Variables$Query$analyzePerson(
    this._instance,
    this._then,
  );

  final Variables$Query$analyzePerson _instance;

  final TRes Function(Variables$Query$analyzePerson) _then;

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
      _then(Variables$Query$analyzePerson._({
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

class _CopyWithStubImpl$Variables$Query$analyzePerson<TRes>
    implements CopyWith$Variables$Query$analyzePerson<TRes> {
  _CopyWithStubImpl$Variables$Query$analyzePerson(this._res);

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

class Query$analyzePerson {
  Query$analyzePerson({
    this.personsByPk,
    required this.$__typename,
  });

  factory Query$analyzePerson.fromJson(Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson(
      personsByPk: l$personsByPk == null
          ? null
          : Query$analyzePerson$personsByPk.fromJson(
              (l$personsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk? personsByPk;

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
    if (!(other is Query$analyzePerson) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$analyzePerson on Query$analyzePerson {
  CopyWith$Query$analyzePerson<Query$analyzePerson> get copyWith =>
      CopyWith$Query$analyzePerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$analyzePerson<TRes> {
  factory CopyWith$Query$analyzePerson(
    Query$analyzePerson instance,
    TRes Function(Query$analyzePerson) then,
  ) = _CopyWithImpl$Query$analyzePerson;

  factory CopyWith$Query$analyzePerson.stub(TRes res) =
      _CopyWithStubImpl$Query$analyzePerson;

  TRes call({
    Query$analyzePerson$personsByPk? personsByPk,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl$Query$analyzePerson<TRes>
    implements CopyWith$Query$analyzePerson<TRes> {
  _CopyWithImpl$Query$analyzePerson(
    this._instance,
    this._then,
  );

  final Query$analyzePerson _instance;

  final TRes Function(Query$analyzePerson) _then;

  static const _undefined = {};

  TRes call({
    Object? personsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson(
        personsByPk: personsByPk == _undefined
            ? _instance.personsByPk
            : (personsByPk as Query$analyzePerson$personsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith$Query$analyzePerson$personsByPk.stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson<TRes>
    implements CopyWith$Query$analyzePerson<TRes> {
  _CopyWithStubImpl$Query$analyzePerson(this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk? personsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk<TRes> get personsByPk =>
      CopyWith$Query$analyzePerson$personsByPk.stub(_res);
}

const documentNodeQueryanalyzePerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'analyzePerson'),
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
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
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
]);

class Query$analyzePerson$personsByPk {
  Query$analyzePerson$personsByPk({
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

  factory Query$analyzePerson$personsByPk.fromJson(Map<String, dynamic> json) {
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
    return Query$analyzePerson$personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      callHistoryAggregate:
          Query$analyzePerson$personsByPk$callHistoryAggregate.fromJson(
              (l$callHistoryAggregate as Map<String, dynamic>)),
      visitHistoryAggregate:
          Query$analyzePerson$personsByPk$visitHistoryAggregate.fromJson(
              (l$visitHistoryAggregate as Map<String, dynamic>)),
      editHistoryAggregate:
          Query$analyzePerson$personsByPk$editHistoryAggregate.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>)),
      kodasHistoryAggregate:
          Query$analyzePerson$personsByPk$kodasHistoryAggregate.fromJson(
              (l$kodasHistoryAggregate as Map<String, dynamic>)),
      confessionHistoryAggregate:
          Query$analyzePerson$personsByPk$confessionHistoryAggregate.fromJson(
              (l$confessionHistoryAggregate as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Query$analyzePerson$personsByPk$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Query$analyzePerson$personsByPk$classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) => Query$analyzePerson$personsByPk$groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Query$analyzePerson$personsByPk$callHistoryAggregate
      callHistoryAggregate;

  final Query$analyzePerson$personsByPk$visitHistoryAggregate
      visitHistoryAggregate;

  final Query$analyzePerson$personsByPk$editHistoryAggregate
      editHistoryAggregate;

  final Query$analyzePerson$personsByPk$kodasHistoryAggregate
      kodasHistoryAggregate;

  final Query$analyzePerson$personsByPk$confessionHistoryAggregate
      confessionHistoryAggregate;

  final List<Query$analyzePerson$personsByPk$services> services;

  final List<Query$analyzePerson$personsByPk$classes>? classes;

  final List<Query$analyzePerson$personsByPk$groups> groups;

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
    if (!(other is Query$analyzePerson$personsByPk) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk
    on Query$analyzePerson$personsByPk {
  CopyWith$Query$analyzePerson$personsByPk<Query$analyzePerson$personsByPk>
      get copyWith => CopyWith$Query$analyzePerson$personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk<TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk(
    Query$analyzePerson$personsByPk instance,
    TRes Function(Query$analyzePerson$personsByPk) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk;

  factory CopyWith$Query$analyzePerson$personsByPk.stub(TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    Query$analyzePerson$personsByPk$callHistoryAggregate? callHistoryAggregate,
    Query$analyzePerson$personsByPk$visitHistoryAggregate?
        visitHistoryAggregate,
    Query$analyzePerson$personsByPk$editHistoryAggregate? editHistoryAggregate,
    Query$analyzePerson$personsByPk$kodasHistoryAggregate?
        kodasHistoryAggregate,
    Query$analyzePerson$personsByPk$confessionHistoryAggregate?
        confessionHistoryAggregate,
    List<Query$analyzePerson$personsByPk$services>? services,
    List<Query$analyzePerson$personsByPk$classes>? classes,
    List<Query$analyzePerson$personsByPk$groups>? groups,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate<TRes>
      get callHistoryAggregate;
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate<TRes>
      get visitHistoryAggregate;
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate<TRes>
      get editHistoryAggregate;
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate<TRes>
      get kodasHistoryAggregate;
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate<TRes>
      get confessionHistoryAggregate;
  TRes services(
      Iterable<Query$analyzePerson$personsByPk$services> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$services<
                      Query$analyzePerson$personsByPk$services>>)
          _fn);
  TRes classes(
      Iterable<Query$analyzePerson$personsByPk$classes>? Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$classes<
                      Query$analyzePerson$personsByPk$classes>>?)
          _fn);
  TRes groups(
      Iterable<Query$analyzePerson$personsByPk$groups> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$groups<
                      Query$analyzePerson$personsByPk$groups>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk _instance;

  final TRes Function(Query$analyzePerson$personsByPk) _then;

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
      _then(Query$analyzePerson$personsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        callHistoryAggregate:
            callHistoryAggregate == _undefined || callHistoryAggregate == null
                ? _instance.callHistoryAggregate
                : (callHistoryAggregate
                    as Query$analyzePerson$personsByPk$callHistoryAggregate),
        visitHistoryAggregate:
            visitHistoryAggregate == _undefined || visitHistoryAggregate == null
                ? _instance.visitHistoryAggregate
                : (visitHistoryAggregate
                    as Query$analyzePerson$personsByPk$visitHistoryAggregate),
        editHistoryAggregate:
            editHistoryAggregate == _undefined || editHistoryAggregate == null
                ? _instance.editHistoryAggregate
                : (editHistoryAggregate
                    as Query$analyzePerson$personsByPk$editHistoryAggregate),
        kodasHistoryAggregate:
            kodasHistoryAggregate == _undefined || kodasHistoryAggregate == null
                ? _instance.kodasHistoryAggregate
                : (kodasHistoryAggregate
                    as Query$analyzePerson$personsByPk$kodasHistoryAggregate),
        confessionHistoryAggregate: confessionHistoryAggregate == _undefined ||
                confessionHistoryAggregate == null
            ? _instance.confessionHistoryAggregate
            : (confessionHistoryAggregate
                as Query$analyzePerson$personsByPk$confessionHistoryAggregate),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Query$analyzePerson$personsByPk$services>),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<Query$analyzePerson$personsByPk$classes>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Query$analyzePerson$personsByPk$groups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate<TRes>
      get callHistoryAggregate {
    final local$callHistoryAggregate = _instance.callHistoryAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate(
        local$callHistoryAggregate, (e) => call(callHistoryAggregate: e));
  }

  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate<TRes>
      get visitHistoryAggregate {
    final local$visitHistoryAggregate = _instance.visitHistoryAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate(
        local$visitHistoryAggregate, (e) => call(visitHistoryAggregate: e));
  }

  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate<TRes>
      get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate(
        local$editHistoryAggregate, (e) => call(editHistoryAggregate: e));
  }

  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate<TRes>
      get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate(
        local$kodasHistoryAggregate, (e) => call(kodasHistoryAggregate: e));
  }

  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate<TRes>
      get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate(
        local$confessionHistoryAggregate,
        (e) => call(confessionHistoryAggregate: e));
  }

  TRes services(
          Iterable<Query$analyzePerson$personsByPk$services> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$services<
                          Query$analyzePerson$personsByPk$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith$Query$analyzePerson$personsByPk$services(
                    e,
                    (i) => i,
                  ))).toList());
  TRes classes(
          Iterable<Query$analyzePerson$personsByPk$classes>? Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$classes<
                          Query$analyzePerson$personsByPk$classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes
              ?.map((e) => CopyWith$Query$analyzePerson$personsByPk$classes(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes groups(
          Iterable<Query$analyzePerson$personsByPk$groups> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$groups<
                          Query$analyzePerson$personsByPk$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith$Query$analyzePerson$personsByPk$groups(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Query$analyzePerson$personsByPk$callHistoryAggregate? callHistoryAggregate,
    Query$analyzePerson$personsByPk$visitHistoryAggregate?
        visitHistoryAggregate,
    Query$analyzePerson$personsByPk$editHistoryAggregate? editHistoryAggregate,
    Query$analyzePerson$personsByPk$kodasHistoryAggregate?
        kodasHistoryAggregate,
    Query$analyzePerson$personsByPk$confessionHistoryAggregate?
        confessionHistoryAggregate,
    List<Query$analyzePerson$personsByPk$services>? services,
    List<Query$analyzePerson$personsByPk$classes>? classes,
    List<Query$analyzePerson$personsByPk$groups>? groups,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate<TRes>
      get callHistoryAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate.stub(
              _res);
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate<TRes>
      get visitHistoryAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate.stub(
              _res);
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate<TRes>
      get editHistoryAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate.stub(
              _res);
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate<TRes>
      get kodasHistoryAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate.stub(
              _res);
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate<TRes>
      get confessionHistoryAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate
              .stub(_res);
  services(_fn) => _res;
  classes(_fn) => _res;
  groups(_fn) => _res;
}

class Query$analyzePerson$personsByPk$callHistoryAggregate {
  Query$analyzePerson$personsByPk$callHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$callHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$callHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) => Query$analyzePerson$personsByPk$callHistoryAggregate$nodes
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate?
      aggregate;

  final List<Query$analyzePerson$personsByPk$callHistoryAggregate$nodes> nodes;

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
    if (!(other is Query$analyzePerson$personsByPk$callHistoryAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$callHistoryAggregate
    on Query$analyzePerson$personsByPk$callHistoryAggregate {
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate<
          Query$analyzePerson$personsByPk$callHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate(
    Query$analyzePerson$personsByPk$callHistoryAggregate instance,
    TRes Function(Query$analyzePerson$personsByPk$callHistoryAggregate) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate? aggregate,
    List<Query$analyzePerson$personsByPk$callHistoryAggregate$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate<TRes>
      get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$callHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes<
                      Query$analyzePerson$personsByPk$callHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate<TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$callHistoryAggregate _instance;

  final TRes Function(Query$analyzePerson$personsByPk$callHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$callHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$callHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate<TRes>
      get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$callHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes<
                          Query$analyzePerson$personsByPk$callHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate? aggregate,
    List<Query$analyzePerson$personsByPk$callHistoryAggregate$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate<TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate {
  Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max? max;

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
            is Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate
    on Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate<
          Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate(
    Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate instance,
    TRes Function(
            Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max? max,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate
      _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max? max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max {
  Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max(
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
            is Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max
    on Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max<
          Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max(
    Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max instance,
    TRes Function(
            Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$callHistoryAggregate$nodes {
  Query$analyzePerson$personsByPk$callHistoryAggregate$nodes({
    required this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$callHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$callHistoryAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$callHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes
    on Query$analyzePerson$personsByPk$callHistoryAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes<
          Query$analyzePerson$personsByPk$callHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes(
    Query$analyzePerson$personsByPk$callHistoryAggregate$nodes instance,
    TRes Function(Query$analyzePerson$personsByPk$callHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$callHistoryAggregate$nodes _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$callHistoryAggregate$nodes) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$callHistoryAggregate$nodes(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$callHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$visitHistoryAggregate {
  Query$analyzePerson$personsByPk$visitHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$visitHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$visitHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate?
      aggregate;

  final List<Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes> nodes;

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
    if (!(other is Query$analyzePerson$personsByPk$visitHistoryAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$visitHistoryAggregate
    on Query$analyzePerson$personsByPk$visitHistoryAggregate {
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate<
          Query$analyzePerson$personsByPk$visitHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate(
    Query$analyzePerson$personsByPk$visitHistoryAggregate instance,
    TRes Function(Query$analyzePerson$personsByPk$visitHistoryAggregate) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate? aggregate,
    List<Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate<TRes>
      get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes<
                      Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate<TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$visitHistoryAggregate _instance;

  final TRes Function(Query$analyzePerson$personsByPk$visitHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$visitHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate<TRes>
      get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes<
                          Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate? aggregate,
    List<Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate<TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate {
  Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max?
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
            is Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate
    on Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate<
          Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate(
    Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate instance,
    TRes Function(
            Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max? max,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate
      _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max? max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max {
  Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max(
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
            is Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max
    on Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max<
          Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max(
    Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes {
  Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes({
    required this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes
    on Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes<
          Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes(
    Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes instance,
    TRes Function(Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$visitHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$editHistoryAggregate {
  Query$analyzePerson$personsByPk$editHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$editHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$editHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) => Query$analyzePerson$personsByPk$editHistoryAggregate$nodes
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate?
      aggregate;

  final List<Query$analyzePerson$personsByPk$editHistoryAggregate$nodes> nodes;

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
    if (!(other is Query$analyzePerson$personsByPk$editHistoryAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$editHistoryAggregate
    on Query$analyzePerson$personsByPk$editHistoryAggregate {
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate<
          Query$analyzePerson$personsByPk$editHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate(
    Query$analyzePerson$personsByPk$editHistoryAggregate instance,
    TRes Function(Query$analyzePerson$personsByPk$editHistoryAggregate) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate? aggregate,
    List<Query$analyzePerson$personsByPk$editHistoryAggregate$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate<TRes>
      get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$editHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes<
                      Query$analyzePerson$personsByPk$editHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate<TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$editHistoryAggregate _instance;

  final TRes Function(Query$analyzePerson$personsByPk$editHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$editHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$editHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate<TRes>
      get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$editHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes<
                          Query$analyzePerson$personsByPk$editHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate? aggregate,
    List<Query$analyzePerson$personsByPk$editHistoryAggregate$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate<TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate {
  Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max? max;

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
            is Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate
    on Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate<
          Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate(
    Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate instance,
    TRes Function(
            Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max? max,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate
      _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max? max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max {
  Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max(
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
            is Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max
    on Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max<
          Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max(
    Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max instance,
    TRes Function(
            Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$editHistoryAggregate$nodes {
  Query$analyzePerson$personsByPk$editHistoryAggregate$nodes({
    required this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$editHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$editHistoryAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$editHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes
    on Query$analyzePerson$personsByPk$editHistoryAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes<
          Query$analyzePerson$personsByPk$editHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes(
    Query$analyzePerson$personsByPk$editHistoryAggregate$nodes instance,
    TRes Function(Query$analyzePerson$personsByPk$editHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$editHistoryAggregate$nodes _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$editHistoryAggregate$nodes) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$editHistoryAggregate$nodes(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$editHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$kodasHistoryAggregate {
  Query$analyzePerson$personsByPk$kodasHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$kodasHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$kodasHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate?
      aggregate;

  final List<Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes> nodes;

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
    if (!(other is Query$analyzePerson$personsByPk$kodasHistoryAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$kodasHistoryAggregate
    on Query$analyzePerson$personsByPk$kodasHistoryAggregate {
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate<
          Query$analyzePerson$personsByPk$kodasHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate(
    Query$analyzePerson$personsByPk$kodasHistoryAggregate instance,
    TRes Function(Query$analyzePerson$personsByPk$kodasHistoryAggregate) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate? aggregate,
    List<Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate<TRes>
      get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes<
                      Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate<TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$kodasHistoryAggregate _instance;

  final TRes Function(Query$analyzePerson$personsByPk$kodasHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$kodasHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate<TRes>
      get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes<
                          Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate? aggregate,
    List<Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate<TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate {
  Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max?
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
            is Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate
    on Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate<
          Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate(
    Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate instance,
    TRes Function(
            Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max? max,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate
      _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max? max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max {
  Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max(
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
            is Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max
    on Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max<
          Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max(
    Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes {
  Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes({
    this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes
    on Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes<
          Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes(
    Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes instance,
    TRes Function(Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$kodasHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$confessionHistoryAggregate {
  Query$analyzePerson$personsByPk$confessionHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$confessionHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$confessionHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate?
      aggregate;

  final List<Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes>
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
            is Query$analyzePerson$personsByPk$confessionHistoryAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$confessionHistoryAggregate
    on Query$analyzePerson$personsByPk$confessionHistoryAggregate {
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate<
          Query$analyzePerson$personsByPk$confessionHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate(
    Query$analyzePerson$personsByPk$confessionHistoryAggregate instance,
    TRes Function(Query$analyzePerson$personsByPk$confessionHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes<
                      Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$confessionHistoryAggregate _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$confessionHistoryAggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$confessionHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes<
                          Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate {
  Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max?
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
            is Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate
    on Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate<
          Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate(
    Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max {
  Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max(
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
            is Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max
    on Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max<
          Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max(
    Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes {
  Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes({
    this.time,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes
    on Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes<
          Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes(
    Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes instance,
    TRes Function(
            Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes
      _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$confessionHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$services {
  Query$analyzePerson$personsByPk$services({
    required this.service,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$services(
      service: Query$analyzePerson$personsByPk$services$service.fromJson(
          (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$services$service service;

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
    if (!(other is Query$analyzePerson$personsByPk$services) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$services
    on Query$analyzePerson$personsByPk$services {
  CopyWith$Query$analyzePerson$personsByPk$services<
          Query$analyzePerson$personsByPk$services>
      get copyWith => CopyWith$Query$analyzePerson$personsByPk$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$services<TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$services(
    Query$analyzePerson$personsByPk$services instance,
    TRes Function(Query$analyzePerson$personsByPk$services) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$services;

  factory CopyWith$Query$analyzePerson$personsByPk$services.stub(TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$services;

  TRes call({
    Query$analyzePerson$personsByPk$services$service? service,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$services$service<TRes> get service;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$services<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$services<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$services(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$services _instance;

  final TRes Function(Query$analyzePerson$personsByPk$services) _then;

  static const _undefined = {};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Query$analyzePerson$personsByPk$services$service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$services$service<TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Query$analyzePerson$personsByPk$services$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$services<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$services<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$services(this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$services$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$services$service<TRes> get service =>
      CopyWith$Query$analyzePerson$personsByPk$services$service.stub(_res);
}

class Query$analyzePerson$personsByPk$services$service {
  Query$analyzePerson$personsByPk$services$service({
    required this.id,
    required this.name,
    this.color,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$services$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$services$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      attendanceHistoryAggregate:
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$analyzePerson$personsByPk$services$service) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$analyzePerson$personsByPk$services$service
    on Query$analyzePerson$personsByPk$services$service {
  CopyWith$Query$analyzePerson$personsByPk$services$service<
          Query$analyzePerson$personsByPk$services$service>
      get copyWith => CopyWith$Query$analyzePerson$personsByPk$services$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$services$service<TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$services$service(
    Query$analyzePerson$personsByPk$services$service instance,
    TRes Function(Query$analyzePerson$personsByPk$services$service) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$services$service;

  factory CopyWith$Query$analyzePerson$personsByPk$services$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$services$service<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$services$service<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$services$service(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$services$service _instance;

  final TRes Function(Query$analyzePerson$personsByPk$services$service) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$services$service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$services$service<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate {
  Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes>
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
            is Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate
    on Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate {
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate<
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate(
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes<
                      Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes<
                          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
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
            is Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
    on Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
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
            is Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
    on Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes {
  Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes
    on Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes<
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes(
    Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate {
  Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>
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
            is Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate
    on Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate {
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate<
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate(
    Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
                      Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
                          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate {
  Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
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
            is Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
    on Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
    Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes {
  Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes
    on Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
    Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$services$service$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$classes {
  Query$analyzePerson$personsByPk$classes({
    required this.id,
    required this.name,
    this.color,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      attendanceHistoryAggregate:
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$analyzePerson$personsByPk$classes) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$analyzePerson$personsByPk$classes
    on Query$analyzePerson$personsByPk$classes {
  CopyWith$Query$analyzePerson$personsByPk$classes<
          Query$analyzePerson$personsByPk$classes>
      get copyWith => CopyWith$Query$analyzePerson$personsByPk$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$classes<TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$classes(
    Query$analyzePerson$personsByPk$classes instance,
    TRes Function(Query$analyzePerson$personsByPk$classes) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$classes;

  factory CopyWith$Query$analyzePerson$personsByPk$classes.stub(TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$classes<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$classes<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$classes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$classes _instance;

  final TRes Function(Query$analyzePerson$personsByPk$classes) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$classes<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate {
  Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes>
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
            is Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate
    on Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate {
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate<
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate(
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate instance,
    TRes Function(
            Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes<
                      Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate
      _instance;

  final TRes Function(
      Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate) _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes<
                          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate {
  Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
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
            is Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
    on Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max {
  Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
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
            is Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
    on Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes {
  Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes
    on Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes<
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes(
    Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate {
  Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>
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
            is Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate
    on Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate {
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate<
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate(
    Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
                      Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
                          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate {
  Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
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
            is Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
    on Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
    Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes {
  Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes
    on Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
    Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$classes$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$groups {
  Query$analyzePerson$personsByPk$groups({
    required this.group,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$groups(
      group: Query$analyzePerson$personsByPk$groups$group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$groups$group group;

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
    if (!(other is Query$analyzePerson$personsByPk$groups) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$groups
    on Query$analyzePerson$personsByPk$groups {
  CopyWith$Query$analyzePerson$personsByPk$groups<
          Query$analyzePerson$personsByPk$groups>
      get copyWith => CopyWith$Query$analyzePerson$personsByPk$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$groups<TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$groups(
    Query$analyzePerson$personsByPk$groups instance,
    TRes Function(Query$analyzePerson$personsByPk$groups) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$groups;

  factory CopyWith$Query$analyzePerson$personsByPk$groups.stub(TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups;

  TRes call({
    Query$analyzePerson$personsByPk$groups$group? group,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$groups$group<TRes> get group;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$groups<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$groups<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$groups(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$groups _instance;

  final TRes Function(Query$analyzePerson$personsByPk$groups) _then;

  static const _undefined = {};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Query$analyzePerson$personsByPk$groups$group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$groups$group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith$Query$analyzePerson$personsByPk$groups$group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$groups<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups(this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$groups$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$groups$group<TRes> get group =>
      CopyWith$Query$analyzePerson$personsByPk$groups$group.stub(_res);
}

class Query$analyzePerson$personsByPk$groups$group {
  Query$analyzePerson$personsByPk$groups$group({
    required this.id,
    required this.name,
    this.color,
    required this.attendanceHistoryAggregate,
    required this.attendanceDaysConstraintsAggregate,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$groups$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$attendanceDaysConstraintsAggregate =
        json['attendanceDaysConstraintsAggregate'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$groups$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      attendanceHistoryAggregate:
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      attendanceDaysConstraintsAggregate:
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate
              .fromJson((l$attendanceDaysConstraintsAggregate
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate
      attendanceDaysConstraintsAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    _resultData['attendanceDaysConstraintsAggregate'] =
        l$attendanceDaysConstraintsAggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$attendanceHistoryAggregate,
      l$attendanceDaysConstraintsAggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$analyzePerson$personsByPk$groups$group) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$analyzePerson$personsByPk$groups$group
    on Query$analyzePerson$personsByPk$groups$group {
  CopyWith$Query$analyzePerson$personsByPk$groups$group<
          Query$analyzePerson$personsByPk$groups$group>
      get copyWith => CopyWith$Query$analyzePerson$personsByPk$groups$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$groups$group<TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$groups$group(
    Query$analyzePerson$personsByPk$groups$group instance,
    TRes Function(Query$analyzePerson$personsByPk$groups$group) then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group;

  factory CopyWith$Query$analyzePerson$personsByPk$groups$group.stub(TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$groups$group<TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$groups$group _instance;

  final TRes Function(Query$analyzePerson$personsByPk$groups$group) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$analyzePerson$personsByPk$groups$group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate),
        attendanceDaysConstraintsAggregate: attendanceDaysConstraintsAggregate ==
                    _undefined ||
                attendanceDaysConstraintsAggregate == null
            ? _instance.attendanceDaysConstraintsAggregate
            : (attendanceDaysConstraintsAggregate
                as Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }

  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
      TRes> get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
        local$attendanceDaysConstraintsAggregate,
        (e) => call(attendanceDaysConstraintsAggregate: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group<TRes>
    implements CopyWith$Query$analyzePerson$personsByPk$groups$group<TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate?
        attendanceDaysConstraintsAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate
              .stub(_res);
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
          TRes>
      get attendanceDaysConstraintsAggregate =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate
              .stub(_res);
}

class Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate {
  Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes>
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
            is Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate
    on Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate {
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate<
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate(
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
                      Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
                          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate({
    required this.count,
    this.max,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      count: (l$count as int),
      max: l$max == null
          ? null
          : Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
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
            is Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
    on Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  TRes call({
    int? count,
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max({
    this.dayId,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
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
            is Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
    on Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
        dayId: dayId == _undefined ? _instance.dayId : (dayId as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes {
  Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes
    on Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
    Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceHistoryAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate {
  Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate({
    this.aggregate,
    required this.nodes,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate?
      aggregate;

  final List<
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>
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
            is Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate
    on Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate {
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
    Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate;

  TRes call({
    Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  });
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate;
  TRes nodes(
      Iterable<Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes> Function(
              Iterable<
                  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
                      Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>>)
          _fn);
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate?),
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<
                Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }

  TRes nodes(
          Iterable<Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes> Function(
                  Iterable<
                      CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
                          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>>)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes.map((e) =>
              CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate(
      this._res);

  TRes _res;

  call({
    Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate?
        aggregate,
    List<Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>?
        nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
              .stub(_res);
  nodes(_fn) => _res;
}

class Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate {
  Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate({
    required this.count,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
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
            is Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
    on Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate {
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
    Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate;

  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes {
  Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes({
    required this.dayId,
    required this.$__typename,
  });

  factory Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$dayId = json['dayId'];
    final l$$__typename = json['__typename'];
    return Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
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
            is Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes) ||
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

extension UtilityExtension$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes
    on Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes {
  CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes>
      get copyWith =>
          CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
    TRes> {
  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
    Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes
        instance,
    TRes Function(
            Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes)
        then,
  ) = _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes;

  factory CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes;

  TRes call({
    DateTime? dayId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
    this._instance,
    this._then,
  );

  final Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes
      _instance;

  final TRes Function(
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dayId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
        dayId: dayId == _undefined || dayId == null
            ? _instance.dayId
            : (dayId as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
        TRes>
    implements
        CopyWith$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes<
            TRes> {
  _CopyWithStubImpl$Query$analyzePerson$personsByPk$groups$group$attendanceDaysConstraintsAggregate$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? dayId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getPersonClassesAndGroups {
  factory Variables$Query$getPersonClassesAndGroups({required UuidValue id}) =>
      Variables$Query$getPersonClassesAndGroups._({
        r'id': id,
      });

  Variables$Query$getPersonClassesAndGroups._(this._$data);

  factory Variables$Query$getPersonClassesAndGroups.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Query$getPersonClassesAndGroups._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Query$getPersonClassesAndGroups<
          Variables$Query$getPersonClassesAndGroups>
      get copyWith => CopyWith$Variables$Query$getPersonClassesAndGroups(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getPersonClassesAndGroups) ||
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

abstract class CopyWith$Variables$Query$getPersonClassesAndGroups<TRes> {
  factory CopyWith$Variables$Query$getPersonClassesAndGroups(
    Variables$Query$getPersonClassesAndGroups instance,
    TRes Function(Variables$Query$getPersonClassesAndGroups) then,
  ) = _CopyWithImpl$Variables$Query$getPersonClassesAndGroups;

  factory CopyWith$Variables$Query$getPersonClassesAndGroups.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getPersonClassesAndGroups;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Query$getPersonClassesAndGroups<TRes>
    implements CopyWith$Variables$Query$getPersonClassesAndGroups<TRes> {
  _CopyWithImpl$Variables$Query$getPersonClassesAndGroups(
    this._instance,
    this._then,
  );

  final Variables$Query$getPersonClassesAndGroups _instance;

  final TRes Function(Variables$Query$getPersonClassesAndGroups) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$getPersonClassesAndGroups._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Query$getPersonClassesAndGroups<TRes>
    implements CopyWith$Variables$Query$getPersonClassesAndGroups<TRes> {
  _CopyWithStubImpl$Variables$Query$getPersonClassesAndGroups(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Query$getPersonClassesAndGroups {
  Query$getPersonClassesAndGroups({
    this.personsByPk,
    required this.$__typename,
  });

  factory Query$getPersonClassesAndGroups.fromJson(Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    final l$$__typename = json['__typename'];
    return Query$getPersonClassesAndGroups(
      personsByPk: l$personsByPk == null
          ? null
          : Query$getPersonClassesAndGroups$personsByPk.fromJson(
              (l$personsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getPersonClassesAndGroups$personsByPk? personsByPk;

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
    if (!(other is Query$getPersonClassesAndGroups) ||
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

extension UtilityExtension$Query$getPersonClassesAndGroups
    on Query$getPersonClassesAndGroups {
  CopyWith$Query$getPersonClassesAndGroups<Query$getPersonClassesAndGroups>
      get copyWith => CopyWith$Query$getPersonClassesAndGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPersonClassesAndGroups<TRes> {
  factory CopyWith$Query$getPersonClassesAndGroups(
    Query$getPersonClassesAndGroups instance,
    TRes Function(Query$getPersonClassesAndGroups) then,
  ) = _CopyWithImpl$Query$getPersonClassesAndGroups;

  factory CopyWith$Query$getPersonClassesAndGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$getPersonClassesAndGroups;

  TRes call({
    Query$getPersonClassesAndGroups$personsByPk? personsByPk,
    String? $__typename,
  });
  CopyWith$Query$getPersonClassesAndGroups$personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl$Query$getPersonClassesAndGroups<TRes>
    implements CopyWith$Query$getPersonClassesAndGroups<TRes> {
  _CopyWithImpl$Query$getPersonClassesAndGroups(
    this._instance,
    this._then,
  );

  final Query$getPersonClassesAndGroups _instance;

  final TRes Function(Query$getPersonClassesAndGroups) _then;

  static const _undefined = {};

  TRes call({
    Object? personsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPersonClassesAndGroups(
        personsByPk: personsByPk == _undefined
            ? _instance.personsByPk
            : (personsByPk as Query$getPersonClassesAndGroups$personsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getPersonClassesAndGroups$personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith$Query$getPersonClassesAndGroups$personsByPk.stub(
            _then(_instance))
        : CopyWith$Query$getPersonClassesAndGroups$personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl$Query$getPersonClassesAndGroups<TRes>
    implements CopyWith$Query$getPersonClassesAndGroups<TRes> {
  _CopyWithStubImpl$Query$getPersonClassesAndGroups(this._res);

  TRes _res;

  call({
    Query$getPersonClassesAndGroups$personsByPk? personsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getPersonClassesAndGroups$personsByPk<TRes> get personsByPk =>
      CopyWith$Query$getPersonClassesAndGroups$personsByPk.stub(_res);
}

const documentNodeQuerygetPersonClassesAndGroups = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getPersonClassesAndGroups'),
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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'service'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'photoUpdatedAt'),
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
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'photoUpdatedAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'service'),
                    alias: null,
                    arguments: [],
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
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
]);

class Query$getPersonClassesAndGroups$personsByPk {
  Query$getPersonClassesAndGroups$personsByPk({
    required this.id,
    required this.name,
    this.classes,
    required this.groups,
    required this.$__typename,
  });

  factory Query$getPersonClassesAndGroups$personsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$classes = json['classes'];
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Query$getPersonClassesAndGroups$personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) =>
              Query$getPersonClassesAndGroups$personsByPk$classes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      groups: (l$groups as List<dynamic>)
          .map((e) =>
              Query$getPersonClassesAndGroups$personsByPk$groups.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final List<Query$getPersonClassesAndGroups$personsByPk$classes>? classes;

  final List<Query$getPersonClassesAndGroups$personsByPk$groups> groups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
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
    final l$classes = classes;
    final l$groups = groups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
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
    if (!(other is Query$getPersonClassesAndGroups$personsByPk) ||
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

extension UtilityExtension$Query$getPersonClassesAndGroups$personsByPk
    on Query$getPersonClassesAndGroups$personsByPk {
  CopyWith$Query$getPersonClassesAndGroups$personsByPk<
          Query$getPersonClassesAndGroups$personsByPk>
      get copyWith => CopyWith$Query$getPersonClassesAndGroups$personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPersonClassesAndGroups$personsByPk<TRes> {
  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk(
    Query$getPersonClassesAndGroups$personsByPk instance,
    TRes Function(Query$getPersonClassesAndGroups$personsByPk) then,
  ) = _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk;

  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk.stub(TRes res) =
      _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    List<Query$getPersonClassesAndGroups$personsByPk$classes>? classes,
    List<Query$getPersonClassesAndGroups$personsByPk$groups>? groups,
    String? $__typename,
  });
  TRes classes(
      Iterable<Query$getPersonClassesAndGroups$personsByPk$classes>? Function(
              Iterable<
                  CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes<
                      Query$getPersonClassesAndGroups$personsByPk$classes>>?)
          _fn);
  TRes groups(
      Iterable<Query$getPersonClassesAndGroups$personsByPk$groups> Function(
              Iterable<
                  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups<
                      Query$getPersonClassesAndGroups$personsByPk$groups>>)
          _fn);
}

class _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk<TRes>
    implements CopyWith$Query$getPersonClassesAndGroups$personsByPk<TRes> {
  _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk(
    this._instance,
    this._then,
  );

  final Query$getPersonClassesAndGroups$personsByPk _instance;

  final TRes Function(Query$getPersonClassesAndGroups$personsByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? classes = _undefined,
    Object? groups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPersonClassesAndGroups$personsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        classes: classes == _undefined
            ? _instance.classes
            : (classes
                as List<Query$getPersonClassesAndGroups$personsByPk$classes>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups
                as List<Query$getPersonClassesAndGroups$personsByPk$groups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes classes(
          Iterable<Query$getPersonClassesAndGroups$personsByPk$classes>? Function(
                  Iterable<
                      CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes<
                          Query$getPersonClassesAndGroups$personsByPk$classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map((e) =>
              CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes(
                e,
                (i) => i,
              )))?.toList());
  TRes groups(
          Iterable<Query$getPersonClassesAndGroups$personsByPk$groups> Function(
                  Iterable<
                      CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups<
                          Query$getPersonClassesAndGroups$personsByPk$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups.map((e) =>
              CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk<TRes>
    implements CopyWith$Query$getPersonClassesAndGroups$personsByPk<TRes> {
  _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    List<Query$getPersonClassesAndGroups$personsByPk$classes>? classes,
    List<Query$getPersonClassesAndGroups$personsByPk$groups>? groups,
    String? $__typename,
  }) =>
      _res;
  classes(_fn) => _res;
  groups(_fn) => _res;
}

class Query$getPersonClassesAndGroups$personsByPk$classes {
  Query$getPersonClassesAndGroups$personsByPk$classes({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.service,
    required this.$__typename,
  });

  factory Query$getPersonClassesAndGroups$personsByPk$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query$getPersonClassesAndGroups$personsByPk$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      service:
          Query$getPersonClassesAndGroups$personsByPk$classes$service.fromJson(
              (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Query$getPersonClassesAndGroups$personsByPk$classes$service service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$service,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getPersonClassesAndGroups$personsByPk$classes) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getPersonClassesAndGroups$personsByPk$classes
    on Query$getPersonClassesAndGroups$personsByPk$classes {
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes<
          Query$getPersonClassesAndGroups$personsByPk$classes>
      get copyWith =>
          CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes<
    TRes> {
  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes(
    Query$getPersonClassesAndGroups$personsByPk$classes instance,
    TRes Function(Query$getPersonClassesAndGroups$personsByPk$classes) then,
  ) = _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$classes;

  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getPersonClassesAndGroups$personsByPk$classes$service? service,
    String? $__typename,
  });
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service<TRes>
      get service;
}

class _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$classes<TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes<TRes> {
  _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$classes(
    this._instance,
    this._then,
  );

  final Query$getPersonClassesAndGroups$personsByPk$classes _instance;

  final TRes Function(Query$getPersonClassesAndGroups$personsByPk$classes)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPersonClassesAndGroups$personsByPk$classes(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query$getPersonClassesAndGroups$personsByPk$classes$service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$classes<
        TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes<TRes> {
  _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$classes(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getPersonClassesAndGroups$personsByPk$classes$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service<TRes>
      get service =>
          CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service
              .stub(_res);
}

class Query$getPersonClassesAndGroups$personsByPk$classes$service {
  Query$getPersonClassesAndGroups$personsByPk$classes$service({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Query$getPersonClassesAndGroups$personsByPk$classes$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Query$getPersonClassesAndGroups$personsByPk$classes$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getPersonClassesAndGroups$personsByPk$classes$service) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Query$getPersonClassesAndGroups$personsByPk$classes$service
    on Query$getPersonClassesAndGroups$personsByPk$classes$service {
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service<
          Query$getPersonClassesAndGroups$personsByPk$classes$service>
      get copyWith =>
          CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service<
    TRes> {
  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service(
    Query$getPersonClassesAndGroups$personsByPk$classes$service instance,
    TRes Function(Query$getPersonClassesAndGroups$personsByPk$classes$service)
        then,
  ) = _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$classes$service;

  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$classes$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$classes$service<
        TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service<
            TRes> {
  _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$classes$service(
    this._instance,
    this._then,
  );

  final Query$getPersonClassesAndGroups$personsByPk$classes$service _instance;

  final TRes Function(
      Query$getPersonClassesAndGroups$personsByPk$classes$service) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPersonClassesAndGroups$personsByPk$classes$service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$classes$service<
        TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$classes$service<
            TRes> {
  _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$classes$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$getPersonClassesAndGroups$personsByPk$groups {
  Query$getPersonClassesAndGroups$personsByPk$groups({
    required this.group,
    required this.$__typename,
  });

  factory Query$getPersonClassesAndGroups$personsByPk$groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query$getPersonClassesAndGroups$personsByPk$groups(
      group: Query$getPersonClassesAndGroups$personsByPk$groups$group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getPersonClassesAndGroups$personsByPk$groups$group group;

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
    if (!(other is Query$getPersonClassesAndGroups$personsByPk$groups) ||
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

extension UtilityExtension$Query$getPersonClassesAndGroups$personsByPk$groups
    on Query$getPersonClassesAndGroups$personsByPk$groups {
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups<
          Query$getPersonClassesAndGroups$personsByPk$groups>
      get copyWith =>
          CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups<
    TRes> {
  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups(
    Query$getPersonClassesAndGroups$personsByPk$groups instance,
    TRes Function(Query$getPersonClassesAndGroups$personsByPk$groups) then,
  ) = _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$groups;

  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$groups;

  TRes call({
    Query$getPersonClassesAndGroups$personsByPk$groups$group? group,
    String? $__typename,
  });
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group<TRes>
      get group;
}

class _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$groups<TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups<TRes> {
  _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$groups(
    this._instance,
    this._then,
  );

  final Query$getPersonClassesAndGroups$personsByPk$groups _instance;

  final TRes Function(Query$getPersonClassesAndGroups$personsByPk$groups) _then;

  static const _undefined = {};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPersonClassesAndGroups$personsByPk$groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group
                as Query$getPersonClassesAndGroups$personsByPk$groups$group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group<TRes>
      get group {
    final local$group = _instance.group;
    return CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$groups<TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups<TRes> {
  _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$groups(
      this._res);

  TRes _res;

  call({
    Query$getPersonClassesAndGroups$personsByPk$groups$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group<TRes>
      get group =>
          CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group
              .stub(_res);
}

class Query$getPersonClassesAndGroups$personsByPk$groups$group {
  Query$getPersonClassesAndGroups$personsByPk$groups$group({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.service,
    required this.$__typename,
  });

  factory Query$getPersonClassesAndGroups$personsByPk$groups$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query$getPersonClassesAndGroups$personsByPk$groups$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      service: Query$getPersonClassesAndGroups$personsByPk$groups$group$service
          .fromJson((l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Query$getPersonClassesAndGroups$personsByPk$groups$group$service
      service;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$service,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getPersonClassesAndGroups$personsByPk$groups$group) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getPersonClassesAndGroups$personsByPk$groups$group
    on Query$getPersonClassesAndGroups$personsByPk$groups$group {
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group<
          Query$getPersonClassesAndGroups$personsByPk$groups$group>
      get copyWith =>
          CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group<
    TRes> {
  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group(
    Query$getPersonClassesAndGroups$personsByPk$groups$group instance,
    TRes Function(Query$getPersonClassesAndGroups$personsByPk$groups$group)
        then,
  ) = _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group;

  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getPersonClassesAndGroups$personsByPk$groups$group$service? service,
    String? $__typename,
  });
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service<
      TRes> get service;
}

class _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group<
        TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group<
            TRes> {
  _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group(
    this._instance,
    this._then,
  );

  final Query$getPersonClassesAndGroups$personsByPk$groups$group _instance;

  final TRes Function(Query$getPersonClassesAndGroups$personsByPk$groups$group)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPersonClassesAndGroups$personsByPk$groups$group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query$getPersonClassesAndGroups$personsByPk$groups$group$service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service<
      TRes> get service {
    final local$service = _instance.service;
    return CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group<
        TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group<
            TRes> {
  _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getPersonClassesAndGroups$personsByPk$groups$group$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service<
          TRes>
      get service =>
          CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service
              .stub(_res);
}

class Query$getPersonClassesAndGroups$personsByPk$groups$group$service {
  Query$getPersonClassesAndGroups$personsByPk$groups$group$service({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Query$getPersonClassesAndGroups$personsByPk$groups$group$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Query$getPersonClassesAndGroups$personsByPk$groups$group$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getPersonClassesAndGroups$personsByPk$groups$group$service) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Query$getPersonClassesAndGroups$personsByPk$groups$group$service
    on Query$getPersonClassesAndGroups$personsByPk$groups$group$service {
  CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service<
          Query$getPersonClassesAndGroups$personsByPk$groups$group$service>
      get copyWith =>
          CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service<
    TRes> {
  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service(
    Query$getPersonClassesAndGroups$personsByPk$groups$group$service instance,
    TRes Function(
            Query$getPersonClassesAndGroups$personsByPk$groups$group$service)
        then,
  ) = _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group$service;

  factory CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group$service<
        TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service<
            TRes> {
  _CopyWithImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group$service(
    this._instance,
    this._then,
  );

  final Query$getPersonClassesAndGroups$personsByPk$groups$group$service
      _instance;

  final TRes Function(
      Query$getPersonClassesAndGroups$personsByPk$groups$group$service) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPersonClassesAndGroups$personsByPk$groups$group$service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group$service<
        TRes>
    implements
        CopyWith$Query$getPersonClassesAndGroups$personsByPk$groups$group$service<
            TRes> {
  _CopyWithStubImpl$Query$getPersonClassesAndGroups$personsByPk$groups$group$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getFullPersonData {
  factory Variables$Query$getFullPersonData({required UuidValue id}) =>
      Variables$Query$getFullPersonData._({
        r'id': id,
      });

  Variables$Query$getFullPersonData._(this._$data);

  factory Variables$Query$getFullPersonData.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Query$getFullPersonData._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Query$getFullPersonData<Variables$Query$getFullPersonData>
      get copyWith => CopyWith$Variables$Query$getFullPersonData(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getFullPersonData) ||
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

abstract class CopyWith$Variables$Query$getFullPersonData<TRes> {
  factory CopyWith$Variables$Query$getFullPersonData(
    Variables$Query$getFullPersonData instance,
    TRes Function(Variables$Query$getFullPersonData) then,
  ) = _CopyWithImpl$Variables$Query$getFullPersonData;

  factory CopyWith$Variables$Query$getFullPersonData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getFullPersonData;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Query$getFullPersonData<TRes>
    implements CopyWith$Variables$Query$getFullPersonData<TRes> {
  _CopyWithImpl$Variables$Query$getFullPersonData(
    this._instance,
    this._then,
  );

  final Variables$Query$getFullPersonData _instance;

  final TRes Function(Variables$Query$getFullPersonData) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$getFullPersonData._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Query$getFullPersonData<TRes>
    implements CopyWith$Variables$Query$getFullPersonData<TRes> {
  _CopyWithStubImpl$Variables$Query$getFullPersonData(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Query$getFullPersonData {
  Query$getFullPersonData({
    this.personsByPk,
    required this.$__typename,
  });

  factory Query$getFullPersonData.fromJson(Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData(
      personsByPk: l$personsByPk == null
          ? null
          : Query$getFullPersonData$personsByPk.fromJson(
              (l$personsByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFullPersonData$personsByPk? personsByPk;

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
    if (!(other is Query$getFullPersonData) ||
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

extension UtilityExtension$Query$getFullPersonData on Query$getFullPersonData {
  CopyWith$Query$getFullPersonData<Query$getFullPersonData> get copyWith =>
      CopyWith$Query$getFullPersonData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getFullPersonData<TRes> {
  factory CopyWith$Query$getFullPersonData(
    Query$getFullPersonData instance,
    TRes Function(Query$getFullPersonData) then,
  ) = _CopyWithImpl$Query$getFullPersonData;

  factory CopyWith$Query$getFullPersonData.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData;

  TRes call({
    Query$getFullPersonData$personsByPk? personsByPk,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl$Query$getFullPersonData<TRes>
    implements CopyWith$Query$getFullPersonData<TRes> {
  _CopyWithImpl$Query$getFullPersonData(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData _instance;

  final TRes Function(Query$getFullPersonData) _then;

  static const _undefined = {};

  TRes call({
    Object? personsByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData(
        personsByPk: personsByPk == _undefined
            ? _instance.personsByPk
            : (personsByPk as Query$getFullPersonData$personsByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith$Query$getFullPersonData$personsByPk.stub(_then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData<TRes>
    implements CopyWith$Query$getFullPersonData<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData(this._res);

  TRes _res;

  call({
    Query$getFullPersonData$personsByPk? personsByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk<TRes> get personsByPk =>
      CopyWith$Query$getFullPersonData$personsByPk.stub(_res);
}

const documentNodeQuerygetFullPersonData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getFullPersonData'),
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
            name: NameNode(value: 'color'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'photoUpdatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'birthdate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'church'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'college'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'family'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'photoUpdatedAt'),
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
            name: NameNode(value: 'father'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'church'),
                alias: null,
                arguments: [],
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
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'geolocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'groups'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'group'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'photoUpdatedAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'service'),
                    alias: null,
                    arguments: [],
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
                        name: NameNode(value: 'color'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'photoUpdatedAt'),
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
                    name: NameNode(value: 'attendanceHistoryAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'personId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value:
                                    VariableNode(name: NameNode(value: 'id')),
                              )
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
            name: NameNode(value: 'isServant'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isShammas'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isStudent'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'job'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'jobDescription'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'mainPhone'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'notes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'otherPhones'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'personType'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'qualification'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'school'),
            alias: null,
            arguments: [],
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
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'service'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'color'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'photoUpdatedAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'fromStudyYear'),
                    alias: null,
                    arguments: [],
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
                        name: NameNode(value: 'order'),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'order'),
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
                    name: NameNode(value: 'attendanceHistoryAggregate'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'personId'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value:
                                    VariableNode(name: NameNode(value: 'id')),
                              )
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
            name: NameNode(value: 'shammasLevel'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'order'),
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
            name: NameNode(value: 'state'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'color'),
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
            name: NameNode(value: 'studyYear'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'order'),
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
            name: NameNode(value: 'tags'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'tag'),
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
                name: NameNode(value: 'tag'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'color'),
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
]);

class Query$getFullPersonData$personsByPk {
  Query$getFullPersonData$personsByPk({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.address,
    this.birthdate,
    this.church,
    this.college,
    this.family,
    this.father,
    required this.gender,
    this.geolocation,
    required this.groups,
    required this.isServant,
    required this.isShammas,
    this.isStudent,
    this.job,
    this.jobDescription,
    this.mainPhone,
    this.notes,
    required this.otherPhones,
    this.personType,
    this.qualification,
    this.school,
    required this.services,
    this.shammasLevel,
    this.state,
    this.studyYear,
    required this.tags,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$address = json['address'];
    final l$birthdate = json['birthdate'];
    final l$church = json['church'];
    final l$college = json['college'];
    final l$family = json['family'];
    final l$father = json['father'];
    final l$gender = json['gender'];
    final l$geolocation = json['geolocation'];
    final l$groups = json['groups'];
    final l$isServant = json['isServant'];
    final l$isShammas = json['isShammas'];
    final l$isStudent = json['isStudent'];
    final l$job = json['job'];
    final l$jobDescription = json['jobDescription'];
    final l$mainPhone = json['mainPhone'];
    final l$notes = json['notes'];
    final l$otherPhones = json['otherPhones'];
    final l$personType = json['personType'];
    final l$qualification = json['qualification'];
    final l$school = json['school'];
    final l$services = json['services'];
    final l$shammasLevel = json['shammasLevel'];
    final l$state = json['state'];
    final l$studyYear = json['studyYear'];
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      address: (l$address as String?),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      church: l$church == null
          ? null
          : Query$getFullPersonData$personsByPk$church.fromJson(
              (l$church as Map<String, dynamic>)),
      college: l$college == null
          ? null
          : Query$getFullPersonData$personsByPk$college.fromJson(
              (l$college as Map<String, dynamic>)),
      family: l$family == null
          ? null
          : Query$getFullPersonData$personsByPk$family.fromJson(
              (l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Query$getFullPersonData$personsByPk$father.fromJson(
              (l$father as Map<String, dynamic>)),
      gender: (l$gender as bool),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      groups: (l$groups as List<dynamic>)
          .map((e) => Query$getFullPersonData$personsByPk$groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isServant: (l$isServant as bool),
      isShammas: (l$isShammas as bool),
      isStudent: (l$isStudent as bool?),
      job: l$job == null
          ? null
          : Query$getFullPersonData$personsByPk$job.fromJson(
              (l$job as Map<String, dynamic>)),
      jobDescription: (l$jobDescription as String?),
      mainPhone: (l$mainPhone as String?),
      notes: (l$notes as String?),
      otherPhones: (l$otherPhones as Json),
      personType: l$personType == null
          ? null
          : Query$getFullPersonData$personsByPk$personType.fromJson(
              (l$personType as Map<String, dynamic>)),
      qualification: l$qualification == null
          ? null
          : Query$getFullPersonData$personsByPk$qualification.fromJson(
              (l$qualification as Map<String, dynamic>)),
      school: l$school == null
          ? null
          : Query$getFullPersonData$personsByPk$school.fromJson(
              (l$school as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Query$getFullPersonData$personsByPk$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Query$getFullPersonData$personsByPk$shammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>)),
      state: l$state == null
          ? null
          : Query$getFullPersonData$personsByPk$state.fromJson(
              (l$state as Map<String, dynamic>)),
      studyYear: l$studyYear == null
          ? null
          : Query$getFullPersonData$personsByPk$studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
      tags: (l$tags as List<dynamic>)
          .map((e) => Query$getFullPersonData$personsByPk$tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String? address;

  final DateTime? birthdate;

  final Query$getFullPersonData$personsByPk$church? church;

  final Query$getFullPersonData$personsByPk$college? college;

  final Query$getFullPersonData$personsByPk$family? family;

  final Query$getFullPersonData$personsByPk$father? father;

  final bool gender;

  final Map<String, dynamic>? geolocation;

  final List<Query$getFullPersonData$personsByPk$groups> groups;

  final bool isServant;

  final bool isShammas;

  final bool? isStudent;

  final Query$getFullPersonData$personsByPk$job? job;

  final String? jobDescription;

  final String? mainPhone;

  final String? notes;

  final Json otherPhones;

  final Query$getFullPersonData$personsByPk$personType? personType;

  final Query$getFullPersonData$personsByPk$qualification? qualification;

  final Query$getFullPersonData$personsByPk$school? school;

  final List<Query$getFullPersonData$personsByPk$services> services;

  final Query$getFullPersonData$personsByPk$shammasLevel? shammasLevel;

  final Query$getFullPersonData$personsByPk$state? state;

  final Query$getFullPersonData$personsByPk$studyYear? studyYear;

  final List<Query$getFullPersonData$personsByPk$tags> tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$address = address;
    _resultData['address'] = l$address;
    final l$birthdate = birthdate;
    _resultData['birthdate'] =
        l$birthdate == null ? null : dateToString(l$birthdate);
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$college = college;
    _resultData['college'] = l$college?.toJson();
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$father = father;
    _resultData['father'] = l$father?.toJson();
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    final l$isServant = isServant;
    _resultData['isServant'] = l$isServant;
    final l$isShammas = isShammas;
    _resultData['isShammas'] = l$isShammas;
    final l$isStudent = isStudent;
    _resultData['isStudent'] = l$isStudent;
    final l$job = job;
    _resultData['job'] = l$job?.toJson();
    final l$jobDescription = jobDescription;
    _resultData['jobDescription'] = l$jobDescription;
    final l$mainPhone = mainPhone;
    _resultData['mainPhone'] = l$mainPhone;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$otherPhones = otherPhones;
    _resultData['otherPhones'] = l$otherPhones;
    final l$personType = personType;
    _resultData['personType'] = l$personType?.toJson();
    final l$qualification = qualification;
    _resultData['qualification'] = l$qualification?.toJson();
    final l$school = school;
    _resultData['school'] = l$school?.toJson();
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    final l$shammasLevel = shammasLevel;
    _resultData['shammasLevel'] = l$shammasLevel?.toJson();
    final l$state = state;
    _resultData['state'] = l$state?.toJson();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$address = address;
    final l$birthdate = birthdate;
    final l$church = church;
    final l$college = college;
    final l$family = family;
    final l$father = father;
    final l$gender = gender;
    final l$geolocation = geolocation;
    final l$groups = groups;
    final l$isServant = isServant;
    final l$isShammas = isShammas;
    final l$isStudent = isStudent;
    final l$job = job;
    final l$jobDescription = jobDescription;
    final l$mainPhone = mainPhone;
    final l$notes = notes;
    final l$otherPhones = otherPhones;
    final l$personType = personType;
    final l$qualification = qualification;
    final l$school = school;
    final l$services = services;
    final l$shammasLevel = shammasLevel;
    final l$state = state;
    final l$studyYear = studyYear;
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$address,
      l$birthdate,
      l$church,
      l$college,
      l$family,
      l$father,
      l$gender,
      l$geolocation,
      Object.hashAll(l$groups.map((v) => v)),
      l$isServant,
      l$isShammas,
      l$isStudent,
      l$job,
      l$jobDescription,
      l$mainPhone,
      l$notes,
      l$otherPhones,
      l$personType,
      l$qualification,
      l$school,
      Object.hashAll(l$services.map((v) => v)),
      l$shammasLevel,
      l$state,
      l$studyYear,
      Object.hashAll(l$tags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$birthdate = birthdate;
    final lOther$birthdate = other.birthdate;
    if (l$birthdate != lOther$birthdate) {
      return false;
    }
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
      return false;
    }
    final l$college = college;
    final lOther$college = other.college;
    if (l$college != lOther$college) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
      return false;
    }
    final l$father = father;
    final lOther$father = other.father;
    if (l$father != lOther$father) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
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
    final l$isServant = isServant;
    final lOther$isServant = other.isServant;
    if (l$isServant != lOther$isServant) {
      return false;
    }
    final l$isShammas = isShammas;
    final lOther$isShammas = other.isShammas;
    if (l$isShammas != lOther$isShammas) {
      return false;
    }
    final l$isStudent = isStudent;
    final lOther$isStudent = other.isStudent;
    if (l$isStudent != lOther$isStudent) {
      return false;
    }
    final l$job = job;
    final lOther$job = other.job;
    if (l$job != lOther$job) {
      return false;
    }
    final l$jobDescription = jobDescription;
    final lOther$jobDescription = other.jobDescription;
    if (l$jobDescription != lOther$jobDescription) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (l$mainPhone != lOther$mainPhone) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$otherPhones = otherPhones;
    final lOther$otherPhones = other.otherPhones;
    if (l$otherPhones != lOther$otherPhones) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$qualification = qualification;
    final lOther$qualification = other.qualification;
    if (l$qualification != lOther$qualification) {
      return false;
    }
    final l$school = school;
    final lOther$school = other.school;
    if (l$school != lOther$school) {
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
    final l$shammasLevel = shammasLevel;
    final lOther$shammasLevel = other.shammasLevel;
    if (l$shammasLevel != lOther$shammasLevel) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk
    on Query$getFullPersonData$personsByPk {
  CopyWith$Query$getFullPersonData$personsByPk<
          Query$getFullPersonData$personsByPk>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk(
    Query$getFullPersonData$personsByPk instance,
    TRes Function(Query$getFullPersonData$personsByPk) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk;

  factory CopyWith$Query$getFullPersonData$personsByPk.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? address,
    DateTime? birthdate,
    Query$getFullPersonData$personsByPk$church? church,
    Query$getFullPersonData$personsByPk$college? college,
    Query$getFullPersonData$personsByPk$family? family,
    Query$getFullPersonData$personsByPk$father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Query$getFullPersonData$personsByPk$groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Query$getFullPersonData$personsByPk$job? job,
    String? jobDescription,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Query$getFullPersonData$personsByPk$personType? personType,
    Query$getFullPersonData$personsByPk$qualification? qualification,
    Query$getFullPersonData$personsByPk$school? school,
    List<Query$getFullPersonData$personsByPk$services>? services,
    Query$getFullPersonData$personsByPk$shammasLevel? shammasLevel,
    Query$getFullPersonData$personsByPk$state? state,
    Query$getFullPersonData$personsByPk$studyYear? studyYear,
    List<Query$getFullPersonData$personsByPk$tags>? tags,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$church<TRes> get church;
  CopyWith$Query$getFullPersonData$personsByPk$college<TRes> get college;
  CopyWith$Query$getFullPersonData$personsByPk$family<TRes> get family;
  CopyWith$Query$getFullPersonData$personsByPk$father<TRes> get father;
  TRes groups(
      Iterable<Query$getFullPersonData$personsByPk$groups> Function(
              Iterable<
                  CopyWith$Query$getFullPersonData$personsByPk$groups<
                      Query$getFullPersonData$personsByPk$groups>>)
          _fn);
  CopyWith$Query$getFullPersonData$personsByPk$job<TRes> get job;
  CopyWith$Query$getFullPersonData$personsByPk$personType<TRes> get personType;
  CopyWith$Query$getFullPersonData$personsByPk$qualification<TRes>
      get qualification;
  CopyWith$Query$getFullPersonData$personsByPk$school<TRes> get school;
  TRes services(
      Iterable<Query$getFullPersonData$personsByPk$services> Function(
              Iterable<
                  CopyWith$Query$getFullPersonData$personsByPk$services<
                      Query$getFullPersonData$personsByPk$services>>)
          _fn);
  CopyWith$Query$getFullPersonData$personsByPk$shammasLevel<TRes>
      get shammasLevel;
  CopyWith$Query$getFullPersonData$personsByPk$state<TRes> get state;
  CopyWith$Query$getFullPersonData$personsByPk$studyYear<TRes> get studyYear;
  TRes tags(
      Iterable<Query$getFullPersonData$personsByPk$tags> Function(
              Iterable<
                  CopyWith$Query$getFullPersonData$personsByPk$tags<
                      Query$getFullPersonData$personsByPk$tags>>)
          _fn);
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk _instance;

  final TRes Function(Query$getFullPersonData$personsByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? address = _undefined,
    Object? birthdate = _undefined,
    Object? church = _undefined,
    Object? college = _undefined,
    Object? family = _undefined,
    Object? father = _undefined,
    Object? gender = _undefined,
    Object? geolocation = _undefined,
    Object? groups = _undefined,
    Object? isServant = _undefined,
    Object? isShammas = _undefined,
    Object? isStudent = _undefined,
    Object? job = _undefined,
    Object? jobDescription = _undefined,
    Object? mainPhone = _undefined,
    Object? notes = _undefined,
    Object? otherPhones = _undefined,
    Object? personType = _undefined,
    Object? qualification = _undefined,
    Object? school = _undefined,
    Object? services = _undefined,
    Object? shammasLevel = _undefined,
    Object? state = _undefined,
    Object? studyYear = _undefined,
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        birthdate: birthdate == _undefined
            ? _instance.birthdate
            : (birthdate as DateTime?),
        church: church == _undefined
            ? _instance.church
            : (church as Query$getFullPersonData$personsByPk$church?),
        college: college == _undefined
            ? _instance.college
            : (college as Query$getFullPersonData$personsByPk$college?),
        family: family == _undefined
            ? _instance.family
            : (family as Query$getFullPersonData$personsByPk$family?),
        father: father == _undefined
            ? _instance.father
            : (father as Query$getFullPersonData$personsByPk$father?),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as bool),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Query$getFullPersonData$personsByPk$groups>),
        isServant: isServant == _undefined || isServant == null
            ? _instance.isServant
            : (isServant as bool),
        isShammas: isShammas == _undefined || isShammas == null
            ? _instance.isShammas
            : (isShammas as bool),
        isStudent: isStudent == _undefined
            ? _instance.isStudent
            : (isStudent as bool?),
        job: job == _undefined
            ? _instance.job
            : (job as Query$getFullPersonData$personsByPk$job?),
        jobDescription: jobDescription == _undefined
            ? _instance.jobDescription
            : (jobDescription as String?),
        mainPhone: mainPhone == _undefined
            ? _instance.mainPhone
            : (mainPhone as String?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        otherPhones: otherPhones == _undefined || otherPhones == null
            ? _instance.otherPhones
            : (otherPhones as Json),
        personType: personType == _undefined
            ? _instance.personType
            : (personType as Query$getFullPersonData$personsByPk$personType?),
        qualification: qualification == _undefined
            ? _instance.qualification
            : (qualification
                as Query$getFullPersonData$personsByPk$qualification?),
        school: school == _undefined
            ? _instance.school
            : (school as Query$getFullPersonData$personsByPk$school?),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Query$getFullPersonData$personsByPk$services>),
        shammasLevel: shammasLevel == _undefined
            ? _instance.shammasLevel
            : (shammasLevel
                as Query$getFullPersonData$personsByPk$shammasLevel?),
        state: state == _undefined
            ? _instance.state
            : (state as Query$getFullPersonData$personsByPk$state?),
        studyYear: studyYear == _undefined
            ? _instance.studyYear
            : (studyYear as Query$getFullPersonData$personsByPk$studyYear?),
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Query$getFullPersonData$personsByPk$tags>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith$Query$getFullPersonData$personsByPk$church.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$church(
            local$church, (e) => call(church: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$college<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith$Query$getFullPersonData$personsByPk$college.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$college(
            local$college, (e) => call(college: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Query$getFullPersonData$personsByPk$family.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$family(
            local$family, (e) => call(family: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$father<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith$Query$getFullPersonData$personsByPk$father.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$father(
            local$father, (e) => call(father: e));
  }

  TRes groups(
          Iterable<Query$getFullPersonData$personsByPk$groups> Function(
                  Iterable<
                      CopyWith$Query$getFullPersonData$personsByPk$groups<
                          Query$getFullPersonData$personsByPk$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith$Query$getFullPersonData$personsByPk$groups(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$getFullPersonData$personsByPk$job<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith$Query$getFullPersonData$personsByPk$job.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$job(
            local$job, (e) => call(job: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$personType<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith$Query$getFullPersonData$personsByPk$personType.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$personType(
            local$personType, (e) => call(personType: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$qualification<TRes>
      get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith$Query$getFullPersonData$personsByPk$qualification.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$qualification(
            local$qualification, (e) => call(qualification: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$school<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith$Query$getFullPersonData$personsByPk$school.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$school(
            local$school, (e) => call(school: e));
  }

  TRes services(
          Iterable<Query$getFullPersonData$personsByPk$services> Function(
                  Iterable<
                      CopyWith$Query$getFullPersonData$personsByPk$services<
                          Query$getFullPersonData$personsByPk$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services
              .map((e) => CopyWith$Query$getFullPersonData$personsByPk$services(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$getFullPersonData$personsByPk$shammasLevel<TRes>
      get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith$Query$getFullPersonData$personsByPk$shammasLevel.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$shammasLevel(
            local$shammasLevel, (e) => call(shammasLevel: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$state<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith$Query$getFullPersonData$personsByPk$state.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$state(
            local$state, (e) => call(state: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith$Query$getFullPersonData$personsByPk$studyYear.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$studyYear(
            local$studyYear, (e) => call(studyYear: e));
  }

  TRes tags(
          Iterable<Query$getFullPersonData$personsByPk$tags> Function(
                  Iterable<
                      CopyWith$Query$getFullPersonData$personsByPk$tags<
                          Query$getFullPersonData$personsByPk$tags>>)
              _fn) =>
      call(
          tags: _fn(_instance.tags
              .map((e) => CopyWith$Query$getFullPersonData$personsByPk$tags(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? address,
    DateTime? birthdate,
    Query$getFullPersonData$personsByPk$church? church,
    Query$getFullPersonData$personsByPk$college? college,
    Query$getFullPersonData$personsByPk$family? family,
    Query$getFullPersonData$personsByPk$father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Query$getFullPersonData$personsByPk$groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Query$getFullPersonData$personsByPk$job? job,
    String? jobDescription,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Query$getFullPersonData$personsByPk$personType? personType,
    Query$getFullPersonData$personsByPk$qualification? qualification,
    Query$getFullPersonData$personsByPk$school? school,
    List<Query$getFullPersonData$personsByPk$services>? services,
    Query$getFullPersonData$personsByPk$shammasLevel? shammasLevel,
    Query$getFullPersonData$personsByPk$state? state,
    Query$getFullPersonData$personsByPk$studyYear? studyYear,
    List<Query$getFullPersonData$personsByPk$tags>? tags,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$church<TRes> get church =>
      CopyWith$Query$getFullPersonData$personsByPk$church.stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$college<TRes> get college =>
      CopyWith$Query$getFullPersonData$personsByPk$college.stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$family<TRes> get family =>
      CopyWith$Query$getFullPersonData$personsByPk$family.stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$father<TRes> get father =>
      CopyWith$Query$getFullPersonData$personsByPk$father.stub(_res);
  groups(_fn) => _res;
  CopyWith$Query$getFullPersonData$personsByPk$job<TRes> get job =>
      CopyWith$Query$getFullPersonData$personsByPk$job.stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$personType<TRes>
      get personType =>
          CopyWith$Query$getFullPersonData$personsByPk$personType.stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$qualification<TRes>
      get qualification =>
          CopyWith$Query$getFullPersonData$personsByPk$qualification.stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$school<TRes> get school =>
      CopyWith$Query$getFullPersonData$personsByPk$school.stub(_res);
  services(_fn) => _res;
  CopyWith$Query$getFullPersonData$personsByPk$shammasLevel<TRes>
      get shammasLevel =>
          CopyWith$Query$getFullPersonData$personsByPk$shammasLevel.stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$state<TRes> get state =>
      CopyWith$Query$getFullPersonData$personsByPk$state.stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$studyYear<TRes> get studyYear =>
      CopyWith$Query$getFullPersonData$personsByPk$studyYear.stub(_res);
  tags(_fn) => _res;
}

class Query$getFullPersonData$personsByPk$church {
  Query$getFullPersonData$personsByPk$church({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$church(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$church) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getFullPersonData$personsByPk$church
    on Query$getFullPersonData$personsByPk$church {
  CopyWith$Query$getFullPersonData$personsByPk$church<
          Query$getFullPersonData$personsByPk$church>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$church(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$church<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$church(
    Query$getFullPersonData$personsByPk$church instance,
    TRes Function(Query$getFullPersonData$personsByPk$church) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$church;

  factory CopyWith$Query$getFullPersonData$personsByPk$church.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$church<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$church<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$church(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$church _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$church) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$church<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$church<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$church(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$college {
  Query$getFullPersonData$personsByPk$college({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$college.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$college(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$college) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getFullPersonData$personsByPk$college
    on Query$getFullPersonData$personsByPk$college {
  CopyWith$Query$getFullPersonData$personsByPk$college<
          Query$getFullPersonData$personsByPk$college>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$college(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$college<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$college(
    Query$getFullPersonData$personsByPk$college instance,
    TRes Function(Query$getFullPersonData$personsByPk$college) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$college;

  factory CopyWith$Query$getFullPersonData$personsByPk$college.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$college;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$college<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$college<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$college(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$college _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$college) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$college(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$college<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$college<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$college(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$family {
  Query$getFullPersonData$personsByPk$family({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$family.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$family(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$family) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$family
    on Query$getFullPersonData$personsByPk$family {
  CopyWith$Query$getFullPersonData$personsByPk$family<
          Query$getFullPersonData$personsByPk$family>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$family<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$family(
    Query$getFullPersonData$personsByPk$family instance,
    TRes Function(Query$getFullPersonData$personsByPk$family) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$family;

  factory CopyWith$Query$getFullPersonData$personsByPk$family.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$family;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$family<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$family<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$family(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$family _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$family) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$family(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$family<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$family<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$family(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$father {
  Query$getFullPersonData$personsByPk$father({
    required this.id,
    required this.name,
    this.church,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$father.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$church = json['church'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$father(
      id: stringToUuid(l$id),
      name: (l$name as String),
      church: l$church == null
          ? null
          : Query$getFullPersonData$personsByPk$father$church.fromJson(
              (l$church as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Query$getFullPersonData$personsByPk$father$church? church;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$church = church;
    _resultData['church'] = l$church?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$church = church;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$church,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$father) ||
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
    final l$church = church;
    final lOther$church = other.church;
    if (l$church != lOther$church) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$father
    on Query$getFullPersonData$personsByPk$father {
  CopyWith$Query$getFullPersonData$personsByPk$father<
          Query$getFullPersonData$personsByPk$father>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$father(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$father<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$father(
    Query$getFullPersonData$personsByPk$father instance,
    TRes Function(Query$getFullPersonData$personsByPk$father) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$father;

  factory CopyWith$Query$getFullPersonData$personsByPk$father.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$father;

  TRes call({
    UuidValue? id,
    String? name,
    Query$getFullPersonData$personsByPk$father$church? church,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$father$church<TRes> get church;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$father<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$father<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$father(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$father _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$father) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? church = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$father(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        church: church == _undefined
            ? _instance.church
            : (church as Query$getFullPersonData$personsByPk$father$church?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$father$church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith$Query$getFullPersonData$personsByPk$father$church.stub(
            _then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$father$church(
            local$church, (e) => call(church: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$father<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$father<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$father(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Query$getFullPersonData$personsByPk$father$church? church,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$father$church<TRes> get church =>
      CopyWith$Query$getFullPersonData$personsByPk$father$church.stub(_res);
}

class Query$getFullPersonData$personsByPk$father$church {
  Query$getFullPersonData$personsByPk$father$church({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$father$church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$father$church(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$father$church) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getFullPersonData$personsByPk$father$church
    on Query$getFullPersonData$personsByPk$father$church {
  CopyWith$Query$getFullPersonData$personsByPk$father$church<
          Query$getFullPersonData$personsByPk$father$church>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$father$church(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$father$church<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$father$church(
    Query$getFullPersonData$personsByPk$father$church instance,
    TRes Function(Query$getFullPersonData$personsByPk$father$church) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$father$church;

  factory CopyWith$Query$getFullPersonData$personsByPk$father$church.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$father$church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$father$church<TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$father$church<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$father$church(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$father$church _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$father$church) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$father$church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$father$church<TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$father$church<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$father$church(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$groups {
  Query$getFullPersonData$personsByPk$groups({
    required this.group,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$groups(
      group: Query$getFullPersonData$personsByPk$groups$group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFullPersonData$personsByPk$groups$group group;

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
    if (!(other is Query$getFullPersonData$personsByPk$groups) ||
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$groups
    on Query$getFullPersonData$personsByPk$groups {
  CopyWith$Query$getFullPersonData$personsByPk$groups<
          Query$getFullPersonData$personsByPk$groups>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$groups<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$groups(
    Query$getFullPersonData$personsByPk$groups instance,
    TRes Function(Query$getFullPersonData$personsByPk$groups) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$groups;

  factory CopyWith$Query$getFullPersonData$personsByPk$groups.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups;

  TRes call({
    Query$getFullPersonData$personsByPk$groups$group? group,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$groups$group<TRes> get group;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$groups<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$groups<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$groups(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$groups _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$groups) _then;

  static const _undefined = {};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Query$getFullPersonData$personsByPk$groups$group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$groups$group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith$Query$getFullPersonData$personsByPk$groups$group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$groups<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups(this._res);

  TRes _res;

  call({
    Query$getFullPersonData$personsByPk$groups$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$groups$group<TRes> get group =>
      CopyWith$Query$getFullPersonData$personsByPk$groups$group.stub(_res);
}

class Query$getFullPersonData$personsByPk$groups$group {
  Query$getFullPersonData$personsByPk$groups$group({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.service,
    required this.attendanceHistoryAggregate,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$groups$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$service = json['service'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$groups$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      service:
          Query$getFullPersonData$personsByPk$groups$group$service.fromJson(
              (l$service as Map<String, dynamic>)),
      attendanceHistoryAggregate:
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Query$getFullPersonData$personsByPk$groups$group$service service;

  final Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$service = service;
    _resultData['service'] = l$service.toJson();
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$service,
      l$attendanceHistoryAggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$groups$group) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$groups$group
    on Query$getFullPersonData$personsByPk$groups$group {
  CopyWith$Query$getFullPersonData$personsByPk$groups$group<
          Query$getFullPersonData$personsByPk$groups$group>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$groups$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$groups$group<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group(
    Query$getFullPersonData$personsByPk$groups$group instance,
    TRes Function(Query$getFullPersonData$personsByPk$groups$group) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group;

  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getFullPersonData$personsByPk$groups$group$service? service,
    Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$service<TRes>
      get service;
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$groups$group<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$groups$group _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$groups$group) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$groups$group(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Query$getFullPersonData$personsByPk$groups$group$service),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Query$getFullPersonData$personsByPk$groups$group$service(
        local$service, (e) => call(service: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$groups$group<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getFullPersonData$personsByPk$groups$group$service? service,
    Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$service<TRes>
      get service =>
          CopyWith$Query$getFullPersonData$personsByPk$groups$group$service
              .stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate
              .stub(_res);
}

class Query$getFullPersonData$personsByPk$groups$group$service {
  Query$getFullPersonData$personsByPk$groups$group$service({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$groups$group$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$groups$group$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$groups$group$service) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$groups$group$service
    on Query$getFullPersonData$personsByPk$groups$group$service {
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$service<
          Query$getFullPersonData$personsByPk$groups$group$service>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$groups$group$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$groups$group$service<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group$service(
    Query$getFullPersonData$personsByPk$groups$group$service instance,
    TRes Function(Query$getFullPersonData$personsByPk$groups$group$service)
        then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$service;

  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$service<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$groups$group$service<
            TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$service(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$groups$group$service _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$groups$group$service)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$groups$group$service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$service<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$groups$group$service<
            TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate {
  Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate
    on Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate {
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate<
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate(
    Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate;

  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate;

  TRes call({
    Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate({
    this.max,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
    on Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  TRes call({
    Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
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
            is Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
    on Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$job {
  Query$getFullPersonData$personsByPk$job({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$job.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$job(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$job) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getFullPersonData$personsByPk$job
    on Query$getFullPersonData$personsByPk$job {
  CopyWith$Query$getFullPersonData$personsByPk$job<
          Query$getFullPersonData$personsByPk$job>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$job(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$job<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$job(
    Query$getFullPersonData$personsByPk$job instance,
    TRes Function(Query$getFullPersonData$personsByPk$job) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$job;

  factory CopyWith$Query$getFullPersonData$personsByPk$job.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$job;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$job<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$job<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$job(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$job _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$job) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$job(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$job<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$job<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$job(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$personType {
  Query$getFullPersonData$personsByPk$personType({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$personType.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$personType(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$personType) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getFullPersonData$personsByPk$personType
    on Query$getFullPersonData$personsByPk$personType {
  CopyWith$Query$getFullPersonData$personsByPk$personType<
          Query$getFullPersonData$personsByPk$personType>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$personType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$personType<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$personType(
    Query$getFullPersonData$personsByPk$personType instance,
    TRes Function(Query$getFullPersonData$personsByPk$personType) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$personType;

  factory CopyWith$Query$getFullPersonData$personsByPk$personType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$personType;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$personType<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$personType<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$personType(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$personType _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$personType) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$personType(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$personType<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$personType<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$personType(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$qualification {
  Query$getFullPersonData$personsByPk$qualification({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$qualification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$qualification(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$qualification) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getFullPersonData$personsByPk$qualification
    on Query$getFullPersonData$personsByPk$qualification {
  CopyWith$Query$getFullPersonData$personsByPk$qualification<
          Query$getFullPersonData$personsByPk$qualification>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$qualification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$qualification<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$qualification(
    Query$getFullPersonData$personsByPk$qualification instance,
    TRes Function(Query$getFullPersonData$personsByPk$qualification) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$qualification;

  factory CopyWith$Query$getFullPersonData$personsByPk$qualification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$qualification;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$qualification<TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$qualification<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$qualification(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$qualification _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$qualification) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$qualification(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$qualification<TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$qualification<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$qualification(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$school {
  Query$getFullPersonData$personsByPk$school({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$school.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$school(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$school) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getFullPersonData$personsByPk$school
    on Query$getFullPersonData$personsByPk$school {
  CopyWith$Query$getFullPersonData$personsByPk$school<
          Query$getFullPersonData$personsByPk$school>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$school(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$school<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$school(
    Query$getFullPersonData$personsByPk$school instance,
    TRes Function(Query$getFullPersonData$personsByPk$school) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$school;

  factory CopyWith$Query$getFullPersonData$personsByPk$school.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$school;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$school<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$school<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$school(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$school _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$school) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$school(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$school<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$school<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$school(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$services {
  Query$getFullPersonData$personsByPk$services({
    required this.service,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$services(
      service: Query$getFullPersonData$personsByPk$services$service.fromJson(
          (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFullPersonData$personsByPk$services$service service;

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
    if (!(other is Query$getFullPersonData$personsByPk$services) ||
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$services
    on Query$getFullPersonData$personsByPk$services {
  CopyWith$Query$getFullPersonData$personsByPk$services<
          Query$getFullPersonData$personsByPk$services>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$services<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$services(
    Query$getFullPersonData$personsByPk$services instance,
    TRes Function(Query$getFullPersonData$personsByPk$services) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$services;

  factory CopyWith$Query$getFullPersonData$personsByPk$services.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services;

  TRes call({
    Query$getFullPersonData$personsByPk$services$service? service,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$services$service<TRes>
      get service;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$services<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$services<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$services(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$services _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$services) _then;

  static const _undefined = {};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service as Query$getFullPersonData$personsByPk$services$service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$services$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Query$getFullPersonData$personsByPk$services$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$services<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services(this._res);

  TRes _res;

  call({
    Query$getFullPersonData$personsByPk$services$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$services$service<TRes>
      get service =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service.stub(
              _res);
}

class Query$getFullPersonData$personsByPk$services$service {
  Query$getFullPersonData$personsByPk$services$service({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.fromStudyYear,
    this.toStudyYear,
    required this.attendanceHistoryAggregate,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$services$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$fromStudyYear = json['fromStudyYear'];
    final l$toStudyYear = json['toStudyYear'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$services$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      fromStudyYear: l$fromStudyYear == null
          ? null
          : Query$getFullPersonData$personsByPk$services$service$fromStudyYear
              .fromJson((l$fromStudyYear as Map<String, dynamic>)),
      toStudyYear: l$toStudyYear == null
          ? null
          : Query$getFullPersonData$personsByPk$services$service$toStudyYear
              .fromJson((l$toStudyYear as Map<String, dynamic>)),
      attendanceHistoryAggregate:
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Query$getFullPersonData$personsByPk$services$service$fromStudyYear?
      fromStudyYear;

  final Query$getFullPersonData$personsByPk$services$service$toStudyYear?
      toStudyYear;

  final Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate
      attendanceHistoryAggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$fromStudyYear = fromStudyYear;
    _resultData['fromStudyYear'] = l$fromStudyYear?.toJson();
    final l$toStudyYear = toStudyYear;
    _resultData['toStudyYear'] = l$toStudyYear?.toJson();
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    _resultData['attendanceHistoryAggregate'] =
        l$attendanceHistoryAggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$fromStudyYear = fromStudyYear;
    final l$toStudyYear = toStudyYear;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$fromStudyYear,
      l$toStudyYear,
      l$attendanceHistoryAggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$services$service) ||
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$services$service
    on Query$getFullPersonData$personsByPk$services$service {
  CopyWith$Query$getFullPersonData$personsByPk$services$service<
          Query$getFullPersonData$personsByPk$services$service>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$services$service<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$services$service(
    Query$getFullPersonData$personsByPk$services$service instance,
    TRes Function(Query$getFullPersonData$personsByPk$services$service) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service;

  factory CopyWith$Query$getFullPersonData$personsByPk$services$service.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getFullPersonData$personsByPk$services$service$fromStudyYear?
        fromStudyYear,
    Query$getFullPersonData$personsByPk$services$service$toStudyYear?
        toStudyYear,
    Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear<
      TRes> get fromStudyYear;
  CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear<
      TRes> get toStudyYear;
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service<TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$services$service _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$services$service)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? fromStudyYear = _undefined,
    Object? toStudyYear = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$services$service(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        fromStudyYear: fromStudyYear == _undefined
            ? _instance.fromStudyYear
            : (fromStudyYear
                as Query$getFullPersonData$personsByPk$services$service$fromStudyYear?),
        toStudyYear: toStudyYear == _undefined
            ? _instance.toStudyYear
            : (toStudyYear
                as Query$getFullPersonData$personsByPk$services$service$toStudyYear?),
        attendanceHistoryAggregate: attendanceHistoryAggregate == _undefined ||
                attendanceHistoryAggregate == null
            ? _instance.attendanceHistoryAggregate
            : (attendanceHistoryAggregate
                as Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear<
      TRes> get fromStudyYear {
    final local$fromStudyYear = _instance.fromStudyYear;
    return local$fromStudyYear == null
        ? CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear
            .stub(_then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear(
            local$fromStudyYear, (e) => call(fromStudyYear: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear<
      TRes> get toStudyYear {
    final local$toStudyYear = _instance.toStudyYear;
    return local$toStudyYear == null
        ? CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear
            .stub(_then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear(
            local$toStudyYear, (e) => call(toStudyYear: e));
  }

  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Query$getFullPersonData$personsByPk$services$service$fromStudyYear?
        fromStudyYear,
    Query$getFullPersonData$personsByPk$services$service$toStudyYear?
        toStudyYear,
    Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear<
          TRes>
      get fromStudyYear =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear
              .stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear<
          TRes>
      get toStudyYear =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear
              .stub(_res);
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate
              .stub(_res);
}

class Query$getFullPersonData$personsByPk$services$service$fromStudyYear {
  Query$getFullPersonData$personsByPk$services$service$fromStudyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$services$service$fromStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$services$service$fromStudyYear(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getFullPersonData$personsByPk$services$service$fromStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$services$service$fromStudyYear
    on Query$getFullPersonData$personsByPk$services$service$fromStudyYear {
  CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear<
          Query$getFullPersonData$personsByPk$services$service$fromStudyYear>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear(
    Query$getFullPersonData$personsByPk$services$service$fromStudyYear instance,
    TRes Function(
            Query$getFullPersonData$personsByPk$services$service$fromStudyYear)
        then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$fromStudyYear;

  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$fromStudyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$fromStudyYear<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear<
            TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$fromStudyYear(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$services$service$fromStudyYear
      _instance;

  final TRes Function(
      Query$getFullPersonData$personsByPk$services$service$fromStudyYear) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$services$service$fromStudyYear(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$fromStudyYear<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$fromStudyYear<
            TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$fromStudyYear(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$services$service$toStudyYear {
  Query$getFullPersonData$personsByPk$services$service$toStudyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$services$service$toStudyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$services$service$toStudyYear(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getFullPersonData$personsByPk$services$service$toStudyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$services$service$toStudyYear
    on Query$getFullPersonData$personsByPk$services$service$toStudyYear {
  CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear<
          Query$getFullPersonData$personsByPk$services$service$toStudyYear>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear(
    Query$getFullPersonData$personsByPk$services$service$toStudyYear instance,
    TRes Function(
            Query$getFullPersonData$personsByPk$services$service$toStudyYear)
        then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$toStudyYear;

  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$toStudyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$toStudyYear<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear<
            TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$toStudyYear(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$services$service$toStudyYear
      _instance;

  final TRes Function(
      Query$getFullPersonData$personsByPk$services$service$toStudyYear) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$services$service$toStudyYear(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$toStudyYear<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$toStudyYear<
            TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$toStudyYear(
      this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate {
  Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate
    on Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate {
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate<
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate(
    Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate
        instance,
    TRes Function(
            Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate;

  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate;

  TRes call({
    Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate({
    this.max,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
      max;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$max = max;
    _resultData['max'] = l$max?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$max = max;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
    on Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  TRes call({
    Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
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
            is Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
    on Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$shammasLevel {
  Query$getFullPersonData$personsByPk$shammasLevel({
    required this.id,
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$shammasLevel.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$shammasLevel(
      id: stringToUuid(l$id),
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$shammasLevel) ||
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
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$shammasLevel
    on Query$getFullPersonData$personsByPk$shammasLevel {
  CopyWith$Query$getFullPersonData$personsByPk$shammasLevel<
          Query$getFullPersonData$personsByPk$shammasLevel>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$shammasLevel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$shammasLevel<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$shammasLevel(
    Query$getFullPersonData$personsByPk$shammasLevel instance,
    TRes Function(Query$getFullPersonData$personsByPk$shammasLevel) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$shammasLevel;

  factory CopyWith$Query$getFullPersonData$personsByPk$shammasLevel.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$shammasLevel;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$shammasLevel<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$shammasLevel<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$shammasLevel(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$shammasLevel _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$shammasLevel) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$shammasLevel(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$shammasLevel<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$shammasLevel<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$shammasLevel(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$state {
  Query$getFullPersonData$personsByPk$state({
    required this.id,
    required this.color,
    required this.name,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$state.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$state(
      id: stringToUuid(l$id),
      color: (l$color as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final int color;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$color = color;
    _resultData['color'] = l$color;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$state) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$state
    on Query$getFullPersonData$personsByPk$state {
  CopyWith$Query$getFullPersonData$personsByPk$state<
          Query$getFullPersonData$personsByPk$state>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$state(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$state<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$state(
    Query$getFullPersonData$personsByPk$state instance,
    TRes Function(Query$getFullPersonData$personsByPk$state) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$state;

  factory CopyWith$Query$getFullPersonData$personsByPk$state.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$state;

  TRes call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$state<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$state<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$state(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$state _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$state) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$state(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$state<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$state<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$state(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$studyYear {
  Query$getFullPersonData$personsByPk$studyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$studyYear(
      name: (l$name as String),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$studyYear) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$studyYear
    on Query$getFullPersonData$personsByPk$studyYear {
  CopyWith$Query$getFullPersonData$personsByPk$studyYear<
          Query$getFullPersonData$personsByPk$studyYear>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$studyYear<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$studyYear(
    Query$getFullPersonData$personsByPk$studyYear instance,
    TRes Function(Query$getFullPersonData$personsByPk$studyYear) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$studyYear;

  factory CopyWith$Query$getFullPersonData$personsByPk$studyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$studyYear<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$studyYear<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$studyYear(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$studyYear _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$studyYear) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$studyYear(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$studyYear<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$studyYear<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$studyYear(this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Query$getFullPersonData$personsByPk$tags {
  Query$getFullPersonData$personsByPk$tags({
    required this.tag,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$tags.fromJson(
      Map<String, dynamic> json) {
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$tags(
      tag: Query$getFullPersonData$personsByPk$tags$tag.fromJson(
          (l$tag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFullPersonData$personsByPk$tags$tag tag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tag = tag;
    _resultData['tag'] = l$tag.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tag = tag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (l$tag != lOther$tag) {
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

extension UtilityExtension$Query$getFullPersonData$personsByPk$tags
    on Query$getFullPersonData$personsByPk$tags {
  CopyWith$Query$getFullPersonData$personsByPk$tags<
          Query$getFullPersonData$personsByPk$tags>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$tags<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$tags(
    Query$getFullPersonData$personsByPk$tags instance,
    TRes Function(Query$getFullPersonData$personsByPk$tags) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$tags;

  factory CopyWith$Query$getFullPersonData$personsByPk$tags.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$tags;

  TRes call({
    Query$getFullPersonData$personsByPk$tags$tag? tag,
    String? $__typename,
  });
  CopyWith$Query$getFullPersonData$personsByPk$tags$tag<TRes> get tag;
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$tags<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$tags<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$tags(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$tags _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$tags) _then;

  static const _undefined = {};

  TRes call({
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$tags(
        tag: tag == _undefined || tag == null
            ? _instance.tag
            : (tag as Query$getFullPersonData$personsByPk$tags$tag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFullPersonData$personsByPk$tags$tag<TRes> get tag {
    final local$tag = _instance.tag;
    return CopyWith$Query$getFullPersonData$personsByPk$tags$tag(
        local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$tags<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$tags<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$tags(this._res);

  TRes _res;

  call({
    Query$getFullPersonData$personsByPk$tags$tag? tag,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFullPersonData$personsByPk$tags$tag<TRes> get tag =>
      CopyWith$Query$getFullPersonData$personsByPk$tags$tag.stub(_res);
}

class Query$getFullPersonData$personsByPk$tags$tag {
  Query$getFullPersonData$personsByPk$tags$tag({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
  });

  factory Query$getFullPersonData$personsByPk$tags$tag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Query$getFullPersonData$personsByPk$tags$tag(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getFullPersonData$personsByPk$tags$tag) ||
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
    return true;
  }
}

extension UtilityExtension$Query$getFullPersonData$personsByPk$tags$tag
    on Query$getFullPersonData$personsByPk$tags$tag {
  CopyWith$Query$getFullPersonData$personsByPk$tags$tag<
          Query$getFullPersonData$personsByPk$tags$tag>
      get copyWith => CopyWith$Query$getFullPersonData$personsByPk$tags$tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFullPersonData$personsByPk$tags$tag<TRes> {
  factory CopyWith$Query$getFullPersonData$personsByPk$tags$tag(
    Query$getFullPersonData$personsByPk$tags$tag instance,
    TRes Function(Query$getFullPersonData$personsByPk$tags$tag) then,
  ) = _CopyWithImpl$Query$getFullPersonData$personsByPk$tags$tag;

  factory CopyWith$Query$getFullPersonData$personsByPk$tags$tag.stub(TRes res) =
      _CopyWithStubImpl$Query$getFullPersonData$personsByPk$tags$tag;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getFullPersonData$personsByPk$tags$tag<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$tags$tag<TRes> {
  _CopyWithImpl$Query$getFullPersonData$personsByPk$tags$tag(
    this._instance,
    this._then,
  );

  final Query$getFullPersonData$personsByPk$tags$tag _instance;

  final TRes Function(Query$getFullPersonData$personsByPk$tags$tag) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFullPersonData$personsByPk$tags$tag(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getFullPersonData$personsByPk$tags$tag<TRes>
    implements CopyWith$Query$getFullPersonData$personsByPk$tags$tag<TRes> {
  _CopyWithStubImpl$Query$getFullPersonData$personsByPk$tags$tag(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}
