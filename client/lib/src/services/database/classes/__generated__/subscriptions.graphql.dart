import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$getClassesStream {
  factory Variables$Subscription$getClassesStream({
    int? limit,
    List<Input$ClassesOrderBy>? orderBy,
    List<Input$ClassesBoolExp>? where,
  }) =>
      Variables$Subscription$getClassesStream._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$getClassesStream._(this._$data);

  factory Variables$Subscription$getClassesStream.fromJson(
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
              (e) => Input$ClassesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input$ClassesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Subscription$getClassesStream._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);
  List<Input$ClassesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ClassesOrderBy>?);
  List<Input$ClassesBoolExp>? get where =>
      (_$data['where'] as List<Input$ClassesBoolExp>?);
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

  CopyWith$Variables$Subscription$getClassesStream<
          Variables$Subscription$getClassesStream>
      get copyWith => CopyWith$Variables$Subscription$getClassesStream(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$getClassesStream) ||
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

abstract class CopyWith$Variables$Subscription$getClassesStream<TRes> {
  factory CopyWith$Variables$Subscription$getClassesStream(
    Variables$Subscription$getClassesStream instance,
    TRes Function(Variables$Subscription$getClassesStream) then,
  ) = _CopyWithImpl$Variables$Subscription$getClassesStream;

  factory CopyWith$Variables$Subscription$getClassesStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$getClassesStream;

  TRes call({
    int? limit,
    List<Input$ClassesOrderBy>? orderBy,
    List<Input$ClassesBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$getClassesStream<TRes>
    implements CopyWith$Variables$Subscription$getClassesStream<TRes> {
  _CopyWithImpl$Variables$Subscription$getClassesStream(
    this._instance,
    this._then,
  );

  final Variables$Subscription$getClassesStream _instance;

  final TRes Function(Variables$Subscription$getClassesStream) _then;

  static const _undefined = {};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$getClassesStream._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ClassesOrderBy>?),
        if (where != _undefined)
          'where': (where as List<Input$ClassesBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$getClassesStream<TRes>
    implements CopyWith$Variables$Subscription$getClassesStream<TRes> {
  _CopyWithStubImpl$Variables$Subscription$getClassesStream(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$ClassesOrderBy>? orderBy,
    List<Input$ClassesBoolExp>? where,
  }) =>
      _res;
}

class Subscription$getClassesStream {
  Subscription$getClassesStream({required this.classes});

  factory Subscription$getClassesStream.fromJson(Map<String, dynamic> json) {
    final l$classes = json['classes'];
    return Subscription$getClassesStream(
        classes: (l$classes as List<dynamic>)
            .map((e) => Subscription$getClassesStream$classes.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$getClassesStream$classes> classes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$classes = classes;
    _resultData['classes'] = l$classes.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$classes = classes;
    return Object.hashAll([Object.hashAll(l$classes.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getClassesStream) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (l$classes.length != lOther$classes.length) {
      return false;
    }
    for (int i = 0; i < l$classes.length; i++) {
      final l$classes$entry = l$classes[i];
      final lOther$classes$entry = lOther$classes[i];
      if (l$classes$entry != lOther$classes$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getClassesStream
    on Subscription$getClassesStream {
  CopyWith$Subscription$getClassesStream<Subscription$getClassesStream>
      get copyWith => CopyWith$Subscription$getClassesStream(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getClassesStream<TRes> {
  factory CopyWith$Subscription$getClassesStream(
    Subscription$getClassesStream instance,
    TRes Function(Subscription$getClassesStream) then,
  ) = _CopyWithImpl$Subscription$getClassesStream;

  factory CopyWith$Subscription$getClassesStream.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getClassesStream;

  TRes call({List<Subscription$getClassesStream$classes>? classes});
  TRes classes(
      Iterable<Subscription$getClassesStream$classes> Function(
              Iterable<
                  CopyWith$Subscription$getClassesStream$classes<
                      Subscription$getClassesStream$classes>>)
          _fn);
}

class _CopyWithImpl$Subscription$getClassesStream<TRes>
    implements CopyWith$Subscription$getClassesStream<TRes> {
  _CopyWithImpl$Subscription$getClassesStream(
    this._instance,
    this._then,
  );

  final Subscription$getClassesStream _instance;

  final TRes Function(Subscription$getClassesStream) _then;

  static const _undefined = {};

  TRes call({Object? classes = _undefined}) =>
      _then(Subscription$getClassesStream(
          classes: classes == _undefined || classes == null
              ? _instance.classes
              : (classes as List<Subscription$getClassesStream$classes>)));
  TRes classes(
          Iterable<Subscription$getClassesStream$classes> Function(
                  Iterable<
                      CopyWith$Subscription$getClassesStream$classes<
                          Subscription$getClassesStream$classes>>)
              _fn) =>
      call(
          classes: _fn(_instance.classes
              .map((e) => CopyWith$Subscription$getClassesStream$classes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$getClassesStream<TRes>
    implements CopyWith$Subscription$getClassesStream<TRes> {
  _CopyWithStubImpl$Subscription$getClassesStream(this._res);

  TRes _res;

  call({List<Subscription$getClassesStream$classes>? classes}) => _res;
  classes(_fn) => _res;
}

const documentNodeSubscriptiongetClassesStream = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getClassesStream'),
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
            name: NameNode(value: 'ClassesOrderBy'),
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
            name: NameNode(value: 'ClassesBoolExp'),
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
        name: NameNode(value: 'classes'),
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

class Subscription$getClassesStream$classes {
  Subscription$getClassesStream$classes({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    required this.$__typename,
  });

  factory Subscription$getClassesStream$classes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$$__typename = json['__typename'];
    return Subscription$getClassesStream$classes(
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
    if (!(other is Subscription$getClassesStream$classes) ||
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

extension UtilityExtension$Subscription$getClassesStream$classes
    on Subscription$getClassesStream$classes {
  CopyWith$Subscription$getClassesStream$classes<
          Subscription$getClassesStream$classes>
      get copyWith => CopyWith$Subscription$getClassesStream$classes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getClassesStream$classes<TRes> {
  factory CopyWith$Subscription$getClassesStream$classes(
    Subscription$getClassesStream$classes instance,
    TRes Function(Subscription$getClassesStream$classes) then,
  ) = _CopyWithImpl$Subscription$getClassesStream$classes;

  factory CopyWith$Subscription$getClassesStream$classes.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getClassesStream$classes;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    DateTime? photoUpdatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getClassesStream$classes<TRes>
    implements CopyWith$Subscription$getClassesStream$classes<TRes> {
  _CopyWithImpl$Subscription$getClassesStream$classes(
    this._instance,
    this._then,
  );

  final Subscription$getClassesStream$classes _instance;

  final TRes Function(Subscription$getClassesStream$classes) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getClassesStream$classes(
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

class _CopyWithStubImpl$Subscription$getClassesStream$classes<TRes>
    implements CopyWith$Subscription$getClassesStream$classes<TRes> {
  _CopyWithStubImpl$Subscription$getClassesStream$classes(this._res);

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
