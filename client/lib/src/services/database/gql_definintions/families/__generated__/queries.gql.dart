import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Query_getFamilyRelatedFamilies {
  factory Variables_Query_getFamilyRelatedFamilies(
          {required UuidValue familyId}) =>
      Variables_Query_getFamilyRelatedFamilies._({
        r'familyId': familyId,
      });

  Variables_Query_getFamilyRelatedFamilies._(this._$data);

  factory Variables_Query_getFamilyRelatedFamilies.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    return Variables_Query_getFamilyRelatedFamilies._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    return result$data;
  }

  CopyWith_Variables_Query_getFamilyRelatedFamilies<
          Variables_Query_getFamilyRelatedFamilies>
      get copyWith => CopyWith_Variables_Query_getFamilyRelatedFamilies(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables_Query_getFamilyRelatedFamilies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    return Object.hashAll([l$familyId]);
  }
}

abstract class CopyWith_Variables_Query_getFamilyRelatedFamilies<TRes> {
  factory CopyWith_Variables_Query_getFamilyRelatedFamilies(
    Variables_Query_getFamilyRelatedFamilies instance,
    TRes Function(Variables_Query_getFamilyRelatedFamilies) then,
  ) = _CopyWithImpl_Variables_Query_getFamilyRelatedFamilies;

  factory CopyWith_Variables_Query_getFamilyRelatedFamilies.stub(TRes res) =
      _CopyWithStubImpl_Variables_Query_getFamilyRelatedFamilies;

  TRes call({UuidValue? familyId});
}

class _CopyWithImpl_Variables_Query_getFamilyRelatedFamilies<TRes>
    implements CopyWith_Variables_Query_getFamilyRelatedFamilies<TRes> {
  _CopyWithImpl_Variables_Query_getFamilyRelatedFamilies(
    this._instance,
    this._then,
  );

  final Variables_Query_getFamilyRelatedFamilies _instance;

  final TRes Function(Variables_Query_getFamilyRelatedFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) =>
      _then(Variables_Query_getFamilyRelatedFamilies._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as UuidValue),
      }));
}

