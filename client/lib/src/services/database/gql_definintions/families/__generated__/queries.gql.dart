import 'fragments.gql.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables$Query$getFamilyRelatedFamilies {
  factory Variables$Query$getFamilyRelatedFamilies(
          {required UuidValue familyId}) =>
      Variables$Query$getFamilyRelatedFamilies._({
        r'familyId': familyId,
      });

  Variables$Query$getFamilyRelatedFamilies._(this._$data);

  factory Variables$Query$getFamilyRelatedFamilies.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    return Variables$Query$getFamilyRelatedFamilies._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    return result$data;
  }

  CopyWith$Variables$Query$getFamilyRelatedFamilies<
          Variables$Query$getFamilyRelatedFamilies>
      get copyWith => CopyWith$Variables$Query$getFamilyRelatedFamilies(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getFamilyRelatedFamilies) ||
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

abstract class CopyWith$Variables$Query$getFamilyRelatedFamilies<TRes> {
  factory CopyWith$Variables$Query$getFamilyRelatedFamilies(
    Variables$Query$getFamilyRelatedFamilies instance,
    TRes Function(Variables$Query$getFamilyRelatedFamilies) then,
  ) = _CopyWithImpl$Variables$Query$getFamilyRelatedFamilies;

  factory CopyWith$Variables$Query$getFamilyRelatedFamilies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getFamilyRelatedFamilies;

  TRes call({UuidValue? familyId});
}

class _CopyWithImpl$Variables$Query$getFamilyRelatedFamilies<TRes>
    implements CopyWith$Variables$Query$getFamilyRelatedFamilies<TRes> {
  _CopyWithImpl$Variables$Query$getFamilyRelatedFamilies(
    this._instance,
    this._then,
  );

  final Variables$Query$getFamilyRelatedFamilies _instance;

  final TRes Function(Variables$Query$getFamilyRelatedFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) =>
      _then(Variables$Query$getFamilyRelatedFamilies._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as UuidValue),
      }));
}

