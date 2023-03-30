import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Subscription$watchAllFamilies {
  factory Variables$Subscription$watchAllFamilies({
    int? limit,
    List<Input$FamiliesOrderBy>? orderBy,
    List<Input$FamiliesBoolExp>? where,
  }) =>
      Variables$Subscription$watchAllFamilies._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables$Subscription$watchAllFamilies._(this._$data);

  factory Variables$Subscription$watchAllFamilies.fromJson(
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
    return Variables$Subscription$watchAllFamilies._(result$data);
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

  CopyWith$Variables$Subscription$watchAllFamilies<
          Variables$Subscription$watchAllFamilies>
      get copyWith => CopyWith$Variables$Subscription$watchAllFamilies(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchAllFamilies) ||
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

abstract class CopyWith$Variables$Subscription$watchAllFamilies<TRes> {
  factory CopyWith$Variables$Subscription$watchAllFamilies(
    Variables$Subscription$watchAllFamilies instance,
    TRes Function(Variables$Subscription$watchAllFamilies) then,
  ) = _CopyWithImpl$Variables$Subscription$watchAllFamilies;

  factory CopyWith$Variables$Subscription$watchAllFamilies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchAllFamilies;

  TRes call({
    int? limit,
    List<Input$FamiliesOrderBy>? orderBy,
    List<Input$FamiliesBoolExp>? where,
  });
}

class _CopyWithImpl$Variables$Subscription$watchAllFamilies<TRes>
    implements CopyWith$Variables$Subscription$watchAllFamilies<TRes> {
  _CopyWithImpl$Variables$Subscription$watchAllFamilies(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchAllFamilies _instance;

  final TRes Function(Variables$Subscription$watchAllFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables$Subscription$watchAllFamilies._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$FamiliesOrderBy>?),
        if (where != _undefined)
          'where': (where as List<Input$FamiliesBoolExp>?),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchAllFamilies<TRes>
    implements CopyWith$Variables$Subscription$watchAllFamilies<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchAllFamilies(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input$FamiliesOrderBy>? orderBy,
    List<Input$FamiliesBoolExp>? where,
  }) =>
      _res;
}

class Subscription$watchAllFamilies {
  Subscription$watchAllFamilies({required this.families});

  factory Subscription$watchAllFamilies.fromJson(Map<String, dynamic> json) {
    final l$families = json['families'];
    return Subscription$watchAllFamilies(
        families: (l$families as List<dynamic>)
            .map((e) => Fragment$Family.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$Family> families;

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
    if (!(other is Subscription$watchAllFamilies) ||
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

extension UtilityExtension$Subscription$watchAllFamilies
    on Subscription$watchAllFamilies {
  CopyWith$Subscription$watchAllFamilies<Subscription$watchAllFamilies>
      get copyWith => CopyWith$Subscription$watchAllFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchAllFamilies<TRes> {
  factory CopyWith$Subscription$watchAllFamilies(
    Subscription$watchAllFamilies instance,
    TRes Function(Subscription$watchAllFamilies) then,
  ) = _CopyWithImpl$Subscription$watchAllFamilies;

  factory CopyWith$Subscription$watchAllFamilies.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchAllFamilies;

  TRes call({List<Fragment$Family>? families});
  TRes families(
      Iterable<Fragment$Family> Function(
              Iterable<CopyWith$Fragment$Family<Fragment$Family>>)
          _fn);
}

class _CopyWithImpl$Subscription$watchAllFamilies<TRes>
    implements CopyWith$Subscription$watchAllFamilies<TRes> {
  _CopyWithImpl$Subscription$watchAllFamilies(
    this._instance,
    this._then,
  );

  final Subscription$watchAllFamilies _instance;

  final TRes Function(Subscription$watchAllFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? families = _undefined}) => _then(
      Subscription$watchAllFamilies(
          families: families == _undefined || families == null
              ? _instance.families
              : (families as List<Fragment$Family>)));
  TRes families(
          Iterable<Fragment$Family> Function(
                  Iterable<CopyWith$Fragment$Family<Fragment$Family>>)
              _fn) =>
      call(
          families: _fn(_instance.families.map((e) => CopyWith$Fragment$Family(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$watchAllFamilies<TRes>
    implements CopyWith$Subscription$watchAllFamilies<TRes> {
  _CopyWithStubImpl$Subscription$watchAllFamilies(this._res);

  TRes _res;

  call({List<Fragment$Family>? families}) => _res;
  families(_fn) => _res;
}

const documentNodeSubscriptionwatchAllFamilies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchAllFamilies'),
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
          FragmentSpreadNode(
            name: NameNode(value: 'Family'),
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
      )
    ]),
  ),
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
]);

class Variables$Subscription$watchFamily {
  factory Variables$Subscription$watchFamily({required UuidValue id}) =>
      Variables$Subscription$watchFamily._({
        r'id': id,
      });

  Variables$Subscription$watchFamily._(this._$data);

  factory Variables$Subscription$watchFamily.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables$Subscription$watchFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith$Variables$Subscription$watchFamily<
          Variables$Subscription$watchFamily>
      get copyWith => CopyWith$Variables$Subscription$watchFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$watchFamily) ||
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

abstract class CopyWith$Variables$Subscription$watchFamily<TRes> {
  factory CopyWith$Variables$Subscription$watchFamily(
    Variables$Subscription$watchFamily instance,
    TRes Function(Variables$Subscription$watchFamily) then,
  ) = _CopyWithImpl$Variables$Subscription$watchFamily;

  factory CopyWith$Variables$Subscription$watchFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$watchFamily;

  TRes call({UuidValue? id});
}

class _CopyWithImpl$Variables$Subscription$watchFamily<TRes>
    implements CopyWith$Variables$Subscription$watchFamily<TRes> {
  _CopyWithImpl$Variables$Subscription$watchFamily(
    this._instance,
    this._then,
  );

  final Variables$Subscription$watchFamily _instance;

  final TRes Function(Variables$Subscription$watchFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Subscription$watchFamily._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$watchFamily<TRes>
    implements CopyWith$Variables$Subscription$watchFamily<TRes> {
  _CopyWithStubImpl$Variables$Subscription$watchFamily(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription$watchFamily {
  Subscription$watchFamily({this.familiesByPk});

  factory Subscription$watchFamily.fromJson(Map<String, dynamic> json) {
    final l$familiesByPk = json['familiesByPk'];
    return Subscription$watchFamily(
        familiesByPk: l$familiesByPk == null
            ? null
            : Subscription$watchFamily$familiesByPk.fromJson(
                (l$familiesByPk as Map<String, dynamic>)));
  }

  final Subscription$watchFamily$familiesByPk? familiesByPk;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$familiesByPk = familiesByPk;
    _resultData['familiesByPk'] = l$familiesByPk?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$familiesByPk = familiesByPk;
    return Object.hashAll([l$familiesByPk]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familiesByPk = familiesByPk;
    final lOther$familiesByPk = other.familiesByPk;
    if (l$familiesByPk != lOther$familiesByPk) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$watchFamily
    on Subscription$watchFamily {
  CopyWith$Subscription$watchFamily<Subscription$watchFamily> get copyWith =>
      CopyWith$Subscription$watchFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$watchFamily<TRes> {
  factory CopyWith$Subscription$watchFamily(
    Subscription$watchFamily instance,
    TRes Function(Subscription$watchFamily) then,
  ) = _CopyWithImpl$Subscription$watchFamily;

  factory CopyWith$Subscription$watchFamily.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchFamily;

  TRes call({Subscription$watchFamily$familiesByPk? familiesByPk});
  CopyWith$Subscription$watchFamily$familiesByPk<TRes> get familiesByPk;
}

class _CopyWithImpl$Subscription$watchFamily<TRes>
    implements CopyWith$Subscription$watchFamily<TRes> {
  _CopyWithImpl$Subscription$watchFamily(
    this._instance,
    this._then,
  );

  final Subscription$watchFamily _instance;

  final TRes Function(Subscription$watchFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familiesByPk = _undefined}) =>
      _then(Subscription$watchFamily(
          familiesByPk: familiesByPk == _undefined
              ? _instance.familiesByPk
              : (familiesByPk as Subscription$watchFamily$familiesByPk?)));
  CopyWith$Subscription$watchFamily$familiesByPk<TRes> get familiesByPk {
    final local$familiesByPk = _instance.familiesByPk;
    return local$familiesByPk == null
        ? CopyWith$Subscription$watchFamily$familiesByPk.stub(_then(_instance))
        : CopyWith$Subscription$watchFamily$familiesByPk(
            local$familiesByPk, (e) => call(familiesByPk: e));
  }
}

class _CopyWithStubImpl$Subscription$watchFamily<TRes>
    implements CopyWith$Subscription$watchFamily<TRes> {
  _CopyWithStubImpl$Subscription$watchFamily(this._res);

  TRes _res;

  call({Subscription$watchFamily$familiesByPk? familiesByPk}) => _res;
  CopyWith$Subscription$watchFamily$familiesByPk<TRes> get familiesByPk =>
      CopyWith$Subscription$watchFamily$familiesByPk.stub(_res);
}

const documentNodeSubscriptionwatchFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchFamily'),
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
        name: NameNode(value: 'familiesByPk'),
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
            name: NameNode(value: 'Family'),
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
            name: NameNode(value: 'streets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Street'),
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
            name: NameNode(value: 'geolocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'notes'),
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
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
]);

class Subscription$watchFamily$familiesByPk
    implements Fragment$Family, Fragment$FamilyNoPhoto {
  Subscription$watchFamily$familiesByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Families',
    this.photoUpdatedAt,
    this.areas,
    this.streets,
    this.geolocation,
    this.address,
    this.notes,
    this.lastEdit,
  });

  factory Subscription$watchFamily$familiesByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$areas = json['areas'];
    final l$streets = json['streets'];
    final l$geolocation = json['geolocation'];
    final l$address = json['address'];
    final l$notes = json['notes'];
    final l$lastEdit = json['lastEdit'];
    return Subscription$watchFamily$familiesByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      areas: (l$areas as List<dynamic>?)
          ?.map((e) => Fragment$Area.fromJson((e as Map<String, dynamic>)))
          .toList(),
      streets: (l$streets as List<dynamic>?)
          ?.map((e) => Fragment$Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      address: (l$address as String?),
      notes: (l$notes as String?),
      lastEdit: (l$lastEdit as Json?),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final List<Fragment$Area>? areas;

  final List<Fragment$Street>? streets;

  final Map<String, dynamic>? geolocation;

  final String? address;

  final String? notes;

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
    final l$streets = streets;
    _resultData['streets'] = l$streets?.map((e) => e.toJson()).toList();
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
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
    final l$streets = streets;
    final l$geolocation = geolocation;
    final l$address = address;
    final l$notes = notes;
    final l$lastEdit = lastEdit;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      l$areas == null ? null : Object.hashAll(l$areas.map((v) => v)),
      l$streets == null ? null : Object.hashAll(l$streets.map((v) => v)),
      l$geolocation,
      l$address,
      l$notes,
      l$lastEdit,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$watchFamily$familiesByPk) ||
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
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (l$streets != null && lOther$streets != null) {
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
    } else if (l$streets != lOther$streets) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
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

extension UtilityExtension$Subscription$watchFamily$familiesByPk
    on Subscription$watchFamily$familiesByPk {
  CopyWith$Subscription$watchFamily$familiesByPk<
          Subscription$watchFamily$familiesByPk>
      get copyWith => CopyWith$Subscription$watchFamily$familiesByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$watchFamily$familiesByPk<TRes> {
  factory CopyWith$Subscription$watchFamily$familiesByPk(
    Subscription$watchFamily$familiesByPk instance,
    TRes Function(Subscription$watchFamily$familiesByPk) then,
  ) = _CopyWithImpl$Subscription$watchFamily$familiesByPk;

  factory CopyWith$Subscription$watchFamily$familiesByPk.stub(TRes res) =
      _CopyWithStubImpl$Subscription$watchFamily$familiesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$Area>? areas,
    List<Fragment$Street>? streets,
    Map<String, dynamic>? geolocation,
    String? address,
    String? notes,
    Json? lastEdit,
  });
  TRes areas(
      Iterable<Fragment$Area>? Function(
              Iterable<CopyWith$Fragment$Area<Fragment$Area>>?)
          _fn);
  TRes streets(
      Iterable<Fragment$Street>? Function(
              Iterable<CopyWith$Fragment$Street<Fragment$Street>>?)
          _fn);
}

class _CopyWithImpl$Subscription$watchFamily$familiesByPk<TRes>
    implements CopyWith$Subscription$watchFamily$familiesByPk<TRes> {
  _CopyWithImpl$Subscription$watchFamily$familiesByPk(
    this._instance,
    this._then,
  );

  final Subscription$watchFamily$familiesByPk _instance;

  final TRes Function(Subscription$watchFamily$familiesByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? areas = _undefined,
    Object? streets = _undefined,
    Object? geolocation = _undefined,
    Object? address = _undefined,
    Object? notes = _undefined,
    Object? lastEdit = _undefined,
  }) =>
      _then(Subscription$watchFamily$familiesByPk(
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
        streets: streets == _undefined
            ? _instance.streets
            : (streets as List<Fragment$Street>?),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
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
  TRes streets(
          Iterable<Fragment$Street>? Function(
                  Iterable<CopyWith$Fragment$Street<Fragment$Street>>?)
              _fn) =>
      call(
          streets: _fn(_instance.streets?.map((e) => CopyWith$Fragment$Street(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Subscription$watchFamily$familiesByPk<TRes>
    implements CopyWith$Subscription$watchFamily$familiesByPk<TRes> {
  _CopyWithStubImpl$Subscription$watchFamily$familiesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Fragment$Area>? areas,
    List<Fragment$Street>? streets,
    Map<String, dynamic>? geolocation,
    String? address,
    String? notes,
    Json? lastEdit,
  }) =>
      _res;
  areas(_fn) => _res;
  streets(_fn) => _res;
}
