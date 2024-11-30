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
  }) =>
      Variables_Subscription_watchAllStreets._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (limit != null) r'limit': limit,
      });

  Variables_Subscription_watchAllStreets._(this._$data);

  factory Variables_Subscription_watchAllStreets.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map(
              (e) => Input_StreetsBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input_StreetsOrderBy.fromJson((e as Map<String, dynamic>)))
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
          Variables_Subscription_watchAllStreets>
      get copyWith => CopyWith_Variables_Subscription_watchAllStreets(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllStreets) ||
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
  }) =>
      _then(Variables_Subscription_watchAllStreets._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as List<Input_StreetsBoolExp>?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_StreetsOrderBy>?),
        if (limit != _undefined) 'limit': (limit as int?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllStreets<TRes>
    implements CopyWith_Variables_Subscription_watchAllStreets<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllStreets(this._res);

  TRes _res;

  call({
    List<Input_StreetsBoolExp>? where,
    List<Input_StreetsOrderBy>? orderBy,
    int? limit,
  }) =>
      _res;
}

class Subscription_watchAllStreets {
  Subscription_watchAllStreets({required this.streets});

  factory Subscription_watchAllStreets.fromJson(Map<String, dynamic> json) {
    final l$streets = json['streets'];
    return Subscription_watchAllStreets(
        streets: (l$streets as List<dynamic>)
            .map((e) => Subscription_watchAllStreets_streets.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
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
    if (!(other is Subscription_watchAllStreets) ||
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
      get copyWith => CopyWith_Subscription_watchAllStreets(
            this,
            (i) => i,
          );
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
                      Subscription_watchAllStreets_streets>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllStreets<TRes>
    implements CopyWith_Subscription_watchAllStreets<TRes> {
  _CopyWithImpl_Subscription_watchAllStreets(
    this._instance,
    this._then,
  );

  final Subscription_watchAllStreets _instance;

  final TRes Function(Subscription_watchAllStreets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streets = _undefined}) =>
      _then(Subscription_watchAllStreets(
          streets: streets == _undefined || streets == null
              ? _instance.streets
              : (streets as List<Subscription_watchAllStreets_streets>)));

  TRes streets(
          Iterable<Subscription_watchAllStreets_streets> Function(
                  Iterable<
                      CopyWith_Subscription_watchAllStreets_streets<
                          Subscription_watchAllStreets_streets>>)
              _fn) =>
      call(
          streets: _fn(_instance.streets
              .map((e) => CopyWith_Subscription_watchAllStreets_streets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllStreets<TRes>
    implements CopyWith_Subscription_watchAllStreets<TRes> {
  _CopyWithStubImpl_Subscription_watchAllStreets(this._res);

  TRes _res;

  call({List<Subscription_watchAllStreets_streets>? streets}) => _res;

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

class Subscription_watchAllStreets_streets
    implements Fragment_Street, Fragment_StreetNoPhoto {
  Subscription_watchAllStreets_streets({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Streets',
    this.photoUpdatedAt,
    this.blurhash,
    this.line,
  });

  factory Subscription_watchAllStreets_streets.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$line = json['line'];
    return Subscription_watchAllStreets_streets(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      line: (l$line as Map<String, dynamic>?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    _resultData['photoUpdatedAt'] =
        l$photoUpdatedAt == null ? null : tstzToString(l$photoUpdatedAt);
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
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$line = line;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
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
    if (!(other is Subscription_watchAllStreets_streets) ||
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
          Subscription_watchAllStreets_streets>
      get copyWith => CopyWith_Subscription_watchAllStreets_streets(
            this,
            (i) => i,
          );
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
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? line = _undefined,
  }) =>
      _then(Subscription_watchAllStreets_streets(
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
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        line: line == _undefined
            ? _instance.line
            : (line as Map<String, dynamic>?),
      ));
}

class _CopyWithStubImpl_Subscription_watchAllStreets_streets<TRes>
    implements CopyWith_Subscription_watchAllStreets_streets<TRes> {
  _CopyWithStubImpl_Subscription_watchAllStreets_streets(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    Map<String, dynamic>? line,
  }) =>
      _res;
}

class Variables_Subscription_watchStreet {
  factory Variables_Subscription_watchStreet({required UuidValue id}) =>
      Variables_Subscription_watchStreet._({
        r'id': id,
      });

  Variables_Subscription_watchStreet._(this._$data);

  factory Variables_Subscription_watchStreet.fromJson(
      Map<String, dynamic> data) {
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
          Variables_Subscription_watchStreet>
      get copyWith => CopyWith_Variables_Subscription_watchStreet(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchStreet) ||
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
  _CopyWithImpl_Variables_Subscription_watchStreet(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchStreet _instance;

  final TRes Function(Variables_Subscription_watchStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables_Subscription_watchStreet._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
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
                (l$streetsByPk as Map<String, dynamic>)));
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
    if (!(other is Subscription_watchStreet) ||
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
      CopyWith_Subscription_watchStreet(
        this,
        (i) => i,
      );
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
  _CopyWithImpl_Subscription_watchStreet(
    this._instance,
    this._then,
  );

  final Subscription_watchStreet _instance;

  final TRes Function(Subscription_watchStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streetsByPk = _undefined}) =>
      _then(Subscription_watchStreet(
          streetsByPk: streetsByPk == _undefined
              ? _instance.streetsByPk
              : (streetsByPk as Subscription_watchStreet_streetsByPk?)));

  CopyWith_Subscription_watchStreet_streetsByPk<TRes> get streetsByPk {
    final local$streetsByPk = _instance.streetsByPk;
    return local$streetsByPk == null
        ? CopyWith_Subscription_watchStreet_streetsByPk.stub(_then(_instance))
        : CopyWith_Subscription_watchStreet_streetsByPk(
            local$streetsByPk, (e) => call(streetsByPk: e));
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

const documentNodeSubscriptionwatchStreet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchStreet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'streetsByPk'),
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
            name: NameNode(value: 'Street'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'areas'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'name'),
                    value: EnumValueNode(name: NameNode(value: 'ASC')),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            ]),
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
            selectionSet: SelectionSetNode(selections: [
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
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
  fragmentDefinitionLatestEditHistory,
  fragmentDefinitionUser,
  fragmentDefinitionUserNoPhoto,
]);

class Subscription_watchStreet_streetsByPk
    implements Fragment_Street, Fragment_StreetNoPhoto {
  Subscription_watchStreet_streetsByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Streets',
    this.photoUpdatedAt,
    this.blurhash,
    this.areas,
    this.line,
    this.lastEdit,
  });

  factory Subscription_watchStreet_streetsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$areas = json['areas'];
    final l$line = json['line'];
    final l$lastEdit = json['lastEdit'];
    return Subscription_watchStreet_streetsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      blurhash: (l$blurhash as String?),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Fragment_Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      line: (l$line as Map<String, dynamic>?),
      lastEdit: l$lastEdit == null
          ? null
          : Fragment_LatestEditHistory.fromJson(
              (l$lastEdit as Map<String, dynamic>)),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final String? blurhash;

  final List<Fragment_Area>? areas;

  final Map<String, dynamic>? line;

  final Fragment_LatestEditHistory? lastEdit;

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
    final l$blurhash = blurhash;
    _resultData['blurhash'] = l$blurhash;
    final l$areas = areas;
    _resultData['areas'] = l$areas?.map((e) => e.toJson()).toList();
    final l$line = line;
    _resultData['line'] = l$line;
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$areas = areas;
    final l$line = line;
    final l$lastEdit = lastEdit;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$blurhash,
      l$areas == null ? null : Object.hashAll(l$areas.map((v) => v)),
      l$line,
      l$lastEdit,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchStreet_streetsByPk) ||
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
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (l$areas != null && lOther$areas != null) {
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
    } else if (l$areas != lOther$areas) {
      return false;
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
    return true;
  }
}

extension UtilityExtension_Subscription_watchStreet_streetsByPk
    on Subscription_watchStreet_streetsByPk {
  CopyWith_Subscription_watchStreet_streetsByPk<
          Subscription_watchStreet_streetsByPk>
      get copyWith => CopyWith_Subscription_watchStreet_streetsByPk(
            this,
            (i) => i,
          );
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
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Fragment_Area>? areas,
    Map<String, dynamic>? line,
    Fragment_LatestEditHistory? lastEdit,
  });
  TRes areas(
      Iterable<Fragment_Area>? Function(
              Iterable<CopyWith_Fragment_Area<Fragment_Area>>?)
          _fn);
  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit;
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
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? areas = _undefined,
    Object? line = _undefined,
    Object? lastEdit = _undefined,
  }) =>
      _then(Subscription_watchStreet_streetsByPk(
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
        blurhash:
            blurhash == _undefined ? _instance.blurhash : (blurhash as String?),
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Fragment_Area>?),
        line: line == _undefined
            ? _instance.line
            : (line as Map<String, dynamic>?),
        lastEdit: lastEdit == _undefined
            ? _instance.lastEdit
            : (lastEdit as Fragment_LatestEditHistory?),
      ));

  TRes areas(
          Iterable<Fragment_Area>? Function(
                  Iterable<CopyWith_Fragment_Area<Fragment_Area>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas?.map((e) => CopyWith_Fragment_Area(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Fragment_LatestEditHistory.stub(_then(_instance))
        : CopyWith_Fragment_LatestEditHistory(
            local$lastEdit, (e) => call(lastEdit: e));
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
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Fragment_Area>? areas,
    Map<String, dynamic>? line,
    Fragment_LatestEditHistory? lastEdit,
  }) =>
      _res;

  areas(_fn) => _res;

  CopyWith_Fragment_LatestEditHistory<TRes> get lastEdit =>
      CopyWith_Fragment_LatestEditHistory.stub(_res);
}
