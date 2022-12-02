import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getStreetsStream {
  factory Variables$Subscription$getStreetsStream({
    List<Input$StreetsBoolExp>? where,
    List<Input$StreetsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables$Subscription$getStreetsStream._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$getStreetsStream._(this._$data);

  factory Variables$Subscription$getStreetsStream.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$StreetsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input$StreetsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables$Subscription$getStreetsStream._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$StreetsBoolExp>? get where =>
      (_$data['where'] as List<Input$StreetsBoolExp>?);
  List<Input$StreetsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$StreetsOrderBy>?);
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

  CopyWith$Variables$Subscription$getStreetsStream<
          Variables$Subscription$getStreetsStream>
      get copyWith => CopyWith$Variables$Subscription$getStreetsStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getStreetsStream) ||
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

abstract class CopyWith$Variables$Subscription$getStreetsStream<TRes> {
  factory CopyWith$Variables$Subscription$getStreetsStream(
    Variables$Subscription$getStreetsStream instance,
    TRes Function(Variables$Subscription$getStreetsStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getStreetsStream;

  factory CopyWith$Variables$Subscription$getStreetsStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getStreetsStream;

  TRes call({
    List<Input$StreetsBoolExp>? where,
    List<Input$StreetsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$getStreetsStream<TRes>
    implements CopyWith$Variables$Subscription$getStreetsStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getStreetsStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getStreetsStream _instance;

  final TRes Function(Variables$Subscription$getStreetsStream) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$getStreetsStream._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$StreetsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$StreetsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getStreetsStream<TRes>
    implements CopyWith$Variables$Subscription$getStreetsStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getStreetsStream(this._res);

  TRes _res;

  call({
    List<Input$StreetsBoolExp>? where,
    List<Input$StreetsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription$getStreetsStream {
  Subscription$getStreetsStream({required this.streets});

  factory Subscription$getStreetsStream.fromJson(Map<String, dynamic> json) {
    final l$streets = json['streets'];
    return Subscription$getStreetsStream(
        streets: (l$streets as List<dynamic>)
            .map((e) => Subscription$getStreetsStream$streets.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getStreetsStream$streets> streets;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$streets = streets;
    _resultData['streets'] = l$streets.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$streets = streets;
    return Object.hashAll([Object.hashAll(l$streets.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getStreetsStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets.length != lOther$streets.length) {
      return false;
    }
    for (int i = 0; i < l$streets.length; i++) {
      final l$streets$entry = l$streets[i];
      final lOther$streets$entry = lOther$streets[i];
      if (l$streets$entry != lOther$streets$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getStreetsStream
    on Subscription$getStreetsStream {
  CopyWith$Subscription$getStreetsStream<Subscription$getStreetsStream>
      get copyWith => CopyWith$Subscription$getStreetsStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getStreetsStream<TRes> {
  factory CopyWith$Subscription$getStreetsStream(
    Subscription$getStreetsStream instance,
    TRes Function(Subscription$getStreetsStream) then,
  ) = _CopyWithImpl$Subscription$getStreetsStream;

  factory CopyWith$Subscription$getStreetsStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getStreetsStream;

  TRes call({List<Subscription$getStreetsStream$streets>? streets});
  TRes streets(
      Iterable<Subscription$getStreetsStream$streets> Function(
              Iterable<
                  CopyWith$Subscription$getStreetsStream$streets<
                      Subscription$getStreetsStream$streets>>)
          _fn);
}

class _CopyWithImpl$Subscription$getStreetsStream<TRes>
    implements CopyWith$Subscription$getStreetsStream<TRes> {
  _CopyWithImpl$Subscription$getStreetsStream(
    this._instance,
    this._then,
  );

  final Subscription$getStreetsStream _instance;

  final TRes Function(Subscription$getStreetsStream) _then;

  static const _undefined = {};

  TRes call({Object? streets = _undefined}) =>
      _then(Subscription$getStreetsStream(
          streets: streets == _undefined || streets == null
              ? _instance.streets
              : (streets as List<Subscription$getStreetsStream$streets>)));
  TRes streets(
          Iterable<Subscription$getStreetsStream$streets> Function(
                  Iterable<
                      CopyWith$Subscription$getStreetsStream$streets<
                          Subscription$getStreetsStream$streets>>)
              _fn) =>
      call(
          streets: _fn(_instance.streets
              .map((e) => CopyWith$Subscription$getStreetsStream$streets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getStreetsStream<TRes>
    implements CopyWith$Subscription$getStreetsStream<TRes> {
  _CopyWithStubImpl$Subscription$getStreetsStream(this._res);

  TRes _res;

  call({List<Subscription$getStreetsStream$streets>? streets}) => _res;
  streets(_fn) => _res;
}

const documentNodeSubscriptiongetStreetsStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getStreetsStream'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'StreetsBoolExp'),
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
            name: NameNode(value: 'StreetsOrderBy'),
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
        defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'streets'),
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
            name: NameNode(value: 'line'),
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

class Subscription$getStreetsStream$streets {
  Subscription$getStreetsStream$streets({
    required this.id,
    required this.name,
    this.line,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$getStreetsStream$streets.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$line = json['line'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$getStreetsStream$streets(
      id: stringToUuid(l$id),
      name: (l$name as String),
      line: (l$line as Map<String, dynamic>?),
      color: (l$color as int?),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final Map<String, dynamic>? line;

  final int? color;

  final DateTime? photoUpdatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$line = line;
    _resultData['line'] = l$line;
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
    final l$line = line;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$line,
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
    if (!(other is Subscription$getStreetsStream$streets) ||
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
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
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

extension UtilityExtension$Subscription$getStreetsStream$streets
    on Subscription$getStreetsStream$streets {
  CopyWith$Subscription$getStreetsStream$streets<
          Subscription$getStreetsStream$streets>
      get copyWith => CopyWith$Subscription$getStreetsStream$streets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getStreetsStream$streets<TRes> {
  factory CopyWith$Subscription$getStreetsStream$streets(
    Subscription$getStreetsStream$streets instance,
    TRes Function(Subscription$getStreetsStream$streets) then,
  ) = _CopyWithImpl$Subscription$getStreetsStream$streets;

  factory CopyWith$Subscription$getStreetsStream$streets.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getStreetsStream$streets;

  TRes call({
    UuidValue? id,
    String? name,
    Map<String, dynamic>? line,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getStreetsStream$streets<TRes>
    implements CopyWith$Subscription$getStreetsStream$streets<TRes> {
  _CopyWithImpl$Subscription$getStreetsStream$streets(
    this._instance,
    this._then,
  );

  final Subscription$getStreetsStream$streets _instance;

  final TRes Function(Subscription$getStreetsStream$streets) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? line = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getStreetsStream$streets(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        line: line == _undefined
            ? _instance.line
            : (line as Map<String, dynamic>?),
        color: color == _undefined ? _instance.color : (color as int?),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getStreetsStream$streets<TRes>
    implements CopyWith$Subscription$getStreetsStream$streets<TRes> {
  _CopyWithStubImpl$Subscription$getStreetsStream$streets(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    Map<String, dynamic>? line,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  }) =>
      _res;
}
