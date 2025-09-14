import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createDistrict {
  factory Variables_Mutation_createDistrict({
    required Input_DistrictsInsertInput object,
  }) => Variables_Mutation_createDistrict._({r'object': object});

  Variables_Mutation_createDistrict._(this._$data);

  factory Variables_Mutation_createDistrict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_DistrictsInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_createDistrict._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictsInsertInput get object =>
      (_$data['object'] as Input_DistrictsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createDistrict<Variables_Mutation_createDistrict>
  get copyWith => CopyWith_Variables_Mutation_createDistrict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createDistrict ||
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

abstract class CopyWith_Variables_Mutation_createDistrict<TRes> {
  factory CopyWith_Variables_Mutation_createDistrict(
    Variables_Mutation_createDistrict instance,
    TRes Function(Variables_Mutation_createDistrict) then,
  ) = _CopyWithImpl_Variables_Mutation_createDistrict;

  factory CopyWith_Variables_Mutation_createDistrict.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createDistrict;

  TRes call({Input_DistrictsInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createDistrict<TRes>
    implements CopyWith_Variables_Mutation_createDistrict<TRes> {
  _CopyWithImpl_Variables_Mutation_createDistrict(this._instance, this._then);

  final Variables_Mutation_createDistrict _instance;

  final TRes Function(Variables_Mutation_createDistrict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_createDistrict._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_DistrictsInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createDistrict<TRes>
    implements CopyWith_Variables_Mutation_createDistrict<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createDistrict(this._res);

  TRes _res;

  call({Input_DistrictsInsertInput? object}) => _res;
}

class Mutation_createDistrict {
  Mutation_createDistrict({
    this.insertDistrictsOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_createDistrict.fromJson(Map<String, dynamic> json) {
    final l$insertDistrictsOne = json['insertDistrictsOne'];
    final l$$__typename = json['__typename'];
    return Mutation_createDistrict(
      insertDistrictsOne: l$insertDistrictsOne == null
          ? null
          : Mutation_createDistrict_insertDistrictsOne.fromJson(
              (l$insertDistrictsOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createDistrict_insertDistrictsOne? insertDistrictsOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertDistrictsOne = insertDistrictsOne;
    _resultData['insertDistrictsOne'] = l$insertDistrictsOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertDistrictsOne = insertDistrictsOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertDistrictsOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createDistrict || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertDistrictsOne = insertDistrictsOne;
    final lOther$insertDistrictsOne = other.insertDistrictsOne;
    if (l$insertDistrictsOne != lOther$insertDistrictsOne) {
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

extension UtilityExtension_Mutation_createDistrict on Mutation_createDistrict {
  CopyWith_Mutation_createDistrict<Mutation_createDistrict> get copyWith =>
      CopyWith_Mutation_createDistrict(this, (i) => i);
}

abstract class CopyWith_Mutation_createDistrict<TRes> {
  factory CopyWith_Mutation_createDistrict(
    Mutation_createDistrict instance,
    TRes Function(Mutation_createDistrict) then,
  ) = _CopyWithImpl_Mutation_createDistrict;

  factory CopyWith_Mutation_createDistrict.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createDistrict;

  TRes call({
    Mutation_createDistrict_insertDistrictsOne? insertDistrictsOne,
    String? $__typename,
  });
  CopyWith_Mutation_createDistrict_insertDistrictsOne<TRes>
  get insertDistrictsOne;
}

class _CopyWithImpl_Mutation_createDistrict<TRes>
    implements CopyWith_Mutation_createDistrict<TRes> {
  _CopyWithImpl_Mutation_createDistrict(this._instance, this._then);

  final Mutation_createDistrict _instance;

  final TRes Function(Mutation_createDistrict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertDistrictsOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createDistrict(
      insertDistrictsOne: insertDistrictsOne == _undefined
          ? _instance.insertDistrictsOne
          : (insertDistrictsOne as Mutation_createDistrict_insertDistrictsOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createDistrict_insertDistrictsOne<TRes>
  get insertDistrictsOne {
    final local$insertDistrictsOne = _instance.insertDistrictsOne;
    return local$insertDistrictsOne == null
        ? CopyWith_Mutation_createDistrict_insertDistrictsOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_createDistrict_insertDistrictsOne(
            local$insertDistrictsOne,
            (e) => call(insertDistrictsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createDistrict<TRes>
    implements CopyWith_Mutation_createDistrict<TRes> {
  _CopyWithStubImpl_Mutation_createDistrict(this._res);

  TRes _res;

  call({
    Mutation_createDistrict_insertDistrictsOne? insertDistrictsOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createDistrict_insertDistrictsOne<TRes>
  get insertDistrictsOne =>
      CopyWith_Mutation_createDistrict_insertDistrictsOne.stub(_res);
}

const documentNodeMutationcreateDistrict = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createDistrict'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'DistrictsInsertInput'),
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
            name: NameNode(value: 'insertDistrictsOne'),
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
                        name: NameNode(value: 'districts_unique_name'),
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

class Mutation_createDistrict_insertDistrictsOne {
  Mutation_createDistrict_insertDistrictsOne({
    required this.id,
    required this.name,
    this.$__typename = 'Districts',
  });

  factory Mutation_createDistrict_insertDistrictsOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_createDistrict_insertDistrictsOne(
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
    if (other is! Mutation_createDistrict_insertDistrictsOne ||
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

extension UtilityExtension_Mutation_createDistrict_insertDistrictsOne
    on Mutation_createDistrict_insertDistrictsOne {
  CopyWith_Mutation_createDistrict_insertDistrictsOne<
    Mutation_createDistrict_insertDistrictsOne
  >
  get copyWith =>
      CopyWith_Mutation_createDistrict_insertDistrictsOne(this, (i) => i);
}

abstract class CopyWith_Mutation_createDistrict_insertDistrictsOne<TRes> {
  factory CopyWith_Mutation_createDistrict_insertDistrictsOne(
    Mutation_createDistrict_insertDistrictsOne instance,
    TRes Function(Mutation_createDistrict_insertDistrictsOne) then,
  ) = _CopyWithImpl_Mutation_createDistrict_insertDistrictsOne;

  factory CopyWith_Mutation_createDistrict_insertDistrictsOne.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createDistrict_insertDistrictsOne;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Mutation_createDistrict_insertDistrictsOne<TRes>
    implements CopyWith_Mutation_createDistrict_insertDistrictsOne<TRes> {
  _CopyWithImpl_Mutation_createDistrict_insertDistrictsOne(
    this._instance,
    this._then,
  );

  final Mutation_createDistrict_insertDistrictsOne _instance;

  final TRes Function(Mutation_createDistrict_insertDistrictsOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createDistrict_insertDistrictsOne(
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

class _CopyWithStubImpl_Mutation_createDistrict_insertDistrictsOne<TRes>
    implements CopyWith_Mutation_createDistrict_insertDistrictsOne<TRes> {
  _CopyWithStubImpl_Mutation_createDistrict_insertDistrictsOne(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}
