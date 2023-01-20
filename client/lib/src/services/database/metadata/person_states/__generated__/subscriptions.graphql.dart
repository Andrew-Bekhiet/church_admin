import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getPersonStatesStream {
  factory Variables$Subscription$getPersonStatesStream({
    List<Input$PersonStatesBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$getPersonStatesStream._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$getPersonStatesStream._(this._$data);

  factory Variables$Subscription$getPersonStatesStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input$PersonStatesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$getPersonStatesStream._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PersonStatesBoolExp>? get where =>
      (_$data['where'] as List<Input$PersonStatesBoolExp>?);
  int? get limit => (_$data['limit'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Variables$Subscription$getPersonStatesStream<
          Variables$Subscription$getPersonStatesStream>
      get copyWith => CopyWith$Variables$Subscription$getPersonStatesStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getPersonStatesStream) ||
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
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$getPersonStatesStream<TRes> {
  factory CopyWith$Variables$Subscription$getPersonStatesStream(
    Variables$Subscription$getPersonStatesStream instance,
    TRes Function(Variables$Subscription$getPersonStatesStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getPersonStatesStream;

  factory CopyWith$Variables$Subscription$getPersonStatesStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getPersonStatesStream;

  TRes call({
    List<Input$PersonStatesBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$getPersonStatesStream<TRes>
    implements CopyWith$Variables$Subscription$getPersonStatesStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getPersonStatesStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getPersonStatesStream _instance;

  final TRes Function(Variables$Subscription$getPersonStatesStream) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$getPersonStatesStream._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$PersonStatesBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getPersonStatesStream<TRes>
    implements CopyWith$Variables$Subscription$getPersonStatesStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getPersonStatesStream(this._res);

  TRes _res;

  call({
    List<Input$PersonStatesBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$getPersonStatesStream {
  Subscription$getPersonStatesStream({required this.personStates});

  factory Subscription$getPersonStatesStream.fromJson(
      Map<String, dynamic> json) {
    final l$personStates = json['personStates'];
    return Subscription$getPersonStatesStream(
        personStates: (l$personStates as List<dynamic>)
            .map((e) =>
                Subscription$getPersonStatesStream$personStates.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getPersonStatesStream$personStates> personStates;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personStates = personStates;
    _resultData['personStates'] =
        l$personStates.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personStates = personStates;
    return Object.hashAll([Object.hashAll(l$personStates.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getPersonStatesStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personStates = personStates;
    final lOther$personStates = other.personStates;
    if (l$personStates.length != lOther$personStates.length) {
      return false;
    }
    for (int i = 0; i < l$personStates.length; i++) {
      final l$personStates$entry = l$personStates[i];
      final lOther$personStates$entry = lOther$personStates[i];
      if (l$personStates$entry != lOther$personStates$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getPersonStatesStream
    on Subscription$getPersonStatesStream {
  CopyWith$Subscription$getPersonStatesStream<
          Subscription$getPersonStatesStream>
      get copyWith => CopyWith$Subscription$getPersonStatesStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getPersonStatesStream<TRes> {
  factory CopyWith$Subscription$getPersonStatesStream(
    Subscription$getPersonStatesStream instance,
    TRes Function(Subscription$getPersonStatesStream) then,
  ) = _CopyWithImpl$Subscription$getPersonStatesStream;

  factory CopyWith$Subscription$getPersonStatesStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getPersonStatesStream;

  TRes call(
      {List<Subscription$getPersonStatesStream$personStates>? personStates});
  TRes personStates(
      Iterable<Subscription$getPersonStatesStream$personStates> Function(
              Iterable<
                  CopyWith$Subscription$getPersonStatesStream$personStates<
                      Subscription$getPersonStatesStream$personStates>>)
          _fn);
}

class _CopyWithImpl$Subscription$getPersonStatesStream<TRes>
    implements CopyWith$Subscription$getPersonStatesStream<TRes> {
  _CopyWithImpl$Subscription$getPersonStatesStream(
    this._instance,
    this._then,
  );

  final Subscription$getPersonStatesStream _instance;

  final TRes Function(Subscription$getPersonStatesStream) _then;

  static const _undefined = {};

  TRes call({Object? personStates = _undefined}) =>
      _then(Subscription$getPersonStatesStream(
          personStates: personStates == _undefined || personStates == null
              ? _instance.personStates
              : (personStates
                  as List<Subscription$getPersonStatesStream$personStates>)));
  TRes personStates(
          Iterable<Subscription$getPersonStatesStream$personStates> Function(
                  Iterable<
                      CopyWith$Subscription$getPersonStatesStream$personStates<
                          Subscription$getPersonStatesStream$personStates>>)
              _fn) =>
      call(
          personStates: _fn(_instance.personStates.map(
              (e) => CopyWith$Subscription$getPersonStatesStream$personStates(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getPersonStatesStream<TRes>
    implements CopyWith$Subscription$getPersonStatesStream<TRes> {
  _CopyWithStubImpl$Subscription$getPersonStatesStream(this._res);

  TRes _res;

  call({List<Subscription$getPersonStatesStream$personStates>? personStates}) =>
      _res;
  personStates(_fn) => _res;
}

const documentNodeSubscriptiongetPersonStatesStream =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getPersonStatesStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonStatesBoolExp'),
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
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'personStates'),
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
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'name'),
                value: EnumValueNode(name: NameNode(value: 'ASC')),
              )
            ]),
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

class Subscription$getPersonStatesStream$personStates {
  Subscription$getPersonStatesStream$personStates({
    required this.id,
    required this.name,
    required this.color,
    required this.$__typename,
  });

  factory Subscription$getPersonStatesStream$personStates.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription$getPersonStatesStream$personStates(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int color;

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
    if (!(other is Subscription$getPersonStatesStream$personStates) ||
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

extension UtilityExtension$Subscription$getPersonStatesStream$personStates
    on Subscription$getPersonStatesStream$personStates {
  CopyWith$Subscription$getPersonStatesStream$personStates<
          Subscription$getPersonStatesStream$personStates>
      get copyWith => CopyWith$Subscription$getPersonStatesStream$personStates(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getPersonStatesStream$personStates<TRes> {
  factory CopyWith$Subscription$getPersonStatesStream$personStates(
    Subscription$getPersonStatesStream$personStates instance,
    TRes Function(Subscription$getPersonStatesStream$personStates) then,
  ) = _CopyWithImpl$Subscription$getPersonStatesStream$personStates;

  factory CopyWith$Subscription$getPersonStatesStream$personStates.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getPersonStatesStream$personStates;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getPersonStatesStream$personStates<TRes>
    implements CopyWith$Subscription$getPersonStatesStream$personStates<TRes> {
  _CopyWithImpl$Subscription$getPersonStatesStream$personStates(
    this._instance,
    this._then,
  );

  final Subscription$getPersonStatesStream$personStates _instance;

  final TRes Function(Subscription$getPersonStatesStream$personStates) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getPersonStatesStream$personStates(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined || color == null
            ? _instance.color
            : (color as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getPersonStatesStream$personStates<TRes>
    implements CopyWith$Subscription$getPersonStatesStream$personStates<TRes> {
  _CopyWithStubImpl$Subscription$getPersonStatesStream$personStates(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}
