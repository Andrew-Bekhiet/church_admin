import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllPersonStates {
  factory Variables_Subscription_watchAllPersonStates({
    List<Input_PersonStatesBoolExp>? where,
    List<Input_PersonStatesOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Subscription_watchAllPersonStates._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllPersonStates._(this._$data);

  factory Variables_Subscription_watchAllPersonStates.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input_PersonStatesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input_PersonStatesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllPersonStates._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonStatesBoolExp>? get where =>
      (_$data['where'] as List<Input_PersonStatesBoolExp>?);

  List<Input_PersonStatesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_PersonStatesOrderBy>?);

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

  CopyWith_Variables_Subscription_watchAllPersonStates<
          Variables_Subscription_watchAllPersonStates>
      get copyWith => CopyWith_Variables_Subscription_watchAllPersonStates(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllPersonStates) ||
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

abstract class CopyWith_Variables_Subscription_watchAllPersonStates<TRes> {
  factory CopyWith_Variables_Subscription_watchAllPersonStates(
    Variables_Subscription_watchAllPersonStates instance,
    TRes Function(Variables_Subscription_watchAllPersonStates) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllPersonStates;

  factory CopyWith_Variables_Subscription_watchAllPersonStates.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllPersonStates;

  TRes call({
    List<Input_PersonStatesBoolExp>? where,
    List<Input_PersonStatesOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllPersonStates<TRes>
    implements CopyWith_Variables_Subscription_watchAllPersonStates<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllPersonStates(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllPersonStates _instance;

  final TRes Function(Variables_Subscription_watchAllPersonStates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllPersonStates._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_PersonStatesBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_PersonStatesOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllPersonStates<TRes>
    implements CopyWith_Variables_Subscription_watchAllPersonStates<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllPersonStates(this._res);

  TRes _res;

  call({
    List<Input_PersonStatesBoolExp>? where,
    List<Input_PersonStatesOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllPersonStates {
  Subscription_watchAllPersonStates({required this.personStates});

  factory Subscription_watchAllPersonStates.fromJson(
      Map<String, dynamic> json) {
    final l$personStates = json['personStates'];
    return Subscription_watchAllPersonStates(
        personStates: (l$personStates as List<dynamic>)
            .map((e) => Subscription_watchAllPersonStates_personStates.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllPersonStates_personStates> personStates;

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
    if (!(other is Subscription_watchAllPersonStates) ||
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

extension UtilityExtension_Subscription_watchAllPersonStates
    on Subscription_watchAllPersonStates {
  CopyWith_Subscription_watchAllPersonStates<Subscription_watchAllPersonStates>
      get copyWith => CopyWith_Subscription_watchAllPersonStates(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllPersonStates<TRes> {
  factory CopyWith_Subscription_watchAllPersonStates(
    Subscription_watchAllPersonStates instance,
    TRes Function(Subscription_watchAllPersonStates) then,
  ) = _CopyWithImpl_Subscription_watchAllPersonStates;

  factory CopyWith_Subscription_watchAllPersonStates.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllPersonStates;

  TRes call(
      {List<Subscription_watchAllPersonStates_personStates>? personStates});
  TRes personStates(
      Iterable<Subscription_watchAllPersonStates_personStates> Function(
              Iterable<
                  CopyWith_Subscription_watchAllPersonStates_personStates<
                      Subscription_watchAllPersonStates_personStates>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllPersonStates<TRes>
    implements CopyWith_Subscription_watchAllPersonStates<TRes> {
  _CopyWithImpl_Subscription_watchAllPersonStates(
    this._instance,
    this._then,
  );

  final Subscription_watchAllPersonStates _instance;

  final TRes Function(Subscription_watchAllPersonStates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personStates = _undefined}) =>
      _then(Subscription_watchAllPersonStates(
          personStates: personStates == _undefined || personStates == null
              ? _instance.personStates
              : (personStates
                  as List<Subscription_watchAllPersonStates_personStates>)));

  TRes personStates(
          Iterable<Subscription_watchAllPersonStates_personStates> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllPersonStates_personStates<
                          Subscription_watchAllPersonStates_personStates>>)
              _fn) =>
      call(
          personStates: _fn(_instance.personStates.map(
              (e) => CopyWith_Subscription_watchAllPersonStates_personStates(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllPersonStates<TRes>
    implements CopyWith_Subscription_watchAllPersonStates<TRes> {
  _CopyWithStubImpl_Subscription_watchAllPersonStates(this._res);

  TRes _res;

  call({List<Subscription_watchAllPersonStates_personStates>? personStates}) =>
      _res;

  personStates(_fn) => _res;
}

const documentNodeSubscriptionwatchAllPersonStates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllPersonStates'),
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
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonStatesOrderBy'),
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

class Subscription_watchAllPersonStates_personStates {
  Subscription_watchAllPersonStates_personStates({
    required this.id,
    required this.name,
    required this.color,
    this.$__typename = 'PersonStates',
  });

  factory Subscription_watchAllPersonStates_personStates.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllPersonStates_personStates(
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
    if (!(other is Subscription_watchAllPersonStates_personStates) ||
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

extension UtilityExtension_Subscription_watchAllPersonStates_personStates
    on Subscription_watchAllPersonStates_personStates {
  CopyWith_Subscription_watchAllPersonStates_personStates<
          Subscription_watchAllPersonStates_personStates>
      get copyWith => CopyWith_Subscription_watchAllPersonStates_personStates(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllPersonStates_personStates<TRes> {
  factory CopyWith_Subscription_watchAllPersonStates_personStates(
    Subscription_watchAllPersonStates_personStates instance,
    TRes Function(Subscription_watchAllPersonStates_personStates) then,
  ) = _CopyWithImpl_Subscription_watchAllPersonStates_personStates;

  factory CopyWith_Subscription_watchAllPersonStates_personStates.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchAllPersonStates_personStates;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllPersonStates_personStates<TRes>
    implements CopyWith_Subscription_watchAllPersonStates_personStates<TRes> {
  _CopyWithImpl_Subscription_watchAllPersonStates_personStates(
    this._instance,
    this._then,
  );

  final Subscription_watchAllPersonStates_personStates _instance;

  final TRes Function(Subscription_watchAllPersonStates_personStates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllPersonStates_personStates(
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

class _CopyWithStubImpl_Subscription_watchAllPersonStates_personStates<TRes>
    implements CopyWith_Subscription_watchAllPersonStates_personStates<TRes> {
  _CopyWithStubImpl_Subscription_watchAllPersonStates_personStates(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}
