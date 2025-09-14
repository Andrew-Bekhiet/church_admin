import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createChurch {
  factory Variables_Mutation_createChurch({
    required Input_ChurchesInsertInput object,
  }) => Variables_Mutation_createChurch._({r'object': object});

  Variables_Mutation_createChurch._(this._$data);

  factory Variables_Mutation_createChurch.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_ChurchesInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_createChurch._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ChurchesInsertInput get object =>
      (_$data['object'] as Input_ChurchesInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createChurch<Variables_Mutation_createChurch>
  get copyWith => CopyWith_Variables_Mutation_createChurch(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createChurch ||
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

abstract class CopyWith_Variables_Mutation_createChurch<TRes> {
  factory CopyWith_Variables_Mutation_createChurch(
    Variables_Mutation_createChurch instance,
    TRes Function(Variables_Mutation_createChurch) then,
  ) = _CopyWithImpl_Variables_Mutation_createChurch;

  factory CopyWith_Variables_Mutation_createChurch.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createChurch;

  TRes call({Input_ChurchesInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createChurch<TRes>
    implements CopyWith_Variables_Mutation_createChurch<TRes> {
  _CopyWithImpl_Variables_Mutation_createChurch(this._instance, this._then);

  final Variables_Mutation_createChurch _instance;

  final TRes Function(Variables_Mutation_createChurch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_createChurch._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_ChurchesInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createChurch<TRes>
    implements CopyWith_Variables_Mutation_createChurch<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createChurch(this._res);

  TRes _res;

  call({Input_ChurchesInsertInput? object}) => _res;
}

class Mutation_createChurch {
  Mutation_createChurch({
    this.insertChurchesOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_createChurch.fromJson(Map<String, dynamic> json) {
    final l$insertChurchesOne = json['insertChurchesOne'];
    final l$$__typename = json['__typename'];
    return Mutation_createChurch(
      insertChurchesOne: l$insertChurchesOne == null
          ? null
          : Mutation_createChurch_insertChurchesOne.fromJson(
              (l$insertChurchesOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createChurch_insertChurchesOne? insertChurchesOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertChurchesOne = insertChurchesOne;
    _resultData['insertChurchesOne'] = l$insertChurchesOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertChurchesOne = insertChurchesOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertChurchesOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createChurch || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertChurchesOne = insertChurchesOne;
    final lOther$insertChurchesOne = other.insertChurchesOne;
    if (l$insertChurchesOne != lOther$insertChurchesOne) {
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

extension UtilityExtension_Mutation_createChurch on Mutation_createChurch {
  CopyWith_Mutation_createChurch<Mutation_createChurch> get copyWith =>
      CopyWith_Mutation_createChurch(this, (i) => i);
}

abstract class CopyWith_Mutation_createChurch<TRes> {
  factory CopyWith_Mutation_createChurch(
    Mutation_createChurch instance,
    TRes Function(Mutation_createChurch) then,
  ) = _CopyWithImpl_Mutation_createChurch;

  factory CopyWith_Mutation_createChurch.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createChurch;

  TRes call({
    Mutation_createChurch_insertChurchesOne? insertChurchesOne,
    String? $__typename,
  });
  CopyWith_Mutation_createChurch_insertChurchesOne<TRes> get insertChurchesOne;
}

class _CopyWithImpl_Mutation_createChurch<TRes>
    implements CopyWith_Mutation_createChurch<TRes> {
  _CopyWithImpl_Mutation_createChurch(this._instance, this._then);

  final Mutation_createChurch _instance;

  final TRes Function(Mutation_createChurch) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertChurchesOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createChurch(
      insertChurchesOne: insertChurchesOne == _undefined
          ? _instance.insertChurchesOne
          : (insertChurchesOne as Mutation_createChurch_insertChurchesOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createChurch_insertChurchesOne<TRes> get insertChurchesOne {
    final local$insertChurchesOne = _instance.insertChurchesOne;
    return local$insertChurchesOne == null
        ? CopyWith_Mutation_createChurch_insertChurchesOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_createChurch_insertChurchesOne(
            local$insertChurchesOne,
            (e) => call(insertChurchesOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createChurch<TRes>
    implements CopyWith_Mutation_createChurch<TRes> {
  _CopyWithStubImpl_Mutation_createChurch(this._res);

  TRes _res;

  call({
    Mutation_createChurch_insertChurchesOne? insertChurchesOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createChurch_insertChurchesOne<TRes>
  get insertChurchesOne =>
      CopyWith_Mutation_createChurch_insertChurchesOne.stub(_res);
}

const documentNodeMutationcreateChurch = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createChurch'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'ChurchesInsertInput'),
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
            name: NameNode(value: 'insertChurchesOne'),
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
                        name: NameNode(value: 'churches_name_key'),
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

class Mutation_createChurch_insertChurchesOne {
  Mutation_createChurch_insertChurchesOne({
    required this.id,
    required this.name,
    this.$__typename = 'Churches',
  });

  factory Mutation_createChurch_insertChurchesOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_createChurch_insertChurchesOne(
      id: stringToUuid(l$id),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final UuidValue id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToString(l$id);
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createChurch_insertChurchesOne ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_createChurch_insertChurchesOne
    on Mutation_createChurch_insertChurchesOne {
  CopyWith_Mutation_createChurch_insertChurchesOne<
    Mutation_createChurch_insertChurchesOne
  >
  get copyWith =>
      CopyWith_Mutation_createChurch_insertChurchesOne(this, (i) => i);
}

abstract class CopyWith_Mutation_createChurch_insertChurchesOne<TRes> {
  factory CopyWith_Mutation_createChurch_insertChurchesOne(
    Mutation_createChurch_insertChurchesOne instance,
    TRes Function(Mutation_createChurch_insertChurchesOne) then,
  ) = _CopyWithImpl_Mutation_createChurch_insertChurchesOne;

  factory CopyWith_Mutation_createChurch_insertChurchesOne.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createChurch_insertChurchesOne;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Mutation_createChurch_insertChurchesOne<TRes>
    implements CopyWith_Mutation_createChurch_insertChurchesOne<TRes> {
  _CopyWithImpl_Mutation_createChurch_insertChurchesOne(
    this._instance,
    this._then,
  );

  final Mutation_createChurch_insertChurchesOne _instance;

  final TRes Function(Mutation_createChurch_insertChurchesOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createChurch_insertChurchesOne(
      id: id == _undefined || id == null ? _instance.id : (id as UuidValue),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_createChurch_insertChurchesOne<TRes>
    implements CopyWith_Mutation_createChurch_insertChurchesOne<TRes> {
  _CopyWithStubImpl_Mutation_createChurch_insertChurchesOne(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}
