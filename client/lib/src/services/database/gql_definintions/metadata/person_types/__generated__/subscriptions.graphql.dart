import '../../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllPersonTypes {
  factory Variables$Subscription$watchAllPersonTypes({
    List<Input$PersonTypesBoolExp>? where,
    int? limit,
  }) =>
      Variables$Subscription$watchAllPersonTypes._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllPersonTypes._(this._$data);

  factory Variables$Subscription$watchAllPersonTypes.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input$PersonTypesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$watchAllPersonTypes._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PersonTypesBoolExp>? get where =>
      (_$data['where'] as List<Input$PersonTypesBoolExp>?);
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

  CopyWith$Variables$Subscription$watchAllPersonTypes<
          Variables$Subscription$watchAllPersonTypes>
      get copyWith => CopyWith$Variables$Subscription$watchAllPersonTypes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllPersonTypes) ||
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

abstract class CopyWith$Variables$Subscription$watchAllPersonTypes<TRes> {
  factory CopyWith$Variables$Subscription$watchAllPersonTypes(
    Variables$Subscription$watchAllPersonTypes instance,
    TRes Function(Variables$Subscription$watchAllPersonTypes) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllPersonTypes;

  factory CopyWith$Variables$Subscription$watchAllPersonTypes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllPersonTypes;

  TRes call({
    List<Input$PersonTypesBoolExp>? where,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllPersonTypes<TRes>
    implements CopyWith$Variables$Subscription$watchAllPersonTypes<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllPersonTypes(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllPersonTypes _instance;

  final TRes Function(Variables$Subscription$watchAllPersonTypes) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllPersonTypes._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$PersonTypesBoolExp>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllPersonTypes<TRes>
    implements CopyWith$Variables$Subscription$watchAllPersonTypes<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllPersonTypes(this._res);

  TRes _res;

  call({
    List<Input$PersonTypesBoolExp>? where,
    int? limit,
  }) =>
      _res;
}

class Subscription$watchAllPersonTypes {
  Subscription$watchAllPersonTypes({required this.personTypes});

  factory Subscription$watchAllPersonTypes.fromJson(Map<String, dynamic> json) {
    final l$personTypes = json['personTypes'];
    return Subscription$watchAllPersonTypes(
        personTypes: (l$personTypes as List<dynamic>)
            .map((e) => Subscription$watchAllPersonTypes$personTypes.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllPersonTypes$personTypes> personTypes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personTypes = personTypes;
    _resultData['personTypes'] = l$personTypes.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personTypes = personTypes;
    return Object.hashAll([Object.hashAll(l$personTypes.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllPersonTypes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personTypes = personTypes;
    final lOther$personTypes = other.personTypes;
    if (l$personTypes.length != lOther$personTypes.length) {
      return false;
    }
    for (int i = 0; i < l$personTypes.length; i++) {
      final l$personTypes$entry = l$personTypes[i];
      final lOther$personTypes$entry = lOther$personTypes[i];
      if (l$personTypes$entry != lOther$personTypes$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllPersonTypes
    on Subscription$watchAllPersonTypes {
  CopyWith$Subscription$watchAllPersonTypes<Subscription$watchAllPersonTypes>
      get copyWith => CopyWith$Subscription$watchAllPersonTypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllPersonTypes<TRes> {
  factory CopyWith$Subscription$watchAllPersonTypes(
    Subscription$watchAllPersonTypes instance,
    TRes Function(Subscription$watchAllPersonTypes) then,
  ) = _CopyWithImpl$Subscription$watchAllPersonTypes;

  factory CopyWith$Subscription$watchAllPersonTypes.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllPersonTypes;

  TRes call({List<Subscription$watchAllPersonTypes$personTypes>? personTypes});
  TRes personTypes(
      Iterable<Subscription$watchAllPersonTypes$personTypes> Function(
              Iterable<
                  CopyWith$Subscription$watchAllPersonTypes$personTypes<
                      Subscription$watchAllPersonTypes$personTypes>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllPersonTypes<TRes>
    implements CopyWith$Subscription$watchAllPersonTypes<TRes> {
  _CopyWithImpl$Subscription$watchAllPersonTypes(
    this._instance,
    this._then,
  );

  final Subscription$watchAllPersonTypes _instance;

  final TRes Function(Subscription$watchAllPersonTypes) _then;

  static const _undefined = {};

  TRes call({Object? personTypes = _undefined}) =>
      _then(Subscription$watchAllPersonTypes(
          personTypes: personTypes == _undefined || personTypes == null
              ? _instance.personTypes
              : (personTypes
                  as List<Subscription$watchAllPersonTypes$personTypes>)));
  TRes personTypes(
          Iterable<Subscription$watchAllPersonTypes$personTypes> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllPersonTypes$personTypes<
                          Subscription$watchAllPersonTypes$personTypes>>)
              _fn) =>
      call(
          personTypes: _fn(_instance.personTypes
              .map((e) => CopyWith$Subscription$watchAllPersonTypes$personTypes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllPersonTypes<TRes>
    implements CopyWith$Subscription$watchAllPersonTypes<TRes> {
  _CopyWithStubImpl$Subscription$watchAllPersonTypes(this._res);

  TRes _res;

  call({List<Subscription$watchAllPersonTypes$personTypes>? personTypes}) =>
      _res;
  personTypes(_fn) => _res;
}

const documentNodeSubscriptionwatchAllPersonTypes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllPersonTypes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PersonTypesBoolExp'),
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
        name: NameNode(value: 'personTypes'),
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
                name: NameNode(value: 'order'),
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

class Subscription$watchAllPersonTypes$personTypes {
  Subscription$watchAllPersonTypes$personTypes({
    required this.id,
    required this.order,
    required this.name,
    required this.$__typename,
  });

  factory Subscription$watchAllPersonTypes$personTypes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$order = json['order'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$watchAllPersonTypes$personTypes(
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
    if (!(other is Subscription$watchAllPersonTypes$personTypes) ||
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

extension UtilityExtension$Subscription$watchAllPersonTypes$personTypes
    on Subscription$watchAllPersonTypes$personTypes {
  CopyWith$Subscription$watchAllPersonTypes$personTypes<
          Subscription$watchAllPersonTypes$personTypes>
      get copyWith => CopyWith$Subscription$watchAllPersonTypes$personTypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllPersonTypes$personTypes<TRes> {
  factory CopyWith$Subscription$watchAllPersonTypes$personTypes(
    Subscription$watchAllPersonTypes$personTypes instance,
    TRes Function(Subscription$watchAllPersonTypes$personTypes) then,
  ) = _CopyWithImpl$Subscription$watchAllPersonTypes$personTypes;

  factory CopyWith$Subscription$watchAllPersonTypes$personTypes.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllPersonTypes$personTypes;

  TRes call({
    UuidValue? id,
    int? order,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$watchAllPersonTypes$personTypes<TRes>
    implements CopyWith$Subscription$watchAllPersonTypes$personTypes<TRes> {
  _CopyWithImpl$Subscription$watchAllPersonTypes$personTypes(
    this._instance,
    this._then,
  );

  final Subscription$watchAllPersonTypes$personTypes _instance;

  final TRes Function(Subscription$watchAllPersonTypes$personTypes) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? order = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchAllPersonTypes$personTypes(
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

class _CopyWithStubImpl$Subscription$watchAllPersonTypes$personTypes<TRes>
    implements CopyWith$Subscription$watchAllPersonTypes$personTypes<TRes> {
  _CopyWithStubImpl$Subscription$watchAllPersonTypes$personTypes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    int? order,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
