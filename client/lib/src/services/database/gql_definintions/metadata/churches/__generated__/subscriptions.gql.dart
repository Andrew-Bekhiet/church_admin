import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllChurches {
  factory Variables_Subscription_watchAllChurches({
    List<Input_ChurchesBoolExp>? where,
    int? limit,
  }) =>
      Variables_Subscription_watchAllChurches._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllChurches._(this._$data);

  factory Variables_Subscription_watchAllChurches.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input_ChurchesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllChurches._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ChurchesBoolExp>? get where =>
      (_$data['where'] as List<Input_ChurchesBoolExp>?);
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

  CopyWith_Variables_Subscription_watchAllChurches<
          Variables_Subscription_watchAllChurches>
      get copyWith => CopyWith_Variables_Subscription_watchAllChurches(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllChurches) ||
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

abstract class CopyWith_Variables_Subscription_watchAllChurches<TRes> {
  factory CopyWith_Variables_Subscription_watchAllChurches(
    Variables_Subscription_watchAllChurches instance,
    TRes Function(Variables_Subscription_watchAllChurches) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllChurches;

  factory CopyWith_Variables_Subscription_watchAllChurches.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllChurches;

  TRes call({
    List<Input_ChurchesBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllChurches<TRes>
    implements CopyWith_Variables_Subscription_watchAllChurches<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllChurches(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllChurches _instance;

  final TRes Function(Variables_Subscription_watchAllChurches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllChurches._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_ChurchesBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllChurches<TRes>
    implements CopyWith_Variables_Subscription_watchAllChurches<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllChurches(this._res);

  TRes _res;

  call({
    List<Input_ChurchesBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllChurches {
  Subscription_watchAllChurches({required this.churches});

  factory Subscription_watchAllChurches.fromJson(Map<String, dynamic> json) {
    final l$churches = json['churches'];
    return Subscription_watchAllChurches(
        churches: (l$churches as List<dynamic>)
            .map((e) => Subscription_watchAllChurches_churches.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllChurches_churches> churches;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$churches = churches;
    _resultData['churches'] = l$churches.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$churches = churches;
    return Object.hashAll([Object.hashAll(l$churches.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchAllChurches) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$churches = churches;
    final lOther$churches = other.churches;
    if (l$churches.length != lOther$churches.length) {
      return false;
    }
    for (int i = 0; i < l$churches.length; i++) {
      final l$churches$entry = l$churches[i];
      final lOther$churches$entry = lOther$churches[i];
      if (l$churches$entry != lOther$churches$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllChurches
    on Subscription_watchAllChurches {
  CopyWith_Subscription_watchAllChurches<Subscription_watchAllChurches>
      get copyWith => CopyWith_Subscription_watchAllChurches(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllChurches<TRes> {
  factory CopyWith_Subscription_watchAllChurches(
    Subscription_watchAllChurches instance,
    TRes Function(Subscription_watchAllChurches) then,
  ) = _CopyWithImpl_Subscription_watchAllChurches;

  factory CopyWith_Subscription_watchAllChurches.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllChurches;

  TRes call({List<Subscription_watchAllChurches_churches>? churches});
  TRes churches(
      Iterable<Subscription_watchAllChurches_churches> Function(
              Iterable<
                  CopyWith_Subscription_watchAllChurches_churches<
                      Subscription_watchAllChurches_churches>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllChurches<TRes>
    implements CopyWith_Subscription_watchAllChurches<TRes> {
  _CopyWithImpl_Subscription_watchAllChurches(
    this._instance,
    this._then,
  );

  final Subscription_watchAllChurches _instance;

  final TRes Function(Subscription_watchAllChurches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? churches = _undefined}) => _then(
      Subscription_watchAllChurches(
          churches: churches == _undefined || churches == null
              ? _instance.churches
              : (churches as List<Subscription_watchAllChurches_churches>)));
  TRes churches(
          Iterable<Subscription_watchAllChurches_churches> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllChurches_churches<
                          Subscription_watchAllChurches_churches>>)
              _fn) =>
      call(
          churches: _fn(_instance.churches
              .map((e) => CopyWith_Subscription_watchAllChurches_churches(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllChurches<TRes>
    implements CopyWith_Subscription_watchAllChurches<TRes> {
  _CopyWithStubImpl_Subscription_watchAllChurches(this._res);

  TRes _res;

  call({List<Subscription_watchAllChurches_churches>? churches}) => _res;
  churches(_fn) => _res;
}

const documentNodeSubscriptionwatchAllChurches = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllChurches'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ChurchesBoolExp'),
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
        name: NameNode(value: 'churches'),
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

class Subscription_watchAllChurches_churches {
  Subscription_watchAllChurches_churches({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Subscription_watchAllChurches_churches.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllChurches_churches(
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
    if (!(other is Subscription_watchAllChurches_churches) ||
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

extension UtilityExtension_Subscription_watchAllChurches_churches
    on Subscription_watchAllChurches_churches {
  CopyWith_Subscription_watchAllChurches_churches<
          Subscription_watchAllChurches_churches>
      get copyWith => CopyWith_Subscription_watchAllChurches_churches(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllChurches_churches<TRes> {
  factory CopyWith_Subscription_watchAllChurches_churches(
    Subscription_watchAllChurches_churches instance,
    TRes Function(Subscription_watchAllChurches_churches) then,
  ) = _CopyWithImpl_Subscription_watchAllChurches_churches;

  factory CopyWith_Subscription_watchAllChurches_churches.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllChurches_churches;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllChurches_churches<TRes>
    implements CopyWith_Subscription_watchAllChurches_churches<TRes> {
  _CopyWithImpl_Subscription_watchAllChurches_churches(
    this._instance,
    this._then,
  );

  final Subscription_watchAllChurches_churches _instance;

  final TRes Function(Subscription_watchAllChurches_churches) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllChurches_churches(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchAllChurches_churches<TRes>
    implements CopyWith_Subscription_watchAllChurches_churches<TRes> {
  _CopyWithStubImpl_Subscription_watchAllChurches_churches(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
