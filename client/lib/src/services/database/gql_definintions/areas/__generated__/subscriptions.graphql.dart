import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../users/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllAreas {
  factory Variables$Subscription$watchAllAreas({
    int? limit,
    List<Input$AreasOrderBy>? orderBy,
    List<Input$AreasBoolExp>? where,
  }) =>
      Variables$Subscription$watchAllAreas._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$watchAllAreas._(this._$data);

  factory Variables$Subscription$watchAllAreas.fromJson(
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
    return Variables$Subscription$watchAllAreas._(result$data);
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

  CopyWith$Variables$Subscription$watchAllAreas<
          Variables$Subscription$watchAllAreas>
      get copyWith => CopyWith$Variables$Subscription$watchAllAreas(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllAreas) ||
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

abstract class CopyWith$Variables$Subscription$watchAllAreas<TRes> {
  factory CopyWith$Variables$Subscription$watchAllAreas(
    Variables$Subscription$watchAllAreas instance,
    TRes Function(Variables$Subscription$watchAllAreas) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllAreas;

  factory CopyWith$Variables$Subscription$watchAllAreas.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllAreas;

  TRes call({
    int? limit,
    List<Input$AreasOrderBy>? orderBy,
    List<Input$AreasBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllAreas<TRes>
    implements CopyWith$Variables$Subscription$watchAllAreas<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllAreas(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllAreas _instance;

  final TRes Function(Variables$Subscription$watchAllAreas) _then;

  static const _undefined = {};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllAreas._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$AreasOrderBy>?),
        if (where != _undefined) 'where': (where as List<Input$AreasBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllAreas<TRes>
    implements CopyWith$Variables$Subscription$watchAllAreas<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllAreas(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$AreasOrderBy>? orderBy,
    List<Input$AreasBoolExp>? where,
  }) =>
      _res;
}

class Subscription$watchAllAreas {
  Subscription$watchAllAreas({required this.areas});

  factory Subscription$watchAllAreas.fromJson(Map<String, dynamic> json) {
    final l$areas = json['areas'];
    return Subscription$watchAllAreas(
        areas: (l$areas as List<dynamic>)
            .map((e) => Subscription$watchAllAreas$areas.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Subscription$watchAllAreas$areas> areas;

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
    if (!(other is Subscription$watchAllAreas) ||
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

extension UtilityExtension$Subscription$watchAllAreas
    on Subscription$watchAllAreas {
  CopyWith$Subscription$watchAllAreas<Subscription$watchAllAreas>
      get copyWith => CopyWith$Subscription$watchAllAreas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllAreas<TRes> {
  factory CopyWith$Subscription$watchAllAreas(
    Subscription$watchAllAreas instance,
    TRes Function(Subscription$watchAllAreas) then,
  ) = _CopyWithImpl$Subscription$watchAllAreas;

  factory CopyWith$Subscription$watchAllAreas.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllAreas;

  TRes call({List<Subscription$watchAllAreas$areas>? areas});
  TRes areas(
      Iterable<Subscription$watchAllAreas$areas> Function(
              Iterable<
                  CopyWith$Subscription$watchAllAreas$areas<
                      Subscription$watchAllAreas$areas>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllAreas<TRes>
    implements CopyWith$Subscription$watchAllAreas<TRes> {
  _CopyWithImpl$Subscription$watchAllAreas(
    this._instance,
    this._then,
  );

  final Subscription$watchAllAreas _instance;

  final TRes Function(Subscription$watchAllAreas) _then;

  static const _undefined = {};

  TRes call({Object? areas = _undefined}) => _then(Subscription$watchAllAreas(
      areas: areas == _undefined || areas == null
          ? _instance.areas
          : (areas as List<Subscription$watchAllAreas$areas>)));
  TRes areas(
          Iterable<Subscription$watchAllAreas$areas> Function(
                  Iterable<
                      CopyWith$Subscription$watchAllAreas$areas<
                          Subscription$watchAllAreas$areas>>)
              _fn) =>
      call(
          areas: _fn(_instance.areas
              .map((e) => CopyWith$Subscription$watchAllAreas$areas(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllAreas<TRes>
    implements CopyWith$Subscription$watchAllAreas<TRes> {
  _CopyWithStubImpl$Subscription$watchAllAreas(this._res);

  TRes _res;

  call({List<Subscription$watchAllAreas$areas>? areas}) => _res;
  areas(_fn) => _res;
}

const documentNodeSubscriptionwatchAllAreas = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllAreas'),
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
        ]),
      )
    ]),
  ),
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
]);

class Subscription$watchAllAreas$areas
    implements Fragment$Area, Fragment$AreaNoPhoto {
  Subscription$watchAllAreas$areas({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    this.bounds,
  });

  factory Subscription$watchAllAreas$areas.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$bounds = json['bounds'];
    return Subscription$watchAllAreas$areas(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      bounds: (l$bounds as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Map<String, dynamic>? bounds;

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
    final l$bounds = bounds;
    _resultData['bounds'] = l$bounds;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$bounds = bounds;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$bounds,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchAllAreas$areas) ||
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
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (l$bounds != lOther$bounds) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchAllAreas$areas
    on Subscription$watchAllAreas$areas {
  CopyWith$Subscription$watchAllAreas$areas<Subscription$watchAllAreas$areas>
      get copyWith => CopyWith$Subscription$watchAllAreas$areas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllAreas$areas<TRes> {
  factory CopyWith$Subscription$watchAllAreas$areas(
    Subscription$watchAllAreas$areas instance,
    TRes Function(Subscription$watchAllAreas$areas) then,
  ) = _CopyWithImpl$Subscription$watchAllAreas$areas;

  factory CopyWith$Subscription$watchAllAreas$areas.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllAreas$areas;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Map<String, dynamic>? bounds,
  });
}

class _CopyWithImpl$Subscription$watchAllAreas$areas<TRes>
    implements CopyWith$Subscription$watchAllAreas$areas<TRes> {
  _CopyWithImpl$Subscription$watchAllAreas$areas(
    this._instance,
    this._then,
  );

  final Subscription$watchAllAreas$areas _instance;

  final TRes Function(Subscription$watchAllAreas$areas) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? bounds = _undefined,
  }) =>
      _then(Subscription$watchAllAreas$areas(
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
        bounds: bounds == _undefined
            ? _instance.bounds
            : (bounds as Map<String, dynamic>?),
      ));
}

class _CopyWithStubImpl$Subscription$watchAllAreas$areas<TRes>
    implements CopyWith$Subscription$watchAllAreas$areas<TRes> {
  _CopyWithStubImpl$Subscription$watchAllAreas$areas(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Map<String, dynamic>? bounds,
  }) =>
      _res;
}

class Variables$Subscription$watchArea {
  factory Variables$Subscription$watchArea({required UuidValue id}) =>
      Variables$Subscription$watchArea._({
        r'id': id,
      });

  Variables$Subscription$watchArea._(this._$data);

  factory Variables$Subscription$watchArea.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Subscription$watchArea._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Subscription$watchArea<Variables$Subscription$watchArea>
      get copyWith => CopyWith$Variables$Subscription$watchArea(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchArea) ||
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

abstract class CopyWith$Variables$Subscription$watchArea<TRes> {
  factory CopyWith$Variables$Subscription$watchArea(
    Variables$Subscription$watchArea instance,
    TRes Function(Variables$Subscription$watchArea) then,
  ) = _CopyWithImpl$Variables$Subscription$watchArea;

  factory CopyWith$Variables$Subscription$watchArea.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchArea;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Subscription$watchArea<TRes>
    implements CopyWith$Variables$Subscription$watchArea<TRes> {
  _CopyWithImpl$Variables$Subscription$watchArea(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchArea _instance;

  final TRes Function(Variables$Subscription$watchArea) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Subscription$watchArea._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchArea<TRes>
    implements CopyWith$Variables$Subscription$watchArea<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchArea(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription$watchArea {
  Subscription$watchArea({this.areasByPk});

  factory Subscription$watchArea.fromJson(Map<String, dynamic> json) {
    final l$areasByPk = json['areasByPk'];
    return Subscription$watchArea(
        areasByPk: l$areasByPk == null
            ? null
            : Subscription$watchArea$areasByPk.fromJson(
                (l$areasByPk as Map<String, dynamic>)));
  }

  final Subscription$watchArea$areasByPk? areasByPk;

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
    if (!(other is Subscription$watchArea) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Subscription$watchArea on Subscription$watchArea {
  CopyWith$Subscription$watchArea<Subscription$watchArea> get copyWith =>
      CopyWith$Subscription$watchArea(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchArea<TRes> {
  factory CopyWith$Subscription$watchArea(
    Subscription$watchArea instance,
    TRes Function(Subscription$watchArea) then,
  ) = _CopyWithImpl$Subscription$watchArea;

  factory CopyWith$Subscription$watchArea.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchArea;

  TRes call({Subscription$watchArea$areasByPk? areasByPk});
  CopyWith$Subscription$watchArea$areasByPk<TRes> get areasByPk;
}

class _CopyWithImpl$Subscription$watchArea<TRes>
    implements CopyWith$Subscription$watchArea<TRes> {
  _CopyWithImpl$Subscription$watchArea(
    this._instance,
    this._then,
  );

  final Subscription$watchArea _instance;

  final TRes Function(Subscription$watchArea) _then;

  static const _undefined = {};

  TRes call({Object? areasByPk = _undefined}) => _then(Subscription$watchArea(
      areasByPk: areasByPk == _undefined
          ? _instance.areasByPk
          : (areasByPk as Subscription$watchArea$areasByPk?)));
  CopyWith$Subscription$watchArea$areasByPk<TRes> get areasByPk {
    final local$areasByPk = _instance.areasByPk;
    return local$areasByPk == null
        ? CopyWith$Subscription$watchArea$areasByPk.stub(_then(_instance))
        : CopyWith$Subscription$watchArea$areasByPk(
            local$areasByPk, (e) => call(areasByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$watchArea<TRes>
    implements CopyWith$Subscription$watchArea<TRes> {
  _CopyWithStubImpl$Subscription$watchArea(this._res);

  TRes _res;

  call({Subscription$watchArea$areasByPk? areasByPk}) => _res;
  CopyWith$Subscription$watchArea$areasByPk<TRes> get areasByPk =>
      CopyWith$Subscription$watchArea$areasByPk.stub(_res);
}

const documentNodeSubscriptionwatchArea = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchArea'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'areasByPk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'adminUsers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
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
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Subscription$watchArea$areasByPk
    implements Fragment$Area, Fragment$AreaNoPhoto {
  Subscription$watchArea$areasByPk({
    required this.id,
    required this.name,
    this.color,
    required this.$__typename,
    this.photoUpdatedAt,
    this.bounds,
    this.lastEdit,
    required this.adminUsers,
  });

  factory Subscription$watchArea$areasByPk.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$bounds = json['bounds'];
    final l$lastEdit = json['lastEdit'];
    final l$adminUsers = json['adminUsers'];
    return Subscription$watchArea$areasByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      bounds: (l$bounds as Map<String, dynamic>?),
      lastEdit: (l$lastEdit as Json?),
      adminUsers: (l$adminUsers as List<dynamic>)
          .map((e) => Subscription$watchArea$areasByPk$adminUsers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final Map<String, dynamic>? bounds;

  final Json? lastEdit;

  final List<Subscription$watchArea$areasByPk$adminUsers> adminUsers;

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
    final l$bounds = bounds;
    _resultData['bounds'] = l$bounds;
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    final l$adminUsers = adminUsers;
    _resultData['adminUsers'] = l$adminUsers.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$bounds = bounds;
    final l$lastEdit = lastEdit;
    final l$adminUsers = adminUsers;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
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
    if (!(other is Subscription$watchArea$areasByPk) ||
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

extension UtilityExtension$Subscription$watchArea$areasByPk
    on Subscription$watchArea$areasByPk {
  CopyWith$Subscription$watchArea$areasByPk<Subscription$watchArea$areasByPk>
      get copyWith => CopyWith$Subscription$watchArea$areasByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchArea$areasByPk<TRes> {
  factory CopyWith$Subscription$watchArea$areasByPk(
    Subscription$watchArea$areasByPk instance,
    TRes Function(Subscription$watchArea$areasByPk) then,
  ) = _CopyWithImpl$Subscription$watchArea$areasByPk;

  factory CopyWith$Subscription$watchArea$areasByPk.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchArea$areasByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Map<String, dynamic>? bounds,
    Json? lastEdit,
    List<Subscription$watchArea$areasByPk$adminUsers>? adminUsers,
  });
  TRes adminUsers(
      Iterable<Subscription$watchArea$areasByPk$adminUsers> Function(
              Iterable<
                  CopyWith$Subscription$watchArea$areasByPk$adminUsers<
                      Subscription$watchArea$areasByPk$adminUsers>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchArea$areasByPk<TRes>
    implements CopyWith$Subscription$watchArea$areasByPk<TRes> {
  _CopyWithImpl$Subscription$watchArea$areasByPk(
    this._instance,
    this._then,
  );

  final Subscription$watchArea$areasByPk _instance;

  final TRes Function(Subscription$watchArea$areasByPk) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? bounds = _undefined,
    Object? lastEdit = _undefined,
    Object? adminUsers = _undefined,
  }) =>
      _then(Subscription$watchArea$areasByPk(
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
        bounds: bounds == _undefined
            ? _instance.bounds
            : (bounds as Map<String, dynamic>?),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
        adminUsers: adminUsers == _undefined || adminUsers == null
            ? _instance.adminUsers
            : (adminUsers as List<Subscription$watchArea$areasByPk$adminUsers>),
      ));
  TRes adminUsers(
          Iterable<Subscription$watchArea$areasByPk$adminUsers> Function(
                  Iterable<
                      CopyWith$Subscription$watchArea$areasByPk$adminUsers<
                          Subscription$watchArea$areasByPk$adminUsers>>)
              _fn) =>
      call(
          adminUsers: _fn(_instance.adminUsers
              .map((e) => CopyWith$Subscription$watchArea$areasByPk$adminUsers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Subscription$watchArea$areasByPk<TRes>
    implements CopyWith$Subscription$watchArea$areasByPk<TRes> {
  _CopyWithStubImpl$Subscription$watchArea$areasByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    Map<String, dynamic>? bounds,
    Json? lastEdit,
    List<Subscription$watchArea$areasByPk$adminUsers>? adminUsers,
  }) =>
      _res;
  adminUsers(_fn) => _res;
}

class Subscription$watchArea$areasByPk$adminUsers {
  Subscription$watchArea$areasByPk$adminUsers({
    required this.user,
    required this.$__typename,
  });

  factory Subscription$watchArea$areasByPk$adminUsers.fromJson(
      Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Subscription$watchArea$areasByPk$adminUsers(
      user: Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$User user;

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
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchArea$areasByPk$adminUsers) ||
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

extension UtilityExtension$Subscription$watchArea$areasByPk$adminUsers
    on Subscription$watchArea$areasByPk$adminUsers {
  CopyWith$Subscription$watchArea$areasByPk$adminUsers<
          Subscription$watchArea$areasByPk$adminUsers>
      get copyWith => CopyWith$Subscription$watchArea$areasByPk$adminUsers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchArea$areasByPk$adminUsers<TRes> {
  factory CopyWith$Subscription$watchArea$areasByPk$adminUsers(
    Subscription$watchArea$areasByPk$adminUsers instance,
    TRes Function(Subscription$watchArea$areasByPk$adminUsers) then,
  ) = _CopyWithImpl$Subscription$watchArea$areasByPk$adminUsers;

  factory CopyWith$Subscription$watchArea$areasByPk$adminUsers.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchArea$areasByPk$adminUsers;

  TRes call({
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Subscription$watchArea$areasByPk$adminUsers<TRes>
    implements CopyWith$Subscription$watchArea$areasByPk$adminUsers<TRes> {
  _CopyWithImpl$Subscription$watchArea$areasByPk$adminUsers(
    this._instance,
    this._then,
  );

  final Subscription$watchArea$areasByPk$adminUsers _instance;

  final TRes Function(Subscription$watchArea$areasByPk$adminUsers) _then;

  static const _undefined = {};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$watchArea$areasByPk$adminUsers(
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Subscription$watchArea$areasByPk$adminUsers<TRes>
    implements CopyWith$Subscription$watchArea$areasByPk$adminUsers<TRes> {
  _CopyWithStubImpl$Subscription$watchArea$areasByPk$adminUsers(this._res);

  TRes _res;

  call({
    Fragment$User? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
}
