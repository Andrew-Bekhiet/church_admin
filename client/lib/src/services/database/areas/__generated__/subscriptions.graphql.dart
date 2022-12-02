import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getAreasStream {
  factory Variables$Subscription$getAreasStream({
    int? limit,
    List<Input$AreasOrderBy>? orderBy,
    List<Input$AreasBoolExp>? where,
  }) =>
      Variables$Subscription$getAreasStream._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$getAreasStream._(this._$data);

  factory Variables$Subscription$getAreasStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$AreasOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input$AreasBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Subscription$getAreasStream._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  List<Input$AreasOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$AreasOrderBy>?);
  List<Input$AreasBoolExp>? get where =>
      (_$data['where'] as List<Input$AreasBoolExp>?);
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

  CopyWith$Variables$Subscription$getAreasStream<
          Variables$Subscription$getAreasStream>
      get copyWith => CopyWith$Variables$Subscription$getAreasStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getAreasStream) ||
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

abstract class CopyWith$Variables$Subscription$getAreasStream<TRes> {
  factory CopyWith$Variables$Subscription$getAreasStream(
    Variables$Subscription$getAreasStream instance,
    TRes Function(Variables$Subscription$getAreasStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getAreasStream;

  factory CopyWith$Variables$Subscription$getAreasStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getAreasStream;

  TRes call({
    int? limit,
    List<Input$AreasOrderBy>? orderBy,
    List<Input$AreasBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$getAreasStream<TRes>
    implements CopyWith$Variables$Subscription$getAreasStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getAreasStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getAreasStream _instance;

  final TRes Function(Variables$Subscription$getAreasStream) _then;

  static const _undefined = {};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$getAreasStream._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$AreasOrderBy>?),
        if (where != _undefined) 'where': (where as List<Input$AreasBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getAreasStream<TRes>
    implements CopyWith$Variables$Subscription$getAreasStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getAreasStream(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$AreasOrderBy>? orderBy,
    List<Input$AreasBoolExp>? where,
  }) =>
      _res;
}

class Subscription$getAreasStream {
  Subscription$getAreasStream({required this.areas});

  factory Subscription$getAreasStream.fromJson(Map<String, dynamic> json) {
    final l$areas = json['areas'];
    return Subscription$getAreasStream(
        areas: (l$areas as List<dynamic>)
            .map((e) => Subscription$getAreasStream$areas.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getAreasStream$areas> areas;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$areas = areas;
    _resultData['areas'] = l$areas.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$areas = areas;
    return Object.hashAll([Object.hashAll(l$areas.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getAreasStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas.length != lOther$areas.length) {
      return false;
    }
    for (int i = 0; i < l$areas.length; i++) {
      final l$areas$entry = l$areas[i];
      final lOther$areas$entry = lOther$areas[i];
      if (l$areas$entry != lOther$areas$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getAreasStream
    on Subscription$getAreasStream {
  CopyWith$Subscription$getAreasStream<Subscription$getAreasStream>
      get copyWith => CopyWith$Subscription$getAreasStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getAreasStream<TRes> {
  factory CopyWith$Subscription$getAreasStream(
    Subscription$getAreasStream instance,
    TRes Function(Subscription$getAreasStream) then,
  ) = _CopyWithImpl$Subscription$getAreasStream;

  factory CopyWith$Subscription$getAreasStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getAreasStream;

  TRes call({List<Subscription$getAreasStream$areas>? areas});
  TRes areas(
      Iterable<Subscription$getAreasStream$areas> Function(
              Iterable<
                  CopyWith$Subscription$getAreasStream$areas<
                      Subscription$getAreasStream$areas>>)
          _fn);
}

class _CopyWithImpl$Subscription$getAreasStream<TRes>
    implements CopyWith$Subscription$getAreasStream<TRes> {
  _CopyWithImpl$Subscription$getAreasStream(
    this._instance,
    this._then,
  );

  final Subscription$getAreasStream _instance;

  final TRes Function(Subscription$getAreasStream) _then;

  static const _undefined = {};

  TRes call({Object? areas = _undefined}) => _then(Subscription$getAreasStream(
      areas: areas == _undefined || areas == null
          ? _instance.areas
          : (areas as List<Subscription$getAreasStream$areas>)));
  TRes areas(
          Iterable<Subscription$getAreasStream$areas> Function(
                  Iterable<
                      CopyWith$Subscription$getAreasStream$areas<
                          Subscription$getAreasStream$areas>>)
              _fn) =>
      call(
          areas: _fn(_instance.areas
              .map((e) => CopyWith$Subscription$getAreasStream$areas(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getAreasStream<TRes>
    implements CopyWith$Subscription$getAreasStream<TRes> {
  _CopyWithStubImpl$Subscription$getAreasStream(this._res);

  TRes _res;

  call({List<Subscription$getAreasStream$areas>? areas}) => _res;
  areas(_fn) => _res;
}

const documentNodeSubscriptiongetAreasStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getAreasStream'),
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
            name: NameNode(value: 'AreasOrderBy'),
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
            name: NameNode(value: 'AreasBoolExp'),
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
        name: NameNode(value: 'areas'),
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
            name: NameNode(value: 'bounds'),
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

class Subscription$getAreasStream$areas {
  Subscription$getAreasStream$areas({
    required this.id,
    required this.name,
    this.bounds,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$getAreasStream$areas.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$bounds = json['bounds'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$getAreasStream$areas(
      id: stringToUuid(l$id),
      name: (l$name as String),
      bounds: (l$bounds as Map<String, dynamic>?),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Map<String, dynamic>? bounds;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$bounds = bounds;
    _resultData['bounds'] = l$bounds;
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
    final l$bounds = bounds;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$bounds,
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
    if (!(other is Subscription$getAreasStream$areas) ||
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
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (l$bounds != lOther$bounds) {
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

extension UtilityExtension$Subscription$getAreasStream$areas
    on Subscription$getAreasStream$areas {
  CopyWith$Subscription$getAreasStream$areas<Subscription$getAreasStream$areas>
      get copyWith => CopyWith$Subscription$getAreasStream$areas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getAreasStream$areas<TRes> {
  factory CopyWith$Subscription$getAreasStream$areas(
    Subscription$getAreasStream$areas instance,
    TRes Function(Subscription$getAreasStream$areas) then,
  ) = _CopyWithImpl$Subscription$getAreasStream$areas;

  factory CopyWith$Subscription$getAreasStream$areas.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getAreasStream$areas;

  TRes call({
    UuidValue? id,
    String? name,
    Map<String, dynamic>? bounds,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getAreasStream$areas<TRes>
    implements CopyWith$Subscription$getAreasStream$areas<TRes> {
  _CopyWithImpl$Subscription$getAreasStream$areas(
    this._instance,
    this._then,
  );

  final Subscription$getAreasStream$areas _instance;

  final TRes Function(Subscription$getAreasStream$areas) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? bounds = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getAreasStream$areas(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        bounds: bounds == _undefined
            ? _instance.bounds
            : (bounds as Map<String, dynamic>?),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getAreasStream$areas<TRes>
    implements CopyWith$Subscription$getAreasStream$areas<TRes> {
  _CopyWithStubImpl$Subscription$getAreasStream$areas(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Map<String, dynamic>? bounds,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}
