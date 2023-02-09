import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllStreets {
  factory Variables$Subscription$watchAllStreets({
    List<Input$StreetsBoolExp>? where,
    List<Input$StreetsOrderBy>? orderBy,
    int? limit,
  }) =>
      Variables$Subscription$watchAllStreets._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables$Subscription$watchAllStreets._(this._$data);

  factory Variables$Subscription$watchAllStreets.fromJson(
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
    return Variables$Subscription$watchAllStreets._(result$data);
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

  CopyWith$Variables$Subscription$watchAllStreets<
          Variables$Subscription$watchAllStreets>
      get copyWith => CopyWith$Variables$Subscription$watchAllStreets(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllStreets) ||
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

abstract class CopyWith$Variables$Subscription$watchAllStreets<TRes> {
  factory CopyWith$Variables$Subscription$watchAllStreets(
    Variables$Subscription$watchAllStreets instance,
    TRes Function(Variables$Subscription$watchAllStreets) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllStreets;

  factory CopyWith$Variables$Subscription$watchAllStreets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllStreets;

  TRes call({
    List<Input$StreetsBoolExp>? where,
    List<Input$StreetsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllStreets<TRes>
    implements CopyWith$Variables$Subscription$watchAllStreets<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllStreets(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllStreets _instance;

  final TRes Function(Variables$Subscription$watchAllStreets) _then;

  static const _undefined = {};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllStreets._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input$StreetsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$StreetsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllStreets<TRes>
    implements CopyWith$Variables$Subscription$watchAllStreets<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllStreets(this._res);

  TRes _res;

  call({
    List<Input$StreetsBoolExp>? where,
    List<Input$StreetsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription$watchAllStreets {
  Subscription$watchAllStreets({required this.streets});

  factory Subscription$watchAllStreets.fromJson(Map<String, dynamic> json) {
    final l$streets = json['streets'];
    return Subscription$watchAllStreets(
        streets: (l$streets as List<dynamic>)
            .map((e) => Subscription$watchAllStreets$streets.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllStreets$streets> streets;

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
    if (!(other is Subscription$watchAllStreets) ||
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

extension UtilityExtension$Subscription$watchAllStreets
    on Subscription$watchAllStreets {
  CopyWith$Subscription$watchAllStreets<Subscription$watchAllStreets>
      get copyWith => CopyWith$Subscription$watchAllStreets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllStreets<TRes> {
  factory CopyWith$Subscription$watchAllStreets(
    Subscription$watchAllStreets instance,
    TRes Function(Subscription$watchAllStreets) then,
  ) = _CopyWithImpl$Subscription$watchAllStreets;

  factory CopyWith$Subscription$watchAllStreets.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllStreets;

  TRes call({List<Subscription$watchAllStreets$streets>? streets});
  TRes streets(
      Iterable<Subscription$watchAllStreets$streets> Function(
              Iterable<
                  CopyWith$Subscription$watchAllStreets$streets<
                      Subscription$watchAllStreets$streets>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllStreets<TRes>
    implements CopyWith$Subscription$watchAllStreets<TRes> {
  _CopyWithImpl$Subscription$watchAllStreets(
    this._instance,
    this._then,
  );

  final Subscription$watchAllStreets _instance;

  final TRes Function(Subscription$watchAllStreets) _then;

  static const _undefined = {};

  TRes call({Object? streets = _undefined}) =>
      _then(Subscription$watchAllStreets(
          streets: streets == _undefined || streets == null
              ? _instance.streets
              : (streets as List<Subscription$watchAllStreets$streets>)));
  TRes streets(
          Iterable<Subscription$watchAllStreets$streets> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllStreets$streets<
                          Subscription$watchAllStreets$streets>>)
              _fn) =>
      call(
          streets: _fn(_instance.streets
              .map((e) => CopyWith$Subscription$watchAllStreets$streets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllStreets<TRes>
    implements CopyWith$Subscription$watchAllStreets<TRes> {
  _CopyWithStubImpl$Subscription$watchAllStreets(this._res);

  TRes _res;

  call({List<Subscription$watchAllStreets$streets>? streets}) => _res;
  streets(_fn) => _res;
}

const documentNodeSubscriptionwatchAllStreets = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllStreets'),
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
          FragmentSpreadNode(
            name: NameNode(value: 'Street'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'line'),
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
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);

class Subscription$watchAllStreets$streets
    implements Fragment$Street, Fragment$StreetNoPhoto {
  Subscription$watchAllStreets$streets({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    this.line,
  });

  factory Subscription$watchAllStreets$streets.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$line = json['line'];
    return Subscription$watchAllStreets$streets(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      line: (l$line as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Map<String, dynamic>? line;

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
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
    final l$line = line;
    _resultData['line'] = l$line;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$line = line;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$line,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllStreets$streets) ||
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllStreets$streets
    on Subscription$watchAllStreets$streets {
  CopyWith$Subscription$watchAllStreets$streets<
          Subscription$watchAllStreets$streets>
      get copyWith => CopyWith$Subscription$watchAllStreets$streets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllStreets$streets<TRes> {
  factory CopyWith$Subscription$watchAllStreets$streets(
    Subscription$watchAllStreets$streets instance,
    TRes Function(Subscription$watchAllStreets$streets) then,
  ) = _CopyWithImpl$Subscription$watchAllStreets$streets;

  factory CopyWith$Subscription$watchAllStreets$streets.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllStreets$streets;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Map<String, dynamic>? line,
  });
}

class _CopyWithImpl$Subscription$watchAllStreets$streets<TRes>
    implements CopyWith$Subscription$watchAllStreets$streets<TRes> {
  _CopyWithImpl$Subscription$watchAllStreets$streets(
    this._instance,
    this._then,
  );

  final Subscription$watchAllStreets$streets _instance;

  final TRes Function(Subscription$watchAllStreets$streets) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? line = _undefined,
  }) =>
      _then(Subscription$watchAllStreets$streets(
        id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        color: color == _undefined ? _instance.color : (color as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        photoUpdatedAt: photoUpdatedAt == _undefined
            ? _instance.photoUpdatedAt
            : (photoUpdatedAt as DateTime?),
        line: line == _undefined
            ? _instance.line
            : (line as Map<String, dynamic>?),
      ));
}

class _CopyWithStubImpl$Subscription$watchAllStreets$streets<TRes>
    implements CopyWith$Subscription$watchAllStreets$streets<TRes> {
  _CopyWithStubImpl$Subscription$watchAllStreets$streets(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Map<String, dynamic>? line,
  }) =>
      _res;
}
