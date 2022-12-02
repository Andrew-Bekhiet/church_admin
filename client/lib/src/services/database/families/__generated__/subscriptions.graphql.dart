import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getFamiliesStream {
  factory Variables$Subscription$getFamiliesStream({
    int? limit,
    List<Input$FamiliesOrderBy>? orderBy,
    List<Input$FamiliesBoolExp>? where,
  }) =>
      Variables$Subscription$getFamiliesStream._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$getFamiliesStream._(this._$data);

  factory Variables$Subscription$getFamiliesStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$FamiliesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input$FamiliesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Subscription$getFamiliesStream._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  List<Input$FamiliesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$FamiliesOrderBy>?);
  List<Input$FamiliesBoolExp>? get where =>
      (_$data['where'] as List<Input$FamiliesBoolExp>?);
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

  CopyWith$Variables$Subscription$getFamiliesStream<
          Variables$Subscription$getFamiliesStream>
      get copyWith => CopyWith$Variables$Subscription$getFamiliesStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getFamiliesStream) ||
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

abstract class CopyWith$Variables$Subscription$getFamiliesStream<TRes> {
  factory CopyWith$Variables$Subscription$getFamiliesStream(
    Variables$Subscription$getFamiliesStream instance,
    TRes Function(Variables$Subscription$getFamiliesStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getFamiliesStream;

  factory CopyWith$Variables$Subscription$getFamiliesStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getFamiliesStream;

  TRes call({
    int? limit,
    List<Input$FamiliesOrderBy>? orderBy,
    List<Input$FamiliesBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$getFamiliesStream<TRes>
    implements CopyWith$Variables$Subscription$getFamiliesStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getFamiliesStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getFamiliesStream _instance;

  final TRes Function(Variables$Subscription$getFamiliesStream) _then;

  static const _undefined = {};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$getFamiliesStream._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$FamiliesOrderBy>?),
        if (where != _undefined)
          'where': (where as List<Input$FamiliesBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getFamiliesStream<TRes>
    implements CopyWith$Variables$Subscription$getFamiliesStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getFamiliesStream(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$FamiliesOrderBy>? orderBy,
    List<Input$FamiliesBoolExp>? where,
  }) =>
      _res;
}

class Subscription$getFamiliesStream {
  Subscription$getFamiliesStream({required this.families});

  factory Subscription$getFamiliesStream.fromJson(Map<String, dynamic> json) {
    final l$families = json['families'];
    return Subscription$getFamiliesStream(
        families: (l$families as List<dynamic>)
            .map((e) => Subscription$getFamiliesStream$families.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getFamiliesStream$families> families;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$families = families;
    _resultData['families'] = l$families.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$families = families;
    return Object.hashAll([Object.hashAll(l$families.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getFamiliesStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families.length != lOther$families.length) {
      return false;
    }
    for (int i = 0; i < l$families.length; i++) {
      final l$families$entry = l$families[i];
      final lOther$families$entry = lOther$families[i];
      if (l$families$entry != lOther$families$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getFamiliesStream
    on Subscription$getFamiliesStream {
  CopyWith$Subscription$getFamiliesStream<Subscription$getFamiliesStream>
      get copyWith => CopyWith$Subscription$getFamiliesStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getFamiliesStream<TRes> {
  factory CopyWith$Subscription$getFamiliesStream(
    Subscription$getFamiliesStream instance,
    TRes Function(Subscription$getFamiliesStream) then,
  ) = _CopyWithImpl$Subscription$getFamiliesStream;

  factory CopyWith$Subscription$getFamiliesStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getFamiliesStream;

  TRes call({List<Subscription$getFamiliesStream$families>? families});
  TRes families(
      Iterable<Subscription$getFamiliesStream$families> Function(
              Iterable<
                  CopyWith$Subscription$getFamiliesStream$families<
                      Subscription$getFamiliesStream$families>>)
          _fn);
}

class _CopyWithImpl$Subscription$getFamiliesStream<TRes>
    implements CopyWith$Subscription$getFamiliesStream<TRes> {
  _CopyWithImpl$Subscription$getFamiliesStream(
    this._instance,
    this._then,
  );

  final Subscription$getFamiliesStream _instance;

  final TRes Function(Subscription$getFamiliesStream) _then;

  static const _undefined = {};

  TRes call({Object? families = _undefined}) =>
      _then(Subscription$getFamiliesStream(
          families: families == _undefined || families == null
              ? _instance.families
              : (families as List<Subscription$getFamiliesStream$families>)));
  TRes families(
          Iterable<Subscription$getFamiliesStream$families> Function(
                  Iterable<
                      CopyWith$Subscription$getFamiliesStream$families<
                          Subscription$getFamiliesStream$families>>)
              _fn) =>
      call(
          families: _fn(_instance.families
              .map((e) => CopyWith$Subscription$getFamiliesStream$families(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getFamiliesStream<TRes>
    implements CopyWith$Subscription$getFamiliesStream<TRes> {
  _CopyWithStubImpl$Subscription$getFamiliesStream(this._res);

  TRes _res;

  call({List<Subscription$getFamiliesStream$families>? families}) => _res;
  families(_fn) => _res;
}

const documentNodeSubscriptiongetFamiliesStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getFamiliesStream'),
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
            name: NameNode(value: 'FamiliesOrderBy'),
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
            name: NameNode(value: 'FamiliesBoolExp'),
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
        name: NameNode(value: 'families'),
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

class Subscription$getFamiliesStream$families {
  Subscription$getFamiliesStream$families({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$getFamiliesStream$families.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$getFamiliesStream$families(
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
    if (!(other is Subscription$getFamiliesStream$families) ||
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

extension UtilityExtension$Subscription$getFamiliesStream$families
    on Subscription$getFamiliesStream$families {
  CopyWith$Subscription$getFamiliesStream$families<
          Subscription$getFamiliesStream$families>
      get copyWith => CopyWith$Subscription$getFamiliesStream$families(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getFamiliesStream$families<TRes> {
  factory CopyWith$Subscription$getFamiliesStream$families(
    Subscription$getFamiliesStream$families instance,
    TRes Function(Subscription$getFamiliesStream$families) then,
  ) = _CopyWithImpl$Subscription$getFamiliesStream$families;

  factory CopyWith$Subscription$getFamiliesStream$families.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getFamiliesStream$families;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getFamiliesStream$families<TRes>
    implements CopyWith$Subscription$getFamiliesStream$families<TRes> {
  _CopyWithImpl$Subscription$getFamiliesStream$families(
    this._instance,
    this._then,
  );

  final Subscription$getFamiliesStream$families _instance;

  final TRes Function(Subscription$getFamiliesStream$families) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getFamiliesStream$families(
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

class _CopyWithStubImpl$Subscription$getFamiliesStream$families<TRes>
    implements CopyWith$Subscription$getFamiliesStream$families<TRes> {
  _CopyWithStubImpl$Subscription$getFamiliesStream$families(this._res);

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
