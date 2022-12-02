import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getFathersStream {
  factory Variables$Subscription$getFathersStream({
    List<Input$FathersBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$getFathersStream._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$getFathersStream._(this._$data);

  factory Variables$Subscription$getFathersStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$FathersBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$getFathersStream._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$FathersBoolExp>? get where =>
      (_$data['where'] as List<Input$FathersBoolExp>?);
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

  CopyWith$Variables$Subscription$getFathersStream<
          Variables$Subscription$getFathersStream>
      get copyWith => CopyWith$Variables$Subscription$getFathersStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getFathersStream) ||
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

abstract class CopyWith$Variables$Subscription$getFathersStream<TRes> {
  factory CopyWith$Variables$Subscription$getFathersStream(
    Variables$Subscription$getFathersStream instance,
    TRes Function(Variables$Subscription$getFathersStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getFathersStream;

  factory CopyWith$Variables$Subscription$getFathersStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getFathersStream;

  TRes call({
    List<Input$FathersBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$getFathersStream<TRes>
    implements CopyWith$Variables$Subscription$getFathersStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getFathersStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getFathersStream _instance;

  final TRes Function(Variables$Subscription$getFathersStream) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$getFathersStream._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$FathersBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getFathersStream<TRes>
    implements CopyWith$Variables$Subscription$getFathersStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getFathersStream(this._res);

  TRes _res;

  call({
    List<Input$FathersBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$getFathersStream {
  Subscription$getFathersStream({required this.fathers});

  factory Subscription$getFathersStream.fromJson(Map<String, dynamic> json) {
    final l$fathers = json['fathers'];
    return Subscription$getFathersStream(
        fathers: (l$fathers as List<dynamic>)
            .map((e) => Subscription$getFathersStream$fathers.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getFathersStream$fathers> fathers;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$fathers = fathers;
    _resultData['fathers'] = l$fathers.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$fathers = fathers;
    return Object.hashAll([Object.hashAll(l$fathers.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getFathersStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fathers = fathers;
    final lOther$fathers = other.fathers;
    if (l$fathers.length != lOther$fathers.length) {
      return false;
    }
    for (int i = 0; i < l$fathers.length; i++) {
      final l$fathers$entry = l$fathers[i];
      final lOther$fathers$entry = lOther$fathers[i];
      if (l$fathers$entry != lOther$fathers$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getFathersStream
    on Subscription$getFathersStream {
  CopyWith$Subscription$getFathersStream<Subscription$getFathersStream>
      get copyWith => CopyWith$Subscription$getFathersStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getFathersStream<TRes> {
  factory CopyWith$Subscription$getFathersStream(
    Subscription$getFathersStream instance,
    TRes Function(Subscription$getFathersStream) then,
  ) = _CopyWithImpl$Subscription$getFathersStream;

  factory CopyWith$Subscription$getFathersStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getFathersStream;

  TRes call({List<Subscription$getFathersStream$fathers>? fathers});
  TRes fathers(
      Iterable<Subscription$getFathersStream$fathers> Function(
              Iterable<
                  CopyWith$Subscription$getFathersStream$fathers<
                      Subscription$getFathersStream$fathers>>)
          _fn);
}

class _CopyWithImpl$Subscription$getFathersStream<TRes>
    implements CopyWith$Subscription$getFathersStream<TRes> {
  _CopyWithImpl$Subscription$getFathersStream(
    this._instance,
    this._then,
  );

  final Subscription$getFathersStream _instance;

  final TRes Function(Subscription$getFathersStream) _then;

  static const _undefined = {};

  TRes call({Object? fathers = _undefined}) =>
      _then(Subscription$getFathersStream(
          fathers: fathers == _undefined || fathers == null
              ? _instance.fathers
              : (fathers as List<Subscription$getFathersStream$fathers>)));
  TRes fathers(
          Iterable<Subscription$getFathersStream$fathers> Function(
                  Iterable<
                      CopyWith$Subscription$getFathersStream$fathers<
                          Subscription$getFathersStream$fathers>>)
              _fn) =>
      call(
          fathers: _fn(_instance.fathers
              .map((e) => CopyWith$Subscription$getFathersStream$fathers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getFathersStream<TRes>
    implements CopyWith$Subscription$getFathersStream<TRes> {
  _CopyWithStubImpl$Subscription$getFathersStream(this._res);

  TRes _res;

  call({List<Subscription$getFathersStream$fathers>? fathers}) => _res;
  fathers(_fn) => _res;
}

const documentNodeSubscriptiongetFathersStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getFathersStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'FathersBoolExp'),
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
        defaultValue: DefaultValueNode(value: IntValueNode(value: '25')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'fathers'),
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

class Subscription$getFathersStream$fathers {
  Subscription$getFathersStream$fathers({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$getFathersStream$fathers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$getFathersStream$fathers(
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
    if (!(other is Subscription$getFathersStream$fathers) ||
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

extension UtilityExtension$Subscription$getFathersStream$fathers
    on Subscription$getFathersStream$fathers {
  CopyWith$Subscription$getFathersStream$fathers<
          Subscription$getFathersStream$fathers>
      get copyWith => CopyWith$Subscription$getFathersStream$fathers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getFathersStream$fathers<TRes> {
  factory CopyWith$Subscription$getFathersStream$fathers(
    Subscription$getFathersStream$fathers instance,
    TRes Function(Subscription$getFathersStream$fathers) then,
  ) = _CopyWithImpl$Subscription$getFathersStream$fathers;

  factory CopyWith$Subscription$getFathersStream$fathers.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getFathersStream$fathers;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getFathersStream$fathers<TRes>
    implements CopyWith$Subscription$getFathersStream$fathers<TRes> {
  _CopyWithImpl$Subscription$getFathersStream$fathers(
    this._instance,
    this._then,
  );

  final Subscription$getFathersStream$fathers _instance;

  final TRes Function(Subscription$getFathersStream$fathers) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getFathersStream$fathers(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getFathersStream$fathers<TRes>
    implements CopyWith$Subscription$getFathersStream$fathers<TRes> {
  _CopyWithStubImpl$Subscription$getFathersStream$fathers(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
