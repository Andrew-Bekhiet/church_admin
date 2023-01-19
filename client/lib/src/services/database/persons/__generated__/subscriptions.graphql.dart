import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getPersonsStream {
  factory Variables$Subscription$getPersonsStream({
    List<Input$PersonsBoolExp>? where,
    List<Input$PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables$Subscription$getPersonsStream._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$getPersonsStream._(this._$data);

  factory Variables$Subscription$getPersonsStream.fromJson(
      Map<String, dynamic> data) {
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
    return Variables$Subscription$getPersonsStream._(result$data);
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

  CopyWith$Variables$Subscription$getPersonsStream<
          Variables$Subscription$getPersonsStream>
      get copyWith => CopyWith$Variables$Subscription$getPersonsStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getPersonsStream) ||
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

abstract class CopyWith$Variables$Subscription$getPersonsStream<TRes> {
  factory CopyWith$Variables$Subscription$getPersonsStream(
    Variables$Subscription$getPersonsStream instance,
    TRes Function(Variables$Subscription$getPersonsStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getPersonsStream;

  factory CopyWith$Variables$Subscription$getPersonsStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getPersonsStream;

  TRes call({
    List<Input$PersonsBoolExp>? where,
    List<Input$PersonsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$getPersonsStream<TRes>
    implements CopyWith$Variables$Subscription$getPersonsStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getPersonsStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getPersonsStream _instance;

  final TRes Function(Variables$Subscription$getPersonsStream) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$getPersonsStream._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$PersonsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$PersonsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getPersonsStream<TRes>
    implements CopyWith$Variables$Subscription$getPersonsStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getPersonsStream(this._res);

  TRes _res;

  call({
    List<Input$PersonsBoolExp>? where,
    List<Input$PersonsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription$getPersonsStream {
  Subscription$getPersonsStream({required this.persons});

  factory Subscription$getPersonsStream.fromJson(Map<String, dynamic> json) {
    final l$persons = json['persons'];
    return Subscription$getPersonsStream(
        persons: (l$persons as List<dynamic>)
            .map((e) => Subscription$getPersonsStream$persons.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getPersonsStream$persons> persons;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$persons = persons;
    _resultData['persons'] = l$persons.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$persons = persons;
    return Object.hashAll([Object.hashAll(l$persons.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getPersonsStream) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Subscription$getPersonsStream
    on Subscription$getPersonsStream {
  CopyWith$Subscription$getPersonsStream<Subscription$getPersonsStream>
      get copyWith => CopyWith$Subscription$getPersonsStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getPersonsStream<TRes> {
  factory CopyWith$Subscription$getPersonsStream(
    Subscription$getPersonsStream instance,
    TRes Function(Subscription$getPersonsStream) then,
  ) = _CopyWithImpl$Subscription$getPersonsStream;

  factory CopyWith$Subscription$getPersonsStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getPersonsStream;

  TRes call({List<Subscription$getPersonsStream$persons>? persons});
  TRes persons(
      Iterable<Subscription$getPersonsStream$persons> Function(
              Iterable<
                  CopyWith$Subscription$getPersonsStream$persons<
                      Subscription$getPersonsStream$persons>>)
          _fn);
}

class _CopyWithImpl$Subscription$getPersonsStream<TRes>
    implements CopyWith$Subscription$getPersonsStream<TRes> {
  _CopyWithImpl$Subscription$getPersonsStream(
    this._instance,
    this._then,
  );

  final Subscription$getPersonsStream _instance;

  final TRes Function(Subscription$getPersonsStream) _then;

  static const _undefined = {};

  TRes call({Object? persons = _undefined}) =>
      _then(Subscription$getPersonsStream(
          persons: persons == _undefined || persons == null
              ? _instance.persons
              : (persons as List<Subscription$getPersonsStream$persons>)));
  TRes persons(
          Iterable<Subscription$getPersonsStream$persons> Function(
                  Iterable<
                      CopyWith$Subscription$getPersonsStream$persons<
                          Subscription$getPersonsStream$persons>>)
              _fn) =>
      call(
          persons: _fn(_instance.persons
              .map((e) => CopyWith$Subscription$getPersonsStream$persons(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getPersonsStream<TRes>
    implements CopyWith$Subscription$getPersonsStream<TRes> {
  _CopyWithStubImpl$Subscription$getPersonsStream(this._res);

  TRes _res;

  call({List<Subscription$getPersonsStream$persons>? persons}) => _res;
  persons(_fn) => _res;
}

const documentNodeSubscriptiongetPersonsStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getPersonsStream'),
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
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
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
      )
    ]),
  ),
]);

class Subscription$getPersonsStream$persons {
  Subscription$getPersonsStream$persons({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$getPersonsStream$persons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$getPersonsStream$persons(
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
    if (!(other is Subscription$getPersonsStream$persons) ||
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

extension UtilityExtension$Subscription$getPersonsStream$persons
    on Subscription$getPersonsStream$persons {
  CopyWith$Subscription$getPersonsStream$persons<
          Subscription$getPersonsStream$persons>
      get copyWith => CopyWith$Subscription$getPersonsStream$persons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getPersonsStream$persons<TRes> {
  factory CopyWith$Subscription$getPersonsStream$persons(
    Subscription$getPersonsStream$persons instance,
    TRes Function(Subscription$getPersonsStream$persons) then,
  ) = _CopyWithImpl$Subscription$getPersonsStream$persons;

  factory CopyWith$Subscription$getPersonsStream$persons.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getPersonsStream$persons;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getPersonsStream$persons<TRes>
    implements CopyWith$Subscription$getPersonsStream$persons<TRes> {
  _CopyWithImpl$Subscription$getPersonsStream$persons(
    this._instance,
    this._then,
  );

  final Subscription$getPersonsStream$persons _instance;

  final TRes Function(Subscription$getPersonsStream$persons) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getPersonsStream$persons(
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

class _CopyWithStubImpl$Subscription$getPersonsStream$persons<TRes>
    implements CopyWith$Subscription$getPersonsStream$persons<TRes> {
  _CopyWithStubImpl$Subscription$getPersonsStream$persons(this._res);

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

class Variables$Subscription$watchPerson {
  factory Variables$Subscription$watchPerson({required UuidValue id}) =>
      Variables$Subscription$watchPerson._({
        r'id': id,
      });

  Variables$Subscription$watchPerson._(this._$data);

  factory Variables$Subscription$watchPerson.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Subscription$watchPerson._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Subscription$watchPerson<
          Variables$Subscription$watchPerson>
      get copyWith => CopyWith$Variables$Subscription$watchPerson(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchPerson) ||
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

abstract class CopyWith$Variables$Subscription$watchPerson<TRes> {
  factory CopyWith$Variables$Subscription$watchPerson(
    Variables$Subscription$watchPerson instance,
    TRes Function(Variables$Subscription$watchPerson) then,
  ) = _CopyWithImpl$Variables$Subscription$watchPerson;

  factory CopyWith$Variables$Subscription$watchPerson.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchPerson;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Subscription$watchPerson<TRes>
    implements CopyWith$Variables$Subscription$watchPerson<TRes> {
  _CopyWithImpl$Variables$Subscription$watchPerson(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchPerson _instance;

  final TRes Function(Variables$Subscription$watchPerson) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Subscription$watchPerson._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchPerson<TRes>
    implements CopyWith$Variables$Subscription$watchPerson<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchPerson(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription$watchPerson {
  Subscription$watchPerson({this.personsByPk});

  factory Subscription$watchPerson.fromJson(Map<String, dynamic> json) {
    final l$personsByPk = json['personsByPk'];
    return Subscription$watchPerson(
        personsByPk: l$personsByPk == null
            ? null
            : Subscription$watchPerson$personsByPk.fromJson(
                (l$personsByPk as Map<String, dynamic>)));
  }

  final Subscription$watchPerson$personsByPk? personsByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personsByPk = personsByPk;
    _resultData['personsByPk'] = l$personsByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personsByPk = personsByPk;
    return Object.hashAll([l$personsByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchPerson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personsByPk = personsByPk;
    final lOther$personsByPk = other.personsByPk;
    if (l$personsByPk != lOther$personsByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchPerson
    on Subscription$watchPerson {
  CopyWith$Subscription$watchPerson<Subscription$watchPerson> get copyWith =>
      CopyWith$Subscription$watchPerson(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchPerson<TRes> {
  factory CopyWith$Subscription$watchPerson(
    Subscription$watchPerson instance,
    TRes Function(Subscription$watchPerson) then,
  ) = _CopyWithImpl$Subscription$watchPerson;

  factory CopyWith$Subscription$watchPerson.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson;

  TRes call({Subscription$watchPerson$personsByPk? personsByPk});
  CopyWith$Subscription$watchPerson$personsByPk<TRes> get personsByPk;
}

class _CopyWithImpl$Subscription$watchPerson<TRes>
    implements CopyWith$Subscription$watchPerson<TRes> {
  _CopyWithImpl$Subscription$watchPerson(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson _instance;

  final TRes Function(Subscription$watchPerson) _then;

  static const _undefined = {};

  TRes call({Object? personsByPk = _undefined}) =>
      _then(Subscription$watchPerson(
          personsByPk: personsByPk == _undefined
              ? _instance.personsByPk
              : (personsByPk as Subscription$watchPerson$personsByPk?)));
  CopyWith$Subscription$watchPerson$personsByPk<TRes> get personsByPk {
    final local$personsByPk = _instance.personsByPk;
    return local$personsByPk == null
        ? CopyWith$Subscription$watchPerson$personsByPk.stub(_then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk(
            local$personsByPk, (e) => call(personsByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson<TRes>
    implements CopyWith$Subscription$watchPerson<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson(this._res);

  TRes _res;

  call({Subscription$watchPerson$personsByPk? personsByPk}) => _res;
  CopyWith$Subscription$watchPerson$personsByPk<TRes> get personsByPk =>
      CopyWith$Subscription$watchPerson$personsByPk.stub(_res);
}

const documentNodeSubscriptionwatchPerson = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchPerson'),
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
            name: NameNode(value: 'areas'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '6'),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
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
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '6'),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
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
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '6'),
              ),
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
            name: NameNode(value: 'lastCall'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastConfession'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastEdit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastKodas'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastVisit'),
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
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: IntValueNode(value: '6'),
              ),
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
            name: NameNode(value: 'streets'),
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
            name: NameNode(value: 'hobbies'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'hobby'),
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
                name: NameNode(value: 'hobby'),
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
            name: NameNode(value: 'uid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uid'),
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
                name: NameNode(value: 'email'),
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
      )
    ]),
  ),
]);

class Subscription$watchPerson$personsByPk {
  Subscription$watchPerson$personsByPk({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.address,
    this.birthdate,
    this.areas,
    this.classes,
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
    this.lastCall,
    this.lastConfession,
    this.lastEdit,
    this.lastKodas,
    this.lastVisit,
    this.mainPhone,
    this.notes,
    required this.otherPhones,
    this.personType,
    this.qualification,
    this.school,
    required this.services,
    this.shammasLevel,
    this.state,
    this.streets,
    this.studyYear,
    required this.hobbies,
    required this.tags,
    this.uid,
    this.user,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$address = json['address'];
    final l$birthdate = json['birthdate'];
    final l$areas = json['areas'];
    final l$classes = json['classes'];
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
    final l$lastCall = json['lastCall'];
    final l$lastConfession = json['lastConfession'];
    final l$lastEdit = json['lastEdit'];
    final l$lastKodas = json['lastKodas'];
    final l$lastVisit = json['lastVisit'];
    final l$mainPhone = json['mainPhone'];
    final l$notes = json['notes'];
    final l$otherPhones = json['otherPhones'];
    final l$personType = json['personType'];
    final l$qualification = json['qualification'];
    final l$school = json['school'];
    final l$services = json['services'];
    final l$shammasLevel = json['shammasLevel'];
    final l$state = json['state'];
    final l$streets = json['streets'];
    final l$studyYear = json['studyYear'];
    final l$hobbies = json['hobbies'];
    final l$tags = json['tags'];
    final l$uid = json['uid'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      address: (l$address as String?),
      birthdate: l$birthdate == null ? null : dateFromString(l$birthdate),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Subscription$watchPerson$personsByPk$areas.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      classes: (l$classes as List<dynamic>?)
          ?.map((e) => Subscription$watchPerson$personsByPk$classes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      church: l$church == null
          ? null
          : Subscription$watchPerson$personsByPk$church.fromJson(
              (l$church as Map<String, dynamic>)),
      college: l$college == null
          ? null
          : Subscription$watchPerson$personsByPk$college.fromJson(
              (l$college as Map<String, dynamic>)),
      family: l$family == null
          ? null
          : Subscription$watchPerson$personsByPk$family.fromJson(
              (l$family as Map<String, dynamic>)),
      father: l$father == null
          ? null
          : Subscription$watchPerson$personsByPk$father.fromJson(
              (l$father as Map<String, dynamic>)),
      gender: (l$gender as bool),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      groups: (l$groups as List<dynamic>)
          .map((e) => Subscription$watchPerson$personsByPk$groups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isServant: (l$isServant as bool),
      isShammas: (l$isShammas as bool),
      isStudent: (l$isStudent as bool?),
      job: l$job == null
          ? null
          : Subscription$watchPerson$personsByPk$job.fromJson(
              (l$job as Map<String, dynamic>)),
      jobDescription: (l$jobDescription as String?),
      lastCall: (l$lastCall as Json?),
      lastConfession: (l$lastConfession as Json?),
      lastEdit: (l$lastEdit as Json?),
      lastKodas: (l$lastKodas as Json?),
      lastVisit: (l$lastVisit as Json?),
      mainPhone: (l$mainPhone as String?),
      notes: (l$notes as String?),
      otherPhones: (l$otherPhones as Json),
      personType: l$personType == null
          ? null
          : Subscription$watchPerson$personsByPk$personType.fromJson(
              (l$personType as Map<String, dynamic>)),
      qualification: l$qualification == null
          ? null
          : Subscription$watchPerson$personsByPk$qualification.fromJson(
              (l$qualification as Map<String, dynamic>)),
      school: l$school == null
          ? null
          : Subscription$watchPerson$personsByPk$school.fromJson(
              (l$school as Map<String, dynamic>)),
      services: (l$services as List<dynamic>)
          .map((e) => Subscription$watchPerson$personsByPk$services.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      shammasLevel: l$shammasLevel == null
          ? null
          : Subscription$watchPerson$personsByPk$shammasLevel.fromJson(
              (l$shammasLevel as Map<String, dynamic>)),
      state: l$state == null
          ? null
          : Subscription$watchPerson$personsByPk$state.fromJson(
              (l$state as Map<String, dynamic>)),
      streets: (l$streets as List<dynamic>?)
          ?.map((e) => Subscription$watchPerson$personsByPk$streets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      studyYear: l$studyYear == null
          ? null
          : Subscription$watchPerson$personsByPk$studyYear.fromJson(
              (l$studyYear as Map<String, dynamic>)),
      hobbies: (l$hobbies as List<dynamic>)
          .map((e) => Subscription$watchPerson$personsByPk$hobbies.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>)
          .map((e) => Subscription$watchPerson$personsByPk$tags.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      uid: l$uid == null ? null : stringToUuid(l$uid),
      user: l$user == null
          ? null
          : Subscription$watchPerson$personsByPk$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String? address;

  final DateTime? birthdate;

  final List<Subscription$watchPerson$personsByPk$areas>? areas;

  final List<Subscription$watchPerson$personsByPk$classes>? classes;

  final Subscription$watchPerson$personsByPk$church? church;

  final Subscription$watchPerson$personsByPk$college? college;

  final Subscription$watchPerson$personsByPk$family? family;

  final Subscription$watchPerson$personsByPk$father? father;

  final bool gender;

  final Map<String, dynamic>? geolocation;

  final List<Subscription$watchPerson$personsByPk$groups> groups;

  final bool isServant;

  final bool isShammas;

  final bool? isStudent;

  final Subscription$watchPerson$personsByPk$job? job;

  final String? jobDescription;

  final Json? lastCall;

  final Json? lastConfession;

  final Json? lastEdit;

  final Json? lastKodas;

  final Json? lastVisit;

  final String? mainPhone;

  final String? notes;

  final Json otherPhones;

  final Subscription$watchPerson$personsByPk$personType? personType;

  final Subscription$watchPerson$personsByPk$qualification? qualification;

  final Subscription$watchPerson$personsByPk$school? school;

  final List<Subscription$watchPerson$personsByPk$services> services;

  final Subscription$watchPerson$personsByPk$shammasLevel? shammasLevel;

  final Subscription$watchPerson$personsByPk$state? state;

  final List<Subscription$watchPerson$personsByPk$streets>? streets;

  final Subscription$watchPerson$personsByPk$studyYear? studyYear;

  final List<Subscription$watchPerson$personsByPk$hobbies> hobbies;

  final List<Subscription$watchPerson$personsByPk$tags> tags;

  final UuidValue? uid;

  final Subscription$watchPerson$personsByPk$user? user;

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
    final l$areas = areas;
    _resultData['areas'] = l$areas?.map((e) => e.toJson()).toList();
    final l$classes = classes;
    _resultData['classes'] = l$classes?.map((e) => e.toJson()).toList();
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
    final l$lastCall = lastCall;
    _resultData['lastCall'] = l$lastCall;
    final l$lastConfession = lastConfession;
    _resultData['lastConfession'] = l$lastConfession;
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    final l$lastKodas = lastKodas;
    _resultData['lastKodas'] = l$lastKodas;
    final l$lastVisit = lastVisit;
    _resultData['lastVisit'] = l$lastVisit;
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
    final l$streets = streets;
    _resultData['streets'] = l$streets?.map((e) => e.toJson()).toList();
    final l$studyYear = studyYear;
    _resultData['studyYear'] = l$studyYear?.toJson();
    final l$hobbies = hobbies;
    _resultData['hobbies'] = l$hobbies.map((e) => e.toJson()).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$uid = uid;
    _resultData['uid'] = l$uid == null ? null : uuidToString(l$uid);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
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
    final l$areas = areas;
    final l$classes = classes;
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
    final l$lastCall = lastCall;
    final l$lastConfession = lastConfession;
    final l$lastEdit = lastEdit;
    final l$lastKodas = lastKodas;
    final l$lastVisit = lastVisit;
    final l$mainPhone = mainPhone;
    final l$notes = notes;
    final l$otherPhones = otherPhones;
    final l$personType = personType;
    final l$qualification = qualification;
    final l$school = school;
    final l$services = services;
    final l$shammasLevel = shammasLevel;
    final l$state = state;
    final l$streets = streets;
    final l$studyYear = studyYear;
    final l$hobbies = hobbies;
    final l$tags = tags;
    final l$uid = uid;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$photoUpdatedAt,
      l$address,
      l$birthdate,
      l$areas == null ? null : Object.hashAll(l$areas.map((v) => v)),
      l$classes == null ? null : Object.hashAll(l$classes.map((v) => v)),
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
      l$lastCall,
      l$lastConfession,
      l$lastEdit,
      l$lastKodas,
      l$lastVisit,
      l$mainPhone,
      l$notes,
      l$otherPhones,
      l$personType,
      l$qualification,
      l$school,
      Object.hashAll(l$services.map((v) => v)),
      l$shammasLevel,
      l$state,
      l$streets == null ? null : Object.hashAll(l$streets.map((v) => v)),
      l$studyYear,
      Object.hashAll(l$hobbies.map((v) => v)),
      Object.hashAll(l$tags.map((v) => v)),
      l$uid,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchPerson$personsByPk) ||
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
    final l$lastCall = lastCall;
    final lOther$lastCall = other.lastCall;
    if (l$lastCall != lOther$lastCall) {
      return false;
    }
    final l$lastConfession = lastConfession;
    final lOther$lastConfession = other.lastConfession;
    if (l$lastConfession != lOther$lastConfession) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$lastKodas = lastKodas;
    final lOther$lastKodas = other.lastKodas;
    if (l$lastKodas != lOther$lastKodas) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (l$lastVisit != lOther$lastVisit) {
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
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets != null && lOther$streets != null) {
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
    } else if (l$streets != lOther$streets) {
      return false;
    }
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$hobbies = hobbies;
    final lOther$hobbies = other.hobbies;
    if (l$hobbies.length != lOther$hobbies.length) {
      return false;
    }
    for (int i = 0; i < l$hobbies.length; i++) {
      final l$hobbies$entry = l$hobbies[i];
      final lOther$hobbies$entry = lOther$hobbies[i];
      if (l$hobbies$entry != lOther$hobbies$entry) {
        return false;
      }
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
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Subscription$watchPerson$personsByPk
    on Subscription$watchPerson$personsByPk {
  CopyWith$Subscription$watchPerson$personsByPk<
          Subscription$watchPerson$personsByPk>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk(
    Subscription$watchPerson$personsByPk instance,
    TRes Function(Subscription$watchPerson$personsByPk) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk;

  factory CopyWith$Subscription$watchPerson$personsByPk.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? address,
    DateTime? birthdate,
    List<Subscription$watchPerson$personsByPk$areas>? areas,
    List<Subscription$watchPerson$personsByPk$classes>? classes,
    Subscription$watchPerson$personsByPk$church? church,
    Subscription$watchPerson$personsByPk$college? college,
    Subscription$watchPerson$personsByPk$family? family,
    Subscription$watchPerson$personsByPk$father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Subscription$watchPerson$personsByPk$groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Subscription$watchPerson$personsByPk$job? job,
    String? jobDescription,
    Json? lastCall,
    Json? lastConfession,
    Json? lastEdit,
    Json? lastKodas,
    Json? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Subscription$watchPerson$personsByPk$personType? personType,
    Subscription$watchPerson$personsByPk$qualification? qualification,
    Subscription$watchPerson$personsByPk$school? school,
    List<Subscription$watchPerson$personsByPk$services>? services,
    Subscription$watchPerson$personsByPk$shammasLevel? shammasLevel,
    Subscription$watchPerson$personsByPk$state? state,
    List<Subscription$watchPerson$personsByPk$streets>? streets,
    Subscription$watchPerson$personsByPk$studyYear? studyYear,
    List<Subscription$watchPerson$personsByPk$hobbies>? hobbies,
    List<Subscription$watchPerson$personsByPk$tags>? tags,
    UuidValue? uid,
    Subscription$watchPerson$personsByPk$user? user,
    String? $__typename,
  });
  TRes areas(
      Iterable<Subscription$watchPerson$personsByPk$areas>? Function(
              Iterable<
                  CopyWith$Subscription$watchPerson$personsByPk$areas<
                      Subscription$watchPerson$personsByPk$areas>>?)
          _fn);
  TRes classes(
      Iterable<Subscription$watchPerson$personsByPk$classes>? Function(
              Iterable<
                  CopyWith$Subscription$watchPerson$personsByPk$classes<
                      Subscription$watchPerson$personsByPk$classes>>?)
          _fn);
  CopyWith$Subscription$watchPerson$personsByPk$church<TRes> get church;
  CopyWith$Subscription$watchPerson$personsByPk$college<TRes> get college;
  CopyWith$Subscription$watchPerson$personsByPk$family<TRes> get family;
  CopyWith$Subscription$watchPerson$personsByPk$father<TRes> get father;
  TRes groups(
      Iterable<Subscription$watchPerson$personsByPk$groups> Function(
              Iterable<
                  CopyWith$Subscription$watchPerson$personsByPk$groups<
                      Subscription$watchPerson$personsByPk$groups>>)
          _fn);
  CopyWith$Subscription$watchPerson$personsByPk$job<TRes> get job;
  CopyWith$Subscription$watchPerson$personsByPk$personType<TRes> get personType;
  CopyWith$Subscription$watchPerson$personsByPk$qualification<TRes>
      get qualification;
  CopyWith$Subscription$watchPerson$personsByPk$school<TRes> get school;
  TRes services(
      Iterable<Subscription$watchPerson$personsByPk$services> Function(
              Iterable<
                  CopyWith$Subscription$watchPerson$personsByPk$services<
                      Subscription$watchPerson$personsByPk$services>>)
          _fn);
  CopyWith$Subscription$watchPerson$personsByPk$shammasLevel<TRes>
      get shammasLevel;
  CopyWith$Subscription$watchPerson$personsByPk$state<TRes> get state;
  TRes streets(
      Iterable<Subscription$watchPerson$personsByPk$streets>? Function(
              Iterable<
                  CopyWith$Subscription$watchPerson$personsByPk$streets<
                      Subscription$watchPerson$personsByPk$streets>>?)
          _fn);
  CopyWith$Subscription$watchPerson$personsByPk$studyYear<TRes> get studyYear;
  TRes hobbies(
      Iterable<Subscription$watchPerson$personsByPk$hobbies> Function(
              Iterable<
                  CopyWith$Subscription$watchPerson$personsByPk$hobbies<
                      Subscription$watchPerson$personsByPk$hobbies>>)
          _fn);
  TRes tags(
      Iterable<Subscription$watchPerson$personsByPk$tags> Function(
              Iterable<
                  CopyWith$Subscription$watchPerson$personsByPk$tags<
                      Subscription$watchPerson$personsByPk$tags>>)
          _fn);
  CopyWith$Subscription$watchPerson$personsByPk$user<TRes> get user;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk _instance;

  final TRes Function(Subscription$watchPerson$personsByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? address = _undefined,
    Object? birthdate = _undefined,
    Object? areas = _undefined,
    Object? classes = _undefined,
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
    Object? lastCall = _undefined,
    Object? lastConfession = _undefined,
    Object? lastEdit = _undefined,
    Object? lastKodas = _undefined,
    Object? lastVisit = _undefined,
    Object? mainPhone = _undefined,
    Object? notes = _undefined,
    Object? otherPhones = _undefined,
    Object? personType = _undefined,
    Object? qualification = _undefined,
    Object? school = _undefined,
    Object? services = _undefined,
    Object? shammasLevel = _undefined,
    Object? state = _undefined,
    Object? streets = _undefined,
    Object? studyYear = _undefined,
    Object? hobbies = _undefined,
    Object? tags = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk(
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
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Subscription$watchPerson$personsByPk$areas>?),
        classes: classes == _undefined
            ? _instance.classes
            : (classes as List<Subscription$watchPerson$personsByPk$classes>?),
        church: church == _undefined
            ? _instance.church
            : (church as Subscription$watchPerson$personsByPk$church?),
        college: college == _undefined
            ? _instance.college
            : (college as Subscription$watchPerson$personsByPk$college?),
        family: family == _undefined
            ? _instance.family
            : (family as Subscription$watchPerson$personsByPk$family?),
        father: father == _undefined
            ? _instance.father
            : (father as Subscription$watchPerson$personsByPk$father?),
        gender: gender == _undefined || gender == null
            ? _instance.gender
            : (gender as bool),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        groups: groups == _undefined || groups == null
            ? _instance.groups
            : (groups as List<Subscription$watchPerson$personsByPk$groups>),
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
            : (job as Subscription$watchPerson$personsByPk$job?),
        jobDescription: jobDescription == _undefined
            ? _instance.jobDescription
            : (jobDescription as String?),
        lastCall:
            lastCall == _undefined ? _instance.lastCall : (lastCall as Json?),
        lastConfession: lastConfession == _undefined
            ? _instance.lastConfession
            : (lastConfession as Json?),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        lastKodas: lastKodas == _undefined
            ? _instance.lastKodas
            : (lastKodas as Json?),
        lastVisit: lastVisit == _undefined
            ? _instance.lastVisit
            : (lastVisit as Json?),
        mainPhone: mainPhone == _undefined
            ? _instance.mainPhone
            : (mainPhone as String?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        otherPhones: otherPhones == _undefined || otherPhones == null
            ? _instance.otherPhones
            : (otherPhones as Json),
        personType: personType == _undefined
            ? _instance.personType
            : (personType as Subscription$watchPerson$personsByPk$personType?),
        qualification: qualification == _undefined
            ? _instance.qualification
            : (qualification
                as Subscription$watchPerson$personsByPk$qualification?),
        school: school == _undefined
            ? _instance.school
            : (school as Subscription$watchPerson$personsByPk$school?),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Subscription$watchPerson$personsByPk$services>),
        shammasLevel: shammasLevel == _undefined
            ? _instance.shammasLevel
            : (shammasLevel
                as Subscription$watchPerson$personsByPk$shammasLevel?),
        state: state == _undefined
            ? _instance.state
            : (state as Subscription$watchPerson$personsByPk$state?),
        streets: streets == _undefined
            ? _instance.streets
            : (streets as List<Subscription$watchPerson$personsByPk$streets>?),
        studyYear: studyYear == _undefined
            ? _instance.studyYear
            : (studyYear as Subscription$watchPerson$personsByPk$studyYear?),
        hobbies: hobbies == _undefined || hobbies == null
            ? _instance.hobbies
            : (hobbies as List<Subscription$watchPerson$personsByPk$hobbies>),
        tags: tags == _undefined || tags == null
            ? _instance.tags
            : (tags as List<Subscription$watchPerson$personsByPk$tags>),
        uid: uid == _undefined ? _instance.uid : (uid as UuidValue?),
        user: user == _undefined
            ? _instance.user
            : (user as Subscription$watchPerson$personsByPk$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes areas(
          Iterable<Subscription$watchPerson$personsByPk$areas>? Function(
                  Iterable<
                      CopyWith$Subscription$watchPerson$personsByPk$areas<
                          Subscription$watchPerson$personsByPk$areas>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas
              ?.map((e) => CopyWith$Subscription$watchPerson$personsByPk$areas(
                    e,
                    (i) => i,
                  )))?.toList());
  TRes classes(
          Iterable<Subscription$watchPerson$personsByPk$classes>? Function(
                  Iterable<
                      CopyWith$Subscription$watchPerson$personsByPk$classes<
                          Subscription$watchPerson$personsByPk$classes>>?)
              _fn) =>
      call(
          classes: _fn(_instance.classes?.map(
              (e) => CopyWith$Subscription$watchPerson$personsByPk$classes(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Subscription$watchPerson$personsByPk$church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith$Subscription$watchPerson$personsByPk$church.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$church(
            local$church, (e) => call(church: e));
  }

  CopyWith$Subscription$watchPerson$personsByPk$college<TRes> get college {
    final local$college = _instance.college;
    return local$college == null
        ? CopyWith$Subscription$watchPerson$personsByPk$college.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$college(
            local$college, (e) => call(college: e));
  }

  CopyWith$Subscription$watchPerson$personsByPk$family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Subscription$watchPerson$personsByPk$family.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$family(
            local$family, (e) => call(family: e));
  }

  CopyWith$Subscription$watchPerson$personsByPk$father<TRes> get father {
    final local$father = _instance.father;
    return local$father == null
        ? CopyWith$Subscription$watchPerson$personsByPk$father.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$father(
            local$father, (e) => call(father: e));
  }

  TRes groups(
          Iterable<Subscription$watchPerson$personsByPk$groups> Function(
                  Iterable<
                      CopyWith$Subscription$watchPerson$personsByPk$groups<
                          Subscription$watchPerson$personsByPk$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith$Subscription$watchPerson$personsByPk$groups(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Subscription$watchPerson$personsByPk$job<TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith$Subscription$watchPerson$personsByPk$job.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$job(
            local$job, (e) => call(job: e));
  }

  CopyWith$Subscription$watchPerson$personsByPk$personType<TRes>
      get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith$Subscription$watchPerson$personsByPk$personType.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$personType(
            local$personType, (e) => call(personType: e));
  }

  CopyWith$Subscription$watchPerson$personsByPk$qualification<TRes>
      get qualification {
    final local$qualification = _instance.qualification;
    return local$qualification == null
        ? CopyWith$Subscription$watchPerson$personsByPk$qualification.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$qualification(
            local$qualification, (e) => call(qualification: e));
  }

  CopyWith$Subscription$watchPerson$personsByPk$school<TRes> get school {
    final local$school = _instance.school;
    return local$school == null
        ? CopyWith$Subscription$watchPerson$personsByPk$school.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$school(
            local$school, (e) => call(school: e));
  }

  TRes services(
          Iterable<Subscription$watchPerson$personsByPk$services> Function(
                  Iterable<
                      CopyWith$Subscription$watchPerson$personsByPk$services<
                          Subscription$watchPerson$personsByPk$services>>)
              _fn) =>
      call(
          services: _fn(_instance.services.map(
              (e) => CopyWith$Subscription$watchPerson$personsByPk$services(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Subscription$watchPerson$personsByPk$shammasLevel<TRes>
      get shammasLevel {
    final local$shammasLevel = _instance.shammasLevel;
    return local$shammasLevel == null
        ? CopyWith$Subscription$watchPerson$personsByPk$shammasLevel.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$shammasLevel(
            local$shammasLevel, (e) => call(shammasLevel: e));
  }

  CopyWith$Subscription$watchPerson$personsByPk$state<TRes> get state {
    final local$state = _instance.state;
    return local$state == null
        ? CopyWith$Subscription$watchPerson$personsByPk$state.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$state(
            local$state, (e) => call(state: e));
  }

  TRes streets(
          Iterable<Subscription$watchPerson$personsByPk$streets>? Function(
                  Iterable<
                      CopyWith$Subscription$watchPerson$personsByPk$streets<
                          Subscription$watchPerson$personsByPk$streets>>?)
              _fn) =>
      call(
          streets: _fn(_instance.streets?.map(
              (e) => CopyWith$Subscription$watchPerson$personsByPk$streets(
                    e,
                    (i) => i,
                  )))?.toList());
  CopyWith$Subscription$watchPerson$personsByPk$studyYear<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith$Subscription$watchPerson$personsByPk$studyYear.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$studyYear(
            local$studyYear, (e) => call(studyYear: e));
  }

  TRes hobbies(
          Iterable<Subscription$watchPerson$personsByPk$hobbies> Function(
                  Iterable<
                      CopyWith$Subscription$watchPerson$personsByPk$hobbies<
                          Subscription$watchPerson$personsByPk$hobbies>>)
              _fn) =>
      call(
          hobbies: _fn(_instance.hobbies
              .map((e) => CopyWith$Subscription$watchPerson$personsByPk$hobbies(
                    e,
                    (i) => i,
                  ))).toList());
  TRes tags(
          Iterable<Subscription$watchPerson$personsByPk$tags> Function(
                  Iterable<
                      CopyWith$Subscription$watchPerson$personsByPk$tags<
                          Subscription$watchPerson$personsByPk$tags>>)
              _fn) =>
      call(
          tags: _fn(_instance.tags
              .map((e) => CopyWith$Subscription$watchPerson$personsByPk$tags(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Subscription$watchPerson$personsByPk$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Subscription$watchPerson$personsByPk$user.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? address,
    DateTime? birthdate,
    List<Subscription$watchPerson$personsByPk$areas>? areas,
    List<Subscription$watchPerson$personsByPk$classes>? classes,
    Subscription$watchPerson$personsByPk$church? church,
    Subscription$watchPerson$personsByPk$college? college,
    Subscription$watchPerson$personsByPk$family? family,
    Subscription$watchPerson$personsByPk$father? father,
    bool? gender,
    Map<String, dynamic>? geolocation,
    List<Subscription$watchPerson$personsByPk$groups>? groups,
    bool? isServant,
    bool? isShammas,
    bool? isStudent,
    Subscription$watchPerson$personsByPk$job? job,
    String? jobDescription,
    Json? lastCall,
    Json? lastConfession,
    Json? lastEdit,
    Json? lastKodas,
    Json? lastVisit,
    String? mainPhone,
    String? notes,
    Json? otherPhones,
    Subscription$watchPerson$personsByPk$personType? personType,
    Subscription$watchPerson$personsByPk$qualification? qualification,
    Subscription$watchPerson$personsByPk$school? school,
    List<Subscription$watchPerson$personsByPk$services>? services,
    Subscription$watchPerson$personsByPk$shammasLevel? shammasLevel,
    Subscription$watchPerson$personsByPk$state? state,
    List<Subscription$watchPerson$personsByPk$streets>? streets,
    Subscription$watchPerson$personsByPk$studyYear? studyYear,
    List<Subscription$watchPerson$personsByPk$hobbies>? hobbies,
    List<Subscription$watchPerson$personsByPk$tags>? tags,
    UuidValue? uid,
    Subscription$watchPerson$personsByPk$user? user,
    String? $__typename,
  }) =>
      _res;
  areas(_fn) => _res;
  classes(_fn) => _res;
  CopyWith$Subscription$watchPerson$personsByPk$church<TRes> get church =>
      CopyWith$Subscription$watchPerson$personsByPk$church.stub(_res);
  CopyWith$Subscription$watchPerson$personsByPk$college<TRes> get college =>
      CopyWith$Subscription$watchPerson$personsByPk$college.stub(_res);
  CopyWith$Subscription$watchPerson$personsByPk$family<TRes> get family =>
      CopyWith$Subscription$watchPerson$personsByPk$family.stub(_res);
  CopyWith$Subscription$watchPerson$personsByPk$father<TRes> get father =>
      CopyWith$Subscription$watchPerson$personsByPk$father.stub(_res);
  groups(_fn) => _res;
  CopyWith$Subscription$watchPerson$personsByPk$job<TRes> get job =>
      CopyWith$Subscription$watchPerson$personsByPk$job.stub(_res);
  CopyWith$Subscription$watchPerson$personsByPk$personType<TRes>
      get personType =>
          CopyWith$Subscription$watchPerson$personsByPk$personType.stub(_res);
  CopyWith$Subscription$watchPerson$personsByPk$qualification<TRes>
      get qualification =>
          CopyWith$Subscription$watchPerson$personsByPk$qualification.stub(
              _res);
  CopyWith$Subscription$watchPerson$personsByPk$school<TRes> get school =>
      CopyWith$Subscription$watchPerson$personsByPk$school.stub(_res);
  services(_fn) => _res;
  CopyWith$Subscription$watchPerson$personsByPk$shammasLevel<TRes>
      get shammasLevel =>
          CopyWith$Subscription$watchPerson$personsByPk$shammasLevel.stub(_res);
  CopyWith$Subscription$watchPerson$personsByPk$state<TRes> get state =>
      CopyWith$Subscription$watchPerson$personsByPk$state.stub(_res);
  streets(_fn) => _res;
  CopyWith$Subscription$watchPerson$personsByPk$studyYear<TRes> get studyYear =>
      CopyWith$Subscription$watchPerson$personsByPk$studyYear.stub(_res);
  hobbies(_fn) => _res;
  tags(_fn) => _res;
  CopyWith$Subscription$watchPerson$personsByPk$user<TRes> get user =>
      CopyWith$Subscription$watchPerson$personsByPk$user.stub(_res);
}

class Subscription$watchPerson$personsByPk$areas {
  Subscription$watchPerson$personsByPk$areas({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$areas.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$areas(
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
    if (!(other is Subscription$watchPerson$personsByPk$areas) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$areas
    on Subscription$watchPerson$personsByPk$areas {
  CopyWith$Subscription$watchPerson$personsByPk$areas<
          Subscription$watchPerson$personsByPk$areas>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$areas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$areas<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$areas(
    Subscription$watchPerson$personsByPk$areas instance,
    TRes Function(Subscription$watchPerson$personsByPk$areas) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$areas;

  factory CopyWith$Subscription$watchPerson$personsByPk$areas.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$areas;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$areas<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$areas<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$areas(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$areas _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$areas) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$areas(
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

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$areas<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$areas<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$areas(this._res);

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

class Subscription$watchPerson$personsByPk$classes {
  Subscription$watchPerson$personsByPk$classes({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$classes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate
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
    if (!(other is Subscription$watchPerson$personsByPk$classes) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$classes
    on Subscription$watchPerson$personsByPk$classes {
  CopyWith$Subscription$watchPerson$personsByPk$classes<
          Subscription$watchPerson$personsByPk$classes>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$classes<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$classes(
    Subscription$watchPerson$personsByPk$classes instance,
    TRes Function(Subscription$watchPerson$personsByPk$classes) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$classes;

  factory CopyWith$Subscription$watchPerson$personsByPk$classes.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$classes<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$classes<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$classes(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$classes _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$classes) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$classes(
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
                as Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$classes<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate
              .stub(_res);
}

class Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate {
  Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate?
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
            is Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate
    on Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate {
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate<
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate(
    Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate
        instance,
    TRes Function(
            Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate;

  factory CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate;

  TRes call({
    Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate {
  Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate({
    this.max,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
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
            is Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
    on Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate {
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
    Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate;

  TRes call({
    Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max {
  Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
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
            is Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
    on Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
    Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$classes$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$church {
  Subscription$watchPerson$personsByPk$church({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$church(
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
    if (!(other is Subscription$watchPerson$personsByPk$church) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$church
    on Subscription$watchPerson$personsByPk$church {
  CopyWith$Subscription$watchPerson$personsByPk$church<
          Subscription$watchPerson$personsByPk$church>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$church(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$church<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$church(
    Subscription$watchPerson$personsByPk$church instance,
    TRes Function(Subscription$watchPerson$personsByPk$church) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$church;

  factory CopyWith$Subscription$watchPerson$personsByPk$church.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$church<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$church<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$church(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$church _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$church) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$church<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$church<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$church(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$college {
  Subscription$watchPerson$personsByPk$college({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$college.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$college(
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
    if (!(other is Subscription$watchPerson$personsByPk$college) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$college
    on Subscription$watchPerson$personsByPk$college {
  CopyWith$Subscription$watchPerson$personsByPk$college<
          Subscription$watchPerson$personsByPk$college>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$college(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$college<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$college(
    Subscription$watchPerson$personsByPk$college instance,
    TRes Function(Subscription$watchPerson$personsByPk$college) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$college;

  factory CopyWith$Subscription$watchPerson$personsByPk$college.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$college;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$college<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$college<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$college(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$college _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$college) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$college(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$college<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$college<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$college(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$family {
  Subscription$watchPerson$personsByPk$family({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$family.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$family(
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
    if (!(other is Subscription$watchPerson$personsByPk$family) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$family
    on Subscription$watchPerson$personsByPk$family {
  CopyWith$Subscription$watchPerson$personsByPk$family<
          Subscription$watchPerson$personsByPk$family>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$family<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$family(
    Subscription$watchPerson$personsByPk$family instance,
    TRes Function(Subscription$watchPerson$personsByPk$family) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$family;

  factory CopyWith$Subscription$watchPerson$personsByPk$family.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$family;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$family<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$family<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$family(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$family _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$family) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$family(
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

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$family<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$family<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$family(this._res);

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

class Subscription$watchPerson$personsByPk$father {
  Subscription$watchPerson$personsByPk$father({
    required this.id,
    required this.name,
    this.church,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$father.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$church = json['church'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$father(
      id: stringToUuid(l$id),
      name: (l$name as String),
      church: l$church == null
          ? null
          : Subscription$watchPerson$personsByPk$father$church.fromJson(
              (l$church as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Subscription$watchPerson$personsByPk$father$church? church;

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
    if (!(other is Subscription$watchPerson$personsByPk$father) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$father
    on Subscription$watchPerson$personsByPk$father {
  CopyWith$Subscription$watchPerson$personsByPk$father<
          Subscription$watchPerson$personsByPk$father>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$father(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$father<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$father(
    Subscription$watchPerson$personsByPk$father instance,
    TRes Function(Subscription$watchPerson$personsByPk$father) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$father;

  factory CopyWith$Subscription$watchPerson$personsByPk$father.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$father;

  TRes call({
    UuidValue? id,
    String? name,
    Subscription$watchPerson$personsByPk$father$church? church,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$father$church<TRes> get church;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$father<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$father<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$father(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$father _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$father) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? church = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$father(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        church: church == _undefined
            ? _instance.church
            : (church as Subscription$watchPerson$personsByPk$father$church?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$father$church<TRes> get church {
    final local$church = _instance.church;
    return local$church == null
        ? CopyWith$Subscription$watchPerson$personsByPk$father$church.stub(
            _then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$father$church(
            local$church, (e) => call(church: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$father<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$father<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$father(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Subscription$watchPerson$personsByPk$father$church? church,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$father$church<TRes>
      get church =>
          CopyWith$Subscription$watchPerson$personsByPk$father$church.stub(
              _res);
}

class Subscription$watchPerson$personsByPk$father$church {
  Subscription$watchPerson$personsByPk$father$church({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$father$church.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$father$church(
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
    if (!(other is Subscription$watchPerson$personsByPk$father$church) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$father$church
    on Subscription$watchPerson$personsByPk$father$church {
  CopyWith$Subscription$watchPerson$personsByPk$father$church<
          Subscription$watchPerson$personsByPk$father$church>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$father$church(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$father$church<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$father$church(
    Subscription$watchPerson$personsByPk$father$church instance,
    TRes Function(Subscription$watchPerson$personsByPk$father$church) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$father$church;

  factory CopyWith$Subscription$watchPerson$personsByPk$father$church.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$father$church;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$father$church<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$father$church<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$father$church(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$father$church _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$father$church) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$father$church(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$father$church<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$father$church<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$father$church(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$groups {
  Subscription$watchPerson$personsByPk$groups({
    required this.group,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$groups.fromJson(
      Map<String, dynamic> json) {
    final l$group = json['group'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$groups(
      group: Subscription$watchPerson$personsByPk$groups$group.fromJson(
          (l$group as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$groups$group group;

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
    if (!(other is Subscription$watchPerson$personsByPk$groups) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$groups
    on Subscription$watchPerson$personsByPk$groups {
  CopyWith$Subscription$watchPerson$personsByPk$groups<
          Subscription$watchPerson$personsByPk$groups>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$groups<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$groups(
    Subscription$watchPerson$personsByPk$groups instance,
    TRes Function(Subscription$watchPerson$personsByPk$groups) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$groups;

  factory CopyWith$Subscription$watchPerson$personsByPk$groups.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups;

  TRes call({
    Subscription$watchPerson$personsByPk$groups$group? group,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$groups$group<TRes> get group;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$groups<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$groups<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$groups(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$groups _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$groups) _then;

  static const _undefined = {};

  TRes call({
    Object? group = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$groups(
        group: group == _undefined || group == null
            ? _instance.group
            : (group as Subscription$watchPerson$personsByPk$groups$group),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$groups$group<TRes> get group {
    final local$group = _instance.group;
    return CopyWith$Subscription$watchPerson$personsByPk$groups$group(
        local$group, (e) => call(group: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$groups<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups(this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$groups$group? group,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$groups$group<TRes> get group =>
      CopyWith$Subscription$watchPerson$personsByPk$groups$group.stub(_res);
}

class Subscription$watchPerson$personsByPk$groups$group {
  Subscription$watchPerson$personsByPk$groups$group({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$groups$group.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$groups$group(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate
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
    if (!(other is Subscription$watchPerson$personsByPk$groups$group) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$groups$group
    on Subscription$watchPerson$personsByPk$groups$group {
  CopyWith$Subscription$watchPerson$personsByPk$groups$group<
          Subscription$watchPerson$personsByPk$groups$group>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$groups$group(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$groups$group<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$groups$group(
    Subscription$watchPerson$personsByPk$groups$group instance,
    TRes Function(Subscription$watchPerson$personsByPk$groups$group) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group;

  factory CopyWith$Subscription$watchPerson$personsByPk$groups$group.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$groups$group<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$groups$group _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$groups$group) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$groups$group(
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
                as Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$groups$group<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate
              .stub(_res);
}

class Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate {
  Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
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
            is Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate
    on Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate {
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate<
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate(
    Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate
        instance,
    TRes Function(
            Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate;

  factory CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate;

  TRes call({
    Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate({
    this.max,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
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
            is Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
    on Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate {
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate;

  TRes call({
    Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
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
            is Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
    on Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$groups$group$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$job {
  Subscription$watchPerson$personsByPk$job({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$job.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$job(
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
    if (!(other is Subscription$watchPerson$personsByPk$job) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$job
    on Subscription$watchPerson$personsByPk$job {
  CopyWith$Subscription$watchPerson$personsByPk$job<
          Subscription$watchPerson$personsByPk$job>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$job(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$job<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$job(
    Subscription$watchPerson$personsByPk$job instance,
    TRes Function(Subscription$watchPerson$personsByPk$job) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$job;

  factory CopyWith$Subscription$watchPerson$personsByPk$job.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$job;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$job<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$job<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$job(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$job _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$job) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$job(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$job<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$job<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$job(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$personType {
  Subscription$watchPerson$personsByPk$personType({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$personType.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$personType(
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
    if (!(other is Subscription$watchPerson$personsByPk$personType) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$personType
    on Subscription$watchPerson$personsByPk$personType {
  CopyWith$Subscription$watchPerson$personsByPk$personType<
          Subscription$watchPerson$personsByPk$personType>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$personType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$personType<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$personType(
    Subscription$watchPerson$personsByPk$personType instance,
    TRes Function(Subscription$watchPerson$personsByPk$personType) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$personType;

  factory CopyWith$Subscription$watchPerson$personsByPk$personType.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$personType;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$personType<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$personType<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$personType(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$personType _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$personType) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$personType(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$personType<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$personType<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$personType(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$qualification {
  Subscription$watchPerson$personsByPk$qualification({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$qualification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$qualification(
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
    if (!(other is Subscription$watchPerson$personsByPk$qualification) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$qualification
    on Subscription$watchPerson$personsByPk$qualification {
  CopyWith$Subscription$watchPerson$personsByPk$qualification<
          Subscription$watchPerson$personsByPk$qualification>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$qualification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$qualification<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$qualification(
    Subscription$watchPerson$personsByPk$qualification instance,
    TRes Function(Subscription$watchPerson$personsByPk$qualification) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$qualification;

  factory CopyWith$Subscription$watchPerson$personsByPk$qualification.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$qualification;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$qualification<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$qualification<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$qualification(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$qualification _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$qualification) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$qualification(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$qualification<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$qualification<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$qualification(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$school {
  Subscription$watchPerson$personsByPk$school({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$school.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$school(
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
    if (!(other is Subscription$watchPerson$personsByPk$school) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$school
    on Subscription$watchPerson$personsByPk$school {
  CopyWith$Subscription$watchPerson$personsByPk$school<
          Subscription$watchPerson$personsByPk$school>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$school(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$school<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$school(
    Subscription$watchPerson$personsByPk$school instance,
    TRes Function(Subscription$watchPerson$personsByPk$school) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$school;

  factory CopyWith$Subscription$watchPerson$personsByPk$school.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$school;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$school<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$school<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$school(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$school _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$school) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$school(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$school<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$school<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$school(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$services {
  Subscription$watchPerson$personsByPk$services({
    required this.service,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$services.fromJson(
      Map<String, dynamic> json) {
    final l$service = json['service'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$services(
      service: Subscription$watchPerson$personsByPk$services$service.fromJson(
          (l$service as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$services$service service;

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
    if (!(other is Subscription$watchPerson$personsByPk$services) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$services
    on Subscription$watchPerson$personsByPk$services {
  CopyWith$Subscription$watchPerson$personsByPk$services<
          Subscription$watchPerson$personsByPk$services>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$services(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$services<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$services(
    Subscription$watchPerson$personsByPk$services instance,
    TRes Function(Subscription$watchPerson$personsByPk$services) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$services;

  factory CopyWith$Subscription$watchPerson$personsByPk$services.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services;

  TRes call({
    Subscription$watchPerson$personsByPk$services$service? service,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$services$service<TRes>
      get service;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$services<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$services<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$services(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$services _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$services) _then;

  static const _undefined = {};

  TRes call({
    Object? service = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$services(
        service: service == _undefined || service == null
            ? _instance.service
            : (service
                as Subscription$watchPerson$personsByPk$services$service),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$services$service<TRes>
      get service {
    final local$service = _instance.service;
    return CopyWith$Subscription$watchPerson$personsByPk$services$service(
        local$service, (e) => call(service: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$services<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services(this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$services$service? service,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$services$service<TRes>
      get service =>
          CopyWith$Subscription$watchPerson$personsByPk$services$service.stub(
              _res);
}

class Subscription$watchPerson$personsByPk$services$service {
  Subscription$watchPerson$personsByPk$services$service({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.attendanceHistoryAggregate,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$services$service.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$attendanceHistoryAggregate = json['attendanceHistoryAggregate'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$services$service(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      attendanceHistoryAggregate:
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate
              .fromJson((l$attendanceHistoryAggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final DateTime? photoUpdatedAt;

  final Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate
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
    if (!(other is Subscription$watchPerson$personsByPk$services$service) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$services$service
    on Subscription$watchPerson$personsByPk$services$service {
  CopyWith$Subscription$watchPerson$personsByPk$services$service<
          Subscription$watchPerson$personsByPk$services$service>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$services$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$services$service<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$services$service(
    Subscription$watchPerson$personsByPk$services$service instance,
    TRes Function(Subscription$watchPerson$personsByPk$services$service) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service;

  factory CopyWith$Subscription$watchPerson$personsByPk$services$service.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$services$service<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$services$service _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$services$service)
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
      _then(Subscription$watchPerson$personsByPk$services$service(
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
                as Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate<
      TRes> get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate(
        local$attendanceHistoryAggregate,
        (e) => call(attendanceHistoryAggregate: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$services$service<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate?
        attendanceHistoryAggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate<
          TRes>
      get attendanceHistoryAggregate =>
          CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate
              .stub(_res);
}

class Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate {
  Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate({
    this.aggregate,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
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
            is Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate
    on Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate {
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate<
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate(
    Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate
        instance,
    TRes Function(
            Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate)
        then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate;

  factory CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate;

  TRes call({
    Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate
      _instance;

  final TRes Function(
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate<
            TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate(
      this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
              .stub(_res);
}

class Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate({
    this.max,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$max = json['max'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      max: l$max == null
          ? null
          : Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .fromJson((l$max as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
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
            is Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
    on Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate {
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
        instance,
    TRes Function(
            Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
        then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  factory CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate;

  TRes call({
    Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate
      _instance;

  final TRes Function(
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate)
      _then;

  static const _undefined = {};

  TRes call({
    Object? max = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
        max: max == _undefined
            ? _instance.max
            : (max
                as Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
      TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
            .stub(_then(_instance))
        : CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            local$max, (e) => call(max: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate(
      this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max?
        max,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          TRes>
      get max =>
          CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
              .stub(_res);
}

class Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max({
    this.time,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
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
            is Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
    on Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max {
  CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
        instance,
    TRes Function(
            Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
        then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  factory CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max;

  TRes call({
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max
      _instance;

  final TRes Function(
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
        TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max<
            TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$services$service$attendanceHistoryAggregate$aggregate$max(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$shammasLevel {
  Subscription$watchPerson$personsByPk$shammasLevel({
    required this.id,
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$shammasLevel.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$shammasLevel(
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
    if (!(other is Subscription$watchPerson$personsByPk$shammasLevel) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$shammasLevel
    on Subscription$watchPerson$personsByPk$shammasLevel {
  CopyWith$Subscription$watchPerson$personsByPk$shammasLevel<
          Subscription$watchPerson$personsByPk$shammasLevel>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$shammasLevel(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$shammasLevel<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$shammasLevel(
    Subscription$watchPerson$personsByPk$shammasLevel instance,
    TRes Function(Subscription$watchPerson$personsByPk$shammasLevel) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$shammasLevel;

  factory CopyWith$Subscription$watchPerson$personsByPk$shammasLevel.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$shammasLevel;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$shammasLevel<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$shammasLevel<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$shammasLevel(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$shammasLevel _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$shammasLevel) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$shammasLevel(
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

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$shammasLevel<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$shammasLevel<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$shammasLevel(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$state {
  Subscription$watchPerson$personsByPk$state({
    required this.id,
    required this.color,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$state.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$state(
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
    if (!(other is Subscription$watchPerson$personsByPk$state) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$state
    on Subscription$watchPerson$personsByPk$state {
  CopyWith$Subscription$watchPerson$personsByPk$state<
          Subscription$watchPerson$personsByPk$state>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$state(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$state<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$state(
    Subscription$watchPerson$personsByPk$state instance,
    TRes Function(Subscription$watchPerson$personsByPk$state) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$state;

  factory CopyWith$Subscription$watchPerson$personsByPk$state.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$state;

  TRes call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$state<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$state<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$state(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$state _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$state) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$state(
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

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$state<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$state<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$state(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? color,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$streets {
  Subscription$watchPerson$personsByPk$streets({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$streets.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$streets(
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
    if (!(other is Subscription$watchPerson$personsByPk$streets) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$streets
    on Subscription$watchPerson$personsByPk$streets {
  CopyWith$Subscription$watchPerson$personsByPk$streets<
          Subscription$watchPerson$personsByPk$streets>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$streets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$streets<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$streets(
    Subscription$watchPerson$personsByPk$streets instance,
    TRes Function(Subscription$watchPerson$personsByPk$streets) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$streets;

  factory CopyWith$Subscription$watchPerson$personsByPk$streets.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$streets;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$streets<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$streets<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$streets(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$streets _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$streets) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$streets(
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

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$streets<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$streets<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$streets(this._res);

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

class Subscription$watchPerson$personsByPk$studyYear {
  Subscription$watchPerson$personsByPk$studyYear({
    required this.name,
    required this.order,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$studyYear.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$studyYear(
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
    if (!(other is Subscription$watchPerson$personsByPk$studyYear) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$studyYear
    on Subscription$watchPerson$personsByPk$studyYear {
  CopyWith$Subscription$watchPerson$personsByPk$studyYear<
          Subscription$watchPerson$personsByPk$studyYear>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$studyYear(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$studyYear<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$studyYear(
    Subscription$watchPerson$personsByPk$studyYear instance,
    TRes Function(Subscription$watchPerson$personsByPk$studyYear) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$studyYear;

  factory CopyWith$Subscription$watchPerson$personsByPk$studyYear.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$studyYear;

  TRes call({
    String? name,
    int? order,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$studyYear<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$studyYear<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$studyYear(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$studyYear _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$studyYear) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$studyYear(
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

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$studyYear<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$studyYear<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$studyYear(this._res);

  TRes _res;

  call({
    String? name,
    int? order,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$hobbies {
  Subscription$watchPerson$personsByPk$hobbies({
    required this.hobby,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$hobbies.fromJson(
      Map<String, dynamic> json) {
    final l$hobby = json['hobby'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$hobbies(
      hobby: Subscription$watchPerson$personsByPk$hobbies$hobby.fromJson(
          (l$hobby as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$hobbies$hobby hobby;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hobby = hobby;
    _resultData['hobby'] = l$hobby.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hobby = hobby;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hobby,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchPerson$personsByPk$hobbies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hobby = hobby;
    final lOther$hobby = other.hobby;
    if (l$hobby != lOther$hobby) {
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$hobbies
    on Subscription$watchPerson$personsByPk$hobbies {
  CopyWith$Subscription$watchPerson$personsByPk$hobbies<
          Subscription$watchPerson$personsByPk$hobbies>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$hobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$hobbies<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$hobbies(
    Subscription$watchPerson$personsByPk$hobbies instance,
    TRes Function(Subscription$watchPerson$personsByPk$hobbies) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$hobbies;

  factory CopyWith$Subscription$watchPerson$personsByPk$hobbies.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$hobbies;

  TRes call({
    Subscription$watchPerson$personsByPk$hobbies$hobby? hobby,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby<TRes> get hobby;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$hobbies<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$hobbies<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$hobbies(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$hobbies _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$hobbies) _then;

  static const _undefined = {};

  TRes call({
    Object? hobby = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$hobbies(
        hobby: hobby == _undefined || hobby == null
            ? _instance.hobby
            : (hobby as Subscription$watchPerson$personsByPk$hobbies$hobby),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby<TRes> get hobby {
    final local$hobby = _instance.hobby;
    return CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby(
        local$hobby, (e) => call(hobby: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$hobbies<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$hobbies<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$hobbies(this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$hobbies$hobby? hobby,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby<TRes> get hobby =>
      CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby.stub(_res);
}

class Subscription$watchPerson$personsByPk$hobbies$hobby {
  Subscription$watchPerson$personsByPk$hobbies$hobby({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$hobbies$hobby.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$hobbies$hobby(
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
    if (!(other is Subscription$watchPerson$personsByPk$hobbies$hobby) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$hobbies$hobby
    on Subscription$watchPerson$personsByPk$hobbies$hobby {
  CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby<
          Subscription$watchPerson$personsByPk$hobbies$hobby>
      get copyWith =>
          CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby<
    TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby(
    Subscription$watchPerson$personsByPk$hobbies$hobby instance,
    TRes Function(Subscription$watchPerson$personsByPk$hobbies$hobby) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$hobbies$hobby;

  factory CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$hobbies$hobby;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$hobbies$hobby<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$hobbies$hobby(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$hobbies$hobby _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$hobbies$hobby) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$hobbies$hobby(
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

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$hobbies$hobby<TRes>
    implements
        CopyWith$Subscription$watchPerson$personsByPk$hobbies$hobby<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$hobbies$hobby(
      this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$tags {
  Subscription$watchPerson$personsByPk$tags({
    required this.tag,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$tags.fromJson(
      Map<String, dynamic> json) {
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$tags(
      tag: Subscription$watchPerson$personsByPk$tags$tag.fromJson(
          (l$tag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$watchPerson$personsByPk$tags$tag tag;

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
    if (!(other is Subscription$watchPerson$personsByPk$tags) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$tags
    on Subscription$watchPerson$personsByPk$tags {
  CopyWith$Subscription$watchPerson$personsByPk$tags<
          Subscription$watchPerson$personsByPk$tags>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$tags<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$tags(
    Subscription$watchPerson$personsByPk$tags instance,
    TRes Function(Subscription$watchPerson$personsByPk$tags) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$tags;

  factory CopyWith$Subscription$watchPerson$personsByPk$tags.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$tags;

  TRes call({
    Subscription$watchPerson$personsByPk$tags$tag? tag,
    String? $__typename,
  });
  CopyWith$Subscription$watchPerson$personsByPk$tags$tag<TRes> get tag;
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$tags<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$tags<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$tags(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$tags _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$tags) _then;

  static const _undefined = {};

  TRes call({
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$tags(
        tag: tag == _undefined || tag == null
            ? _instance.tag
            : (tag as Subscription$watchPerson$personsByPk$tags$tag),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$watchPerson$personsByPk$tags$tag<TRes> get tag {
    final local$tag = _instance.tag;
    return CopyWith$Subscription$watchPerson$personsByPk$tags$tag(
        local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$tags<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$tags<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$tags(this._res);

  TRes _res;

  call({
    Subscription$watchPerson$personsByPk$tags$tag? tag,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$watchPerson$personsByPk$tags$tag<TRes> get tag =>
      CopyWith$Subscription$watchPerson$personsByPk$tags$tag.stub(_res);
}

class Subscription$watchPerson$personsByPk$tags$tag {
  Subscription$watchPerson$personsByPk$tags$tag({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$tags$tag.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$tags$tag(
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
    if (!(other is Subscription$watchPerson$personsByPk$tags$tag) ||
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$tags$tag
    on Subscription$watchPerson$personsByPk$tags$tag {
  CopyWith$Subscription$watchPerson$personsByPk$tags$tag<
          Subscription$watchPerson$personsByPk$tags$tag>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$tags$tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$tags$tag<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$tags$tag(
    Subscription$watchPerson$personsByPk$tags$tag instance,
    TRes Function(Subscription$watchPerson$personsByPk$tags$tag) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$tags$tag;

  factory CopyWith$Subscription$watchPerson$personsByPk$tags$tag.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$tags$tag;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$tags$tag<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$tags$tag<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$tags$tag(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$tags$tag _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$tags$tag) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$tags$tag(
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

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$tags$tag<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$tags$tag<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$tags$tag(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$watchPerson$personsByPk$user {
  Subscription$watchPerson$personsByPk$user({
    required this.uid,
    required this.name,
    required this.email,
    required this.$__typename,
  });

  factory Subscription$watchPerson$personsByPk$user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Subscription$watchPerson$personsByPk$user(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final String email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchPerson$personsByPk$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Subscription$watchPerson$personsByPk$user
    on Subscription$watchPerson$personsByPk$user {
  CopyWith$Subscription$watchPerson$personsByPk$user<
          Subscription$watchPerson$personsByPk$user>
      get copyWith => CopyWith$Subscription$watchPerson$personsByPk$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchPerson$personsByPk$user<TRes> {
  factory CopyWith$Subscription$watchPerson$personsByPk$user(
    Subscription$watchPerson$personsByPk$user instance,
    TRes Function(Subscription$watchPerson$personsByPk$user) then,
  ) = _CopyWithImpl$Subscription$watchPerson$personsByPk$user;

  factory CopyWith$Subscription$watchPerson$personsByPk$user.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchPerson$personsByPk$user;

  TRes call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchPerson$personsByPk$user<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$user<TRes> {
  _CopyWithImpl$Subscription$watchPerson$personsByPk$user(
    this._instance,
    this._then,
  );

  final Subscription$watchPerson$personsByPk$user _instance;

  final TRes Function(Subscription$watchPerson$personsByPk$user) _then;

  static const _undefined = {};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchPerson$personsByPk$user(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$watchPerson$personsByPk$user<TRes>
    implements CopyWith$Subscription$watchPerson$personsByPk$user<TRes> {
  _CopyWithStubImpl$Subscription$watchPerson$personsByPk$user(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    String? email,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$callHistory {
  factory Variables$Subscription$callHistory({
    required UuidValue personId,
    List<Input$HistoryCallHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$callHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$callHistory._(this._$data);

  factory Variables$Subscription$callHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryCallHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$callHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<Input$HistoryCallHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryCallHistoryBoolExp>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$callHistory<
          Variables$Subscription$callHistory>
      get copyWith => CopyWith$Variables$Subscription$callHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$callHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
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
    final l$personId = personId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$callHistory<TRes> {
  factory CopyWith$Variables$Subscription$callHistory(
    Variables$Subscription$callHistory instance,
    TRes Function(Variables$Subscription$callHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$callHistory;

  factory CopyWith$Variables$Subscription$callHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$callHistory;

  TRes call({
    UuidValue? personId,
    List<Input$HistoryCallHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$callHistory<TRes>
    implements CopyWith$Variables$Subscription$callHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$callHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$callHistory _instance;

  final TRes Function(Variables$Subscription$callHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$callHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryCallHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$callHistory<TRes>
    implements CopyWith$Variables$Subscription$callHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$callHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input$HistoryCallHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$callHistory {
  Subscription$callHistory({required this.historyCallHistory});

  factory Subscription$callHistory.fromJson(Map<String, dynamic> json) {
    final l$historyCallHistory = json['historyCallHistory'];
    return Subscription$callHistory(
        historyCallHistory: (l$historyCallHistory as List<dynamic>)
            .map((e) => Subscription$callHistory$historyCallHistory.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$callHistory$historyCallHistory> historyCallHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyCallHistory = historyCallHistory;
    _resultData['historyCallHistory'] =
        l$historyCallHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyCallHistory = historyCallHistory;
    return Object.hashAll([Object.hashAll(l$historyCallHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$callHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyCallHistory = historyCallHistory;
    final lOther$historyCallHistory = other.historyCallHistory;
    if (l$historyCallHistory.length != lOther$historyCallHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyCallHistory.length; i++) {
      final l$historyCallHistory$entry = l$historyCallHistory[i];
      final lOther$historyCallHistory$entry = lOther$historyCallHistory[i];
      if (l$historyCallHistory$entry != lOther$historyCallHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$callHistory
    on Subscription$callHistory {
  CopyWith$Subscription$callHistory<Subscription$callHistory> get copyWith =>
      CopyWith$Subscription$callHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$callHistory<TRes> {
  factory CopyWith$Subscription$callHistory(
    Subscription$callHistory instance,
    TRes Function(Subscription$callHistory) then,
  ) = _CopyWithImpl$Subscription$callHistory;

  factory CopyWith$Subscription$callHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$callHistory;

  TRes call(
      {List<Subscription$callHistory$historyCallHistory>? historyCallHistory});
  TRes historyCallHistory(
      Iterable<Subscription$callHistory$historyCallHistory> Function(
              Iterable<
                  CopyWith$Subscription$callHistory$historyCallHistory<
                      Subscription$callHistory$historyCallHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$callHistory<TRes>
    implements CopyWith$Subscription$callHistory<TRes> {
  _CopyWithImpl$Subscription$callHistory(
    this._instance,
    this._then,
  );

  final Subscription$callHistory _instance;

  final TRes Function(Subscription$callHistory) _then;

  static const _undefined = {};

  TRes call({Object? historyCallHistory = _undefined}) =>
      _then(Subscription$callHistory(
          historyCallHistory:
              historyCallHistory == _undefined || historyCallHistory == null
                  ? _instance.historyCallHistory
                  : (historyCallHistory
                      as List<Subscription$callHistory$historyCallHistory>)));
  TRes historyCallHistory(
          Iterable<Subscription$callHistory$historyCallHistory> Function(
                  Iterable<
                      CopyWith$Subscription$callHistory$historyCallHistory<
                          Subscription$callHistory$historyCallHistory>>)
              _fn) =>
      call(
          historyCallHistory: _fn(_instance.historyCallHistory
              .map((e) => CopyWith$Subscription$callHistory$historyCallHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$callHistory<TRes>
    implements CopyWith$Subscription$callHistory<TRes> {
  _CopyWithStubImpl$Subscription$callHistory(this._res);

  TRes _res;

  call(
          {List<Subscription$callHistory$historyCallHistory>?
              historyCallHistory}) =>
      _res;
  historyCallHistory(_fn) => _res;
}

const documentNodeSubscriptioncallHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'callHistory'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryCallHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyCallHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
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
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uid'),
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
      )
    ]),
  ),
]);

class Subscription$callHistory$historyCallHistory {
  Subscription$callHistory$historyCallHistory({
    required this.time,
    this.user,
    required this.$__typename,
  });

  factory Subscription$callHistory$historyCallHistory.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$callHistory$historyCallHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Subscription$callHistory$historyCallHistory$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Subscription$callHistory$historyCallHistory$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$callHistory$historyCallHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Subscription$callHistory$historyCallHistory
    on Subscription$callHistory$historyCallHistory {
  CopyWith$Subscription$callHistory$historyCallHistory<
          Subscription$callHistory$historyCallHistory>
      get copyWith => CopyWith$Subscription$callHistory$historyCallHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$callHistory$historyCallHistory<TRes> {
  factory CopyWith$Subscription$callHistory$historyCallHistory(
    Subscription$callHistory$historyCallHistory instance,
    TRes Function(Subscription$callHistory$historyCallHistory) then,
  ) = _CopyWithImpl$Subscription$callHistory$historyCallHistory;

  factory CopyWith$Subscription$callHistory$historyCallHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$callHistory$historyCallHistory;

  TRes call({
    DateTime? time,
    Subscription$callHistory$historyCallHistory$user? user,
    String? $__typename,
  });
  CopyWith$Subscription$callHistory$historyCallHistory$user<TRes> get user;
}

class _CopyWithImpl$Subscription$callHistory$historyCallHistory<TRes>
    implements CopyWith$Subscription$callHistory$historyCallHistory<TRes> {
  _CopyWithImpl$Subscription$callHistory$historyCallHistory(
    this._instance,
    this._then,
  );

  final Subscription$callHistory$historyCallHistory _instance;

  final TRes Function(Subscription$callHistory$historyCallHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$callHistory$historyCallHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined
            ? _instance.user
            : (user as Subscription$callHistory$historyCallHistory$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$callHistory$historyCallHistory$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Subscription$callHistory$historyCallHistory$user.stub(
            _then(_instance))
        : CopyWith$Subscription$callHistory$historyCallHistory$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$callHistory$historyCallHistory<TRes>
    implements CopyWith$Subscription$callHistory$historyCallHistory<TRes> {
  _CopyWithStubImpl$Subscription$callHistory$historyCallHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Subscription$callHistory$historyCallHistory$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$callHistory$historyCallHistory$user<TRes> get user =>
      CopyWith$Subscription$callHistory$historyCallHistory$user.stub(_res);
}

class Subscription$callHistory$historyCallHistory$user {
  Subscription$callHistory$historyCallHistory$user({
    required this.uid,
    required this.name,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$callHistory$historyCallHistory$user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$callHistory$historyCallHistory$user(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$callHistory$historyCallHistory$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$callHistory$historyCallHistory$user
    on Subscription$callHistory$historyCallHistory$user {
  CopyWith$Subscription$callHistory$historyCallHistory$user<
          Subscription$callHistory$historyCallHistory$user>
      get copyWith => CopyWith$Subscription$callHistory$historyCallHistory$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$callHistory$historyCallHistory$user<TRes> {
  factory CopyWith$Subscription$callHistory$historyCallHistory$user(
    Subscription$callHistory$historyCallHistory$user instance,
    TRes Function(Subscription$callHistory$historyCallHistory$user) then,
  ) = _CopyWithImpl$Subscription$callHistory$historyCallHistory$user;

  factory CopyWith$Subscription$callHistory$historyCallHistory$user.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$callHistory$historyCallHistory$user;

  TRes call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$callHistory$historyCallHistory$user<TRes>
    implements CopyWith$Subscription$callHistory$historyCallHistory$user<TRes> {
  _CopyWithImpl$Subscription$callHistory$historyCallHistory$user(
    this._instance,
    this._then,
  );

  final Subscription$callHistory$historyCallHistory$user _instance;

  final TRes Function(Subscription$callHistory$historyCallHistory$user) _then;

  static const _undefined = {};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$callHistory$historyCallHistory$user(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$callHistory$historyCallHistory$user<TRes>
    implements CopyWith$Subscription$callHistory$historyCallHistory$user<TRes> {
  _CopyWithStubImpl$Subscription$callHistory$historyCallHistory$user(this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$visitHistory {
  factory Variables$Subscription$visitHistory({
    required UuidValue personId,
    List<Input$HistoryVisitHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$visitHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$visitHistory._(this._$data);

  factory Variables$Subscription$visitHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryVisitHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$visitHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<Input$HistoryVisitHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryVisitHistoryBoolExp>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$visitHistory<
          Variables$Subscription$visitHistory>
      get copyWith => CopyWith$Variables$Subscription$visitHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$visitHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
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
    final l$personId = personId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$visitHistory<TRes> {
  factory CopyWith$Variables$Subscription$visitHistory(
    Variables$Subscription$visitHistory instance,
    TRes Function(Variables$Subscription$visitHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$visitHistory;

  factory CopyWith$Variables$Subscription$visitHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$visitHistory;

  TRes call({
    UuidValue? personId,
    List<Input$HistoryVisitHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$visitHistory<TRes>
    implements CopyWith$Variables$Subscription$visitHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$visitHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$visitHistory _instance;

  final TRes Function(Variables$Subscription$visitHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$visitHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryVisitHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$visitHistory<TRes>
    implements CopyWith$Variables$Subscription$visitHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$visitHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input$HistoryVisitHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$visitHistory {
  Subscription$visitHistory({required this.historyVisitHistory});

  factory Subscription$visitHistory.fromJson(Map<String, dynamic> json) {
    final l$historyVisitHistory = json['historyVisitHistory'];
    return Subscription$visitHistory(
        historyVisitHistory: (l$historyVisitHistory as List<dynamic>)
            .map((e) => Subscription$visitHistory$historyVisitHistory.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$visitHistory$historyVisitHistory> historyVisitHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyVisitHistory = historyVisitHistory;
    _resultData['historyVisitHistory'] =
        l$historyVisitHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyVisitHistory = historyVisitHistory;
    return Object.hashAll(
        [Object.hashAll(l$historyVisitHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$visitHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyVisitHistory = historyVisitHistory;
    final lOther$historyVisitHistory = other.historyVisitHistory;
    if (l$historyVisitHistory.length != lOther$historyVisitHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyVisitHistory.length; i++) {
      final l$historyVisitHistory$entry = l$historyVisitHistory[i];
      final lOther$historyVisitHistory$entry = lOther$historyVisitHistory[i];
      if (l$historyVisitHistory$entry != lOther$historyVisitHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$visitHistory
    on Subscription$visitHistory {
  CopyWith$Subscription$visitHistory<Subscription$visitHistory> get copyWith =>
      CopyWith$Subscription$visitHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$visitHistory<TRes> {
  factory CopyWith$Subscription$visitHistory(
    Subscription$visitHistory instance,
    TRes Function(Subscription$visitHistory) then,
  ) = _CopyWithImpl$Subscription$visitHistory;

  factory CopyWith$Subscription$visitHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$visitHistory;

  TRes call(
      {List<Subscription$visitHistory$historyVisitHistory>?
          historyVisitHistory});
  TRes historyVisitHistory(
      Iterable<Subscription$visitHistory$historyVisitHistory> Function(
              Iterable<
                  CopyWith$Subscription$visitHistory$historyVisitHistory<
                      Subscription$visitHistory$historyVisitHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$visitHistory<TRes>
    implements CopyWith$Subscription$visitHistory<TRes> {
  _CopyWithImpl$Subscription$visitHistory(
    this._instance,
    this._then,
  );

  final Subscription$visitHistory _instance;

  final TRes Function(Subscription$visitHistory) _then;

  static const _undefined = {};

  TRes call({Object? historyVisitHistory = _undefined}) =>
      _then(Subscription$visitHistory(
          historyVisitHistory:
              historyVisitHistory == _undefined || historyVisitHistory == null
                  ? _instance.historyVisitHistory
                  : (historyVisitHistory
                      as List<Subscription$visitHistory$historyVisitHistory>)));
  TRes historyVisitHistory(
          Iterable<Subscription$visitHistory$historyVisitHistory> Function(
                  Iterable<
                      CopyWith$Subscription$visitHistory$historyVisitHistory<
                          Subscription$visitHistory$historyVisitHistory>>)
              _fn) =>
      call(
          historyVisitHistory: _fn(_instance.historyVisitHistory.map(
              (e) => CopyWith$Subscription$visitHistory$historyVisitHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$visitHistory<TRes>
    implements CopyWith$Subscription$visitHistory<TRes> {
  _CopyWithStubImpl$Subscription$visitHistory(this._res);

  TRes _res;

  call(
          {List<Subscription$visitHistory$historyVisitHistory>?
              historyVisitHistory}) =>
      _res;
  historyVisitHistory(_fn) => _res;
}

const documentNodeSubscriptionvisitHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'visitHistory'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryVisitHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyVisitHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
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
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uid'),
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
      )
    ]),
  ),
]);

class Subscription$visitHistory$historyVisitHistory {
  Subscription$visitHistory$historyVisitHistory({
    required this.time,
    this.user,
    required this.$__typename,
  });

  factory Subscription$visitHistory$historyVisitHistory.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$visitHistory$historyVisitHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Subscription$visitHistory$historyVisitHistory$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Subscription$visitHistory$historyVisitHistory$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$visitHistory$historyVisitHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Subscription$visitHistory$historyVisitHistory
    on Subscription$visitHistory$historyVisitHistory {
  CopyWith$Subscription$visitHistory$historyVisitHistory<
          Subscription$visitHistory$historyVisitHistory>
      get copyWith => CopyWith$Subscription$visitHistory$historyVisitHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$visitHistory$historyVisitHistory<TRes> {
  factory CopyWith$Subscription$visitHistory$historyVisitHistory(
    Subscription$visitHistory$historyVisitHistory instance,
    TRes Function(Subscription$visitHistory$historyVisitHistory) then,
  ) = _CopyWithImpl$Subscription$visitHistory$historyVisitHistory;

  factory CopyWith$Subscription$visitHistory$historyVisitHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$visitHistory$historyVisitHistory;

  TRes call({
    DateTime? time,
    Subscription$visitHistory$historyVisitHistory$user? user,
    String? $__typename,
  });
  CopyWith$Subscription$visitHistory$historyVisitHistory$user<TRes> get user;
}

class _CopyWithImpl$Subscription$visitHistory$historyVisitHistory<TRes>
    implements CopyWith$Subscription$visitHistory$historyVisitHistory<TRes> {
  _CopyWithImpl$Subscription$visitHistory$historyVisitHistory(
    this._instance,
    this._then,
  );

  final Subscription$visitHistory$historyVisitHistory _instance;

  final TRes Function(Subscription$visitHistory$historyVisitHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$visitHistory$historyVisitHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined
            ? _instance.user
            : (user as Subscription$visitHistory$historyVisitHistory$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$visitHistory$historyVisitHistory$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Subscription$visitHistory$historyVisitHistory$user.stub(
            _then(_instance))
        : CopyWith$Subscription$visitHistory$historyVisitHistory$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$visitHistory$historyVisitHistory<TRes>
    implements CopyWith$Subscription$visitHistory$historyVisitHistory<TRes> {
  _CopyWithStubImpl$Subscription$visitHistory$historyVisitHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Subscription$visitHistory$historyVisitHistory$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$visitHistory$historyVisitHistory$user<TRes> get user =>
      CopyWith$Subscription$visitHistory$historyVisitHistory$user.stub(_res);
}

class Subscription$visitHistory$historyVisitHistory$user {
  Subscription$visitHistory$historyVisitHistory$user({
    required this.uid,
    required this.name,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$visitHistory$historyVisitHistory$user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$visitHistory$historyVisitHistory$user(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$visitHistory$historyVisitHistory$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$visitHistory$historyVisitHistory$user
    on Subscription$visitHistory$historyVisitHistory$user {
  CopyWith$Subscription$visitHistory$historyVisitHistory$user<
          Subscription$visitHistory$historyVisitHistory$user>
      get copyWith =>
          CopyWith$Subscription$visitHistory$historyVisitHistory$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$visitHistory$historyVisitHistory$user<
    TRes> {
  factory CopyWith$Subscription$visitHistory$historyVisitHistory$user(
    Subscription$visitHistory$historyVisitHistory$user instance,
    TRes Function(Subscription$visitHistory$historyVisitHistory$user) then,
  ) = _CopyWithImpl$Subscription$visitHistory$historyVisitHistory$user;

  factory CopyWith$Subscription$visitHistory$historyVisitHistory$user.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$visitHistory$historyVisitHistory$user;

  TRes call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$visitHistory$historyVisitHistory$user<TRes>
    implements
        CopyWith$Subscription$visitHistory$historyVisitHistory$user<TRes> {
  _CopyWithImpl$Subscription$visitHistory$historyVisitHistory$user(
    this._instance,
    this._then,
  );

  final Subscription$visitHistory$historyVisitHistory$user _instance;

  final TRes Function(Subscription$visitHistory$historyVisitHistory$user) _then;

  static const _undefined = {};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$visitHistory$historyVisitHistory$user(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$visitHistory$historyVisitHistory$user<TRes>
    implements
        CopyWith$Subscription$visitHistory$historyVisitHistory$user<TRes> {
  _CopyWithStubImpl$Subscription$visitHistory$historyVisitHistory$user(
      this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$confessionHistory {
  factory Variables$Subscription$confessionHistory({
    required UuidValue personId,
    List<Input$HistoryConfessionHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$confessionHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$confessionHistory._(this._$data);

  factory Variables$Subscription$confessionHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryConfessionHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$confessionHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<Input$HistoryConfessionHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryConfessionHistoryBoolExp>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$confessionHistory<
          Variables$Subscription$confessionHistory>
      get copyWith => CopyWith$Variables$Subscription$confessionHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$confessionHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
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
    final l$personId = personId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$confessionHistory<TRes> {
  factory CopyWith$Variables$Subscription$confessionHistory(
    Variables$Subscription$confessionHistory instance,
    TRes Function(Variables$Subscription$confessionHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$confessionHistory;

  factory CopyWith$Variables$Subscription$confessionHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$confessionHistory;

  TRes call({
    UuidValue? personId,
    List<Input$HistoryConfessionHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$confessionHistory<TRes>
    implements CopyWith$Variables$Subscription$confessionHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$confessionHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$confessionHistory _instance;

  final TRes Function(Variables$Subscription$confessionHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$confessionHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryConfessionHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$confessionHistory<TRes>
    implements CopyWith$Variables$Subscription$confessionHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$confessionHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input$HistoryConfessionHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$confessionHistory {
  Subscription$confessionHistory({required this.historyConfessionHistory});

  factory Subscription$confessionHistory.fromJson(Map<String, dynamic> json) {
    final l$historyConfessionHistory = json['historyConfessionHistory'];
    return Subscription$confessionHistory(
        historyConfessionHistory: (l$historyConfessionHistory as List<dynamic>)
            .map((e) => Subscription$confessionHistory$historyConfessionHistory
                .fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$confessionHistory$historyConfessionHistory>
      historyConfessionHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyConfessionHistory = historyConfessionHistory;
    _resultData['historyConfessionHistory'] =
        l$historyConfessionHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyConfessionHistory = historyConfessionHistory;
    return Object.hashAll(
        [Object.hashAll(l$historyConfessionHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$confessionHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyConfessionHistory = historyConfessionHistory;
    final lOther$historyConfessionHistory = other.historyConfessionHistory;
    if (l$historyConfessionHistory.length !=
        lOther$historyConfessionHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyConfessionHistory.length; i++) {
      final l$historyConfessionHistory$entry = l$historyConfessionHistory[i];
      final lOther$historyConfessionHistory$entry =
          lOther$historyConfessionHistory[i];
      if (l$historyConfessionHistory$entry !=
          lOther$historyConfessionHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$confessionHistory
    on Subscription$confessionHistory {
  CopyWith$Subscription$confessionHistory<Subscription$confessionHistory>
      get copyWith => CopyWith$Subscription$confessionHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$confessionHistory<TRes> {
  factory CopyWith$Subscription$confessionHistory(
    Subscription$confessionHistory instance,
    TRes Function(Subscription$confessionHistory) then,
  ) = _CopyWithImpl$Subscription$confessionHistory;

  factory CopyWith$Subscription$confessionHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$confessionHistory;

  TRes call(
      {List<Subscription$confessionHistory$historyConfessionHistory>?
          historyConfessionHistory});
  TRes historyConfessionHistory(
      Iterable<Subscription$confessionHistory$historyConfessionHistory> Function(
              Iterable<
                  CopyWith$Subscription$confessionHistory$historyConfessionHistory<
                      Subscription$confessionHistory$historyConfessionHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$confessionHistory<TRes>
    implements CopyWith$Subscription$confessionHistory<TRes> {
  _CopyWithImpl$Subscription$confessionHistory(
    this._instance,
    this._then,
  );

  final Subscription$confessionHistory _instance;

  final TRes Function(Subscription$confessionHistory) _then;

  static const _undefined = {};

  TRes call({Object? historyConfessionHistory = _undefined}) =>
      _then(Subscription$confessionHistory(
          historyConfessionHistory: historyConfessionHistory == _undefined ||
                  historyConfessionHistory == null
              ? _instance.historyConfessionHistory
              : (historyConfessionHistory as List<
                  Subscription$confessionHistory$historyConfessionHistory>)));
  TRes historyConfessionHistory(
          Iterable<Subscription$confessionHistory$historyConfessionHistory> Function(
                  Iterable<
                      CopyWith$Subscription$confessionHistory$historyConfessionHistory<
                          Subscription$confessionHistory$historyConfessionHistory>>)
              _fn) =>
      call(
          historyConfessionHistory: _fn(_instance.historyConfessionHistory.map(
              (e) =>
                  CopyWith$Subscription$confessionHistory$historyConfessionHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$confessionHistory<TRes>
    implements CopyWith$Subscription$confessionHistory<TRes> {
  _CopyWithStubImpl$Subscription$confessionHistory(this._res);

  TRes _res;

  call(
          {List<Subscription$confessionHistory$historyConfessionHistory>?
              historyConfessionHistory}) =>
      _res;
  historyConfessionHistory(_fn) => _res;
}

const documentNodeSubscriptionconfessionHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'confessionHistory'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryConfessionHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyConfessionHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
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
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uid'),
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
      )
    ]),
  ),
]);

class Subscription$confessionHistory$historyConfessionHistory {
  Subscription$confessionHistory$historyConfessionHistory({
    this.time,
    required this.user,
    required this.$__typename,
  });

  factory Subscription$confessionHistory$historyConfessionHistory.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$confessionHistory$historyConfessionHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user:
          Subscription$confessionHistory$historyConfessionHistory$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Subscription$confessionHistory$historyConfessionHistory$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$confessionHistory$historyConfessionHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Subscription$confessionHistory$historyConfessionHistory
    on Subscription$confessionHistory$historyConfessionHistory {
  CopyWith$Subscription$confessionHistory$historyConfessionHistory<
          Subscription$confessionHistory$historyConfessionHistory>
      get copyWith =>
          CopyWith$Subscription$confessionHistory$historyConfessionHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$confessionHistory$historyConfessionHistory<
    TRes> {
  factory CopyWith$Subscription$confessionHistory$historyConfessionHistory(
    Subscription$confessionHistory$historyConfessionHistory instance,
    TRes Function(Subscription$confessionHistory$historyConfessionHistory) then,
  ) = _CopyWithImpl$Subscription$confessionHistory$historyConfessionHistory;

  factory CopyWith$Subscription$confessionHistory$historyConfessionHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$confessionHistory$historyConfessionHistory;

  TRes call({
    DateTime? time,
    Subscription$confessionHistory$historyConfessionHistory$user? user,
    String? $__typename,
  });
  CopyWith$Subscription$confessionHistory$historyConfessionHistory$user<TRes>
      get user;
}

class _CopyWithImpl$Subscription$confessionHistory$historyConfessionHistory<
        TRes>
    implements
        CopyWith$Subscription$confessionHistory$historyConfessionHistory<TRes> {
  _CopyWithImpl$Subscription$confessionHistory$historyConfessionHistory(
    this._instance,
    this._then,
  );

  final Subscription$confessionHistory$historyConfessionHistory _instance;

  final TRes Function(Subscription$confessionHistory$historyConfessionHistory)
      _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$confessionHistory$historyConfessionHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined || user == null
            ? _instance.user
            : (user
                as Subscription$confessionHistory$historyConfessionHistory$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$confessionHistory$historyConfessionHistory$user<TRes>
      get user {
    final local$user = _instance.user;
    return CopyWith$Subscription$confessionHistory$historyConfessionHistory$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$confessionHistory$historyConfessionHistory<
        TRes>
    implements
        CopyWith$Subscription$confessionHistory$historyConfessionHistory<TRes> {
  _CopyWithStubImpl$Subscription$confessionHistory$historyConfessionHistory(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    Subscription$confessionHistory$historyConfessionHistory$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$confessionHistory$historyConfessionHistory$user<TRes>
      get user =>
          CopyWith$Subscription$confessionHistory$historyConfessionHistory$user
              .stub(_res);
}

class Subscription$confessionHistory$historyConfessionHistory$user {
  Subscription$confessionHistory$historyConfessionHistory$user({
    required this.uid,
    required this.name,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$confessionHistory$historyConfessionHistory$user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$confessionHistory$historyConfessionHistory$user(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
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
            is Subscription$confessionHistory$historyConfessionHistory$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$confessionHistory$historyConfessionHistory$user
    on Subscription$confessionHistory$historyConfessionHistory$user {
  CopyWith$Subscription$confessionHistory$historyConfessionHistory$user<
          Subscription$confessionHistory$historyConfessionHistory$user>
      get copyWith =>
          CopyWith$Subscription$confessionHistory$historyConfessionHistory$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$confessionHistory$historyConfessionHistory$user<
    TRes> {
  factory CopyWith$Subscription$confessionHistory$historyConfessionHistory$user(
    Subscription$confessionHistory$historyConfessionHistory$user instance,
    TRes Function(Subscription$confessionHistory$historyConfessionHistory$user)
        then,
  ) = _CopyWithImpl$Subscription$confessionHistory$historyConfessionHistory$user;

  factory CopyWith$Subscription$confessionHistory$historyConfessionHistory$user.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$confessionHistory$historyConfessionHistory$user;

  TRes call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$confessionHistory$historyConfessionHistory$user<
        TRes>
    implements
        CopyWith$Subscription$confessionHistory$historyConfessionHistory$user<
            TRes> {
  _CopyWithImpl$Subscription$confessionHistory$historyConfessionHistory$user(
    this._instance,
    this._then,
  );

  final Subscription$confessionHistory$historyConfessionHistory$user _instance;

  final TRes Function(
      Subscription$confessionHistory$historyConfessionHistory$user) _then;

  static const _undefined = {};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$confessionHistory$historyConfessionHistory$user(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$confessionHistory$historyConfessionHistory$user<
        TRes>
    implements
        CopyWith$Subscription$confessionHistory$historyConfessionHistory$user<
            TRes> {
  _CopyWithStubImpl$Subscription$confessionHistory$historyConfessionHistory$user(
      this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$kodasHistory {
  factory Variables$Subscription$kodasHistory({
    required UuidValue personId,
    List<Input$HistoryKodasHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$kodasHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$kodasHistory._(this._$data);

  factory Variables$Subscription$kodasHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryKodasHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$kodasHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<Input$HistoryKodasHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryKodasHistoryBoolExp>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$kodasHistory<
          Variables$Subscription$kodasHistory>
      get copyWith => CopyWith$Variables$Subscription$kodasHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$kodasHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
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
    final l$personId = personId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$kodasHistory<TRes> {
  factory CopyWith$Variables$Subscription$kodasHistory(
    Variables$Subscription$kodasHistory instance,
    TRes Function(Variables$Subscription$kodasHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$kodasHistory;

  factory CopyWith$Variables$Subscription$kodasHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$kodasHistory;

  TRes call({
    UuidValue? personId,
    List<Input$HistoryKodasHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$kodasHistory<TRes>
    implements CopyWith$Variables$Subscription$kodasHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$kodasHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$kodasHistory _instance;

  final TRes Function(Variables$Subscription$kodasHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$kodasHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryKodasHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$kodasHistory<TRes>
    implements CopyWith$Variables$Subscription$kodasHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$kodasHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input$HistoryKodasHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$kodasHistory {
  Subscription$kodasHistory({required this.historyKodasHistory});

  factory Subscription$kodasHistory.fromJson(Map<String, dynamic> json) {
    final l$historyKodasHistory = json['historyKodasHistory'];
    return Subscription$kodasHistory(
        historyKodasHistory: (l$historyKodasHistory as List<dynamic>)
            .map((e) => Subscription$kodasHistory$historyKodasHistory.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$kodasHistory$historyKodasHistory> historyKodasHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyKodasHistory = historyKodasHistory;
    _resultData['historyKodasHistory'] =
        l$historyKodasHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyKodasHistory = historyKodasHistory;
    return Object.hashAll(
        [Object.hashAll(l$historyKodasHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$kodasHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyKodasHistory = historyKodasHistory;
    final lOther$historyKodasHistory = other.historyKodasHistory;
    if (l$historyKodasHistory.length != lOther$historyKodasHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyKodasHistory.length; i++) {
      final l$historyKodasHistory$entry = l$historyKodasHistory[i];
      final lOther$historyKodasHistory$entry = lOther$historyKodasHistory[i];
      if (l$historyKodasHistory$entry != lOther$historyKodasHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$kodasHistory
    on Subscription$kodasHistory {
  CopyWith$Subscription$kodasHistory<Subscription$kodasHistory> get copyWith =>
      CopyWith$Subscription$kodasHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$kodasHistory<TRes> {
  factory CopyWith$Subscription$kodasHistory(
    Subscription$kodasHistory instance,
    TRes Function(Subscription$kodasHistory) then,
  ) = _CopyWithImpl$Subscription$kodasHistory;

  factory CopyWith$Subscription$kodasHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$kodasHistory;

  TRes call(
      {List<Subscription$kodasHistory$historyKodasHistory>?
          historyKodasHistory});
  TRes historyKodasHistory(
      Iterable<Subscription$kodasHistory$historyKodasHistory> Function(
              Iterable<
                  CopyWith$Subscription$kodasHistory$historyKodasHistory<
                      Subscription$kodasHistory$historyKodasHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$kodasHistory<TRes>
    implements CopyWith$Subscription$kodasHistory<TRes> {
  _CopyWithImpl$Subscription$kodasHistory(
    this._instance,
    this._then,
  );

  final Subscription$kodasHistory _instance;

  final TRes Function(Subscription$kodasHistory) _then;

  static const _undefined = {};

  TRes call({Object? historyKodasHistory = _undefined}) =>
      _then(Subscription$kodasHistory(
          historyKodasHistory:
              historyKodasHistory == _undefined || historyKodasHistory == null
                  ? _instance.historyKodasHistory
                  : (historyKodasHistory
                      as List<Subscription$kodasHistory$historyKodasHistory>)));
  TRes historyKodasHistory(
          Iterable<Subscription$kodasHistory$historyKodasHistory> Function(
                  Iterable<
                      CopyWith$Subscription$kodasHistory$historyKodasHistory<
                          Subscription$kodasHistory$historyKodasHistory>>)
              _fn) =>
      call(
          historyKodasHistory: _fn(_instance.historyKodasHistory.map(
              (e) => CopyWith$Subscription$kodasHistory$historyKodasHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$kodasHistory<TRes>
    implements CopyWith$Subscription$kodasHistory<TRes> {
  _CopyWithStubImpl$Subscription$kodasHistory(this._res);

  TRes _res;

  call(
          {List<Subscription$kodasHistory$historyKodasHistory>?
              historyKodasHistory}) =>
      _res;
  historyKodasHistory(_fn) => _res;
}

const documentNodeSubscriptionkodasHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'kodasHistory'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryKodasHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyKodasHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'personId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
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
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uid'),
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
      )
    ]),
  ),
]);

class Subscription$kodasHistory$historyKodasHistory {
  Subscription$kodasHistory$historyKodasHistory({
    this.time,
    required this.user,
    required this.$__typename,
  });

  factory Subscription$kodasHistory$historyKodasHistory.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$kodasHistory$historyKodasHistory(
      time: l$time == null ? null : dateFromString(l$time),
      user: Subscription$kodasHistory$historyKodasHistory$user.fromJson(
          (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? time;

  final Subscription$kodasHistory$historyKodasHistory$user user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = l$time == null ? null : dateToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$kodasHistory$historyKodasHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Subscription$kodasHistory$historyKodasHistory
    on Subscription$kodasHistory$historyKodasHistory {
  CopyWith$Subscription$kodasHistory$historyKodasHistory<
          Subscription$kodasHistory$historyKodasHistory>
      get copyWith => CopyWith$Subscription$kodasHistory$historyKodasHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$kodasHistory$historyKodasHistory<TRes> {
  factory CopyWith$Subscription$kodasHistory$historyKodasHistory(
    Subscription$kodasHistory$historyKodasHistory instance,
    TRes Function(Subscription$kodasHistory$historyKodasHistory) then,
  ) = _CopyWithImpl$Subscription$kodasHistory$historyKodasHistory;

  factory CopyWith$Subscription$kodasHistory$historyKodasHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$kodasHistory$historyKodasHistory;

  TRes call({
    DateTime? time,
    Subscription$kodasHistory$historyKodasHistory$user? user,
    String? $__typename,
  });
  CopyWith$Subscription$kodasHistory$historyKodasHistory$user<TRes> get user;
}

class _CopyWithImpl$Subscription$kodasHistory$historyKodasHistory<TRes>
    implements CopyWith$Subscription$kodasHistory$historyKodasHistory<TRes> {
  _CopyWithImpl$Subscription$kodasHistory$historyKodasHistory(
    this._instance,
    this._then,
  );

  final Subscription$kodasHistory$historyKodasHistory _instance;

  final TRes Function(Subscription$kodasHistory$historyKodasHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$kodasHistory$historyKodasHistory(
        time: time == _undefined ? _instance.time : (time as DateTime?),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Subscription$kodasHistory$historyKodasHistory$user),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$kodasHistory$historyKodasHistory$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Subscription$kodasHistory$historyKodasHistory$user(
        local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$kodasHistory$historyKodasHistory<TRes>
    implements CopyWith$Subscription$kodasHistory$historyKodasHistory<TRes> {
  _CopyWithStubImpl$Subscription$kodasHistory$historyKodasHistory(this._res);

  TRes _res;

  call({
    DateTime? time,
    Subscription$kodasHistory$historyKodasHistory$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$kodasHistory$historyKodasHistory$user<TRes> get user =>
      CopyWith$Subscription$kodasHistory$historyKodasHistory$user.stub(_res);
}

class Subscription$kodasHistory$historyKodasHistory$user {
  Subscription$kodasHistory$historyKodasHistory$user({
    required this.uid,
    required this.name,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$kodasHistory$historyKodasHistory$user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$kodasHistory$historyKodasHistory$user(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$kodasHistory$historyKodasHistory$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$kodasHistory$historyKodasHistory$user
    on Subscription$kodasHistory$historyKodasHistory$user {
  CopyWith$Subscription$kodasHistory$historyKodasHistory$user<
          Subscription$kodasHistory$historyKodasHistory$user>
      get copyWith =>
          CopyWith$Subscription$kodasHistory$historyKodasHistory$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$kodasHistory$historyKodasHistory$user<
    TRes> {
  factory CopyWith$Subscription$kodasHistory$historyKodasHistory$user(
    Subscription$kodasHistory$historyKodasHistory$user instance,
    TRes Function(Subscription$kodasHistory$historyKodasHistory$user) then,
  ) = _CopyWithImpl$Subscription$kodasHistory$historyKodasHistory$user;

  factory CopyWith$Subscription$kodasHistory$historyKodasHistory$user.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$kodasHistory$historyKodasHistory$user;

  TRes call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$kodasHistory$historyKodasHistory$user<TRes>
    implements
        CopyWith$Subscription$kodasHistory$historyKodasHistory$user<TRes> {
  _CopyWithImpl$Subscription$kodasHistory$historyKodasHistory$user(
    this._instance,
    this._then,
  );

  final Subscription$kodasHistory$historyKodasHistory$user _instance;

  final TRes Function(Subscription$kodasHistory$historyKodasHistory$user) _then;

  static const _undefined = {};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$kodasHistory$historyKodasHistory$user(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$kodasHistory$historyKodasHistory$user<TRes>
    implements
        CopyWith$Subscription$kodasHistory$historyKodasHistory$user<TRes> {
  _CopyWithStubImpl$Subscription$kodasHistory$historyKodasHistory$user(
      this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$personEditHistory {
  factory Variables$Subscription$personEditHistory({
    required UuidValue personId,
    List<Input$HistoryEditHistoryBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$personEditHistory._({
        r'personId': personId,
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$personEditHistory._(this._$data);

  factory Variables$Subscription$personEditHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$personId = data['personId'];
    result$data['personId'] = stringToUuid(l$personId);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryEditHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$personEditHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get personId => (_$data['personId'] as UuidValue);
  List<Input$HistoryEditHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryEditHistoryBoolExp>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$personId = personId;
    result$data['personId'] = uuidToString(l$personId);
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$personEditHistory<
          Variables$Subscription$personEditHistory>
      get copyWith => CopyWith$Variables$Subscription$personEditHistory(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$personEditHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (l$personId != lOther$personId) {
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
    final l$personId = personId;
    final l$where = where;
    final l$limit = limit;
    return Object.hashAll([
      l$personId,
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$personEditHistory<TRes> {
  factory CopyWith$Variables$Subscription$personEditHistory(
    Variables$Subscription$personEditHistory instance,
    TRes Function(Variables$Subscription$personEditHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$personEditHistory;

  factory CopyWith$Variables$Subscription$personEditHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$personEditHistory;

  TRes call({
    UuidValue? personId,
    List<Input$HistoryEditHistoryBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$personEditHistory<TRes>
    implements CopyWith$Variables$Subscription$personEditHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$personEditHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$personEditHistory _instance;

  final TRes Function(Variables$Subscription$personEditHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? personId = _undefined,
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$personEditHistory._({
        ..._instance._$data,
        if (personId != _undefined && personId != null)
          'personId': (personId as UuidValue),
        if (where != _undefined)
          'where': (where as List<Input$HistoryEditHistoryBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$personEditHistory<TRes>
    implements CopyWith$Variables$Subscription$personEditHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$personEditHistory(this._res);

  TRes _res;

  call({
    UuidValue? personId,
    List<Input$HistoryEditHistoryBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$personEditHistory {
  Subscription$personEditHistory({required this.historyEditHistory});

  factory Subscription$personEditHistory.fromJson(Map<String, dynamic> json) {
    final l$historyEditHistory = json['historyEditHistory'];
    return Subscription$personEditHistory(
        historyEditHistory: (l$historyEditHistory as List<dynamic>)
            .map((e) =>
                Subscription$personEditHistory$historyEditHistory.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$personEditHistory$historyEditHistory>
      historyEditHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyEditHistory = historyEditHistory;
    _resultData['historyEditHistory'] =
        l$historyEditHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyEditHistory = historyEditHistory;
    return Object.hashAll([Object.hashAll(l$historyEditHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$personEditHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyEditHistory = historyEditHistory;
    final lOther$historyEditHistory = other.historyEditHistory;
    if (l$historyEditHistory.length != lOther$historyEditHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyEditHistory.length; i++) {
      final l$historyEditHistory$entry = l$historyEditHistory[i];
      final lOther$historyEditHistory$entry = lOther$historyEditHistory[i];
      if (l$historyEditHistory$entry != lOther$historyEditHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$personEditHistory
    on Subscription$personEditHistory {
  CopyWith$Subscription$personEditHistory<Subscription$personEditHistory>
      get copyWith => CopyWith$Subscription$personEditHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$personEditHistory<TRes> {
  factory CopyWith$Subscription$personEditHistory(
    Subscription$personEditHistory instance,
    TRes Function(Subscription$personEditHistory) then,
  ) = _CopyWithImpl$Subscription$personEditHistory;

  factory CopyWith$Subscription$personEditHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$personEditHistory;

  TRes call(
      {List<Subscription$personEditHistory$historyEditHistory>?
          historyEditHistory});
  TRes historyEditHistory(
      Iterable<Subscription$personEditHistory$historyEditHistory> Function(
              Iterable<
                  CopyWith$Subscription$personEditHistory$historyEditHistory<
                      Subscription$personEditHistory$historyEditHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$personEditHistory<TRes>
    implements CopyWith$Subscription$personEditHistory<TRes> {
  _CopyWithImpl$Subscription$personEditHistory(
    this._instance,
    this._then,
  );

  final Subscription$personEditHistory _instance;

  final TRes Function(Subscription$personEditHistory) _then;

  static const _undefined = {};

  TRes call({Object? historyEditHistory = _undefined}) =>
      _then(Subscription$personEditHistory(
          historyEditHistory: historyEditHistory == _undefined ||
                  historyEditHistory == null
              ? _instance.historyEditHistory
              : (historyEditHistory
                  as List<Subscription$personEditHistory$historyEditHistory>)));
  TRes historyEditHistory(
          Iterable<Subscription$personEditHistory$historyEditHistory> Function(
                  Iterable<
                      CopyWith$Subscription$personEditHistory$historyEditHistory<
                          Subscription$personEditHistory$historyEditHistory>>)
              _fn) =>
      call(
          historyEditHistory: _fn(_instance.historyEditHistory.map(
              (e) => CopyWith$Subscription$personEditHistory$historyEditHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$personEditHistory<TRes>
    implements CopyWith$Subscription$personEditHistory<TRes> {
  _CopyWithStubImpl$Subscription$personEditHistory(this._res);

  TRes _res;

  call(
          {List<Subscription$personEditHistory$historyEditHistory>?
              historyEditHistory}) =>
      _res;
  historyEditHistory(_fn) => _res;
}

const documentNodeSubscriptionpersonEditHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'personEditHistory'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryEditHistoryBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyEditHistory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'table'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: StringValueNode(
                            value: 'persons',
                            isBlock: false,
                          ),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'recordId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value:
                              VariableNode(name: NameNode(value: 'personId')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'time'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
        ],
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
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'uid'),
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
      )
    ]),
  ),
]);

class Subscription$personEditHistory$historyEditHistory {
  Subscription$personEditHistory$historyEditHistory({
    required this.time,
    this.user,
    required this.$__typename,
  });

  factory Subscription$personEditHistory$historyEditHistory.fromJson(
      Map<String, dynamic> json) {
    final l$time = json['time'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$personEditHistory$historyEditHistory(
      time: tstzFromString(l$time),
      user: l$user == null
          ? null
          : Subscription$personEditHistory$historyEditHistory$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime time;

  final Subscription$personEditHistory$historyEditHistory$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$time = time;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$time,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$personEditHistory$historyEditHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Subscription$personEditHistory$historyEditHistory
    on Subscription$personEditHistory$historyEditHistory {
  CopyWith$Subscription$personEditHistory$historyEditHistory<
          Subscription$personEditHistory$historyEditHistory>
      get copyWith =>
          CopyWith$Subscription$personEditHistory$historyEditHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$personEditHistory$historyEditHistory<
    TRes> {
  factory CopyWith$Subscription$personEditHistory$historyEditHistory(
    Subscription$personEditHistory$historyEditHistory instance,
    TRes Function(Subscription$personEditHistory$historyEditHistory) then,
  ) = _CopyWithImpl$Subscription$personEditHistory$historyEditHistory;

  factory CopyWith$Subscription$personEditHistory$historyEditHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$personEditHistory$historyEditHistory;

  TRes call({
    DateTime? time,
    Subscription$personEditHistory$historyEditHistory$user? user,
    String? $__typename,
  });
  CopyWith$Subscription$personEditHistory$historyEditHistory$user<TRes>
      get user;
}

class _CopyWithImpl$Subscription$personEditHistory$historyEditHistory<TRes>
    implements
        CopyWith$Subscription$personEditHistory$historyEditHistory<TRes> {
  _CopyWithImpl$Subscription$personEditHistory$historyEditHistory(
    this._instance,
    this._then,
  );

  final Subscription$personEditHistory$historyEditHistory _instance;

  final TRes Function(Subscription$personEditHistory$historyEditHistory) _then;

  static const _undefined = {};

  TRes call({
    Object? time = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$personEditHistory$historyEditHistory(
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        user: user == _undefined
            ? _instance.user
            : (user as Subscription$personEditHistory$historyEditHistory$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$personEditHistory$historyEditHistory$user<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Subscription$personEditHistory$historyEditHistory$user.stub(
            _then(_instance))
        : CopyWith$Subscription$personEditHistory$historyEditHistory$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$personEditHistory$historyEditHistory<TRes>
    implements
        CopyWith$Subscription$personEditHistory$historyEditHistory<TRes> {
  _CopyWithStubImpl$Subscription$personEditHistory$historyEditHistory(
      this._res);

  TRes _res;

  call({
    DateTime? time,
    Subscription$personEditHistory$historyEditHistory$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$personEditHistory$historyEditHistory$user<TRes>
      get user =>
          CopyWith$Subscription$personEditHistory$historyEditHistory$user.stub(
              _res);
}

class Subscription$personEditHistory$historyEditHistory$user {
  Subscription$personEditHistory$historyEditHistory$user({
    required this.uid,
    required this.name,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$personEditHistory$historyEditHistory$user.fromJson(
      Map<String, dynamic> json) {
    final l$uid = json['uid'];
    final l$name = json['name'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$personEditHistory$historyEditHistory$user(
      uid: stringToUuid(l$uid),
      name: (l$name as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue uid;

  final String name;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = uuidToString(l$uid);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uid,
      l$name,
      l$photoUpdatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$personEditHistory$historyEditHistory$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$personEditHistory$historyEditHistory$user
    on Subscription$personEditHistory$historyEditHistory$user {
  CopyWith$Subscription$personEditHistory$historyEditHistory$user<
          Subscription$personEditHistory$historyEditHistory$user>
      get copyWith =>
          CopyWith$Subscription$personEditHistory$historyEditHistory$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$personEditHistory$historyEditHistory$user<
    TRes> {
  factory CopyWith$Subscription$personEditHistory$historyEditHistory$user(
    Subscription$personEditHistory$historyEditHistory$user instance,
    TRes Function(Subscription$personEditHistory$historyEditHistory$user) then,
  ) = _CopyWithImpl$Subscription$personEditHistory$historyEditHistory$user;

  factory CopyWith$Subscription$personEditHistory$historyEditHistory$user.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$personEditHistory$historyEditHistory$user;

  TRes call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$personEditHistory$historyEditHistory$user<TRes>
    implements
        CopyWith$Subscription$personEditHistory$historyEditHistory$user<TRes> {
  _CopyWithImpl$Subscription$personEditHistory$historyEditHistory$user(
    this._instance,
    this._then,
  );

  final Subscription$personEditHistory$historyEditHistory$user _instance;

  final TRes Function(Subscription$personEditHistory$historyEditHistory$user)
      _then;

  static const _undefined = {};

  TRes call({
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$personEditHistory$historyEditHistory$user(
        uid: uid == _undefined || uid == null
            ? _instance.uid
            : (uid as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$personEditHistory$historyEditHistory$user<
        TRes>
    implements
        CopyWith$Subscription$personEditHistory$historyEditHistory$user<TRes> {
  _CopyWithStubImpl$Subscription$personEditHistory$historyEditHistory$user(
      this._res);

  TRes _res;

  call({
    UuidValue? uid,
    String? name,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$personAttendance {
  factory Variables$Subscription$personAttendance({
    List<Input$HistoryAttendanceHistoryBoolExp>? where,
    List<Input$HistoryAttendanceHistoryOrderBy>? orderBy,
    required int limit,
  }) =>
      Variables$Subscription$personAttendance._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        r'limit': limit,
      });

  Variables$Subscription$personAttendance._(this._$data);

  factory Variables$Subscription$personAttendance.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$HistoryAttendanceHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$HistoryAttendanceHistoryOrderBy.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    final l$limit = data['limit'];
    result$data['limit'] = (l$limit as int);
    return Variables$Subscription$personAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$HistoryAttendanceHistoryBoolExp>? get where =>
      (_$data['where'] as List<Input$HistoryAttendanceHistoryBoolExp>?);
  List<Input$HistoryAttendanceHistoryOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$HistoryAttendanceHistoryOrderBy>?);
  int get limit => (_$data['limit'] as int);
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
    final l$limit = limit;
    result$data['limit'] = l$limit;
    return result$data;
  }

  CopyWith$Variables$Subscription$personAttendance<
          Variables$Subscription$personAttendance>
      get copyWith => CopyWith$Variables$Subscription$personAttendance(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$personAttendance) ||
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
      l$limit,
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$personAttendance<TRes> {
  factory CopyWith$Variables$Subscription$personAttendance(
    Variables$Subscription$personAttendance instance,
    TRes Function(Variables$Subscription$personAttendance) then,
  ) = _CopyWithImpl$Variables$Subscription$personAttendance;

  factory CopyWith$Variables$Subscription$personAttendance.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$personAttendance;

  TRes call({
    List<Input$HistoryAttendanceHistoryBoolExp>? where,
    List<Input$HistoryAttendanceHistoryOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$personAttendance<TRes>
    implements CopyWith$Variables$Subscription$personAttendance<TRes> {
  _CopyWithImpl$Variables$Subscription$personAttendance(
    this._instance,
    this._then,
  );

  final Variables$Subscription$personAttendance _instance;

  final TRes Function(Variables$Subscription$personAttendance) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$personAttendance._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$HistoryAttendanceHistoryBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$HistoryAttendanceHistoryOrderBy>?),
        if (limit != _undefined && limit != null) 'limit': (limit as int),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$personAttendance<TRes>
    implements CopyWith$Variables$Subscription$personAttendance<TRes> {
  _CopyWithStubImpl$Variables$Subscription$personAttendance(this._res);

  TRes _res;

  call({
    List<Input$HistoryAttendanceHistoryBoolExp>? where,
    List<Input$HistoryAttendanceHistoryOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription$personAttendance {
  Subscription$personAttendance({required this.historyAttendanceHistory});

  factory Subscription$personAttendance.fromJson(Map<String, dynamic> json) {
    final l$historyAttendanceHistory = json['historyAttendanceHistory'];
    return Subscription$personAttendance(
        historyAttendanceHistory: (l$historyAttendanceHistory as List<dynamic>)
            .map((e) =>
                Subscription$personAttendance$historyAttendanceHistory.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$personAttendance$historyAttendanceHistory>
      historyAttendanceHistory;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyAttendanceHistory = historyAttendanceHistory;
    _resultData['historyAttendanceHistory'] =
        l$historyAttendanceHistory.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyAttendanceHistory = historyAttendanceHistory;
    return Object.hashAll(
        [Object.hashAll(l$historyAttendanceHistory.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$personAttendance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyAttendanceHistory = historyAttendanceHistory;
    final lOther$historyAttendanceHistory = other.historyAttendanceHistory;
    if (l$historyAttendanceHistory.length !=
        lOther$historyAttendanceHistory.length) {
      return false;
    }
    for (int i = 0; i < l$historyAttendanceHistory.length; i++) {
      final l$historyAttendanceHistory$entry = l$historyAttendanceHistory[i];
      final lOther$historyAttendanceHistory$entry =
          lOther$historyAttendanceHistory[i];
      if (l$historyAttendanceHistory$entry !=
          lOther$historyAttendanceHistory$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$personAttendance
    on Subscription$personAttendance {
  CopyWith$Subscription$personAttendance<Subscription$personAttendance>
      get copyWith => CopyWith$Subscription$personAttendance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$personAttendance<TRes> {
  factory CopyWith$Subscription$personAttendance(
    Subscription$personAttendance instance,
    TRes Function(Subscription$personAttendance) then,
  ) = _CopyWithImpl$Subscription$personAttendance;

  factory CopyWith$Subscription$personAttendance.stub(TRes res) =
      _CopyWithStubImpl$Subscription$personAttendance;

  TRes call(
      {List<Subscription$personAttendance$historyAttendanceHistory>?
          historyAttendanceHistory});
  TRes historyAttendanceHistory(
      Iterable<Subscription$personAttendance$historyAttendanceHistory> Function(
              Iterable<
                  CopyWith$Subscription$personAttendance$historyAttendanceHistory<
                      Subscription$personAttendance$historyAttendanceHistory>>)
          _fn);
}

class _CopyWithImpl$Subscription$personAttendance<TRes>
    implements CopyWith$Subscription$personAttendance<TRes> {
  _CopyWithImpl$Subscription$personAttendance(
    this._instance,
    this._then,
  );

  final Subscription$personAttendance _instance;

  final TRes Function(Subscription$personAttendance) _then;

  static const _undefined = {};

  TRes call({Object? historyAttendanceHistory = _undefined}) =>
      _then(Subscription$personAttendance(
          historyAttendanceHistory: historyAttendanceHistory == _undefined ||
                  historyAttendanceHistory == null
              ? _instance.historyAttendanceHistory
              : (historyAttendanceHistory as List<
                  Subscription$personAttendance$historyAttendanceHistory>)));
  TRes historyAttendanceHistory(
          Iterable<Subscription$personAttendance$historyAttendanceHistory> Function(
                  Iterable<
                      CopyWith$Subscription$personAttendance$historyAttendanceHistory<
                          Subscription$personAttendance$historyAttendanceHistory>>)
              _fn) =>
      call(
          historyAttendanceHistory: _fn(_instance.historyAttendanceHistory.map(
              (e) =>
                  CopyWith$Subscription$personAttendance$historyAttendanceHistory(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$personAttendance<TRes>
    implements CopyWith$Subscription$personAttendance<TRes> {
  _CopyWithStubImpl$Subscription$personAttendance(this._res);

  TRes _res;

  call(
          {List<Subscription$personAttendance$historyAttendanceHistory>?
              historyAttendanceHistory}) =>
      _res;
  historyAttendanceHistory(_fn) => _res;
}

const documentNodeSubscriptionpersonAttendance = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'personAttendance'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HistoryAttendanceHistoryBoolExp'),
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
            name: NameNode(value: 'HistoryAttendanceHistoryOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'time'),
            value: EnumValueNode(name: NameNode(value: 'DESC')),
          )
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'historyAttendanceHistory'),
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
            name: NameNode(value: 'recordedBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
      )
    ]),
  ),
]);

class Subscription$personAttendance$historyAttendanceHistory {
  Subscription$personAttendance$historyAttendanceHistory({
    required this.recordedBy,
    required this.time,
    required this.$__typename,
  });

  factory Subscription$personAttendance$historyAttendanceHistory.fromJson(
      Map<String, dynamic> json) {
    final l$recordedBy = json['recordedBy'];
    final l$time = json['time'];
    final l$$__typename = json['__typename'];
    return Subscription$personAttendance$historyAttendanceHistory(
      recordedBy: stringToUuid(l$recordedBy),
      time: tstzFromString(l$time),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue recordedBy;

  final DateTime time;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recordedBy = recordedBy;
    _resultData['recordedBy'] = uuidToString(l$recordedBy);
    final l$time = time;
    _resultData['time'] = tstzToString(l$time);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recordedBy = recordedBy;
    final l$time = time;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$recordedBy,
      l$time,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$personAttendance$historyAttendanceHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (l$recordedBy != lOther$recordedBy) {
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

extension UtilityExtension$Subscription$personAttendance$historyAttendanceHistory
    on Subscription$personAttendance$historyAttendanceHistory {
  CopyWith$Subscription$personAttendance$historyAttendanceHistory<
          Subscription$personAttendance$historyAttendanceHistory>
      get copyWith =>
          CopyWith$Subscription$personAttendance$historyAttendanceHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$personAttendance$historyAttendanceHistory<
    TRes> {
  factory CopyWith$Subscription$personAttendance$historyAttendanceHistory(
    Subscription$personAttendance$historyAttendanceHistory instance,
    TRes Function(Subscription$personAttendance$historyAttendanceHistory) then,
  ) = _CopyWithImpl$Subscription$personAttendance$historyAttendanceHistory;

  factory CopyWith$Subscription$personAttendance$historyAttendanceHistory.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$personAttendance$historyAttendanceHistory;

  TRes call({
    UuidValue? recordedBy,
    DateTime? time,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$personAttendance$historyAttendanceHistory<TRes>
    implements
        CopyWith$Subscription$personAttendance$historyAttendanceHistory<TRes> {
  _CopyWithImpl$Subscription$personAttendance$historyAttendanceHistory(
    this._instance,
    this._then,
  );

  final Subscription$personAttendance$historyAttendanceHistory _instance;

  final TRes Function(Subscription$personAttendance$historyAttendanceHistory)
      _then;

  static const _undefined = {};

  TRes call({
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$personAttendance$historyAttendanceHistory(
        recordedBy: recordedBy == _undefined || recordedBy == null
            ? _instance.recordedBy
            : (recordedBy as UuidValue),
        time: time == _undefined || time == null
            ? _instance.time
            : (time as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$personAttendance$historyAttendanceHistory<
        TRes>
    implements
        CopyWith$Subscription$personAttendance$historyAttendanceHistory<TRes> {
  _CopyWithStubImpl$Subscription$personAttendance$historyAttendanceHistory(
      this._res);

  TRes _res;

  call({
    UuidValue? recordedBy,
    DateTime? time,
    String? $__typename,
  }) =>
      _res;
}
