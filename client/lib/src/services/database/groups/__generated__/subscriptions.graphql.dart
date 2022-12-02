import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getGroupsStream {
  factory Variables$Subscription$getGroupsStream({
    int? limit,
    List<Input$GroupsOrderBy>? orderBy,
    List<Input$GroupsBoolExp>? where,
  }) =>
      Variables$Subscription$getGroupsStream._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$getGroupsStream._(this._$data);

  factory Variables$Subscription$getGroupsStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input$GroupsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$GroupsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Subscription$getGroupsStream._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  List<Input$GroupsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$GroupsOrderBy>?);
  List<Input$GroupsBoolExp>? get where =>
      (_$data['where'] as List<Input$GroupsBoolExp>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Subscription$getGroupsStream<
          Variables$Subscription$getGroupsStream>
      get copyWith => CopyWith$Variables$Subscription$getGroupsStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getGroupsStream) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$orderBy = orderBy;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('where')
          ? l$where == null
              ? null
              : Object.hashAll(l$where.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Subscription$getGroupsStream<TRes> {
  factory CopyWith$Variables$Subscription$getGroupsStream(
    Variables$Subscription$getGroupsStream instance,
    TRes Function(Variables$Subscription$getGroupsStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getGroupsStream;

  factory CopyWith$Variables$Subscription$getGroupsStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getGroupsStream;

  TRes call({
    int? limit,
    List<Input$GroupsOrderBy>? orderBy,
    List<Input$GroupsBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$getGroupsStream<TRes>
    implements CopyWith$Variables$Subscription$getGroupsStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getGroupsStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getGroupsStream _instance;

  final TRes Function(Variables$Subscription$getGroupsStream) _then;

  static const _undefined = {};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$getGroupsStream._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$GroupsOrderBy>?),
        if (where != _undefined) 'where': (where as List<Input$GroupsBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getGroupsStream<TRes>
    implements CopyWith$Variables$Subscription$getGroupsStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getGroupsStream(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$GroupsOrderBy>? orderBy,
    List<Input$GroupsBoolExp>? where,
  }) =>
      _res;
}

class Subscription$getGroupsStream {
  Subscription$getGroupsStream({required this.groups});

  factory Subscription$getGroupsStream.fromJson(Map<String, dynamic> json) {
    final l$groups = json['groups'];
    return Subscription$getGroupsStream(
        groups: (l$groups as List<dynamic>)
            .map((e) => Subscription$getGroupsStream$groups.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getGroupsStream$groups> groups;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$groups = groups;
    _resultData['groups'] = l$groups.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$groups = groups;
    return Object.hashAll([Object.hashAll(l$groups.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getGroupsStream) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Subscription$getGroupsStream
    on Subscription$getGroupsStream {
  CopyWith$Subscription$getGroupsStream<Subscription$getGroupsStream>
      get copyWith => CopyWith$Subscription$getGroupsStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getGroupsStream<TRes> {
  factory CopyWith$Subscription$getGroupsStream(
    Subscription$getGroupsStream instance,
    TRes Function(Subscription$getGroupsStream) then,
  ) = _CopyWithImpl$Subscription$getGroupsStream;

  factory CopyWith$Subscription$getGroupsStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getGroupsStream;

  TRes call({List<Subscription$getGroupsStream$groups>? groups});
  TRes groups(
      Iterable<Subscription$getGroupsStream$groups> Function(
              Iterable<
                  CopyWith$Subscription$getGroupsStream$groups<
                      Subscription$getGroupsStream$groups>>)
          _fn);
}

class _CopyWithImpl$Subscription$getGroupsStream<TRes>
    implements CopyWith$Subscription$getGroupsStream<TRes> {
  _CopyWithImpl$Subscription$getGroupsStream(
    this._instance,
    this._then,
  );

  final Subscription$getGroupsStream _instance;

  final TRes Function(Subscription$getGroupsStream) _then;

  static const _undefined = {};

  TRes call({Object? groups = _undefined}) =>
      _then(Subscription$getGroupsStream(
          groups: groups == _undefined || groups == null
              ? _instance.groups
              : (groups as List<Subscription$getGroupsStream$groups>)));
  TRes groups(
          Iterable<Subscription$getGroupsStream$groups> Function(
                  Iterable<
                      CopyWith$Subscription$getGroupsStream$groups<
                          Subscription$getGroupsStream$groups>>)
              _fn) =>
      call(
          groups: _fn(_instance.groups
              .map((e) => CopyWith$Subscription$getGroupsStream$groups(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getGroupsStream<TRes>
    implements CopyWith$Subscription$getGroupsStream<TRes> {
  _CopyWithStubImpl$Subscription$getGroupsStream(this._res);

  TRes _res;

  call({List<Subscription$getGroupsStream$groups>? groups}) => _res;
  groups(_fn) => _res;
}

const documentNodeSubscriptiongetGroupsStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getGroupsStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'GroupsOrderBy'),
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
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'GroupsBoolExp'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: ObjectValueNode(fields: [])),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'groups'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_and'),
                value: VariableNode(name: NameNode(value: 'where')),
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
      )
    ]),
  ),
]);

class Subscription$getGroupsStream$groups {
  Subscription$getGroupsStream$groups({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$getGroupsStream$groups.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$getGroupsStream$groups(
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
    if (!(other is Subscription$getGroupsStream$groups) ||
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

extension UtilityExtension$Subscription$getGroupsStream$groups
    on Subscription$getGroupsStream$groups {
  CopyWith$Subscription$getGroupsStream$groups<
          Subscription$getGroupsStream$groups>
      get copyWith => CopyWith$Subscription$getGroupsStream$groups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getGroupsStream$groups<TRes> {
  factory CopyWith$Subscription$getGroupsStream$groups(
    Subscription$getGroupsStream$groups instance,
    TRes Function(Subscription$getGroupsStream$groups) then,
  ) = _CopyWithImpl$Subscription$getGroupsStream$groups;

  factory CopyWith$Subscription$getGroupsStream$groups.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getGroupsStream$groups;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getGroupsStream$groups<TRes>
    implements CopyWith$Subscription$getGroupsStream$groups<TRes> {
  _CopyWithImpl$Subscription$getGroupsStream$groups(
    this._instance,
    this._then,
  );

  final Subscription$getGroupsStream$groups _instance;

  final TRes Function(Subscription$getGroupsStream$groups) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getGroupsStream$groups(
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

class _CopyWithStubImpl$Subscription$getGroupsStream$groups<TRes>
    implements CopyWith$Subscription$getGroupsStream$groups<TRes> {
  _CopyWithStubImpl$Subscription$getGroupsStream$groups(this._res);

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
