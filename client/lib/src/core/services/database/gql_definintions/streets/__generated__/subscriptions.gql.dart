import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllStreets {
  factory Variables_Subscription_watchAllStreets({
    List<Input_StreetsBoolExp>? where,
    List<Input_StreetsOrderBy>? orderBy,
    int? limit,
  }) => Variables_Subscription_watchAllStreets._({
    if (where != null) r'where': where,
    if (orderBy != null) r'orderBy': orderBy,
    if (limit != null) r'limit': limit,
  });

  Variables_Subscription_watchAllStreets._(this._$data);

  factory Variables_Subscription_watchAllStreets.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_StreetsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => Input_StreetsOrderBy.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAllStreets._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_StreetsBoolExp>? get where =>
      (_$data['where'] as List<Input_StreetsBoolExp>?);

  List<Input_StreetsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_StreetsOrderBy>?);

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

  CopyWith_Variables_Subscription_watchAllStreets<
    Variables_Subscription_watchAllStreets
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchAllStreets(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchAllStreets ||
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

abstract class CopyWith_Variables_Subscription_watchAllStreets<TRes> {
  factory CopyWith_Variables_Subscription_watchAllStreets(
    Variables_Subscription_watchAllStreets instance,
    TRes Function(Variables_Subscription_watchAllStreets) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllStreets;

  factory CopyWith_Variables_Subscription_watchAllStreets.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllStreets;

  TRes call({
    List<Input_StreetsBoolExp>? where,
    List<Input_StreetsOrderBy>? orderBy,
    int? limit,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllStreets<TRes>
    implements CopyWith_Variables_Subscription_watchAllStreets<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllStreets(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllStreets _instance;

  final TRes Function(Variables_Subscription_watchAllStreets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? limit = _undefined,
  }) => _then(
    Variables_Subscription_watchAllStreets._({
      ..._instance._$data,
      if (where != _undefined) 'where': (where as List<Input_StreetsBoolExp>?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Input_StreetsOrderBy>?),
      if (limit != _undefined) 'limit': (limit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchAllStreets<TRes>
    implements CopyWith_Variables_Subscription_watchAllStreets<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllStreets(this._res);

  TRes _res;

  call({
    List<Input_StreetsBoolExp>? where,
    List<Input_StreetsOrderBy>? orderBy,
    int? limit,
  }) => _res;
}

class Subscription_watchAllStreets {
  Subscription_watchAllStreets({required this.streets});

  factory Subscription_watchAllStreets.fromJson(Map<String, dynamic> json) {
    final l$streets = json['streets'];
    return Subscription_watchAllStreets(
      streets: (l$streets as List<dynamic>)
          .map(
            (e) => Subscription_watchAllStreets_streets.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Subscription_watchAllStreets_streets> streets;

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
    if (other is! Subscription_watchAllStreets ||
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

extension UtilityExtension_Subscription_watchAllStreets
    on Subscription_watchAllStreets {
  CopyWith_Subscription_watchAllStreets<Subscription_watchAllStreets>
  get copyWith => CopyWith_Subscription_watchAllStreets(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAllStreets<TRes> {
  factory CopyWith_Subscription_watchAllStreets(
    Subscription_watchAllStreets instance,
    TRes Function(Subscription_watchAllStreets) then,
  ) = _CopyWithImpl_Subscription_watchAllStreets;

  factory CopyWith_Subscription_watchAllStreets.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllStreets;

  TRes call({List<Subscription_watchAllStreets_streets>? streets});
  TRes streets(
    Iterable<Subscription_watchAllStreets_streets> Function(
      Iterable<
        CopyWith_Subscription_watchAllStreets_streets<
          Subscription_watchAllStreets_streets
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchAllStreets<TRes>
    implements CopyWith_Subscription_watchAllStreets<TRes> {
  _CopyWithImpl_Subscription_watchAllStreets(this._instance, this._then);

  final Subscription_watchAllStreets _instance;

  final TRes Function(Subscription_watchAllStreets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streets = _undefined}) => _then(
    Subscription_watchAllStreets(
      streets: streets == _undefined || streets == null
          ? _instance.streets
          : (streets as List<Subscription_watchAllStreets_streets>),
    ),
  );

  TRes streets(
    Iterable<Subscription_watchAllStreets_streets> Function(
      Iterable<
        CopyWith_Subscription_watchAllStreets_streets<
          Subscription_watchAllStreets_streets
        >
      >,
    )
    _fn,
  ) => call(
    streets: _fn(
      _instance.streets.map(
        (e) => CopyWith_Subscription_watchAllStreets_streets(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchAllStreets<TRes>
    implements CopyWith_Subscription_watchAllStreets<TRes> {
  _CopyWithStubImpl_Subscription_watchAllStreets(this._res);

  TRes _res;

  call({List<Subscription_watchAllStreets_streets>? streets}) => _res;

  streets(_fn) => _res;
}

const documentNodeSubscriptionwatchAllStreets = DocumentNode(
  definitions: [
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
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'name'),
                  value: EnumValueNode(name: NameNode(value: 'ASC')),
                ),
              ],
            ),
          ),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: IntValueNode(value: '200')),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'streets'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    ),
                  ],
                ),
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
            selectionSet: SelectionSetNode(
              selections: [
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
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
  ],
);

class Subscription_watchAllStreets_streets
    implements Fragment_Street, Fragment_StreetNoPhoto {
  Subscription_watchAllStreets_streets({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Streets',
    this.photoUpdatedAt,
    this.blurhash,
    this.line,
  });

  factory Subscription_watchAllStreets_streets.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$line = json['line'];
    return Subscription_watchAllStreets_streets(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      line: (l$line as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Map<String, dynamic>? line;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$line = line;
    _resultData['line'] = l$line;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$line = line;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$line,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchAllStreets_streets ||
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
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
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
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

extension UtilityExtension_Subscription_watchAllStreets_streets
    on Subscription_watchAllStreets_streets {
  CopyWith_Subscription_watchAllStreets_streets<
    Subscription_watchAllStreets_streets
  >
  get copyWith => CopyWith_Subscription_watchAllStreets_streets(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAllStreets_streets<TRes> {
  factory CopyWith_Subscription_watchAllStreets_streets(
    Subscription_watchAllStreets_streets instance,
    TRes Function(Subscription_watchAllStreets_streets) then,
  ) = _CopyWithImpl_Subscription_watchAllStreets_streets;

  factory CopyWith_Subscription_watchAllStreets_streets.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllStreets_streets;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Map<String, dynamic>? line,
  });
}

class _CopyWithImpl_Subscription_watchAllStreets_streets<TRes>
    implements CopyWith_Subscription_watchAllStreets_streets<TRes> {
  _CopyWithImpl_Subscription_watchAllStreets_streets(
    this._instance,
    this._then,
  );

  final Subscription_watchAllStreets_streets _instance;

  final TRes Function(Subscription_watchAllStreets_streets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? line = _undefined,
  }) => _then(
    Subscription_watchAllStreets_streets(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      line: line == _undefined
          ? _instance.line
          : (line as Map<String, dynamic>?),
    ),
  );
}

class _CopyWithStubImpl_Subscription_watchAllStreets_streets<TRes>
    implements CopyWith_Subscription_watchAllStreets_streets<TRes> {
  _CopyWithStubImpl_Subscription_watchAllStreets_streets(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Map<String, dynamic>? line,
  }) => _res;
}

class Variables_Subscription_watchStreetsCount {
  factory Variables_Subscription_watchStreetsCount({
    List<Input_StreetsBoolExp>? where,
    int? limit,
  }) => Variables_Subscription_watchStreetsCount._({
    if (where != null) r'where': where,
    if (limit != null) r'limit': limit,
  });

  Variables_Subscription_watchStreetsCount._(this._$data);

  factory Variables_Subscription_watchStreetsCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
            (e) => Input_StreetsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchStreetsCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_StreetsBoolExp>? get where =>
      (_$data['where'] as List<Input_StreetsBoolExp>?);

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

  CopyWith_Variables_Subscription_watchStreetsCount<
    Variables_Subscription_watchStreetsCount
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchStreetsCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchStreetsCount ||
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

abstract class CopyWith_Variables_Subscription_watchStreetsCount<TRes> {
  factory CopyWith_Variables_Subscription_watchStreetsCount(
    Variables_Subscription_watchStreetsCount instance,
    TRes Function(Variables_Subscription_watchStreetsCount) then,
  ) = _CopyWithImpl_Variables_Subscription_watchStreetsCount;

  factory CopyWith_Variables_Subscription_watchStreetsCount.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchStreetsCount;

  TRes call({List<Input_StreetsBoolExp>? where, int? limit});
}

class _CopyWithImpl_Variables_Subscription_watchStreetsCount<TRes>
    implements CopyWith_Variables_Subscription_watchStreetsCount<TRes> {
  _CopyWithImpl_Variables_Subscription_watchStreetsCount(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchStreetsCount _instance;

  final TRes Function(Variables_Subscription_watchStreetsCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined, Object? limit = _undefined}) => _then(
    Variables_Subscription_watchStreetsCount._({
      ..._instance._$data,
      if (where != _undefined) 'where': (where as List<Input_StreetsBoolExp>?),
      if (limit != _undefined) 'limit': (limit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchStreetsCount<TRes>
    implements CopyWith_Variables_Subscription_watchStreetsCount<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchStreetsCount(this._res);

  TRes _res;

  call({List<Input_StreetsBoolExp>? where, int? limit}) => _res;
}

class Subscription_watchStreetsCount {
  Subscription_watchStreetsCount({required this.streetsAggregate});

  factory Subscription_watchStreetsCount.fromJson(Map<String, dynamic> json) {
    final l$streetsAggregate = json['streetsAggregate'];
    return Subscription_watchStreetsCount(
      streetsAggregate:
          Subscription_watchStreetsCount_streetsAggregate.fromJson(
            (l$streetsAggregate as Map<String, dynamic>),
          ),
    );
  }

  final Subscription_watchStreetsCount_streetsAggregate streetsAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$streetsAggregate = streetsAggregate;
    _resultData['streetsAggregate'] = l$streetsAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$streetsAggregate = streetsAggregate;
    return Object.hashAll([l$streetsAggregate]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStreetsCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$streetsAggregate = streetsAggregate;
    final lOther$streetsAggregate = other.streetsAggregate;
    if (l$streetsAggregate != lOther$streetsAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchStreetsCount
    on Subscription_watchStreetsCount {
  CopyWith_Subscription_watchStreetsCount<Subscription_watchStreetsCount>
  get copyWith => CopyWith_Subscription_watchStreetsCount(this, (i) => i);
}

abstract class CopyWith_Subscription_watchStreetsCount<TRes> {
  factory CopyWith_Subscription_watchStreetsCount(
    Subscription_watchStreetsCount instance,
    TRes Function(Subscription_watchStreetsCount) then,
  ) = _CopyWithImpl_Subscription_watchStreetsCount;

  factory CopyWith_Subscription_watchStreetsCount.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchStreetsCount;

  TRes call({
    Subscription_watchStreetsCount_streetsAggregate? streetsAggregate,
  });
  CopyWith_Subscription_watchStreetsCount_streetsAggregate<TRes>
  get streetsAggregate;
}

class _CopyWithImpl_Subscription_watchStreetsCount<TRes>
    implements CopyWith_Subscription_watchStreetsCount<TRes> {
  _CopyWithImpl_Subscription_watchStreetsCount(this._instance, this._then);

  final Subscription_watchStreetsCount _instance;

  final TRes Function(Subscription_watchStreetsCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streetsAggregate = _undefined}) => _then(
    Subscription_watchStreetsCount(
      streetsAggregate:
          streetsAggregate == _undefined || streetsAggregate == null
          ? _instance.streetsAggregate
          : (streetsAggregate
                as Subscription_watchStreetsCount_streetsAggregate),
    ),
  );

  CopyWith_Subscription_watchStreetsCount_streetsAggregate<TRes>
  get streetsAggregate {
    final local$streetsAggregate = _instance.streetsAggregate;
    return CopyWith_Subscription_watchStreetsCount_streetsAggregate(
      local$streetsAggregate,
      (e) => call(streetsAggregate: e),
    );
  }
}

class _CopyWithStubImpl_Subscription_watchStreetsCount<TRes>
    implements CopyWith_Subscription_watchStreetsCount<TRes> {
  _CopyWithStubImpl_Subscription_watchStreetsCount(this._res);

  TRes _res;

  call({Subscription_watchStreetsCount_streetsAggregate? streetsAggregate}) =>
      _res;

  CopyWith_Subscription_watchStreetsCount_streetsAggregate<TRes>
  get streetsAggregate =>
      CopyWith_Subscription_watchStreetsCount_streetsAggregate.stub(_res);
}

const documentNodeSubscriptionwatchStreetsCount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchStreetsCount'),
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
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'streetsAggregate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);

class Subscription_watchStreetsCount_streetsAggregate {
  Subscription_watchStreetsCount_streetsAggregate({
    this.aggregate,
    this.$__typename = 'StreetsAggregate',
  });

  factory Subscription_watchStreetsCount_streetsAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchStreetsCount_streetsAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchStreetsCount_streetsAggregate_aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchStreetsCount_streetsAggregate_aggregate? aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStreetsCount_streetsAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension_Subscription_watchStreetsCount_streetsAggregate
    on Subscription_watchStreetsCount_streetsAggregate {
  CopyWith_Subscription_watchStreetsCount_streetsAggregate<
    Subscription_watchStreetsCount_streetsAggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchStreetsCount_streetsAggregate(this, (i) => i);
}

abstract class CopyWith_Subscription_watchStreetsCount_streetsAggregate<TRes> {
  factory CopyWith_Subscription_watchStreetsCount_streetsAggregate(
    Subscription_watchStreetsCount_streetsAggregate instance,
    TRes Function(Subscription_watchStreetsCount_streetsAggregate) then,
  ) = _CopyWithImpl_Subscription_watchStreetsCount_streetsAggregate;

  factory CopyWith_Subscription_watchStreetsCount_streetsAggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchStreetsCount_streetsAggregate;

  TRes call({
    Subscription_watchStreetsCount_streetsAggregate_aggregate? aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate<TRes>
  get aggregate;
}

class _CopyWithImpl_Subscription_watchStreetsCount_streetsAggregate<TRes>
    implements CopyWith_Subscription_watchStreetsCount_streetsAggregate<TRes> {
  _CopyWithImpl_Subscription_watchStreetsCount_streetsAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchStreetsCount_streetsAggregate _instance;

  final TRes Function(Subscription_watchStreetsCount_streetsAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchStreetsCount_streetsAggregate(
      aggregate: aggregate == _undefined
          ? _instance.aggregate
          : (aggregate
                as Subscription_watchStreetsCount_streetsAggregate_aggregate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate<TRes>
  get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate.stub(
            _then(_instance),
          )
        : CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate(
            local$aggregate,
            (e) => call(aggregate: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchStreetsCount_streetsAggregate<TRes>
    implements CopyWith_Subscription_watchStreetsCount_streetsAggregate<TRes> {
  _CopyWithStubImpl_Subscription_watchStreetsCount_streetsAggregate(this._res);

  TRes _res;

  call({
    Subscription_watchStreetsCount_streetsAggregate_aggregate? aggregate,
    String? $__typename,
  }) => _res;

  CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate<TRes>
  get aggregate =>
      CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate.stub(
        _res,
      );
}

class Subscription_watchStreetsCount_streetsAggregate_aggregate {
  Subscription_watchStreetsCount_streetsAggregate_aggregate({
    required this.count,
    this.$__typename = 'StreetsAggregateFields',
  });

  factory Subscription_watchStreetsCount_streetsAggregate_aggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Subscription_watchStreetsCount_streetsAggregate_aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStreetsCount_streetsAggregate_aggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension_Subscription_watchStreetsCount_streetsAggregate_aggregate
    on Subscription_watchStreetsCount_streetsAggregate_aggregate {
  CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate<
    Subscription_watchStreetsCount_streetsAggregate_aggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate<
  TRes
> {
  factory CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate(
    Subscription_watchStreetsCount_streetsAggregate_aggregate instance,
    TRes Function(Subscription_watchStreetsCount_streetsAggregate_aggregate)
    then,
  ) = _CopyWithImpl_Subscription_watchStreetsCount_streetsAggregate_aggregate;

  factory CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchStreetsCount_streetsAggregate_aggregate;

  TRes call({int? count, String? $__typename});
}

class _CopyWithImpl_Subscription_watchStreetsCount_streetsAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate<
          TRes
        > {
  _CopyWithImpl_Subscription_watchStreetsCount_streetsAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchStreetsCount_streetsAggregate_aggregate _instance;

  final TRes Function(Subscription_watchStreetsCount_streetsAggregate_aggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Subscription_watchStreetsCount_streetsAggregate_aggregate(
          count: count == _undefined || count == null
              ? _instance.count
              : (count as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Subscription_watchStreetsCount_streetsAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchStreetsCount_streetsAggregate_aggregate<
          TRes
        > {
  _CopyWithStubImpl_Subscription_watchStreetsCount_streetsAggregate_aggregate(
    this._res,
  );

  TRes _res;

  call({int? count, String? $__typename}) => _res;
}

class Variables_Subscription_watchStreet {
  factory Variables_Subscription_watchStreet({required UuidValue id}) =>
      Variables_Subscription_watchStreet._({r'id': id});

  Variables_Subscription_watchStreet._(this._$data);

  factory Variables_Subscription_watchStreet.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Subscription_watchStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchStreet<
    Variables_Subscription_watchStreet
  >
  get copyWith => CopyWith_Variables_Subscription_watchStreet(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchStreet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Subscription_watchStreet<TRes> {
  factory CopyWith_Variables_Subscription_watchStreet(
    Variables_Subscription_watchStreet instance,
    TRes Function(Variables_Subscription_watchStreet) then,
  ) = _CopyWithImpl_Variables_Subscription_watchStreet;

  factory CopyWith_Variables_Subscription_watchStreet.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchStreet;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Subscription_watchStreet<TRes>
    implements CopyWith_Variables_Subscription_watchStreet<TRes> {
  _CopyWithImpl_Variables_Subscription_watchStreet(this._instance, this._then);

  final Variables_Subscription_watchStreet _instance;

  final TRes Function(Variables_Subscription_watchStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Subscription_watchStreet._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchStreet<TRes>
    implements CopyWith_Variables_Subscription_watchStreet<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchStreet(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription_watchStreet {
  Subscription_watchStreet({this.streetsByPk});

  factory Subscription_watchStreet.fromJson(Map<String, dynamic> json) {
    final l$streetsByPk = json['streetsByPk'];
    return Subscription_watchStreet(
      streetsByPk: l$streetsByPk == null
          ? null
          : Subscription_watchStreet_streetsByPk.fromJson(
              (l$streetsByPk as Map<String, dynamic>),
            ),
    );
  }

  final Subscription_watchStreet_streetsByPk? streetsByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$streetsByPk = streetsByPk;
    _resultData['streetsByPk'] = l$streetsByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$streetsByPk = streetsByPk;
    return Object.hashAll([l$streetsByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStreet ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$streetsByPk = streetsByPk;
    final lOther$streetsByPk = other.streetsByPk;
    if (l$streetsByPk != lOther$streetsByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchStreet
    on Subscription_watchStreet {
  CopyWith_Subscription_watchStreet<Subscription_watchStreet> get copyWith =>
      CopyWith_Subscription_watchStreet(this, (i) => i);
}

abstract class CopyWith_Subscription_watchStreet<TRes> {
  factory CopyWith_Subscription_watchStreet(
    Subscription_watchStreet instance,
    TRes Function(Subscription_watchStreet) then,
  ) = _CopyWithImpl_Subscription_watchStreet;

  factory CopyWith_Subscription_watchStreet.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchStreet;

  TRes call({Subscription_watchStreet_streetsByPk? streetsByPk});
  CopyWith_Subscription_watchStreet_streetsByPk<TRes> get streetsByPk;
}

class _CopyWithImpl_Subscription_watchStreet<TRes>
    implements CopyWith_Subscription_watchStreet<TRes> {
  _CopyWithImpl_Subscription_watchStreet(this._instance, this._then);

  final Subscription_watchStreet _instance;

  final TRes Function(Subscription_watchStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streetsByPk = _undefined}) => _then(
    Subscription_watchStreet(
      streetsByPk: streetsByPk == _undefined
          ? _instance.streetsByPk
          : (streetsByPk as Subscription_watchStreet_streetsByPk?),
    ),
  );

  CopyWith_Subscription_watchStreet_streetsByPk<TRes> get streetsByPk {
    final local$streetsByPk = _instance.streetsByPk;
    return local$streetsByPk == null
        ? CopyWith_Subscription_watchStreet_streetsByPk.stub(_then(_instance))
        : CopyWith_Subscription_watchStreet_streetsByPk(
            local$streetsByPk,
            (e) => call(streetsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchStreet<TRes>
    implements CopyWith_Subscription_watchStreet<TRes> {
  _CopyWithStubImpl_Subscription_watchStreet(this._res);

  TRes _res;

  call({Subscription_watchStreet_streetsByPk? streetsByPk}) => _res;

  CopyWith_Subscription_watchStreet_streetsByPk<TRes> get streetsByPk =>
      CopyWith_Subscription_watchStreet_streetsByPk.stub(_res);
}

const documentNodeSubscriptionwatchStreet = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchStreet'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'streetsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Street'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'areas'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'orderBy'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'area'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'name'),
                                  value: EnumValueNode(
                                    name: NameNode(value: 'ASC'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'area'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'Area'),
                              directives: [],
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'line'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'lastEdit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'LatestEditHistory'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'lastVisit'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'LatestVisitHistory'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    fragmentDefinitionStreet,
    fragmentDefinitionStreetNoPhoto,
    fragmentDefinitionArea,
    fragmentDefinitionAreaNoPhoto,
    fragmentDefinitionLatestEditHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
    fragmentDefinitionLatestVisitHistory,
  ],
);

class Subscription_watchStreet_streetsByPk
    implements Fragment_Street, Fragment_StreetNoPhoto {
  Subscription_watchStreet_streetsByPk({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Streets',
    this.photoUpdatedAt,
    this.blurhash,
    required this.areas,
    this.line,
    this.lastEdit,
    this.lastVisit,
  });

  factory Subscription_watchStreet_streetsByPk.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$areas = json['areas'];
    final l$line = json['line'];
    final l$lastEdit = json['lastEdit'];
    final l$lastVisit = json['lastVisit'];
    return Subscription_watchStreet_streetsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      areas: (l$areas as List<dynamic>)
          .map(
            (e) => Subscription_watchStreet_streetsByPk_areas.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      line: (l$line as Map<String, dynamic>?),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            ),
      lastVisit: l$lastVisit == null
          ? null
          : Fragment_LatestVisitHistory.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            ),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final List<Subscription_watchStreet_streetsByPk_areas> areas;

  final Map<String, dynamic>? line;

  final Fragment_LatestEditHistory? lastEdit;

  final Fragment_LatestVisitHistory? lastVisit;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$userCanEdit = userCanEdit;
    _resultData['userCanEdit'] = l$userCanEdit;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] = l$photoUpdatedAt == null
        ? null
        : tstzToString(l$photoUpdatedAt);
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$areas = areas;
    _resultData['areas'] = l$areas.map((e) => e.toJson()).toList();
    final l$line = line;
    _resultData['line'] = l$line;
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    final l$lastVisit = lastVisit;
    _resultData['lastVisit'] = l$lastVisit?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$userCanEdit = userCanEdit;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$areas = areas;
    final l$line = line;
    final l$lastEdit = lastEdit;
    final l$lastVisit = lastVisit;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      Object.hashAll(l$areas.map((v) => v)),
      l$line,
      l$lastEdit,
      l$lastVisit,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStreet_streetsByPk ||
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (l$userCanEdit != lOther$userCanEdit) {
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
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
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
    final l$line = line;
    final lOther$line = other.line;
    if (l$line != lOther$line) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchStreet_streetsByPk
    on Subscription_watchStreet_streetsByPk {
  CopyWith_Subscription_watchStreet_streetsByPk<
    Subscription_watchStreet_streetsByPk
  >
  get copyWith => CopyWith_Subscription_watchStreet_streetsByPk(this, (i) => i);
}

abstract class CopyWith_Subscription_watchStreet_streetsByPk<TRes> {
  factory CopyWith_Subscription_watchStreet_streetsByPk(
    Subscription_watchStreet_streetsByPk instance,
    TRes Function(Subscription_watchStreet_streetsByPk) then,
  ) = _CopyWithImpl_Subscription_watchStreet_streetsByPk;

  factory CopyWith_Subscription_watchStreet_streetsByPk.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchStreet_streetsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Subscription_watchStreet_streetsByPk_areas>? areas,
    Map<String, dynamic>? line,
    Fragment_LatestEditHistory? lastEdit,
    Fragment_LatestVisitHistory? lastVisit,
  });
  TRes areas(
    Iterable<Subscription_watchStreet_streetsByPk_areas> Function(
      Iterable<
        CopyWith_Subscription_watchStreet_streetsByPk_areas<
          Subscription_watchStreet_streetsByPk_areas
        >
      >,
    )
    _fn,
  );
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
  CopyWith_Fragment_LatestVisitHistory<TRes> get lastVisit;
}

class _CopyWithImpl_Subscription_watchStreet_streetsByPk<TRes>
    implements CopyWith_Subscription_watchStreet_streetsByPk<TRes> {
  _CopyWithImpl_Subscription_watchStreet_streetsByPk(
    this._instance,
    this._then,
  );

  final Subscription_watchStreet_streetsByPk _instance;

  final TRes Function(Subscription_watchStreet_streetsByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? areas = _undefined,
    Object? line = _undefined,
    Object? lastEdit = _undefined,
    Object? lastVisit = _undefined,
  }) => _then(
    Subscription_watchStreet_streetsByPk(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      color: color == _undefined ? _instance.color : (color as int?),
      userCanEdit: userCanEdit == _undefined
          ? _instance.userCanEdit
          : (userCanEdit as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
      photoUpdatedAt: photoUpdatedAt == _undefined
          ? _instance.photoUpdatedAt
          : (photoUpdatedAt as DateTime?),
      blurhash: blurhash == _undefined
          ? _instance.blurhash
          : (blurhash as String?),
      areas: areas == _undefined || areas == null
          ? _instance.areas
          : (areas as List<Subscription_watchStreet_streetsByPk_areas>),
      line: line == _undefined
          ? _instance.line
          : (line as Map<String, dynamic>?),
      lastEdit: lastEdit == _undefined
          ? _instance.lastEdit
          : (lastEdit as Fragment_LatestEditHistory?),
      lastVisit: lastVisit == _undefined
          ? _instance.lastVisit
          : (lastVisit as Fragment_LatestVisitHistory?),
    ),
  );

  TRes areas(
    Iterable<Subscription_watchStreet_streetsByPk_areas> Function(
      Iterable<
        CopyWith_Subscription_watchStreet_streetsByPk_areas<
          Subscription_watchStreet_streetsByPk_areas
        >
      >,
    )
    _fn,
  ) => call(
    areas: _fn(
      _instance.areas.map(
        (e) => CopyWith_Subscription_watchStreet_streetsByPk_areas(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Fragment_LatestVisitHistory<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Fragment_LatestVisitHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestVisitHistory(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchStreet_streetsByPk<TRes>
    implements CopyWith_Subscription_watchStreet_streetsByPk<TRes> {
  _CopyWithStubImpl_Subscription_watchStreet_streetsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Subscription_watchStreet_streetsByPk_areas>? areas,
    Map<String, dynamic>? line,
    Fragment_LatestEditHistory? lastEdit,
    Fragment_LatestVisitHistory? lastVisit,
  }) => _res;

  areas(_fn) => _res;

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit =>
      CopyWith_Fragment_LatestEditHistory.stub(_res);

  CopyWith_Fragment_LatestVisitHistory<TRes> get lastVisit =>
      CopyWith_Fragment_LatestVisitHistory.stub(_res);
}

class Subscription_watchStreet_streetsByPk_areas {
  Subscription_watchStreet_streetsByPk_areas({
    required this.area,
    this.$__typename = 'AreasStreets',
  });

  factory Subscription_watchStreet_streetsByPk_areas.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$area = json['area'];
    final l$$__typename = json['__typename'];
    return Subscription_watchStreet_streetsByPk_areas(
      area: Fragment_Area.fromJson((l$area as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Area area;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$area = area;
    _resultData['area'] = l$area.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$area = area;
    final l$$__typename = $__typename;
    return Object.hashAll([l$area, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchStreet_streetsByPk_areas ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (l$area != lOther$area) {
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

extension UtilityExtension_Subscription_watchStreet_streetsByPk_areas
    on Subscription_watchStreet_streetsByPk_areas {
  CopyWith_Subscription_watchStreet_streetsByPk_areas<
    Subscription_watchStreet_streetsByPk_areas
  >
  get copyWith =>
      CopyWith_Subscription_watchStreet_streetsByPk_areas(this, (i) => i);
}

abstract class CopyWith_Subscription_watchStreet_streetsByPk_areas<TRes> {
  factory CopyWith_Subscription_watchStreet_streetsByPk_areas(
    Subscription_watchStreet_streetsByPk_areas instance,
    TRes Function(Subscription_watchStreet_streetsByPk_areas) then,
  ) = _CopyWithImpl_Subscription_watchStreet_streetsByPk_areas;

  factory CopyWith_Subscription_watchStreet_streetsByPk_areas.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchStreet_streetsByPk_areas;

  TRes call({Fragment_Area? area, String? $__typename});
  CopyWith_Fragment_Area<TRes> get area;
}

class _CopyWithImpl_Subscription_watchStreet_streetsByPk_areas<TRes>
    implements CopyWith_Subscription_watchStreet_streetsByPk_areas<TRes> {
  _CopyWithImpl_Subscription_watchStreet_streetsByPk_areas(
    this._instance,
    this._then,
  );

  final Subscription_watchStreet_streetsByPk_areas _instance;

  final TRes Function(Subscription_watchStreet_streetsByPk_areas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? area = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Subscription_watchStreet_streetsByPk_areas(
          area: area == _undefined || area == null
              ? _instance.area
              : (area as Fragment_Area),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Area<TRes> get area {
    final local$area = _instance.area;
    return CopyWith_Fragment_Area(local$area, (e) => call(area: e));
  }
}

class _CopyWithStubImpl_Subscription_watchStreet_streetsByPk_areas<TRes>
    implements CopyWith_Subscription_watchStreet_streetsByPk_areas<TRes> {
  _CopyWithStubImpl_Subscription_watchStreet_streetsByPk_areas(this._res);

  TRes _res;

  call({Fragment_Area? area, String? $__typename}) => _res;

  CopyWith_Fragment_Area<TRes> get area => CopyWith_Fragment_Area.stub(_res);
}
