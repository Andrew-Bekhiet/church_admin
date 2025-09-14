import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createPersonType {
  factory Variables_Mutation_createPersonType({
    required Input_PersonTypesInsertInput object,
  }) => Variables_Mutation_createPersonType._({r'object': object});

  Variables_Mutation_createPersonType._(this._$data);

  factory Variables_Mutation_createPersonType.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_PersonTypesInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_createPersonType._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonTypesInsertInput get object =>
      (_$data['object'] as Input_PersonTypesInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createPersonType<
    Variables_Mutation_createPersonType
  >
  get copyWith => CopyWith_Variables_Mutation_createPersonType(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createPersonType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$object = object;
    final lOther$object = other.object;
    if (l$object != lOther$object) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$object = object;
    return Object.hashAll([l$object]);
  }
}

abstract class CopyWith_Variables_Mutation_createPersonType<TRes> {
  factory CopyWith_Variables_Mutation_createPersonType(
    Variables_Mutation_createPersonType instance,
    TRes Function(Variables_Mutation_createPersonType) then,
  ) = _CopyWithImpl_Variables_Mutation_createPersonType;

  factory CopyWith_Variables_Mutation_createPersonType.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createPersonType;

  TRes call({Input_PersonTypesInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createPersonType<TRes>
    implements CopyWith_Variables_Mutation_createPersonType<TRes> {
  _CopyWithImpl_Variables_Mutation_createPersonType(this._instance, this._then);

  final Variables_Mutation_createPersonType _instance;

  final TRes Function(Variables_Mutation_createPersonType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_createPersonType._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_PersonTypesInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createPersonType<TRes>
    implements CopyWith_Variables_Mutation_createPersonType<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createPersonType(this._res);

  TRes _res;

  call({Input_PersonTypesInsertInput? object}) => _res;
}

class Mutation_createPersonType {
  Mutation_createPersonType({
    this.insertPersonTypesOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_createPersonType.fromJson(Map<String, dynamic> json) {
    final l$insertPersonTypesOne = json['insertPersonTypesOne'];
    final l$$__typename = json['__typename'];
    return Mutation_createPersonType(
      insertPersonTypesOne: l$insertPersonTypesOne == null
          ? null
          : Mutation_createPersonType_insertPersonTypesOne.fromJson(
              (l$insertPersonTypesOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createPersonType_insertPersonTypesOne? insertPersonTypesOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertPersonTypesOne = insertPersonTypesOne;
    _resultData['insertPersonTypesOne'] = l$insertPersonTypesOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertPersonTypesOne = insertPersonTypesOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertPersonTypesOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createPersonType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertPersonTypesOne = insertPersonTypesOne;
    final lOther$insertPersonTypesOne = other.insertPersonTypesOne;
    if (l$insertPersonTypesOne != lOther$insertPersonTypesOne) {
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

extension UtilityExtension_Mutation_createPersonType
    on Mutation_createPersonType {
  CopyWith_Mutation_createPersonType<Mutation_createPersonType> get copyWith =>
      CopyWith_Mutation_createPersonType(this, (i) => i);
}

abstract class CopyWith_Mutation_createPersonType<TRes> {
  factory CopyWith_Mutation_createPersonType(
    Mutation_createPersonType instance,
    TRes Function(Mutation_createPersonType) then,
  ) = _CopyWithImpl_Mutation_createPersonType;

  factory CopyWith_Mutation_createPersonType.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createPersonType;

  TRes call({
    Mutation_createPersonType_insertPersonTypesOne? insertPersonTypesOne,
    String? $__typename,
  });
  CopyWith_Mutation_createPersonType_insertPersonTypesOne<TRes>
  get insertPersonTypesOne;
}

class _CopyWithImpl_Mutation_createPersonType<TRes>
    implements CopyWith_Mutation_createPersonType<TRes> {
  _CopyWithImpl_Mutation_createPersonType(this._instance, this._then);

  final Mutation_createPersonType _instance;

  final TRes Function(Mutation_createPersonType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertPersonTypesOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createPersonType(
      insertPersonTypesOne: insertPersonTypesOne == _undefined
          ? _instance.insertPersonTypesOne
          : (insertPersonTypesOne
                as Mutation_createPersonType_insertPersonTypesOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createPersonType_insertPersonTypesOne<TRes>
  get insertPersonTypesOne {
    final local$insertPersonTypesOne = _instance.insertPersonTypesOne;
    return local$insertPersonTypesOne == null
        ? CopyWith_Mutation_createPersonType_insertPersonTypesOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_createPersonType_insertPersonTypesOne(
            local$insertPersonTypesOne,
            (e) => call(insertPersonTypesOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createPersonType<TRes>
    implements CopyWith_Mutation_createPersonType<TRes> {
  _CopyWithStubImpl_Mutation_createPersonType(this._res);

  TRes _res;

  call({
    Mutation_createPersonType_insertPersonTypesOne? insertPersonTypesOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createPersonType_insertPersonTypesOne<TRes>
  get insertPersonTypesOne =>
      CopyWith_Mutation_createPersonType_insertPersonTypesOne.stub(_res);
}

const documentNodeMutationcreatePersonType = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createPersonType'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'PersonTypesInsertInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'insertPersonTypesOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: VariableNode(name: NameNode(value: 'object')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onConflict'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'constraint'),
                      value: EnumValueNode(
                        name: NameNode(value: 'person_types_name_key'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'updateColumns'),
                      value: EnumValueNode(name: NameNode(value: 'name')),
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
                  name: NameNode(value: 'isHidden'),
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
);

class Mutation_createPersonType_insertPersonTypesOne {
  Mutation_createPersonType_insertPersonTypesOne({
    required this.id,
    required this.name,
    required this.order,
    required this.isHidden,
    required this.isFamilyAdmin,
    this.$__typename = 'PersonTypes',
  });

  factory Mutation_createPersonType_insertPersonTypesOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$isHidden = json['isHidden'];
    final l$isFamilyAdmin = json['isFamilyAdmin'];
    final l$$__typename = json['__typename'];
    return Mutation_createPersonType_insertPersonTypesOne(
      id: stringToUuid(l$id),
      name: (l$name as String),
      order: (l$order as int),
      isHidden: (l$isHidden as bool),
      isFamilyAdmin: (l$isFamilyAdmin as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final int order;

  final bool isHidden;

  final bool isFamilyAdmin;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$isHidden = isHidden;
    _resultData['isHidden'] = l$isHidden;
    final l$isFamilyAdmin = isFamilyAdmin;
    _resultData['isFamilyAdmin'] = l$isFamilyAdmin;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$isHidden = isHidden;
    final l$isFamilyAdmin = isFamilyAdmin;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$isHidden,
      l$isFamilyAdmin,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createPersonType_insertPersonTypesOne ||
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
    final l$isHidden = isHidden;
    final lOther$isHidden = other.isHidden;
    if (l$isHidden != lOther$isHidden) {
      return false;
    }
    final l$isFamilyAdmin = isFamilyAdmin;
    final lOther$isFamilyAdmin = other.isFamilyAdmin;
    if (l$isFamilyAdmin != lOther$isFamilyAdmin) {
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

extension UtilityExtension_Mutation_createPersonType_insertPersonTypesOne
    on Mutation_createPersonType_insertPersonTypesOne {
  CopyWith_Mutation_createPersonType_insertPersonTypesOne<
    Mutation_createPersonType_insertPersonTypesOne
  >
  get copyWith =>
      CopyWith_Mutation_createPersonType_insertPersonTypesOne(this, (i) => i);
}

abstract class CopyWith_Mutation_createPersonType_insertPersonTypesOne<TRes> {
  factory CopyWith_Mutation_createPersonType_insertPersonTypesOne(
    Mutation_createPersonType_insertPersonTypesOne instance,
    TRes Function(Mutation_createPersonType_insertPersonTypesOne) then,
  ) = _CopyWithImpl_Mutation_createPersonType_insertPersonTypesOne;

  factory CopyWith_Mutation_createPersonType_insertPersonTypesOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_createPersonType_insertPersonTypesOne;

  TRes call({
    UuidValue? id,
    String? name,
    int? order,
    bool? isHidden,
    bool? isFamilyAdmin,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_createPersonType_insertPersonTypesOne<TRes>
    implements CopyWith_Mutation_createPersonType_insertPersonTypesOne<TRes> {
  _CopyWithImpl_Mutation_createPersonType_insertPersonTypesOne(
    this._instance,
    this._then,
  );

  final Mutation_createPersonType_insertPersonTypesOne _instance;

  final TRes Function(Mutation_createPersonType_insertPersonTypesOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? isHidden = _undefined,
    Object? isFamilyAdmin = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createPersonType_insertPersonTypesOne(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      order: order == _undefined || order == null
          ? _instance.order
          : (order as int),
      isHidden: isHidden == _undefined || isHidden == null
          ? _instance.isHidden
          : (isHidden as bool),
      isFamilyAdmin: isFamilyAdmin == _undefined || isFamilyAdmin == null
          ? _instance.isFamilyAdmin
          : (isFamilyAdmin as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_createPersonType_insertPersonTypesOne<TRes>
    implements CopyWith_Mutation_createPersonType_insertPersonTypesOne<TRes> {
  _CopyWithStubImpl_Mutation_createPersonType_insertPersonTypesOne(this._res);

  TRes _res;

  call({
    UuidValue? id,
    String? name,
    int? order,
    bool? isHidden,
    bool? isFamilyAdmin,
    String? $__typename,
  }) => _res;
}
