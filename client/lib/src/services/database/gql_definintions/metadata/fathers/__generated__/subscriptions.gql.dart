import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllFathers {
  factory Variables_Subscription_watchAllFathers({
    List<Input_FathersBoolExp>? where,
    List<Input_FathersOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Subscription_watchAllFathers._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllFathers._(this._$data);

  factory Variables_Subscription_watchAllFathers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input_FathersBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input_FathersOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllFathers._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FathersBoolExp>? get where =>
      (_$data['where'] as List<Input_FathersBoolExp>?);

  List<Input_FathersOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_FathersOrderBy>?);

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

  CopyWith_Variables_Subscription_watchAllFathers<
          Variables_Subscription_watchAllFathers>
      get copyWith => CopyWith_Variables_Subscription_watchAllFathers(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllFathers) ||
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

abstract class CopyWith_Variables_Subscription_watchAllFathers<TRes> {
  factory CopyWith_Variables_Subscription_watchAllFathers(
    Variables_Subscription_watchAllFathers instance,
    TRes Function(Variables_Subscription_watchAllFathers) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllFathers;

  factory CopyWith_Variables_Subscription_watchAllFathers.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllFathers;

  TRes call({
    List<Input_FathersBoolExp>? where,
    List<Input_FathersOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllFathers<TRes>
    implements CopyWith_Variables_Subscription_watchAllFathers<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllFathers(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllFathers _instance;

  final TRes Function(Variables_Subscription_watchAllFathers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllFathers._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_FathersBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_FathersOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllFathers<TRes>
    implements CopyWith_Variables_Subscription_watchAllFathers<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllFathers(this._res);

  TRes _res;

  call({
    List<Input_FathersBoolExp>? where,
    List<Input_FathersOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllFathers {
  Subscription_watchAllFathers({required this.fathers});

  factory Subscription_watchAllFathers.fromJson(Map<String, dynamic> json) {
    final l$fathers = json['fathers'];
    return Subscription_watchAllFathers(
        fathers: (l$fathers as List<dynamic>)
            .map((e) => Subscription_watchAllFathers_fathers.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllFathers_fathers> fathers;

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
    if (!(other is Subscription_watchAllFathers) ||
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

extension UtilityExtension_Subscription_watchAllFathers
    on Subscription_watchAllFathers {
  CopyWith_Subscription_watchAllFathers<Subscription_watchAllFathers>
      get copyWith => CopyWith_Subscription_watchAllFathers(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllFathers<TRes> {
  factory CopyWith_Subscription_watchAllFathers(
    Subscription_watchAllFathers instance,
    TRes Function(Subscription_watchAllFathers) then,
  ) = _CopyWithImpl_Subscription_watchAllFathers;

  factory CopyWith_Subscription_watchAllFathers.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllFathers;

  TRes call({List<Subscription_watchAllFathers_fathers>? fathers});
  TRes fathers(
      Iterable<Subscription_watchAllFathers_fathers> Function(
              Iterable<
                  CopyWith_Subscription_watchAllFathers_fathers<
                      Subscription_watchAllFathers_fathers>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllFathers<TRes>
    implements CopyWith_Subscription_watchAllFathers<TRes> {
  _CopyWithImpl_Subscription_watchAllFathers(
    this._instance,
    this._then,
  );

  final Subscription_watchAllFathers _instance;

  final TRes Function(Subscription_watchAllFathers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? fathers = _undefined}) =>
      _then(Subscription_watchAllFathers(
          fathers: fathers == _undefined || fathers == null
              ? _instance.fathers
              : (fathers as List<Subscription_watchAllFathers_fathers>)));

  TRes fathers(
          Iterable<Subscription_watchAllFathers_fathers> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllFathers_fathers<
                          Subscription_watchAllFathers_fathers>>)
              _fn) =>
      call(
          fathers: _fn(_instance.fathers
              .map((e) => CopyWith_Subscription_watchAllFathers_fathers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllFathers<TRes>
    implements CopyWith_Subscription_watchAllFathers<TRes> {
  _CopyWithStubImpl_Subscription_watchAllFathers(this._res);

  TRes _res;

  call({List<Subscription_watchAllFathers_fathers>? fathers}) => _res;

  fathers(_fn) => _res;
}

const documentNodeSubscriptionwatchAllFathers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllFathers'),
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
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'FathersOrderBy'),
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

class Subscription_watchAllFathers_fathers {
  Subscription_watchAllFathers_fathers({
    required this.id,
    required this.name,
    this.$__typename = 'Fathers',
  });

  factory Subscription_watchAllFathers_fathers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllFathers_fathers(
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
    if (!(other is Subscription_watchAllFathers_fathers) ||
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

extension UtilityExtension_Subscription_watchAllFathers_fathers
    on Subscription_watchAllFathers_fathers {
  CopyWith_Subscription_watchAllFathers_fathers<
          Subscription_watchAllFathers_fathers>
      get copyWith => CopyWith_Subscription_watchAllFathers_fathers(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllFathers_fathers<TRes> {
  factory CopyWith_Subscription_watchAllFathers_fathers(
    Subscription_watchAllFathers_fathers instance,
    TRes Function(Subscription_watchAllFathers_fathers) then,
  ) = _CopyWithImpl_Subscription_watchAllFathers_fathers;

  factory CopyWith_Subscription_watchAllFathers_fathers.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllFathers_fathers;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllFathers_fathers<TRes>
    implements CopyWith_Subscription_watchAllFathers_fathers<TRes> {
  _CopyWithImpl_Subscription_watchAllFathers_fathers(
    this._instance,
    this._then,
  );

  final Subscription_watchAllFathers_fathers _instance;

  final TRes Function(Subscription_watchAllFathers_fathers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllFathers_fathers(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchAllFathers_fathers<TRes>
    implements CopyWith_Subscription_watchAllFathers_fathers<TRes> {
  _CopyWithStubImpl_Subscription_watchAllFathers_fathers(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