class _CopyWithStubImpl_Variables_Query_getFamilyRelatedFamilies<TRes>
    implements CopyWith_Variables_Query_getFamilyRelatedFamilies<TRes> {
  _CopyWithStubImpl_Variables_Query_getFamilyRelatedFamilies(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Query_getFamilyRelatedFamilies {
  Query_getFamilyRelatedFamilies({
    this.familiesByPk,
    this.$__typename = 'query_root',
  });

  factory Query_getFamilyRelatedFamilies.fromJson(Map<String, dynamic> json) {
    final l$familiesByPk = json['familiesByPk'];
    final l$$__typename = json['__typename'];
    return Query_getFamilyRelatedFamilies(
      familiesByPk: l$familiesByPk == null
          ? null
          : Query_getFamilyRelatedFamilies_familiesByPk.fromJson(
              (l$familiesByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query_getFamilyRelatedFamilies_familiesByPk? familiesByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$familiesByPk = familiesByPk;
    _resultData['familiesByPk'] = l$familiesByPk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$familiesByPk = familiesByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$familiesByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_getFamilyRelatedFamilies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familiesByPk = familiesByPk;
    final lOther$familiesByPk = other.familiesByPk;
    if (l$familiesByPk != lOther$familiesByPk) {
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

extension UtilityExtension_Query_getFamilyRelatedFamilies
    on Query_getFamilyRelatedFamilies {
  CopyWith_Query_getFamilyRelatedFamilies<Query_getFamilyRelatedFamilies>
      get copyWith => CopyWith_Query_getFamilyRelatedFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_getFamilyRelatedFamilies<TRes> {
  factory CopyWith_Query_getFamilyRelatedFamilies(
    Query_getFamilyRelatedFamilies instance,
    TRes Function(Query_getFamilyRelatedFamilies) then,
  ) = _CopyWithImpl_Query_getFamilyRelatedFamilies;

  factory CopyWith_Query_getFamilyRelatedFamilies.stub(TRes res) =
      _CopyWithStubImpl_Query_getFamilyRelatedFamilies;

  TRes call({
    Query_getFamilyRelatedFamilies_familiesByPk? familiesByPk,
    String? $__typename,
  });
  CopyWith_Query_getFamilyRelatedFamilies_familiesByPk<TRes> get familiesByPk;
}

class _CopyWithImpl_Query_getFamilyRelatedFamilies<TRes>
    implements CopyWith_Query_getFamilyRelatedFamilies<TRes> {
  _CopyWithImpl_Query_getFamilyRelatedFamilies(
    this._instance,
    this._then,
  );

  final Query_getFamilyRelatedFamilies _instance;

  final TRes Function(Query_getFamilyRelatedFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familiesByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_getFamilyRelatedFamilies(
        familiesByPk: familiesByPk == _undefined
            ? _instance.familiesByPk
            : (familiesByPk as Query_getFamilyRelatedFamilies_familiesByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Query_getFamilyRelatedFamilies_familiesByPk<TRes> get familiesByPk {
    final local$familiesByPk = _instance.familiesByPk;
    return local$familiesByPk == null
        ? CopyWith_Query_getFamilyRelatedFamilies_familiesByPk.stub(
            _then(_instance))
        : CopyWith_Query_getFamilyRelatedFamilies_familiesByPk(
            local$familiesByPk, (e) => call(familiesByPk: e));
  }
}

class _CopyWithStubImpl_Query_getFamilyRelatedFamilies<TRes>
    implements CopyWith_Query_getFamilyRelatedFamilies<TRes> {
  _CopyWithStubImpl_Query_getFamilyRelatedFamilies(this._res);

  TRes _res;

  call({
    Query_getFamilyRelatedFamilies_familiesByPk? familiesByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Query_getFamilyRelatedFamilies_familiesByPk<TRes> get familiesByPk =>
      CopyWith_Query_getFamilyRelatedFamilies_familiesByPk.stub(_res);
}

const documentNodeQuerygetFamilyRelatedFamilies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getFamilyRelatedFamilies'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familyId')),
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
            value: VariableNode(name: NameNode(value: 'familyId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Family'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'children'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'child'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'child'),
                alias: null,
                arguments: [],
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
            name: NameNode(value: 'parents'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'parent'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: EnumValueNode(name: NameNode(value: 'ASC')),
                      )
                    ]),
                  )
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'parent'),
                alias: null,
                arguments: [],
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
  ),
  fragmentDefinitionFamily,
  fragmentDefinitionFamilyNoPhoto,
]);

class Query_getFamilyRelatedFamilies_familiesByPk
    implements Fragment_Family, Fragment_FamilyNoPhoto {
  Query_getFamilyRelatedFamilies_familiesByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Families',
    this.photoUpdatedAt,
    required this.children,
    required this.parents,
  });

  factory Query_getFamilyRelatedFamilies_familiesByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$children = json['children'];
    final l$parents = json['parents'];
    return Query_getFamilyRelatedFamilies_familiesByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      children: (l$children as List<dynamic>)
          .map((e) =>
              Query_getFamilyRelatedFamilies_familiesByPk_children.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      parents: (l$parents as List<dynamic>)
          .map((e) =>
              Query_getFamilyRelatedFamilies_familiesByPk_parents.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final List<Query_getFamilyRelatedFamilies_familiesByPk_children> children;

  final List<Query_getFamilyRelatedFamilies_familiesByPk_parents> parents;

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
    final l$children = children;
    _resultData['children'] = l$children.map((e) => e.toJson()).toList();
    final l$parents = parents;
    _resultData['parents'] = l$parents.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$color = color;
    final l$$__typename = $__typename;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$children = children;
    final l$parents = parents;
    return Object.hashAll([
      l$id,
      l$name,
      l$color,
      l$$__typename,
      l$photoUpdatedAt,
      Object.hashAll(l$children.map((v) => v)),
      Object.hashAll(l$parents.map((v) => v)),
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_getFamilyRelatedFamilies_familiesByPk) ||
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
    final l$children = children;
    final lOther$children = other.children;
    if (l$children.length != lOther$children.length) {
      return false;
    }
    for (int i = 0; i < l$children.length; i++) {
      final l$children$entry = l$children[i];
      final lOther$children$entry = lOther$children[i];
      if (l$children$entry != lOther$children$entry) {
        return false;
      }
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (l$parents.length != lOther$parents.length) {
      return false;
    }
    for (int i = 0; i < l$parents.length; i++) {
      final l$parents$entry = l$parents[i];
      final lOther$parents$entry = lOther$parents[i];
      if (l$parents$entry != lOther$parents$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_getFamilyRelatedFamilies_familiesByPk
    on Query_getFamilyRelatedFamilies_familiesByPk {
  CopyWith_Query_getFamilyRelatedFamilies_familiesByPk<
          Query_getFamilyRelatedFamilies_familiesByPk>
      get copyWith => CopyWith_Query_getFamilyRelatedFamilies_familiesByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_getFamilyRelatedFamilies_familiesByPk<TRes> {
  factory CopyWith_Query_getFamilyRelatedFamilies_familiesByPk(
    Query_getFamilyRelatedFamilies_familiesByPk instance,
    TRes Function(Query_getFamilyRelatedFamilies_familiesByPk) then,
  ) = _CopyWithImpl_Query_getFamilyRelatedFamilies_familiesByPk;

  factory CopyWith_Query_getFamilyRelatedFamilies_familiesByPk.stub(TRes res) =
      _CopyWithStubImpl_Query_getFamilyRelatedFamilies_familiesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Query_getFamilyRelatedFamilies_familiesByPk_children>? children,
    List<Query_getFamilyRelatedFamilies_familiesByPk_parents>? parents,
  });
  TRes children(
      Iterable<Query_getFamilyRelatedFamilies_familiesByPk_children> Function(
              Iterable<
                  CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children<
                      Query_getFamilyRelatedFamilies_familiesByPk_children>>)
          _fn);
  TRes parents(
      Iterable<Query_getFamilyRelatedFamilies_familiesByPk_parents> Function(
              Iterable<
                  CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents<
                      Query_getFamilyRelatedFamilies_familiesByPk_parents>>)
          _fn);
}

class _CopyWithImpl_Query_getFamilyRelatedFamilies_familiesByPk<TRes>
    implements CopyWith_Query_getFamilyRelatedFamilies_familiesByPk<TRes> {
  _CopyWithImpl_Query_getFamilyRelatedFamilies_familiesByPk(
    this._instance,
    this._then,
  );

  final Query_getFamilyRelatedFamilies_familiesByPk _instance;

  final TRes Function(Query_getFamilyRelatedFamilies_familiesByPk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
    Object? $__typename = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? children = _undefined,
    Object? parents = _undefined,
  }) =>
      _then(Query_getFamilyRelatedFamilies_familiesByPk(
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
        children: children == _undefined || children == null
            ? _instance.children
            : (children
                as List<Query_getFamilyRelatedFamilies_familiesByPk_children>),
        parents: parents == _undefined || parents == null
            ? _instance.parents
            : (parents
                as List<Query_getFamilyRelatedFamilies_familiesByPk_parents>),
      ));
  TRes children(
          Iterable<Query_getFamilyRelatedFamilies_familiesByPk_children> Function(
                  Iterable<
                      CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children<
                          Query_getFamilyRelatedFamilies_familiesByPk_children>>)
              _fn) =>
      call(
          children: _fn(_instance.children.map((e) =>
              CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children(
                e,
                (i) => i,
              ))).toList());
  TRes parents(
          Iterable<Query_getFamilyRelatedFamilies_familiesByPk_parents> Function(
                  Iterable<
                      CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents<
                          Query_getFamilyRelatedFamilies_familiesByPk_parents>>)
              _fn) =>
      call(
          parents: _fn(_instance.parents.map((e) =>
              CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl_Query_getFamilyRelatedFamilies_familiesByPk<TRes>
    implements CopyWith_Query_getFamilyRelatedFamilies_familiesByPk<TRes> {
  _CopyWithStubImpl_Query_getFamilyRelatedFamilies_familiesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Query_getFamilyRelatedFamilies_familiesByPk_children>? children,
    List<Query_getFamilyRelatedFamilies_familiesByPk_parents>? parents,
  }) =>
      _res;
  children(_fn) => _res;
  parents(_fn) => _res;
}

class Query_getFamilyRelatedFamilies_familiesByPk_children {
  Query_getFamilyRelatedFamilies_familiesByPk_children({
    required this.child,
    this.$__typename = 'FamiliesFamilies',
  });

  factory Query_getFamilyRelatedFamilies_familiesByPk_children.fromJson(
      Map<String, dynamic> json) {
    final l$child = json['child'];
    final l$$__typename = json['__typename'];
    return Query_getFamilyRelatedFamilies_familiesByPk_children(
      child: Fragment_Family.fromJson((l$child as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Family child;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$child = child;
    _resultData['child'] = l$child.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$child = child;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$child,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_getFamilyRelatedFamilies_familiesByPk_children) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$child = child;
    final lOther$child = other.child;
    if (l$child != lOther$child) {
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

extension UtilityExtension_Query_getFamilyRelatedFamilies_familiesByPk_children
    on Query_getFamilyRelatedFamilies_familiesByPk_children {
  CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children<
          Query_getFamilyRelatedFamilies_familiesByPk_children>
      get copyWith =>
          CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children<
    TRes> {
  factory CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children(
    Query_getFamilyRelatedFamilies_familiesByPk_children instance,
    TRes Function(Query_getFamilyRelatedFamilies_familiesByPk_children) then,
  ) = _CopyWithImpl_Query_getFamilyRelatedFamilies_familiesByPk_children;

  factory CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children.stub(
          TRes res) =
      _CopyWithStubImpl_Query_getFamilyRelatedFamilies_familiesByPk_children;

  TRes call({
    Fragment_Family? child,
    String? $__typename,
  });
  CopyWith_Fragment_Family<TRes> get child;
}

class _CopyWithImpl_Query_getFamilyRelatedFamilies_familiesByPk_children<TRes>
    implements
        CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children<TRes> {
  _CopyWithImpl_Query_getFamilyRelatedFamilies_familiesByPk_children(
    this._instance,
    this._then,
  );

  final Query_getFamilyRelatedFamilies_familiesByPk_children _instance;

  final TRes Function(Query_getFamilyRelatedFamilies_familiesByPk_children)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? child = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_getFamilyRelatedFamilies_familiesByPk_children(
        child: child == _undefined || child == null
            ? _instance.child
            : (child as Fragment_Family),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Fragment_Family<TRes> get child {
    final local$child = _instance.child;
    return CopyWith_Fragment_Family(local$child, (e) => call(child: e));
  }
}

class _CopyWithStubImpl_Query_getFamilyRelatedFamilies_familiesByPk_children<
        TRes>
    implements
        CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_children<TRes> {
  _CopyWithStubImpl_Query_getFamilyRelatedFamilies_familiesByPk_children(
      this._res);

  TRes _res;

  call({
    Fragment_Family? child,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Fragment_Family<TRes> get child =>
      CopyWith_Fragment_Family.stub(_res);
}

class Query_getFamilyRelatedFamilies_familiesByPk_parents {
  Query_getFamilyRelatedFamilies_familiesByPk_parents({
    required this.parent,
    this.$__typename = 'FamiliesFamilies',
  });

  factory Query_getFamilyRelatedFamilies_familiesByPk_parents.fromJson(
      Map<String, dynamic> json) {
    final l$parent = json['parent'];
    final l$$__typename = json['__typename'];
    return Query_getFamilyRelatedFamilies_familiesByPk_parents(
      parent: Fragment_Family.fromJson((l$parent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Family parent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$parent = parent;
    _resultData['parent'] = l$parent.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$parent = parent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$parent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query_getFamilyRelatedFamilies_familiesByPk_parents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (l$parent != lOther$parent) {
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

extension UtilityExtension_Query_getFamilyRelatedFamilies_familiesByPk_parents
    on Query_getFamilyRelatedFamilies_familiesByPk_parents {
  CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents<
          Query_getFamilyRelatedFamilies_familiesByPk_parents>
      get copyWith =>
          CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents(
            this,
            (i) => i,
          );
}

abstract class CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents<
    TRes> {
  factory CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents(
    Query_getFamilyRelatedFamilies_familiesByPk_parents instance,
    TRes Function(Query_getFamilyRelatedFamilies_familiesByPk_parents) then,
  ) = _CopyWithImpl_Query_getFamilyRelatedFamilies_familiesByPk_parents;

  factory CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents.stub(
          TRes res) =
      _CopyWithStubImpl_Query_getFamilyRelatedFamilies_familiesByPk_parents;

  TRes call({
    Fragment_Family? parent,
    String? $__typename,
  });
  CopyWith_Fragment_Family<TRes> get parent;
}

class _CopyWithImpl_Query_getFamilyRelatedFamilies_familiesByPk_parents<TRes>
    implements
        CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents<TRes> {
  _CopyWithImpl_Query_getFamilyRelatedFamilies_familiesByPk_parents(
    this._instance,
    this._then,
  );

  final Query_getFamilyRelatedFamilies_familiesByPk_parents _instance;

  final TRes Function(Query_getFamilyRelatedFamilies_familiesByPk_parents)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? parent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query_getFamilyRelatedFamilies_familiesByPk_parents(
        parent: parent == _undefined || parent == null
            ? _instance.parent
            : (parent as Fragment_Family),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith_Fragment_Family<TRes> get parent {
    final local$parent = _instance.parent;
    return CopyWith_Fragment_Family(local$parent, (e) => call(parent: e));
  }
}

class _CopyWithStubImpl_Query_getFamilyRelatedFamilies_familiesByPk_parents<
        TRes>
    implements
        CopyWith_Query_getFamilyRelatedFamilies_familiesByPk_parents<TRes> {
  _CopyWithStubImpl_Query_getFamilyRelatedFamilies_familiesByPk_parents(
      this._res);

  TRes _res;

  call({
    Fragment_Family? parent,
    String? $__typename,
  }) =>
      _res;
  CopyWith_Fragment_Family<TRes> get parent =>
      CopyWith_Fragment_Family.stub(_res);
}
