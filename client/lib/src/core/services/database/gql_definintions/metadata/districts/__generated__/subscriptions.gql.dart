import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllDistricts {
  factory Variables_Subscription_watchAllDistricts({
    List<Input_DistrictsBoolExp>? where,
    List<Input_DistrictsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Subscription_watchAllDistricts._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllDistricts._(this._$data);

  factory Variables_Subscription_watchAllDistricts.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input_DistrictsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input_DistrictsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllDistricts._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_DistrictsBoolExp>? get where =>
      (_$data['where'] as List<Input_DistrictsBoolExp>?);

  List<Input_DistrictsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_DistrictsOrderBy>?);

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

  CopyWith_Variables_Subscription_watchAllDistricts<
          Variables_Subscription_watchAllDistricts>
      get copyWith => CopyWith_Variables_Subscription_watchAllDistricts(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchAllDistricts ||
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

abstract class CopyWith_Variables_Subscription_watchAllDistricts<TRes> {
  factory CopyWith_Variables_Subscription_watchAllDistricts(
    Variables_Subscription_watchAllDistricts instance,
    TRes Function(Variables_Subscription_watchAllDistricts) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllDistricts;

  factory CopyWith_Variables_Subscription_watchAllDistricts.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllDistricts;

  TRes call({
    List<Input_DistrictsBoolExp>? where,
    List<Input_DistrictsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllDistricts<TRes>
    implements CopyWith_Variables_Subscription_watchAllDistricts<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllDistricts(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllDistricts _instance;

  final TRes Function(Variables_Subscription_watchAllDistricts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllDistricts._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_DistrictsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_DistrictsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllDistricts<TRes>
    implements CopyWith_Variables_Subscription_watchAllDistricts<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllDistricts(this._res);

  TRes _res;

  call({
    List<Input_DistrictsBoolExp>? where,
    List<Input_DistrictsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllDistricts {
  Subscription_watchAllDistricts({required this.districts});

  factory Subscription_watchAllDistricts.fromJson(Map<String, dynamic> json) {
    final l$districts = json['districts'];
    return Subscription_watchAllDistricts(
        districts: (l$districts as List<dynamic>)
            .map((e) => Subscription_watchAllDistricts_districts.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllDistricts_districts> districts;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$districts = districts;
    _resultData['districts'] = l$districts.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$districts = districts;
    return Object.hashAll([Object.hashAll(l$districts.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchAllDistricts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$districts = districts;
    final lOther$districts = other.districts;
    if (l$districts.length != lOther$districts.length) {
      return false;
    }
    for (int i = 0; i < l$districts.length; i++) {
      final l$districts$entry = l$districts[i];
      final lOther$districts$entry = lOther$districts[i];
      if (l$districts$entry != lOther$districts$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllDistricts
    on Subscription_watchAllDistricts {
  CopyWith_Subscription_watchAllDistricts<Subscription_watchAllDistricts>
      get copyWith => CopyWith_Subscription_watchAllDistricts(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllDistricts<TRes> {
  factory CopyWith_Subscription_watchAllDistricts(
    Subscription_watchAllDistricts instance,
    TRes Function(Subscription_watchAllDistricts) then,
  ) = _CopyWithImpl_Subscription_watchAllDistricts;

  factory CopyWith_Subscription_watchAllDistricts.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllDistricts;

  TRes call({List<Subscription_watchAllDistricts_districts>? districts});
  TRes districts(
      Iterable<Subscription_watchAllDistricts_districts> Function(
              Iterable<
                  CopyWith_Subscription_watchAllDistricts_districts<
                      Subscription_watchAllDistricts_districts>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllDistricts<TRes>
    implements CopyWith_Subscription_watchAllDistricts<TRes> {
  _CopyWithImpl_Subscription_watchAllDistricts(
    this._instance,
    this._then,
  );

  final Subscription_watchAllDistricts _instance;

  final TRes Function(Subscription_watchAllDistricts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? districts = _undefined}) =>
      _then(Subscription_watchAllDistricts(
          districts: districts == _undefined || districts == null
              ? _instance.districts
              : (districts as List<Subscription_watchAllDistricts_districts>)));

  TRes districts(
          Iterable<Subscription_watchAllDistricts_districts> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllDistricts_districts<
                          Subscription_watchAllDistricts_districts>>)
              _fn) =>
      call(
          districts: _fn(_instance.districts
              .map((e) => CopyWith_Subscription_watchAllDistricts_districts(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllDistricts<TRes>
    implements CopyWith_Subscription_watchAllDistricts<TRes> {
  _CopyWithStubImpl_Subscription_watchAllDistricts(this._res);

  TRes _res;

  call({List<Subscription_watchAllDistricts_districts>? districts}) => _res;

  districts(_fn) => _res;
}

const documentNodeSubscriptionwatchAllDistricts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllDistricts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'DistrictsBoolExp'),
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
            name: NameNode(value: 'DistrictsOrderBy'),
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
        name: NameNode(value: 'districts'),
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

class Subscription_watchAllDistricts_districts {
  Subscription_watchAllDistricts_districts({
    required this.id,
    required this.name,
    this.$__typename = 'Districts',
  });

  factory Subscription_watchAllDistricts_districts.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllDistricts_districts(
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
    if (other is! Subscription_watchAllDistricts_districts ||
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

extension UtilityExtension_Subscription_watchAllDistricts_districts
    on Subscription_watchAllDistricts_districts {
  CopyWith_Subscription_watchAllDistricts_districts<
          Subscription_watchAllDistricts_districts>
      get copyWith => CopyWith_Subscription_watchAllDistricts_districts(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllDistricts_districts<TRes> {
  factory CopyWith_Subscription_watchAllDistricts_districts(
    Subscription_watchAllDistricts_districts instance,
    TRes Function(Subscription_watchAllDistricts_districts) then,
  ) = _CopyWithImpl_Subscription_watchAllDistricts_districts;

  factory CopyWith_Subscription_watchAllDistricts_districts.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllDistricts_districts;

  TRes call({
    UuidValue? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllDistricts_districts<TRes>
    implements CopyWith_Subscription_watchAllDistricts_districts<TRes> {
  _CopyWithImpl_Subscription_watchAllDistricts_districts(
    this._instance,
    this._then,
  );

  final Subscription_watchAllDistricts_districts _instance;

  final TRes Function(Subscription_watchAllDistricts_districts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllDistricts_districts(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl_Subscription_watchAllDistricts_districts<TRes>
    implements CopyWith_Subscription_watchAllDistricts_districts<TRes> {
  _CopyWithStubImpl_Subscription_watchAllDistricts_districts(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
