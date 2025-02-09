import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllShammasLevels {
  factory Variables_Subscription_watchAllShammasLevels({
    List<Input_ShammasLevelsBoolExp>? where,
    List<Input_ShammasLevelsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Subscription_watchAllShammasLevels._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllShammasLevels._(this._$data);

  factory Variables_Subscription_watchAllShammasLevels.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input_ShammasLevelsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input_ShammasLevelsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllShammasLevels._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ShammasLevelsBoolExp>? get where =>
      (_$data['where'] as List<Input_ShammasLevelsBoolExp>?);

  List<Input_ShammasLevelsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_ShammasLevelsOrderBy>?);

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

  CopyWith_Variables_Subscription_watchAllShammasLevels<
          Variables_Subscription_watchAllShammasLevels>
      get copyWith => CopyWith_Variables_Subscription_watchAllShammasLevels(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchAllShammasLevels ||
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

abstract class CopyWith_Variables_Subscription_watchAllShammasLevels<TRes> {
  factory CopyWith_Variables_Subscription_watchAllShammasLevels(
    Variables_Subscription_watchAllShammasLevels instance,
    TRes Function(Variables_Subscription_watchAllShammasLevels) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllShammasLevels;

  factory CopyWith_Variables_Subscription_watchAllShammasLevels.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllShammasLevels;

  TRes call({
    List<Input_ShammasLevelsBoolExp>? where,
    List<Input_ShammasLevelsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllShammasLevels<TRes>
    implements CopyWith_Variables_Subscription_watchAllShammasLevels<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllShammasLevels(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllShammasLevels _instance;

  final TRes Function(Variables_Subscription_watchAllShammasLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllShammasLevels._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_ShammasLevelsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_ShammasLevelsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllShammasLevels<TRes>
    implements CopyWith_Variables_Subscription_watchAllShammasLevels<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllShammasLevels(this._res);

  TRes _res;

  call({
    List<Input_ShammasLevelsBoolExp>? where,
    List<Input_ShammasLevelsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllShammasLevels {
  Subscription_watchAllShammasLevels({required this.shammasLevels});

  factory Subscription_watchAllShammasLevels.fromJson(
      Map<String, dynamic> json) {
    final l$shammasLevels = json['shammasLevels'];
    return Subscription_watchAllShammasLevels(
        shammasLevels: (l$shammasLevels as List<dynamic>)
            .map((e) =>
                Subscription_watchAllShammasLevels_shammasLevels.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllShammasLevels_shammasLevels> shammasLevels;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shammasLevels = shammasLevels;
    _resultData['shammasLevels'] =
        l$shammasLevels.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shammasLevels = shammasLevels;
    return Object.hashAll([Object.hashAll(l$shammasLevels.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchAllShammasLevels ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shammasLevels = shammasLevels;
    final lOther$shammasLevels = other.shammasLevels;
    if (l$shammasLevels.length != lOther$shammasLevels.length) {
      return false;
    }
    for (int i = 0; i < l$shammasLevels.length; i++) {
      final l$shammasLevels$entry = l$shammasLevels[i];
      final lOther$shammasLevels$entry = lOther$shammasLevels[i];
      if (l$shammasLevels$entry != lOther$shammasLevels$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllShammasLevels
    on Subscription_watchAllShammasLevels {
  CopyWith_Subscription_watchAllShammasLevels<
          Subscription_watchAllShammasLevels>
      get copyWith => CopyWith_Subscription_watchAllShammasLevels(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllShammasLevels<TRes> {
  factory CopyWith_Subscription_watchAllShammasLevels(
    Subscription_watchAllShammasLevels instance,
    TRes Function(Subscription_watchAllShammasLevels) then,
  ) = _CopyWithImpl_Subscription_watchAllShammasLevels;

  factory CopyWith_Subscription_watchAllShammasLevels.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllShammasLevels;

  TRes call(
      {List<Subscription_watchAllShammasLevels_shammasLevels>? shammasLevels});
  TRes shammasLevels(
      Iterable<Subscription_watchAllShammasLevels_shammasLevels> Function(
              Iterable<
                  CopyWith_Subscription_watchAllShammasLevels_shammasLevels<
                      Subscription_watchAllShammasLevels_shammasLevels>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllShammasLevels<TRes>
    implements CopyWith_Subscription_watchAllShammasLevels<TRes> {
  _CopyWithImpl_Subscription_watchAllShammasLevels(
    this._instance,
    this._then,
  );

  final Subscription_watchAllShammasLevels _instance;

  final TRes Function(Subscription_watchAllShammasLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? shammasLevels = _undefined}) =>
      _then(Subscription_watchAllShammasLevels(
          shammasLevels: shammasLevels == _undefined || shammasLevels == null
              ? _instance.shammasLevels
              : (shammasLevels
                  as List<Subscription_watchAllShammasLevels_shammasLevels>)));

  TRes shammasLevels(
          Iterable<Subscription_watchAllShammasLevels_shammasLevels> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllShammasLevels_shammasLevels<
                          Subscription_watchAllShammasLevels_shammasLevels>>)
              _fn) =>
      call(
          shammasLevels: _fn(_instance.shammasLevels.map(
              (e) => CopyWith_Subscription_watchAllShammasLevels_shammasLevels(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllShammasLevels<TRes>
    implements CopyWith_Subscription_watchAllShammasLevels<TRes> {
  _CopyWithStubImpl_Subscription_watchAllShammasLevels(this._res);

  TRes _res;

  call(
          {List<Subscription_watchAllShammasLevels_shammasLevels>?
              shammasLevels}) =>
      _res;

  shammasLevels(_fn) => _res;
}

const documentNodeSubscriptionwatchAllShammasLevels =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllShammasLevels'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ShammasLevelsBoolExp'),
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
            name: NameNode(value: 'ShammasLevelsOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ObjectValueNode(fields: [
          ObjectFieldNode(
            name: NameNode(value: 'order'),
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
        name: NameNode(value: 'shammasLevels'),
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
      )
    ]),
  ),
]);

class Subscription_watchAllShammasLevels_shammasLevels {
  Subscription_watchAllShammasLevels_shammasLevels({
    required this.id,
    required this.order,
    required this.name,
    this.$__typename = 'ShammasLevels',
  });

  factory Subscription_watchAllShammasLevels_shammasLevels.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllShammasLevels_shammasLevels(
      id: stringToUuid(l$id),
      order: (l$order as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final int order;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
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
    final l$id = id;
    final l$order = order;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (other is! Subscription_watchAllShammasLevels_shammasLevels ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension_Subscription_watchAllShammasLevels_shammasLevels
    on Subscription_watchAllShammasLevels_shammasLevels {
  CopyWith_Subscription_watchAllShammasLevels_shammasLevels<
          Subscription_watchAllShammasLevels_shammasLevels>
      get copyWith => CopyWith_Subscription_watchAllShammasLevels_shammasLevels(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllShammasLevels_shammasLevels<TRes> {
  factory CopyWith_Subscription_watchAllShammasLevels_shammasLevels(
    Subscription_watchAllShammasLevels_shammasLevels instance,
    TRes Function(Subscription_watchAllShammasLevels_shammasLevels) then,
  ) = _CopyWithImpl_Subscription_watchAllShammasLevels_shammasLevels;

  factory CopyWith_Subscription_watchAllShammasLevels_shammasLevels.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchAllShammasLevels_shammasLevels;

  TRes call({
    UuidValue? id,
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllShammasLevels_shammasLevels<TRes>
    implements CopyWith_Subscription_watchAllShammasLevels_shammasLevels<TRes> {
  _CopyWithImpl_Subscription_watchAllShammasLevels_shammasLevels(
    this._instance,
    this._then,
  );

  final Subscription_watchAllShammasLevels_shammasLevels _instance;

  final TRes Function(Subscription_watchAllShammasLevels_shammasLevels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllShammasLevels_shammasLevels(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
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

class _CopyWithStubImpl_Subscription_watchAllShammasLevels_shammasLevels<TRes>
    implements CopyWith_Subscription_watchAllShammasLevels_shammasLevels<TRes> {
  _CopyWithStubImpl_Subscription_watchAllShammasLevels_shammasLevels(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
