import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Query_familyRoles {
  Query_familyRoles({required this.personTypes});

  factory Query_familyRoles.fromJson(Map<String, dynamic> json) {
    final l$personTypes = json['personTypes'];
    return Query_familyRoles(
      personTypes: (l$personTypes as List<dynamic>)
          .map(
            (e) => Query_familyRoles_personTypes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
    );
  }

  final List<Query_familyRoles_personTypes> personTypes;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$personTypes = personTypes;
    _resultData['personTypes'] = l$personTypes.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$personTypes = personTypes;
    return Object.hashAll([Object.hashAll(l$personTypes.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familyRoles || runtimeType != other.runtimeType) {
      return false;
    }
    final l$personTypes = personTypes;
    final lOther$personTypes = other.personTypes;
    if (l$personTypes.length != lOther$personTypes.length) {
      return false;
    }
    for (int i = 0; i < l$personTypes.length; i++) {
      final l$personTypes$entry = l$personTypes[i];
      final lOther$personTypes$entry = lOther$personTypes[i];
      if (l$personTypes$entry != lOther$personTypes$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension_Query_familyRoles on Query_familyRoles {
  CopyWith_Query_familyRoles<Query_familyRoles> get copyWith =>
      CopyWith_Query_familyRoles(this, (i) => i);
}

abstract class CopyWith_Query_familyRoles<TRes> {
  factory CopyWith_Query_familyRoles(
    Query_familyRoles instance,
    TRes Function(Query_familyRoles) then,
  ) = _CopyWithImpl_Query_familyRoles;

  factory CopyWith_Query_familyRoles.stub(TRes res) =
      _CopyWithStubImpl_Query_familyRoles;

  TRes call({List<Query_familyRoles_personTypes>? personTypes});
  TRes personTypes(
    Iterable<Query_familyRoles_personTypes> Function(
      Iterable<
        CopyWith_Query_familyRoles_personTypes<Query_familyRoles_personTypes>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl_Query_familyRoles<TRes>
    implements CopyWith_Query_familyRoles<TRes> {
  _CopyWithImpl_Query_familyRoles(this._instance, this._then);

  final Query_familyRoles _instance;

  final TRes Function(Query_familyRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? personTypes = _undefined}) => _then(
    Query_familyRoles(
      personTypes: personTypes == _undefined || personTypes == null
          ? _instance.personTypes
          : (personTypes as List<Query_familyRoles_personTypes>),
    ),
  );

  TRes personTypes(
    Iterable<Query_familyRoles_personTypes> Function(
      Iterable<
        CopyWith_Query_familyRoles_personTypes<Query_familyRoles_personTypes>
      >,
    )
    _fn,
  ) => call(
    personTypes: _fn(
      _instance.personTypes.map(
        (e) => CopyWith_Query_familyRoles_personTypes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl_Query_familyRoles<TRes>
    implements CopyWith_Query_familyRoles<TRes> {
  _CopyWithStubImpl_Query_familyRoles(this._res);

  TRes _res;

  call({List<Query_familyRoles_personTypes>? personTypes}) => _res;

  personTypes(_fn) => _res;
}

const documentNodeQueryfamilyRoles = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'familyRoles'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'personTypes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'isFamilyAdmin'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value: BooleanValueNode(value: true),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'order'),
                      value: EnumValueNode(name: NameNode(value: 'ASC')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'order'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isFamilyAdmin'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isHidden'),
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
  ],
);

class Query_familyRoles_personTypes {
  Query_familyRoles_personTypes({
    required this.id,
    required this.name,
    required this.order,
    required this.isFamilyAdmin,
    required this.isHidden,
    this.$__typename = 'PersonTypes',
  });

  factory Query_familyRoles_personTypes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$isFamilyAdmin = json['isFamilyAdmin'];
    final l$isHidden = json['isHidden'];
    final l$$__typename = json['__typename'];
    return Query_familyRoles_personTypes(
      id: stringToUuid(l$id),
      name: (l$name as String),
      order: (l$order as int),
      isFamilyAdmin: (l$isFamilyAdmin as bool),
      isHidden: (l$isHidden as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int order;

  final bool isFamilyAdmin;

  final bool isHidden;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isFamilyAdmin = isFamilyAdmin;
    _resultData['isFamilyAdmin'] = l$isFamilyAdmin;
    final l$isHidden = isHidden;
    _resultData['isHidden'] = l$isHidden;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$isHidden = isHidden;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$isFamilyAdmin,
      l$isHidden,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query_familyRoles_personTypes ||
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
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
      return false;
    }
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (l$isHidden != lOther$isHidden) {
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

extension UtilityExtension_Query_familyRoles_personTypes
    on Query_familyRoles_personTypes {
  CopyWith_Query_familyRoles_personTypes<Query_familyRoles_personTypes>
  get copyWith => CopyWith_Query_familyRoles_personTypes(this, (i) => i);
}

abstract class CopyWith_Query_familyRoles_personTypes<TRes> {
  factory CopyWith_Query_familyRoles_personTypes(
    Query_familyRoles_personTypes instance,
    TRes Function(Query_familyRoles_personTypes) then,
  ) = _CopyWithImpl_Query_familyRoles_personTypes;

  factory CopyWith_Query_familyRoles_personTypes.stub(TRes res) =
      _CopyWithStubImpl_Query_familyRoles_personTypes;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  });
}

class _CopyWithImpl_Query_familyRoles_personTypes<TRes>
    implements CopyWith_Query_familyRoles_personTypes<TRes> {
  _CopyWithImpl_Query_familyRoles_personTypes(this._instance, this._then);

  final Query_familyRoles_personTypes _instance;

  final TRes Function(Query_familyRoles_personTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? isHidden = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query_familyRoles_personTypes(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      isFamilyAdmin: isFamilyAdmin == _undefined || isFamilyAdmin == null
          ? _instance.isFamilyAdmin
          : (isFamilyAdmin as bool),
      isHidden: isHidden == _undefined || isHidden == null
          ? _instance.isHidden
          : (isHidden as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Query_familyRoles_personTypes<TRes>
    implements CopyWith_Query_familyRoles_personTypes<TRes> {
  _CopyWithStubImpl_Query_familyRoles_personTypes(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    bool? isFamilyAdmin,
    bool? isHidden,
    String? $__typename,
  }) => _res;
}
