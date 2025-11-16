import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllAreas {
  factory Variables_Subscription_watchAllAreas({
    int? limit,
    List<Input_AreasOrderBy>? orderBy,
    List<Input_AreasBoolExp>? where,
  }) => Variables_Subscription_watchAllAreas._({
    if (limit != null) r'limit': limit,
    if (orderBy != null) r'orderBy': orderBy,
    if (where != null) r'where': where,
  });

  Variables_Subscription_watchAllAreas._(this._$data);

  factory Variables_Subscription_watchAllAreas.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input_AreasOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_AreasBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables_Subscription_watchAllAreas._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  List<Input_AreasOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_AreasOrderBy>?);

  List<Input_AreasBoolExp>? get where =>
      (_$data['where'] as List<Input_AreasBoolExp>?);

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

  CopyWith_Variables_Subscription_watchAllAreas<
    Variables_Subscription_watchAllAreas
  >
  get copyWith => CopyWith_Variables_Subscription_watchAllAreas(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchAllAreas ||
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

abstract class CopyWith_Variables_Subscription_watchAllAreas<TRes> {
  factory CopyWith_Variables_Subscription_watchAllAreas(
    Variables_Subscription_watchAllAreas instance,
    TRes Function(Variables_Subscription_watchAllAreas) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllAreas;

  factory CopyWith_Variables_Subscription_watchAllAreas.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllAreas;

  TRes call({
    int? limit,
    List<Input_AreasOrderBy>? orderBy,
    List<Input_AreasBoolExp>? where,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllAreas<TRes>
    implements CopyWith_Variables_Subscription_watchAllAreas<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllAreas(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllAreas _instance;

  final TRes Function(Variables_Subscription_watchAllAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) => _then(
    Variables_Subscription_watchAllAreas._({
      ..._instance._$data,
      if (limit != _undefined) 'limit': (limit as int?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Input_AreasOrderBy>?),
      if (where != _undefined) 'where': (where as List<Input_AreasBoolExp>?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchAllAreas<TRes>
    implements CopyWith_Variables_Subscription_watchAllAreas<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllAreas(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input_AreasOrderBy>? orderBy,
    List<Input_AreasBoolExp>? where,
  }) => _res;
}

class Subscription_watchAllAreas {
  Subscription_watchAllAreas({required this.areas});

  factory Subscription_watchAllAreas.fromJson(Map<String, dynamic> json) {
    final l$areas = json['areas'];
    return Subscription_watchAllAreas(
      areas: (l$areas as List<dynamic>)
          .map(
            (e) => Subscription_watchAllAreas_areas.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Subscription_watchAllAreas_areas> areas;

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
    if (other is! Subscription_watchAllAreas ||
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

extension UtilityExtension_Subscription_watchAllAreas
    on Subscription_watchAllAreas {
  CopyWith_Subscription_watchAllAreas<Subscription_watchAllAreas>
  get copyWith => CopyWith_Subscription_watchAllAreas(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAllAreas<TRes> {
  factory CopyWith_Subscription_watchAllAreas(
    Subscription_watchAllAreas instance,
    TRes Function(Subscription_watchAllAreas) then,
  ) = _CopyWithImpl_Subscription_watchAllAreas;

  factory CopyWith_Subscription_watchAllAreas.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllAreas;

  TRes call({List<Subscription_watchAllAreas_areas>? areas});
  TRes areas(
    Iterable<Subscription_watchAllAreas_areas> Function(
      Iterable<
        CopyWith_Subscription_watchAllAreas_areas<
          Subscription_watchAllAreas_areas
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchAllAreas<TRes>
    implements CopyWith_Subscription_watchAllAreas<TRes> {
  _CopyWithImpl_Subscription_watchAllAreas(this._instance, this._then);

  final Subscription_watchAllAreas _instance;

  final TRes Function(Subscription_watchAllAreas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? areas = _undefined}) => _then(
    Subscription_watchAllAreas(
      areas: areas == _undefined || areas == null
          ? _instance.areas
          : (areas as List<Subscription_watchAllAreas_areas>),
    ),
  );

  TRes areas(
    Iterable<Subscription_watchAllAreas_areas> Function(
      Iterable<
        CopyWith_Subscription_watchAllAreas_areas<
          Subscription_watchAllAreas_areas
        >
      >,
    )
    _fn,
  ) => call(
    areas: _fn(
      _instance.areas.map(
        (e) => CopyWith_Subscription_watchAllAreas_areas(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchAllAreas<TRes>
    implements CopyWith_Subscription_watchAllAreas<TRes> {
  _CopyWithStubImpl_Subscription_watchAllAreas(this._res);

  TRes _res;

  call({List<Subscription_watchAllAreas_areas>? areas}) => _res;

  areas(_fn) => _res;
}

const documentNodeSubscriptionwatchAllAreas = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchAllAreas'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'limit')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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
      selectionSet: SelectionSetNode(
        selections: [
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
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: '_and'),
                      value: VariableNode(name: NameNode(value: 'where')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Area'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'bounds'),
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
    fragmentDefinitionArea,
    fragmentDefinitionAreaNoPhoto,
  ],
);

class Subscription_watchAllAreas_areas
    implements Fragment_Area, Fragment_AreaNoPhoto {
  Subscription_watchAllAreas_areas({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Areas',
    this.photoUpdatedAt,
    this.blurhash,
    this.bounds,
  });

  factory Subscription_watchAllAreas_areas.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$bounds = json['bounds'];
    return Subscription_watchAllAreas_areas(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      bounds: (l$bounds as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Map<String, dynamic>? bounds;

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
    final l$bounds = bounds;
    _resultData['bounds'] = l$bounds;
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
    final l$bounds = bounds;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$bounds,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchAllAreas_areas ||
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
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (l$bounds != lOther$bounds) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAllAreas_areas
    on Subscription_watchAllAreas_areas {
  CopyWith_Subscription_watchAllAreas_areas<Subscription_watchAllAreas_areas>
  get copyWith => CopyWith_Subscription_watchAllAreas_areas(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAllAreas_areas<TRes> {
  factory CopyWith_Subscription_watchAllAreas_areas(
    Subscription_watchAllAreas_areas instance,
    TRes Function(Subscription_watchAllAreas_areas) then,
  ) = _CopyWithImpl_Subscription_watchAllAreas_areas;

  factory CopyWith_Subscription_watchAllAreas_areas.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllAreas_areas;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Map<String, dynamic>? bounds,
  });
}

class _CopyWithImpl_Subscription_watchAllAreas_areas<TRes>
    implements CopyWith_Subscription_watchAllAreas_areas<TRes> {
  _CopyWithImpl_Subscription_watchAllAreas_areas(this._instance, this._then);

  final Subscription_watchAllAreas_areas _instance;

  final TRes Function(Subscription_watchAllAreas_areas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? bounds = _undefined,
  }) => _then(
    Subscription_watchAllAreas_areas(
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
      bounds: bounds == _undefined
          ? _instance.bounds
          : (bounds as Map<String, dynamic>?),
    ),
  );
}

class _CopyWithStubImpl_Subscription_watchAllAreas_areas<TRes>
    implements CopyWith_Subscription_watchAllAreas_areas<TRes> {
  _CopyWithStubImpl_Subscription_watchAllAreas_areas(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Map<String, dynamic>? bounds,
  }) => _res;
}

class Variables_Subscription_watchAreasCount {
  factory Variables_Subscription_watchAreasCount({
    List<Input_AreasBoolExp>? where,
    int? limit,
  }) => Variables_Subscription_watchAreasCount._({
    if (where != null) r'where': where,
    if (limit != null) r'limit': limit,
  });

  Variables_Subscription_watchAreasCount._(this._$data);

  factory Variables_Subscription_watchAreasCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) => Input_AreasBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Variables_Subscription_watchAreasCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AreasBoolExp>? get where =>
      (_$data['where'] as List<Input_AreasBoolExp>?);

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

  CopyWith_Variables_Subscription_watchAreasCount<
    Variables_Subscription_watchAreasCount
  >
  get copyWith =>
      CopyWith_Variables_Subscription_watchAreasCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchAreasCount ||
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

abstract class CopyWith_Variables_Subscription_watchAreasCount<TRes> {
  factory CopyWith_Variables_Subscription_watchAreasCount(
    Variables_Subscription_watchAreasCount instance,
    TRes Function(Variables_Subscription_watchAreasCount) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAreasCount;

  factory CopyWith_Variables_Subscription_watchAreasCount.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAreasCount;

  TRes call({List<Input_AreasBoolExp>? where, int? limit});
}

class _CopyWithImpl_Variables_Subscription_watchAreasCount<TRes>
    implements CopyWith_Variables_Subscription_watchAreasCount<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAreasCount(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAreasCount _instance;

  final TRes Function(Variables_Subscription_watchAreasCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? where = _undefined, Object? limit = _undefined}) => _then(
    Variables_Subscription_watchAreasCount._({
      ..._instance._$data,
      if (where != _undefined) 'where': (where as List<Input_AreasBoolExp>?),
      if (limit != _undefined) 'limit': (limit as int?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchAreasCount<TRes>
    implements CopyWith_Variables_Subscription_watchAreasCount<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAreasCount(this._res);

  TRes _res;

  call({List<Input_AreasBoolExp>? where, int? limit}) => _res;
}

class Subscription_watchAreasCount {
  Subscription_watchAreasCount({required this.areasAggregate});

  factory Subscription_watchAreasCount.fromJson(Map<String, dynamic> json) {
    final l$areasAggregate = json['areasAggregate'];
    return Subscription_watchAreasCount(
      areasAggregate: Subscription_watchAreasCount_areasAggregate.fromJson(
        (l$areasAggregate as Map<String, dynamic>),
      ),
    );
  }

  final Subscription_watchAreasCount_areasAggregate areasAggregate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$areasAggregate = areasAggregate;
    _resultData['areasAggregate'] = l$areasAggregate.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$areasAggregate = areasAggregate;
    return Object.hashAll([l$areasAggregate]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchAreasCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$areasAggregate = areasAggregate;
    final lOther$areasAggregate = other.areasAggregate;
    if (l$areasAggregate != lOther$areasAggregate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchAreasCount
    on Subscription_watchAreasCount {
  CopyWith_Subscription_watchAreasCount<Subscription_watchAreasCount>
  get copyWith => CopyWith_Subscription_watchAreasCount(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAreasCount<TRes> {
  factory CopyWith_Subscription_watchAreasCount(
    Subscription_watchAreasCount instance,
    TRes Function(Subscription_watchAreasCount) then,
  ) = _CopyWithImpl_Subscription_watchAreasCount;

  factory CopyWith_Subscription_watchAreasCount.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAreasCount;

  TRes call({Subscription_watchAreasCount_areasAggregate? areasAggregate});
  CopyWith_Subscription_watchAreasCount_areasAggregate<TRes> get areasAggregate;
}

class _CopyWithImpl_Subscription_watchAreasCount<TRes>
    implements CopyWith_Subscription_watchAreasCount<TRes> {
  _CopyWithImpl_Subscription_watchAreasCount(this._instance, this._then);

  final Subscription_watchAreasCount _instance;

  final TRes Function(Subscription_watchAreasCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? areasAggregate = _undefined}) => _then(
    Subscription_watchAreasCount(
      areasAggregate: areasAggregate == _undefined || areasAggregate == null
          ? _instance.areasAggregate
          : (areasAggregate as Subscription_watchAreasCount_areasAggregate),
    ),
  );

  CopyWith_Subscription_watchAreasCount_areasAggregate<TRes>
  get areasAggregate {
    final local$areasAggregate = _instance.areasAggregate;
    return CopyWith_Subscription_watchAreasCount_areasAggregate(
      local$areasAggregate,
      (e) => call(areasAggregate: e),
    );
  }
}

class _CopyWithStubImpl_Subscription_watchAreasCount<TRes>
    implements CopyWith_Subscription_watchAreasCount<TRes> {
  _CopyWithStubImpl_Subscription_watchAreasCount(this._res);

  TRes _res;

  call({Subscription_watchAreasCount_areasAggregate? areasAggregate}) => _res;

  CopyWith_Subscription_watchAreasCount_areasAggregate<TRes>
  get areasAggregate =>
      CopyWith_Subscription_watchAreasCount_areasAggregate.stub(_res);
}

const documentNodeSubscriptionwatchAreasCount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchAreasCount'),
      variableDefinitions: [
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
            name: NameNode(value: 'areasAggregate'),
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

class Subscription_watchAreasCount_areasAggregate {
  Subscription_watchAreasCount_areasAggregate({
    this.aggregate,
    this.$__typename = 'AreasAggregate',
  });

  factory Subscription_watchAreasCount_areasAggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAreasCount_areasAggregate(
      aggregate: l$aggregate == null
          ? null
          : Subscription_watchAreasCount_areasAggregate_aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription_watchAreasCount_areasAggregate_aggregate? aggregate;

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
    if (other is! Subscription_watchAreasCount_areasAggregate ||
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

extension UtilityExtension_Subscription_watchAreasCount_areasAggregate
    on Subscription_watchAreasCount_areasAggregate {
  CopyWith_Subscription_watchAreasCount_areasAggregate<
    Subscription_watchAreasCount_areasAggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchAreasCount_areasAggregate(this, (i) => i);
}

abstract class CopyWith_Subscription_watchAreasCount_areasAggregate<TRes> {
  factory CopyWith_Subscription_watchAreasCount_areasAggregate(
    Subscription_watchAreasCount_areasAggregate instance,
    TRes Function(Subscription_watchAreasCount_areasAggregate) then,
  ) = _CopyWithImpl_Subscription_watchAreasCount_areasAggregate;

  factory CopyWith_Subscription_watchAreasCount_areasAggregate.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAreasCount_areasAggregate;

  TRes call({
    Subscription_watchAreasCount_areasAggregate_aggregate? aggregate,
    String? $__typename,
  });
  CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate<TRes>
  get aggregate;
}

class _CopyWithImpl_Subscription_watchAreasCount_areasAggregate<TRes>
    implements CopyWith_Subscription_watchAreasCount_areasAggregate<TRes> {
  _CopyWithImpl_Subscription_watchAreasCount_areasAggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchAreasCount_areasAggregate _instance;

  final TRes Function(Subscription_watchAreasCount_areasAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Subscription_watchAreasCount_areasAggregate(
      aggregate: aggregate == _undefined
          ? _instance.aggregate
          : (aggregate
                as Subscription_watchAreasCount_areasAggregate_aggregate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate<TRes>
  get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate.stub(
            _then(_instance),
          )
        : CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate(
            local$aggregate,
            (e) => call(aggregate: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchAreasCount_areasAggregate<TRes>
    implements CopyWith_Subscription_watchAreasCount_areasAggregate<TRes> {
  _CopyWithStubImpl_Subscription_watchAreasCount_areasAggregate(this._res);

  TRes _res;

  call({
    Subscription_watchAreasCount_areasAggregate_aggregate? aggregate,
    String? $__typename,
  }) => _res;

  CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate<TRes>
  get aggregate =>
      CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate.stub(_res);
}

class Subscription_watchAreasCount_areasAggregate_aggregate {
  Subscription_watchAreasCount_areasAggregate_aggregate({
    required this.count,
    this.$__typename = 'AreasAggregateFields',
  });

  factory Subscription_watchAreasCount_areasAggregate_aggregate.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Subscription_watchAreasCount_areasAggregate_aggregate(
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
    if (other is! Subscription_watchAreasCount_areasAggregate_aggregate ||
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

extension UtilityExtension_Subscription_watchAreasCount_areasAggregate_aggregate
    on Subscription_watchAreasCount_areasAggregate_aggregate {
  CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate<
    Subscription_watchAreasCount_areasAggregate_aggregate
  >
  get copyWith =>
      CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate<
  TRes
> {
  factory CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate(
    Subscription_watchAreasCount_areasAggregate_aggregate instance,
    TRes Function(Subscription_watchAreasCount_areasAggregate_aggregate) then,
  ) = _CopyWithImpl_Subscription_watchAreasCount_areasAggregate_aggregate;

  factory CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate.stub(
    TRes res,
  ) = _CopyWithStubImpl_Subscription_watchAreasCount_areasAggregate_aggregate;

  TRes call({int? count, String? $__typename});
}

class _CopyWithImpl_Subscription_watchAreasCount_areasAggregate_aggregate<TRes>
    implements
        CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate<TRes> {
  _CopyWithImpl_Subscription_watchAreasCount_areasAggregate_aggregate(
    this._instance,
    this._then,
  );

  final Subscription_watchAreasCount_areasAggregate_aggregate _instance;

  final TRes Function(Subscription_watchAreasCount_areasAggregate_aggregate)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Subscription_watchAreasCount_areasAggregate_aggregate(
          count: count == _undefined || count == null
              ? _instance.count
              : (count as int),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Subscription_watchAreasCount_areasAggregate_aggregate<
  TRes
>
    implements
        CopyWith_Subscription_watchAreasCount_areasAggregate_aggregate<TRes> {
  _CopyWithStubImpl_Subscription_watchAreasCount_areasAggregate_aggregate(
    this._res,
  );

  TRes _res;

  call({int? count, String? $__typename}) => _res;
}

class Variables_Subscription_watchArea {
  factory Variables_Subscription_watchArea({required UuidValue id}) =>
      Variables_Subscription_watchArea._({r'id': id});

  Variables_Subscription_watchArea._(this._$data);

  factory Variables_Subscription_watchArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Subscription_watchArea._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchArea<Variables_Subscription_watchArea>
  get copyWith => CopyWith_Variables_Subscription_watchArea(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Subscription_watchArea ||
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

abstract class CopyWith_Variables_Subscription_watchArea<TRes> {
  factory CopyWith_Variables_Subscription_watchArea(
    Variables_Subscription_watchArea instance,
    TRes Function(Variables_Subscription_watchArea) then,
  ) = _CopyWithImpl_Variables_Subscription_watchArea;

  factory CopyWith_Variables_Subscription_watchArea.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchArea;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Subscription_watchArea<TRes>
    implements CopyWith_Variables_Subscription_watchArea<TRes> {
  _CopyWithImpl_Variables_Subscription_watchArea(this._instance, this._then);

  final Variables_Subscription_watchArea _instance;

  final TRes Function(Variables_Subscription_watchArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Subscription_watchArea._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Variables_Subscription_watchArea<TRes>
    implements CopyWith_Variables_Subscription_watchArea<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchArea(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription_watchArea {
  Subscription_watchArea({this.areasByPk});

  factory Subscription_watchArea.fromJson(Map<String, dynamic> json) {
    final l$areasByPk = json['areasByPk'];
    return Subscription_watchArea(
      areasByPk: l$areasByPk == null
          ? null
          : Subscription_watchArea_areasByPk.fromJson(
              (l$areasByPk as Map<String, dynamic>),
            ),
    );
  }

  final Subscription_watchArea_areasByPk? areasByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$areasByPk = areasByPk;
    _resultData['areasByPk'] = l$areasByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$areasByPk = areasByPk;
    return Object.hashAll([l$areasByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchArea || runtimeType != other.runtimeType) {
      return false;
    }
    final l$areasByPk = areasByPk;
    final lOther$areasByPk = other.areasByPk;
    if (l$areasByPk != lOther$areasByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchArea on Subscription_watchArea {
  CopyWith_Subscription_watchArea<Subscription_watchArea> get copyWith =>
      CopyWith_Subscription_watchArea(this, (i) => i);
}

abstract class CopyWith_Subscription_watchArea<TRes> {
  factory CopyWith_Subscription_watchArea(
    Subscription_watchArea instance,
    TRes Function(Subscription_watchArea) then,
  ) = _CopyWithImpl_Subscription_watchArea;

  factory CopyWith_Subscription_watchArea.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchArea;

  TRes call({Subscription_watchArea_areasByPk? areasByPk});
  CopyWith_Subscription_watchArea_areasByPk<TRes> get areasByPk;
}

class _CopyWithImpl_Subscription_watchArea<TRes>
    implements CopyWith_Subscription_watchArea<TRes> {
  _CopyWithImpl_Subscription_watchArea(this._instance, this._then);

  final Subscription_watchArea _instance;

  final TRes Function(Subscription_watchArea) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? areasByPk = _undefined}) => _then(
    Subscription_watchArea(
      areasByPk: areasByPk == _undefined
          ? _instance.areasByPk
          : (areasByPk as Subscription_watchArea_areasByPk?),
    ),
  );

  CopyWith_Subscription_watchArea_areasByPk<TRes> get areasByPk {
    final local$areasByPk = _instance.areasByPk;
    return local$areasByPk == null
        ? CopyWith_Subscription_watchArea_areasByPk.stub(_then(_instance))
        : CopyWith_Subscription_watchArea_areasByPk(
            local$areasByPk,
            (e) => call(areasByPk: e),
          );
  }
}

class _CopyWithStubImpl_Subscription_watchArea<TRes>
    implements CopyWith_Subscription_watchArea<TRes> {
  _CopyWithStubImpl_Subscription_watchArea(this._res);

  TRes _res;

  call({Subscription_watchArea_areasByPk? areasByPk}) => _res;

  CopyWith_Subscription_watchArea_areasByPk<TRes> get areasByPk =>
      CopyWith_Subscription_watchArea_areasByPk.stub(_res);
}

const documentNodeSubscriptionwatchArea = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.subscription,
      name: NameNode(value: 'watchArea'),
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
            name: NameNode(value: 'areasByPk'),
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
                  name: NameNode(value: 'Area'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: 'bounds'),
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
                  name: NameNode(value: 'adminUsers'),
                  alias: null,
                  arguments: [
                    ArgumentNode(
                      name: NameNode(value: 'distinctOn'),
                      value: EnumValueNode(name: NameNode(value: 'uid')),
                    ),
                  ],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'user'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FragmentSpreadNode(
                              name: NameNode(value: 'User'),
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
    fragmentDefinitionArea,
    fragmentDefinitionAreaNoPhoto,
    fragmentDefinitionLatestEditHistory,
    fragmentDefinitionUser,
    fragmentDefinitionUserNoPhoto,
  ],
);

class Subscription_watchArea_areasByPk
    implements Fragment_Area, Fragment_AreaNoPhoto {
  Subscription_watchArea_areasByPk({
    required this.id,
    required this.name,
    this.color,
    this.userCanEdit,
    this.$__typename = 'Areas',
    this.photoUpdatedAt,
    this.blurhash,
    this.bounds,
    this.lastEdit,
    required this.adminUsers,
  });

  factory Subscription_watchArea_areasByPk.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$userCanEdit = json['userCanEdit'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$bounds = json['bounds'];
    final l$lastEdit = json['lastEdit'];
    final l$adminUsers = json['adminUsers'];
    return Subscription_watchArea_areasByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      userCanEdit: (l$userCanEdit as bool?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt: l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      bounds: (l$bounds as Map<String, dynamic>?),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            ),
      adminUsers: (l$adminUsers as List<dynamic>)
          .map(
            (e) => Subscription_watchArea_areasByPk_adminUsers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final bool? userCanEdit;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final Map<String, dynamic>? bounds;

  final Fragment_LatestEditHistory? lastEdit;

  final List<Subscription_watchArea_areasByPk_adminUsers> adminUsers;

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
    final l$bounds = bounds;
    _resultData['bounds'] = l$bounds;
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    final l$adminUsers = adminUsers;
    _resultData['adminUsers'] = l$adminUsers.map((e) => e.toJson()).toList();
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
    final l$bounds = bounds;
    final l$lastEdit = lastEdit;
    final l$adminUsers = adminUsers;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$userCanEdit,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$bounds,
      l$lastEdit,
      Object.hashAll(l$adminUsers.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchArea_areasByPk ||
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
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (l$bounds != lOther$bounds) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (l$adminUsers.length != lOther$adminUsers.length) {
      return false;
    }
    for (int i = 0; i < l$adminUsers.length; i++) {
      final l$adminUsers$entry = l$adminUsers[i];
      final lOther$adminUsers$entry = lOther$adminUsers[i];
      if (l$adminUsers$entry != lOther$adminUsers$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Subscription_watchArea_areasByPk
    on Subscription_watchArea_areasByPk {
  CopyWith_Subscription_watchArea_areasByPk<Subscription_watchArea_areasByPk>
  get copyWith => CopyWith_Subscription_watchArea_areasByPk(this, (i) => i);
}

abstract class CopyWith_Subscription_watchArea_areasByPk<TRes> {
  factory CopyWith_Subscription_watchArea_areasByPk(
    Subscription_watchArea_areasByPk instance,
    TRes Function(Subscription_watchArea_areasByPk) then,
  ) = _CopyWithImpl_Subscription_watchArea_areasByPk;

  factory CopyWith_Subscription_watchArea_areasByPk.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchArea_areasByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Map<String, dynamic>? bounds,
    Fragment_LatestEditHistory? lastEdit,
    List<Subscription_watchArea_areasByPk_adminUsers>? adminUsers,
  });
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
  TRes adminUsers(
    Iterable<Subscription_watchArea_areasByPk_adminUsers> Function(
      Iterable<
        CopyWith_Subscription_watchArea_areasByPk_adminUsers<
          Subscription_watchArea_areasByPk_adminUsers
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Subscription_watchArea_areasByPk<TRes>
    implements CopyWith_Subscription_watchArea_areasByPk<TRes> {
  _CopyWithImpl_Subscription_watchArea_areasByPk(this._instance, this._then);

  final Subscription_watchArea_areasByPk _instance;

  final TRes Function(Subscription_watchArea_areasByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? userCanEdit = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? bounds = _undefined,
    Object? lastEdit = _undefined,
    Object? adminUsers = _undefined,
  }) => _then(
    Subscription_watchArea_areasByPk(
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
      bounds: bounds == _undefined
          ? _instance.bounds
          : (bounds as Map<String, dynamic>?),
      lastEdit: lastEdit == _undefined
          ? _instance.lastEdit
          : (lastEdit as Fragment_LatestEditHistory?),
      adminUsers: adminUsers == _undefined || adminUsers == null
          ? _instance.adminUsers
          : (adminUsers as List<Subscription_watchArea_areasByPk_adminUsers>),
    ),
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

  TRes adminUsers(
    Iterable<Subscription_watchArea_areasByPk_adminUsers> Function(
      Iterable<
        CopyWith_Subscription_watchArea_areasByPk_adminUsers<
          Subscription_watchArea_areasByPk_adminUsers
        >
      >,
    )
    _fn,
  ) => call(
    adminUsers: _fn(
      _instance.adminUsers.map(
        (e) =>
            CopyWith_Subscription_watchArea_areasByPk_adminUsers(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Subscription_watchArea_areasByPk<TRes>
    implements CopyWith_Subscription_watchArea_areasByPk<TRes> {
  _CopyWithStubImpl_Subscription_watchArea_areasByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    bool? userCanEdit,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Map<String, dynamic>? bounds,
    Fragment_LatestEditHistory? lastEdit,
    List<Subscription_watchArea_areasByPk_adminUsers>? adminUsers,
  }) => _res;

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit =>
      CopyWith_Fragment_LatestEditHistory.stub(_res);

  adminUsers(_fn) => _res;
}

class Subscription_watchArea_areasByPk_adminUsers {
  Subscription_watchArea_areasByPk_adminUsers({
    required this.user,
    this.$__typename = 'AuthUsersAdminOn',
  });

  factory Subscription_watchArea_areasByPk_adminUsers.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription_watchArea_areasByPk_adminUsers(
      user: Fragment_User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_User user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription_watchArea_areasByPk_adminUsers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension_Subscription_watchArea_areasByPk_adminUsers
    on Subscription_watchArea_areasByPk_adminUsers {
  CopyWith_Subscription_watchArea_areasByPk_adminUsers<
    Subscription_watchArea_areasByPk_adminUsers
  >
  get copyWith =>
      CopyWith_Subscription_watchArea_areasByPk_adminUsers(this, (i) => i);
}

abstract class CopyWith_Subscription_watchArea_areasByPk_adminUsers<TRes> {
  factory CopyWith_Subscription_watchArea_areasByPk_adminUsers(
    Subscription_watchArea_areasByPk_adminUsers instance,
    TRes Function(Subscription_watchArea_areasByPk_adminUsers) then,
  ) = _CopyWithImpl_Subscription_watchArea_areasByPk_adminUsers;

  factory CopyWith_Subscription_watchArea_areasByPk_adminUsers.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchArea_areasByPk_adminUsers;

  TRes call({Fragment_User? user, String? $__typename});
  CopyWith_Fragment_User<TRes> get user;
}

class _CopyWithImpl_Subscription_watchArea_areasByPk_adminUsers<TRes>
    implements CopyWith_Subscription_watchArea_areasByPk_adminUsers<TRes> {
  _CopyWithImpl_Subscription_watchArea_areasByPk_adminUsers(
    this._instance,
    this._then,
  );

  final Subscription_watchArea_areasByPk_adminUsers _instance;

  final TRes Function(Subscription_watchArea_areasByPk_adminUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Subscription_watchArea_areasByPk_adminUsers(
          user: user == _undefined || user == null
              ? _instance.user
              : (user as Fragment_User),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith_Fragment_User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Subscription_watchArea_areasByPk_adminUsers<TRes>
    implements CopyWith_Subscription_watchArea_areasByPk_adminUsers<TRes> {
  _CopyWithStubImpl_Subscription_watchArea_areasByPk_adminUsers(this._res);

  TRes _res;

  call({Fragment_User? user, String? $__typename}) => _res;

  CopyWith_Fragment_User<TRes> get user => CopyWith_Fragment_User.stub(_res);
}
