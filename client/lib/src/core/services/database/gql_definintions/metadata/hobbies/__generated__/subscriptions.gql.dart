import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllHobbies {
  factory Variables_Subscription_watchAllHobbies({
    List<Input_HobbiesBoolExp>? where,
    List<Input_HobbiesOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables_Subscription_watchAllHobbies._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllHobbies._(this._$data);

  factory Variables_Subscription_watchAllHobbies.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input_HobbiesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input_HobbiesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllHobbies._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HobbiesBoolExp>? get where =>
      (_$data['where'] as List<Input_HobbiesBoolExp>?);

  List<Input_HobbiesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_HobbiesOrderBy>?);

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

  CopyWith_Variables_Subscription_watchAllHobbies<
          Variables_Subscription_watchAllHobbies>
      get copyWith => CopyWith_Variables_Subscription_watchAllHobbies(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllHobbies) ||
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

abstract class CopyWith_Variables_Subscription_watchAllHobbies<TRes> {
  factory CopyWith_Variables_Subscription_watchAllHobbies(
    Variables_Subscription_watchAllHobbies instance,
    TRes Function(Variables_Subscription_watchAllHobbies) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllHobbies;

  factory CopyWith_Variables_Subscription_watchAllHobbies.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllHobbies;

  TRes call({
    List<Input_HobbiesBoolExp>? where,
    List<Input_HobbiesOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllHobbies<TRes>
    implements CopyWith_Variables_Subscription_watchAllHobbies<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllHobbies(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllHobbies _instance;

  final TRes Function(Variables_Subscription_watchAllHobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllHobbies._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_HobbiesBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_HobbiesOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllHobbies<TRes>
    implements CopyWith_Variables_Subscription_watchAllHobbies<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllHobbies(this._res);

  TRes _res;

  call({
    List<Input_HobbiesBoolExp>? where,
    List<Input_HobbiesOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllHobbies {
  Subscription_watchAllHobbies({required this.hobbies});

  factory Subscription_watchAllHobbies.fromJson(Map<String, dynamic> json) {
    final l$hobbies = json['hobbies'];
    return Subscription_watchAllHobbies(
        hobbies: (l$hobbies as List<dynamic>)
            .map((e) => Subscription_watchAllHobbies_hobbies.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription_watchAllHobbies_hobbies> hobbies;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hobbies = hobbies;
    _resultData['hobbies'] = l$hobbies.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hobbies = hobbies;
    return Object.hashAll([Object.hashAll(l$hobbies.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchAllHobbies) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllHobbies
    on Subscription_watchAllHobbies {
  CopyWith_Subscription_watchAllHobbies<Subscription_watchAllHobbies>
      get copyWith => CopyWith_Subscription_watchAllHobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllHobbies<TRes> {
  factory CopyWith_Subscription_watchAllHobbies(
    Subscription_watchAllHobbies instance,
    TRes Function(Subscription_watchAllHobbies) then,
  ) = _CopyWithImpl_Subscription_watchAllHobbies;

  factory CopyWith_Subscription_watchAllHobbies.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllHobbies;

  TRes call({List<Subscription_watchAllHobbies_hobbies>? hobbies});
  TRes hobbies(
      Iterable<Subscription_watchAllHobbies_hobbies> Function(
              Iterable<
                  CopyWith_Subscription_watchAllHobbies_hobbies<
                      Subscription_watchAllHobbies_hobbies>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllHobbies<TRes>
    implements CopyWith_Subscription_watchAllHobbies<TRes> {
  _CopyWithImpl_Subscription_watchAllHobbies(
    this._instance,
    this._then,
  );

  final Subscription_watchAllHobbies _instance;

  final TRes Function(Subscription_watchAllHobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? hobbies = _undefined}) =>
      _then(Subscription_watchAllHobbies(
          hobbies: hobbies == _undefined || hobbies == null
              ? _instance.hobbies
              : (hobbies as List<Subscription_watchAllHobbies_hobbies>)));

  TRes hobbies(
          Iterable<Subscription_watchAllHobbies_hobbies> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllHobbies_hobbies<
                          Subscription_watchAllHobbies_hobbies>>)
              _fn) =>
      call(
          hobbies: _fn(_instance.hobbies
              .map((e) => CopyWith_Subscription_watchAllHobbies_hobbies(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllHobbies<TRes>
    implements CopyWith_Subscription_watchAllHobbies<TRes> {
  _CopyWithStubImpl_Subscription_watchAllHobbies(this._res);

  TRes _res;

  call({List<Subscription_watchAllHobbies_hobbies>? hobbies}) => _res;

  hobbies(_fn) => _res;
}

const documentNodeSubscriptionwatchAllHobbies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllHobbies'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'HobbiesBoolExp'),
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
            name: NameNode(value: 'HobbiesOrderBy'),
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
        name: NameNode(value: 'hobbies'),
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

class Subscription_watchAllHobbies_hobbies {
  Subscription_watchAllHobbies_hobbies({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Hobbies',
  });

  factory Subscription_watchAllHobbies_hobbies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAllHobbies_hobbies(
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
    if (!(other is Subscription_watchAllHobbies_hobbies) ||
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

extension UtilityExtension_Subscription_watchAllHobbies_hobbies
    on Subscription_watchAllHobbies_hobbies {
  CopyWith_Subscription_watchAllHobbies_hobbies<
          Subscription_watchAllHobbies_hobbies>
      get copyWith => CopyWith_Subscription_watchAllHobbies_hobbies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllHobbies_hobbies<TRes> {
  factory CopyWith_Subscription_watchAllHobbies_hobbies(
    Subscription_watchAllHobbies_hobbies instance,
    TRes Function(Subscription_watchAllHobbies_hobbies) then,
  ) = _CopyWithImpl_Subscription_watchAllHobbies_hobbies;

  factory CopyWith_Subscription_watchAllHobbies_hobbies.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllHobbies_hobbies;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  });
}

class _CopyWithImpl_Subscription_watchAllHobbies_hobbies<TRes>
    implements CopyWith_Subscription_watchAllHobbies_hobbies<TRes> {
  _CopyWithImpl_Subscription_watchAllHobbies_hobbies(
    this._instance,
    this._then,
  );

  final Subscription_watchAllHobbies_hobbies _instance;

  final TRes Function(Subscription_watchAllHobbies_hobbies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription_watchAllHobbies_hobbies(
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

class _CopyWithStubImpl_Subscription_watchAllHobbies_hobbies<TRes>
    implements CopyWith_Subscription_watchAllHobbies_hobbies<TRes> {
  _CopyWithStubImpl_Subscription_watchAllHobbies_hobbies(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
  }) =>
      _res;
}