class _CopyWithStubImpl$Variables$Query$getFamilyRelatedFamilies<TRes>
    implements CopyWith$Variables$Query$getFamilyRelatedFamilies<TRes> {
  _CopyWithStubImpl$Variables$Query$getFamilyRelatedFamilies(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Query$getFamilyRelatedFamilies {
  Query$getFamilyRelatedFamilies({
    this.familiesByPk,
    this.$__typename = 'query_root',
  });

  factory Query$getFamilyRelatedFamilies.fromJson(Map<String, dynamic> json) {
    final l$familiesByPk = json['familiesByPk'];
    final l$$__typename = json['__typename'];
    return Query$getFamilyRelatedFamilies(
      familiesByPk: l$familiesByPk == null
          ? null
          : Query$getFamilyRelatedFamilies$familiesByPk.fromJson(
              (l$familiesByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFamilyRelatedFamilies$familiesByPk? familiesByPk;

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
    if (!(other is Query$getFamilyRelatedFamilies) ||
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

extension UtilityExtension$Query$getFamilyRelatedFamilies
    on Query$getFamilyRelatedFamilies {
  CopyWith$Query$getFamilyRelatedFamilies<Query$getFamilyRelatedFamilies>
      get copyWith => CopyWith$Query$getFamilyRelatedFamilies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFamilyRelatedFamilies<TRes> {
  factory CopyWith$Query$getFamilyRelatedFamilies(
    Query$getFamilyRelatedFamilies instance,
    TRes Function(Query$getFamilyRelatedFamilies) then,
  ) = _CopyWithImpl$Query$getFamilyRelatedFamilies;

  factory CopyWith$Query$getFamilyRelatedFamilies.stub(TRes res) =
      _CopyWithStubImpl$Query$getFamilyRelatedFamilies;

  TRes call({
    Query$getFamilyRelatedFamilies$familiesByPk? familiesByPk,
    String? $__typename,
  });
  CopyWith$Query$getFamilyRelatedFamilies$familiesByPk<TRes> get familiesByPk;
}

class _CopyWithImpl$Query$getFamilyRelatedFamilies<TRes>
    implements CopyWith$Query$getFamilyRelatedFamilies<TRes> {
  _CopyWithImpl$Query$getFamilyRelatedFamilies(
    this._instance,
    this._then,
  );

  final Query$getFamilyRelatedFamilies _instance;

  final TRes Function(Query$getFamilyRelatedFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familiesByPk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFamilyRelatedFamilies(
        familiesByPk: familiesByPk == _undefined
            ? _instance.familiesByPk
            : (familiesByPk as Query$getFamilyRelatedFamilies$familiesByPk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getFamilyRelatedFamilies$familiesByPk<TRes> get familiesByPk {
    final local$familiesByPk = _instance.familiesByPk;
    return local$familiesByPk == null
        ? CopyWith$Query$getFamilyRelatedFamilies$familiesByPk.stub(
            _then(_instance))
        : CopyWith$Query$getFamilyRelatedFamilies$familiesByPk(
            local$familiesByPk, (e) => call(familiesByPk: e));
  }
}

class _CopyWithStubImpl$Query$getFamilyRelatedFamilies<TRes>
    implements CopyWith$Query$getFamilyRelatedFamilies<TRes> {
  _CopyWithStubImpl$Query$getFamilyRelatedFamilies(this._res);

  TRes _res;

  call({
    Query$getFamilyRelatedFamilies$familiesByPk? familiesByPk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getFamilyRelatedFamilies$familiesByPk<TRes> get familiesByPk =>
      CopyWith$Query$getFamilyRelatedFamilies$familiesByPk.stub(_res);
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
            arguments: [],
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
            arguments: [],
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

class Query$getFamilyRelatedFamilies$familiesByPk
    implements Fragment$Family, Fragment$FamilyNoPhoto {
  Query$getFamilyRelatedFamilies$familiesByPk({
    required this.id,
    required this.name,
    this.color,
    this.$__typename = 'Families',
    this.photoUpdatedAt,
    required this.children,
    required this.parents,
  });

  factory Query$getFamilyRelatedFamilies$familiesByPk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$color = json['color'];
    final l$$__typename = json['__typename'];
    final l$photoUpdatedAt = json['photoUpdatedAt'];
    final l$children = json['children'];
    final l$parents = json['parents'];
    return Query$getFamilyRelatedFamilies$familiesByPk(
      id: stringToUuid(l$id),
      name: (l$name as String),
      color: (l$color as int?),
      $__typename: (l$$__typename as String),
      photoUpdatedAt:
          l$photoUpdatedAt == null ? null : tstzFromString(l$photoUpdatedAt),
      children: (l$children as List<dynamic>)
          .map((e) =>
              Query$getFamilyRelatedFamilies$familiesByPk$children.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      parents: (l$parents as List<dynamic>)
          .map((e) =>
              Query$getFamilyRelatedFamilies$familiesByPk$parents.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
    );
  }

  final UuidValue id;

  final String name;

  final int? color;

  final String $__typename;

  final DateTime? photoUpdatedAt;

  final List<Query$getFamilyRelatedFamilies$familiesByPk$children> children;

  final List<Query$getFamilyRelatedFamilies$familiesByPk$parents> parents;

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
    if (!(other is Query$getFamilyRelatedFamilies$familiesByPk) ||
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

extension UtilityExtension$Query$getFamilyRelatedFamilies$familiesByPk
    on Query$getFamilyRelatedFamilies$familiesByPk {
  CopyWith$Query$getFamilyRelatedFamilies$familiesByPk<
          Query$getFamilyRelatedFamilies$familiesByPk>
      get copyWith => CopyWith$Query$getFamilyRelatedFamilies$familiesByPk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFamilyRelatedFamilies$familiesByPk<TRes> {
  factory CopyWith$Query$getFamilyRelatedFamilies$familiesByPk(
    Query$getFamilyRelatedFamilies$familiesByPk instance,
    TRes Function(Query$getFamilyRelatedFamilies$familiesByPk) then,
  ) = _CopyWithImpl$Query$getFamilyRelatedFamilies$familiesByPk;

  factory CopyWith$Query$getFamilyRelatedFamilies$familiesByPk.stub(TRes res) =
      _CopyWithStubImpl$Query$getFamilyRelatedFamilies$familiesByPk;

  TRes call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Query$getFamilyRelatedFamilies$familiesByPk$children>? children,
    List<Query$getFamilyRelatedFamilies$familiesByPk$parents>? parents,
  });
  TRes children(
      Iterable<Query$getFamilyRelatedFamilies$familiesByPk$children> Function(
              Iterable<
                  CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children<
                      Query$getFamilyRelatedFamilies$familiesByPk$children>>)
          _fn);
  TRes parents(
      Iterable<Query$getFamilyRelatedFamilies$familiesByPk$parents> Function(
              Iterable<
                  CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents<
                      Query$getFamilyRelatedFamilies$familiesByPk$parents>>)
          _fn);
}

class _CopyWithImpl$Query$getFamilyRelatedFamilies$familiesByPk<TRes>
    implements CopyWith$Query$getFamilyRelatedFamilies$familiesByPk<TRes> {
  _CopyWithImpl$Query$getFamilyRelatedFamilies$familiesByPk(
    this._instance,
    this._then,
  );

  final Query$getFamilyRelatedFamilies$familiesByPk _instance;

  final TRes Function(Query$getFamilyRelatedFamilies$familiesByPk) _then;

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
      _then(Query$getFamilyRelatedFamilies$familiesByPk(
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
                as List<Query$getFamilyRelatedFamilies$familiesByPk$children>),
        parents: parents == _undefined || parents == null
            ? _instance.parents
            : (parents
                as List<Query$getFamilyRelatedFamilies$familiesByPk$parents>),
      ));
  TRes children(
          Iterable<Query$getFamilyRelatedFamilies$familiesByPk$children> Function(
                  Iterable<
                      CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children<
                          Query$getFamilyRelatedFamilies$familiesByPk$children>>)
              _fn) =>
      call(
          children: _fn(_instance.children.map((e) =>
              CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children(
                e,
                (i) => i,
              ))).toList());
  TRes parents(
          Iterable<Query$getFamilyRelatedFamilies$familiesByPk$parents> Function(
                  Iterable<
                      CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents<
                          Query$getFamilyRelatedFamilies$familiesByPk$parents>>)
              _fn) =>
      call(
          parents: _fn(_instance.parents.map((e) =>
              CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$getFamilyRelatedFamilies$familiesByPk<TRes>
    implements CopyWith$Query$getFamilyRelatedFamilies$familiesByPk<TRes> {
  _CopyWithStubImpl$Query$getFamilyRelatedFamilies$familiesByPk(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? color,
    String? $__typename,
    DateTime? photoUpdatedAt,
    List<Query$getFamilyRelatedFamilies$familiesByPk$children>? children,
    List<Query$getFamilyRelatedFamilies$familiesByPk$parents>? parents,
  }) =>
      _res;
  children(_fn) => _res;
  parents(_fn) => _res;
}

class Query$getFamilyRelatedFamilies$familiesByPk$children {
  Query$getFamilyRelatedFamilies$familiesByPk$children({
    required this.child,
    this.$__typename = 'FamiliesFamilies',
  });

  factory Query$getFamilyRelatedFamilies$familiesByPk$children.fromJson(
      Map<String, dynamic> json) {
    final l$child = json['child'];
    final l$$__typename = json['__typename'];
    return Query$getFamilyRelatedFamilies$familiesByPk$children(
      child: Fragment$Family.fromJson((l$child as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Family child;

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
    if (!(other is Query$getFamilyRelatedFamilies$familiesByPk$children) ||
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

extension UtilityExtension$Query$getFamilyRelatedFamilies$familiesByPk$children
    on Query$getFamilyRelatedFamilies$familiesByPk$children {
  CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children<
          Query$getFamilyRelatedFamilies$familiesByPk$children>
      get copyWith =>
          CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children<
    TRes> {
  factory CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children(
    Query$getFamilyRelatedFamilies$familiesByPk$children instance,
    TRes Function(Query$getFamilyRelatedFamilies$familiesByPk$children) then,
  ) = _CopyWithImpl$Query$getFamilyRelatedFamilies$familiesByPk$children;

  factory CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFamilyRelatedFamilies$familiesByPk$children;

  TRes call({
    Fragment$Family? child,
    String? $__typename,
  });
  CopyWith$Fragment$Family<TRes> get child;
}

class _CopyWithImpl$Query$getFamilyRelatedFamilies$familiesByPk$children<TRes>
    implements
        CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children<TRes> {
  _CopyWithImpl$Query$getFamilyRelatedFamilies$familiesByPk$children(
    this._instance,
    this._then,
  );

  final Query$getFamilyRelatedFamilies$familiesByPk$children _instance;

  final TRes Function(Query$getFamilyRelatedFamilies$familiesByPk$children)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? child = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFamilyRelatedFamilies$familiesByPk$children(
        child: child == _undefined || child == null
            ? _instance.child
            : (child as Fragment$Family),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Family<TRes> get child {
    final local$child = _instance.child;
    return CopyWith$Fragment$Family(local$child, (e) => call(child: e));
  }
}

class _CopyWithStubImpl$Query$getFamilyRelatedFamilies$familiesByPk$children<
        TRes>
    implements
        CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$children<TRes> {
  _CopyWithStubImpl$Query$getFamilyRelatedFamilies$familiesByPk$children(
      this._res);

  TRes _res;

  call({
    Fragment$Family? child,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Family<TRes> get child =>
      CopyWith$Fragment$Family.stub(_res);
}

class Query$getFamilyRelatedFamilies$familiesByPk$parents {
  Query$getFamilyRelatedFamilies$familiesByPk$parents({
    required this.parent,
    this.$__typename = 'FamiliesFamilies',
  });

  factory Query$getFamilyRelatedFamilies$familiesByPk$parents.fromJson(
      Map<String, dynamic> json) {
    final l$parent = json['parent'];
    final l$$__typename = json['__typename'];
    return Query$getFamilyRelatedFamilies$familiesByPk$parents(
      parent: Fragment$Family.fromJson((l$parent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Family parent;

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
    if (!(other is Query$getFamilyRelatedFamilies$familiesByPk$parents) ||
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

extension UtilityExtension$Query$getFamilyRelatedFamilies$familiesByPk$parents
    on Query$getFamilyRelatedFamilies$familiesByPk$parents {
  CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents<
          Query$getFamilyRelatedFamilies$familiesByPk$parents>
      get copyWith =>
          CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents<
    TRes> {
  factory CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents(
    Query$getFamilyRelatedFamilies$familiesByPk$parents instance,
    TRes Function(Query$getFamilyRelatedFamilies$familiesByPk$parents) then,
  ) = _CopyWithImpl$Query$getFamilyRelatedFamilies$familiesByPk$parents;

  factory CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getFamilyRelatedFamilies$familiesByPk$parents;

  TRes call({
    Fragment$Family? parent,
    String? $__typename,
  });
  CopyWith$Fragment$Family<TRes> get parent;
}

class _CopyWithImpl$Query$getFamilyRelatedFamilies$familiesByPk$parents<TRes>
    implements
        CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents<TRes> {
  _CopyWithImpl$Query$getFamilyRelatedFamilies$familiesByPk$parents(
    this._instance,
    this._then,
  );

  final Query$getFamilyRelatedFamilies$familiesByPk$parents _instance;

  final TRes Function(Query$getFamilyRelatedFamilies$familiesByPk$parents)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? parent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getFamilyRelatedFamilies$familiesByPk$parents(
        parent: parent == _undefined || parent == null
            ? _instance.parent
            : (parent as Fragment$Family),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Family<TRes> get parent {
    final local$parent = _instance.parent;
    return CopyWith$Fragment$Family(local$parent, (e) => call(parent: e));
  }
}

class _CopyWithStubImpl$Query$getFamilyRelatedFamilies$familiesByPk$parents<
        TRes>
    implements
        CopyWith$Query$getFamilyRelatedFamilies$familiesByPk$parents<TRes> {
  _CopyWithStubImpl$Query$getFamilyRelatedFamilies$familiesByPk$parents(
      this._res);

  TRes _res;

  call({
    Fragment$Family? parent,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Family<TRes> get parent =>
      CopyWith$Fragment$Family.stub(_res);
}
