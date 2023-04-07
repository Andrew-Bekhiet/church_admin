import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
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

  static const _undefined = <dynamic, dynamic>{};

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

  static const _undefined = <dynamic, dynamic>{};

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
    this.$__typename = 'Streets',
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

  static const _undefined = <dynamic, dynamic>{};

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

class Variables$Subscription$watchStreet {
  factory Variables$Subscription$watchStreet({required UuidValue id}) =>
      Variables$Subscription$watchStreet._({
        r'id': id,
      });

  Variables$Subscription$watchStreet._(this._$data);

  factory Variables$Subscription$watchStreet.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Subscription$watchStreet._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Subscription$watchStreet<
          Variables$Subscription$watchStreet>
      get copyWith => CopyWith$Variables$Subscription$watchStreet(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchStreet) ||
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

abstract class CopyWith$Variables$Subscription$watchStreet<TRes> {
  factory CopyWith$Variables$Subscription$watchStreet(
    Variables$Subscription$watchStreet instance,
    TRes Function(Variables$Subscription$watchStreet) then,
  ) = _CopyWithImpl$Variables$Subscription$watchStreet;

  factory CopyWith$Variables$Subscription$watchStreet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchStreet;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Subscription$watchStreet<TRes>
    implements CopyWith$Variables$Subscription$watchStreet<TRes> {
  _CopyWithImpl$Variables$Subscription$watchStreet(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchStreet _instance;

  final TRes Function(Variables$Subscription$watchStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Subscription$watchStreet._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchStreet<TRes>
    implements CopyWith$Variables$Subscription$watchStreet<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchStreet(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription$watchStreet {
  Subscription$watchStreet({this.streetsByPk});

  factory Subscription$watchStreet.fromJson(Map<String, dynamic> json) {
    final l$streetsByPk = json['streetsByPk'];
    return Subscription$watchStreet(
        streetsByPk: l$streetsByPk == null
            ? null
            : Subscription$watchStreet$streetsByPk.fromJson(
                (l$streetsByPk as Map<String, dynamic>)));
  }

  final Subscription$watchStreet$streetsByPk? streetsByPk;

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
    if (!(other is Subscription$watchStreet) ||
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

extension UtilityExtension$Subscription$watchStreet
    on Subscription$watchStreet {
  CopyWith$Subscription$watchStreet<Subscription$watchStreet> get copyWith =>
      CopyWith$Subscription$watchStreet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchStreet<TRes> {
  factory CopyWith$Subscription$watchStreet(
    Subscription$watchStreet instance,
    TRes Function(Subscription$watchStreet) then,
  ) = _CopyWithImpl$Subscription$watchStreet;

  factory CopyWith$Subscription$watchStreet.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchStreet;

  TRes call({Subscription$watchStreet$streetsByPk? streetsByPk});
  CopyWith$Subscription$watchStreet$streetsByPk<TRes> get streetsByPk;
}

class _CopyWithImpl$Subscription$watchStreet<TRes>
    implements CopyWith$Subscription$watchStreet<TRes> {
  _CopyWithImpl$Subscription$watchStreet(
    this._instance,
    this._then,
  );

  final Subscription$watchStreet _instance;

  final TRes Function(Subscription$watchStreet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? streetsByPk = _undefined}) =>
      _then(Subscription$watchStreet(
          streetsByPk: streetsByPk == _undefined
              ? _instance.streetsByPk
              : (streetsByPk as Subscription$watchStreet$streetsByPk?)));
  CopyWith$Subscription$watchStreet$streetsByPk<TRes> get streetsByPk {
    final local$streetsByPk = _instance.streetsByPk;
    return local$streetsByPk == null
        ? CopyWith$Subscription$watchStreet$streetsByPk.stub(_then(_instance))
        : CopyWith$Subscription$watchStreet$streetsByPk(
            local$streetsByPk, (e) => call(streetsByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$watchStreet<TRes>
    implements CopyWith$Subscription$watchStreet<TRes> {
  _CopyWithStubImpl$Subscription$watchStreet(this._res);

  TRes _res;

  call({Subscription$watchStreet$streetsByPk? streetsByPk}) => _res;
  CopyWith$Subscription$watchStreet$streetsByPk<TRes> get streetsByPk =>
      CopyWith$Subscription$watchStreet$streetsByPk.stub(_res);
}

const documentNodeSubscriptionwatchStreet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchStreet'),
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
            arguments: [],
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
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
]);

class Subscription$watchStreet$streetsByPk
    implements Fragment$Street, Fragment$StreetNoPhoto {
  Subscription$watchStreet$streetsByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Streets',
    this.photoUpdatedAt,
    this.areas,
    this.line,
    this.lastEdit,
  });

  factory Subscription$watchStreet$streetsByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$areas = json['areas'];
    final l$line = json['line'];
    final l$lastEdit = json['lastEdit'];
    return Subscription$watchStreet$streetsByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Fragment$Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      line: (l$line as Map<String, dynamic>?),
      lastEdit: (l$lastEdit as Json?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final List<Fragment$Area>? areas;

  final Map<String, dynamic>? line;

  final Json? lastEdit;

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
    final l$areas = areas;
    _resultData['areas'] = l$areas?.map((e) => e.toJson()).toList();
    final l$line = line;
    _resultData['line'] = l$line;
    final l$lastEdit = lastEdit;
    _resultData['lastEdit'] = l$lastEdit;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$areas = areas;
    final l$line = line;
    final l$lastEdit = lastEdit;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
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
    if (!(other is Subscription$watchStreet$streetsByPk) ||
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

extension UtilityExtension$Subscription$watchStreet$streetsByPk
    on Subscription$watchStreet$streetsByPk {
  CopyWith$Subscription$watchStreet$streetsByPk<
          Subscription$watchStreet$streetsByPk>
      get copyWith => CopyWith$Subscription$watchStreet$streetsByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchStreet$streetsByPk<TRes> {
  factory CopyWith$Subscription$watchStreet$streetsByPk(
    Subscription$watchStreet$streetsByPk instance,
    TRes Function(Subscription$watchStreet$streetsByPk) then,
  ) = _CopyWithImpl$Subscription$watchStreet$streetsByPk;

  factory CopyWith$Subscription$watchStreet$streetsByPk.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchStreet$streetsByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$Area>? areas,
    Map<String, dynamic>? line,
    Json? lastEdit,
  });
  TRes areas(
      Iterable<Fragment$Area>? Function(
              Iterable<CopyWith$Fragment$Area<Fragment$Area>>?)
          _fn);
}

class _CopyWithImpl$Subscription$watchStreet$streetsByPk<TRes>
    implements CopyWith$Subscription$watchStreet$streetsByPk<TRes> {
  _CopyWithImpl$Subscription$watchStreet$streetsByPk(
    this._instance,
    this._then,
  );

  final Subscription$watchStreet$streetsByPk _instance;

  final TRes Function(Subscription$watchStreet$streetsByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? areas = _undefined,
    Object? line = _undefined,
    Object? lastEdit = _undefined,
  }) =>
      _then(Subscription$watchStreet$streetsByPk(
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
        areas: areas == _undefined
            ? _instance.areas
            : (areas as List<Fragment$Area>?),
        line: line == _undefined
            ? _instance.line
            : (line as Map<String, dynamic>?),
        lastEdit:
            lastEdit == _undefined ? _instance.lastEdit : (lastEdit as Json?),
      ));
  TRes areas(
          Iterable<Fragment$Area>? Function(
                  Iterable<CopyWith$Fragment$Area<Fragment$Area>>?)
              _fn) =>
      call(
          areas: _fn(_instance.areas?.map((e) => CopyWith$Fragment$Area(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Subscription$watchStreet$streetsByPk<TRes>
    implements CopyWith$Subscription$watchStreet$streetsByPk<TRes> {
  _CopyWithStubImpl$Subscription$watchStreet$streetsByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$Area>? areas,
    Map<String, dynamic>? line,
    Json? lastEdit,
  }) =>
      _res;
  areas(_fn) => _res;
}
