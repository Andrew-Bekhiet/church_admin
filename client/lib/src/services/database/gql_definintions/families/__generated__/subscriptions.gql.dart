import '../../../../../../graphql/__generated__/schema.graphql.dart';
import '../../areas/__generated__/fragments.gql.dart';
import '../../gql/__generated__/fragments.gql.dart';
import '../../streets/__generated__/fragments.gql.dart';
import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Subscription_watchAllFamilies {
  factory Variables_Subscription_watchAllFamilies({
    int? limit,
    List<Input_FamiliesOrderBy>? orderBy,
    List<Input_FamiliesBoolExp>? where,
  }) =>
      Variables_Subscription_watchAllFamilies._({
        if (limit != null) r'limit': limit,
        if (orderBy != null) r'orderBy': orderBy,
        if (where != null) r'where': where,
      });

  Variables_Subscription_watchAllFamilies._(this._$data);

  factory Variables_Subscription_watchAllFamilies.fromJson(
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
              Input_FamiliesOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = (l$where as List<dynamic>?)
          ?.map((e) =>
              Input_FamiliesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables_Subscription_watchAllFamilies._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  List<Input_FamiliesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input_FamiliesOrderBy>?);

  List<Input_FamiliesBoolExp>? get where =>
      (_$data['where'] as List<Input_FamiliesBoolExp>?);

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

  CopyWith_Variables_Subscription_watchAllFamilies<
          Variables_Subscription_watchAllFamilies>
      get copyWith => CopyWith_Variables_Subscription_watchAllFamilies(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchAllFamilies) ||
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

abstract class CopyWith_Variables_Subscription_watchAllFamilies<TRes> {
  factory CopyWith_Variables_Subscription_watchAllFamilies(
    Variables_Subscription_watchAllFamilies instance,
    TRes Function(Variables_Subscription_watchAllFamilies) then,
  ) = _CopyWithImpl_Variables_Subscription_watchAllFamilies;

  factory CopyWith_Variables_Subscription_watchAllFamilies.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchAllFamilies;

  TRes call({
    int? limit,
    List<Input_FamiliesOrderBy>? orderBy,
    List<Input_FamiliesBoolExp>? where,
  });
}

class _CopyWithImpl_Variables_Subscription_watchAllFamilies<TRes>
    implements CopyWith_Variables_Subscription_watchAllFamilies<TRes> {
  _CopyWithImpl_Variables_Subscription_watchAllFamilies(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchAllFamilies _instance;

  final TRes Function(Variables_Subscription_watchAllFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? orderBy = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Variables_Subscription_watchAllFamilies._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input_FamiliesOrderBy>?),
        if (where != _undefined)
          'where': (where as List<Input_FamiliesBoolExp>?),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchAllFamilies<TRes>
    implements CopyWith_Variables_Subscription_watchAllFamilies<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchAllFamilies(this._res);

  TRes _res;

  call({
    int? limit,
    List<Input_FamiliesOrderBy>? orderBy,
    List<Input_FamiliesBoolExp>? where,
  }) =>
      _res;
}

class Subscription_watchAllFamilies {
  Subscription_watchAllFamilies({required this.families});

  factory Subscription_watchAllFamilies.fromJson(Map<String, dynamic> json) {
    final l$families = json['families'];
    return Subscription_watchAllFamilies(
        families: (l$families as List<dynamic>)
            .map((e) => Fragment_Family.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment_Family> families;

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
    if (!(other is Subscription_watchAllFamilies) ||
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

extension UtilityExtension_Subscription_watchAllFamilies
    on Subscription_watchAllFamilies {
  CopyWith_Subscription_watchAllFamilies<Subscription_watchAllFamilies>
      get copyWith => CopyWith_Subscription_watchAllFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchAllFamilies<TRes> {
  factory CopyWith_Subscription_watchAllFamilies(
    Subscription_watchAllFamilies instance,
    TRes Function(Subscription_watchAllFamilies) then,
  ) = _CopyWithImpl_Subscription_watchAllFamilies;

  factory CopyWith_Subscription_watchAllFamilies.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchAllFamilies;

  TRes call({List<Fragment_Family>? families});
  TRes families(
      Iterable<Fragment_Family> Function(
              Iterable<CopyWith_Fragment_Family<Fragment_Family>>)
          _fn);
}

class _CopyWithImpl_Subscription_watchAllFamilies<TRes>
    implements CopyWith_Subscription_watchAllFamilies<TRes> {
  _CopyWithImpl_Subscription_watchAllFamilies(
    this._instance,
    this._then,
  );

  final Subscription_watchAllFamilies _instance;

  final TRes Function(Subscription_watchAllFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? families = _undefined}) => _then(
      Subscription_watchAllFamilies(
          families: families == _undefined || families == null
              ? _instance.families
              : (families as List<Fragment_Family>)));

  TRes families(
          Iterable<Fragment_Family> Function(
                  Iterable<CopyWith_Fragment_Family<Fragment_Family>>)
              _fn) =>
      call(
          families: _fn(_instance.families.map((e) => CopyWith_Fragment_Family(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Subscription_watchAllFamilies<TRes>
    implements CopyWith_Subscription_watchAllFamilies<TRes> {
  _CopyWithStubImpl_Subscription_watchAllFamilies(this._res);

  TRes _res;

  call({List<Fragment_Family>? families}) => _res;

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

class Variables_Subscription_watchFamily {
  factory Variables_Subscription_watchFamily({required UuidValue id}) =>
      Variables_Subscription_watchFamily._({
        r'id': id,
      });

  Variables_Subscription_watchFamily._(this._$data);

  factory Variables_Subscription_watchFamily.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Variables_Subscription_watchFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Variables_Subscription_watchFamily<
          Variables_Subscription_watchFamily>
      get copyWith => CopyWith_Variables_Subscription_watchFamily(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Subscription_watchFamily) ||
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

abstract class CopyWith_Variables_Subscription_watchFamily<TRes> {
  factory CopyWith_Variables_Subscription_watchFamily(
    Variables_Subscription_watchFamily instance,
    TRes Function(Variables_Subscription_watchFamily) then,
  ) = _CopyWithImpl_Variables_Subscription_watchFamily;

  factory CopyWith_Variables_Subscription_watchFamily.stub(TRes res) =
      _CopyWithStubImpl_Variables_Subscription_watchFamily;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Variables_Subscription_watchFamily<TRes>
    implements CopyWith_Variables_Subscription_watchFamily<TRes> {
  _CopyWithImpl_Variables_Subscription_watchFamily(
    this._instance,
    this._then,
  );

  final Variables_Subscription_watchFamily _instance;

  final TRes Function(Variables_Subscription_watchFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables_Subscription_watchFamily._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Subscription_watchFamily<TRes>
    implements CopyWith_Variables_Subscription_watchFamily<TRes> {
  _CopyWithStubImpl_Variables_Subscription_watchFamily(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Subscription_watchFamily {
  Subscription_watchFamily({this.familiesByPk});

  factory Subscription_watchFamily.fromJson(Map<String, dynamic> json) {
    final l$familiesByPk = json['familiesByPk'];
    return Subscription_watchFamily(
        familiesByPk: l$familiesByPk == null
            ? null
            : Subscription_watchFamily_familiesByPk.fromJson(
                (l$familiesByPk as Map<String, dynamic>)));
  }

  final Subscription_watchFamily_familiesByPk? familiesByPk;

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
    if (!(other is Subscription_watchFamily) ||
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

extension UtilityExtension_Subscription_watchFamily
    on Subscription_watchFamily {
  CopyWith_Subscription_watchFamily<Subscription_watchFamily> get copyWith =>
      CopyWith_Subscription_watchFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Subscription_watchFamily<TRes> {
  factory CopyWith_Subscription_watchFamily(
    Subscription_watchFamily instance,
    TRes Function(Subscription_watchFamily) then,
  ) = _CopyWithImpl_Subscription_watchFamily;

  factory CopyWith_Subscription_watchFamily.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchFamily;

  TRes call({Subscription_watchFamily_familiesByPk? familiesByPk});
  CopyWith_Subscription_watchFamily_familiesByPk<TRes> get familiesByPk;
}

class _CopyWithImpl_Subscription_watchFamily<TRes>
    implements CopyWith_Subscription_watchFamily<TRes> {
  _CopyWithImpl_Subscription_watchFamily(
    this._instance,
    this._then,
  );

  final Subscription_watchFamily _instance;

  final TRes Function(Subscription_watchFamily) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familiesByPk = _undefined}) =>
      _then(Subscription_watchFamily(
          familiesByPk: familiesByPk == _undefined
              ? _instance.familiesByPk
              : (familiesByPk as Subscription_watchFamily_familiesByPk?)));

  CopyWith_Subscription_watchFamily_familiesByPk<TRes> get familiesByPk {
    final local$familiesByPk = _instance.familiesByPk;
    return local$familiesByPk == null
        ? CopyWith_Subscription_watchFamily_familiesByPk.stub(_then(_instance))
        : CopyWith_Subscription_watchFamily_familiesByPk(
            local$familiesByPk, (e) => call(familiesByPk: e));
  }
}

class _CopyWithStubImpl_Subscription_watchFamily<TRes>
    implements CopyWith_Subscription_watchFamily<TRes> {
  _CopyWithStubImpl_Subscription_watchFamily(this._res);

  TRes _res;

  call({Subscription_watchFamily_familiesByPk? familiesByPk}) => _res;

  CopyWith_Subscription_watchFamily_familiesByPk<TRes> get familiesByPk =>
      CopyWith_Subscription_watchFamily_familiesByPk.stub(_res);
}

const documentNodeSubscriptionwatchFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'watchFamily'),
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
            name: NameNode(value: 'streets'),
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
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'EditHistory'),
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
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
  fragmentDefinitionArea,
  fragmentDefinitionAreaNoPhoto,
  fragmentDefinitionStreet,
  fragmentDefinitionStreetNoPhoto,
  fragmentDefinitionEditHistory,
]);

class Subscription_watchFamily_familiesByPk
    implements Fragment_Family, Fragment_FamilyNoPhoto {
  Subscription_watchFamily_familiesByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Families',
    this.photoUpdatedAt,
    this.blurhash,
    this.areas,
    this.streets,
    this.geolocation,
    this.address,
    this.notes,
    this.lastEdit,
  });

  factory Subscription_watchFamily_familiesByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$blurhash = json['blurhash'];
    final l$areas = json['areas'];
    final l$streets = json['streets'];
    final l$geolocation = json['geolocation'];
    final l$address = json['address'];
    final l$notes = json['notes'];
    final l$lastEdit = json['lastEdit'];
    return Subscription_watchFamily_familiesByPk(
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
      streets: (l$streets as List<dynamic>?)
          ?.map((e) => Fragment_Street.fromJson((e as Map<String, dynamic>)))
          .toList(),
      geolocation: (l$geolocation as Map<String, dynamic>?),
      address: (l$address as String?),
      notes: (l$notes as String?),
      lastEdit: l$lastEdit == null
          ? null
          : Subscription_watchFamily_familiesByPk_lastEdit.fromJson(
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

  final List<Fragment_Street>? streets;

  final Map<String, dynamic>? geolocation;

  final String? address;

  final String? notes;

  final Subscription_watchFamily_familiesByPk_lastEdit? lastEdit;

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
    final l$streets = streets;
    _resultData['streets'] = l$streets?.map((e) => e.toJson()).toList();
    final l$geolocation = geolocation;
    _resultData['geolocation'] = l$geolocation;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
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
      l$blurhash,
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
    if (!(other is Subscription_watchFamily_familiesByPk) ||
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

extension UtilityExtension_Subscription_watchFamily_familiesByPk
    on Subscription_watchFamily_familiesByPk {
  CopyWith_Subscription_watchFamily_familiesByPk<
          Subscription_watchFamily_familiesByPk>
      get copyWith => CopyWith_Subscription_watchFamily_familiesByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchFamily_familiesByPk<TRes> {
  factory CopyWith_Subscription_watchFamily_familiesByPk(
    Subscription_watchFamily_familiesByPk instance,
    TRes Function(Subscription_watchFamily_familiesByPk) then,
  ) = _CopyWithImpl_Subscription_watchFamily_familiesByPk;

  factory CopyWith_Subscription_watchFamily_familiesByPk.stub(TRes res) =
      _CopyWithStubImpl_Subscription_watchFamily_familiesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Fragment_Area>? areas,
    List<Fragment_Street>? streets,
    Map<String, dynamic>? geolocation,
    String? address,
    String? notes,
    Subscription_watchFamily_familiesByPk_lastEdit? lastEdit,
  });
  TRes areas(
      Iterable<Fragment_Area>? Function(
              Iterable<CopyWith_Fragment_Area<Fragment_Area>>?)
          _fn);
  TRes streets(
      Iterable<Fragment_Street>? Function(
              Iterable<CopyWith_Fragment_Street<Fragment_Street>>?)
          _fn);
  CopyWith_Subscription_watchFamily_familiesByPk_lastEdit<TRes> get lastEdit;
}

class _CopyWithImpl_Subscription_watchFamily_familiesByPk<TRes>
    implements CopyWith_Subscription_watchFamily_familiesByPk<TRes> {
  _CopyWithImpl_Subscription_watchFamily_familiesByPk(
    this._instance,
    this._then,
  );

  final Subscription_watchFamily_familiesByPk _instance;

  final TRes Function(Subscription_watchFamily_familiesByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? areas = _undefined,
    Object? streets = _undefined,
    Object? geolocation = _undefined,
    Object? address = _undefined,
    Object? notes = _undefined,
    Object? lastEdit = _undefined,
  }) =>
      _then(Subscription_watchFamily_familiesByPk(
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
        streets: streets == _undefined
            ? _instance.streets
            : (streets as List<Fragment_Street>?),
        geolocation: geolocation == _undefined
            ? _instance.geolocation
            : (geolocation as Map<String, dynamic>?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        lastEdit: lastEdit == _undefined
            ? _instance.lastEdit
            : (lastEdit as Subscription_watchFamily_familiesByPk_lastEdit?),
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

  TRes streets(
          Iterable<Fragment_Street>? Function(
                  Iterable<CopyWith_Fragment_Street<Fragment_Street>>?)
              _fn) =>
      call(
          streets: _fn(_instance.streets?.map((e) => CopyWith_Fragment_Street(
                e,
                (i) => i,
              )))?.toList());

  CopyWith_Subscription_watchFamily_familiesByPk_lastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Subscription_watchFamily_familiesByPk_lastEdit.stub(
            _then(_instance))
        : CopyWith_Subscription_watchFamily_familiesByPk_lastEdit(
            local$lastEdit, (e) => call(lastEdit: e));
  }
}

class _CopyWithStubImpl_Subscription_watchFamily_familiesByPk<TRes>
    implements CopyWith_Subscription_watchFamily_familiesByPk<TRes> {
  _CopyWithStubImpl_Subscription_watchFamily_familiesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Fragment_Area>? areas,
    List<Fragment_Street>? streets,
    Map<String, dynamic>? geolocation,
    String? address,
    String? notes,
    Subscription_watchFamily_familiesByPk_lastEdit? lastEdit,
  }) =>
      _res;

  areas(_fn) => _res;

  streets(_fn) => _res;

  CopyWith_Subscription_watchFamily_familiesByPk_lastEdit<TRes> get lastEdit =>
      CopyWith_Subscription_watchFamily_familiesByPk_lastEdit.stub(_res);
}

class Subscription_watchFamily_familiesByPk_lastEdit {
  Subscription_watchFamily_familiesByPk_lastEdit(
      {this.$__typename = 'HistoryLatestEdits'});

  factory Subscription_watchFamily_familiesByPk_lastEdit.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Subscription_watchFamily_familiesByPk_lastEdit(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription_watchFamily_familiesByPk_lastEdit) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension_Subscription_watchFamily_familiesByPk_lastEdit
    on Subscription_watchFamily_familiesByPk_lastEdit {
  CopyWith_Subscription_watchFamily_familiesByPk_lastEdit<
          Subscription_watchFamily_familiesByPk_lastEdit>
      get copyWith => CopyWith_Subscription_watchFamily_familiesByPk_lastEdit(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Subscription_watchFamily_familiesByPk_lastEdit<TRes> {
  factory CopyWith_Subscription_watchFamily_familiesByPk_lastEdit(
    Subscription_watchFamily_familiesByPk_lastEdit instance,
    TRes Function(Subscription_watchFamily_familiesByPk_lastEdit) then,
  ) = _CopyWithImpl_Subscription_watchFamily_familiesByPk_lastEdit;

  factory CopyWith_Subscription_watchFamily_familiesByPk_lastEdit.stub(
          TRes res) =
      _CopyWithStubImpl_Subscription_watchFamily_familiesByPk_lastEdit;

  TRes call({String? $__typename});
}

class _CopyWithImpl_Subscription_watchFamily_familiesByPk_lastEdit<TRes>
    implements CopyWith_Subscription_watchFamily_familiesByPk_lastEdit<TRes> {
  _CopyWithImpl_Subscription_watchFamily_familiesByPk_lastEdit(
    this._instance,
    this._then,
  );

  final Subscription_watchFamily_familiesByPk_lastEdit _instance;

  final TRes Function(Subscription_watchFamily_familiesByPk_lastEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Subscription_watchFamily_familiesByPk_lastEdit(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl_Subscription_watchFamily_familiesByPk_lastEdit<TRes>
    implements CopyWith_Subscription_watchFamily_familiesByPk_lastEdit<TRes> {
  _CopyWithStubImpl_Subscription_watchFamily_familiesByPk_lastEdit(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
