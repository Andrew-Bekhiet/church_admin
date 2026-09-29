import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createSchool {
  factory Variables_Mutation_createSchool({
    required Input_SchoolsInsertInput object,
  }) => Variables_Mutation_createSchool._({r'object': object});

  Variables_Mutation_createSchool._(this._$data);

  factory Variables_Mutation_createSchool.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_SchoolsInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_createSchool._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_SchoolsInsertInput get object =>
      (_$data['object'] as Input_SchoolsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createSchool<Variables_Mutation_createSchool>
  get copyWith => CopyWith_Variables_Mutation_createSchool(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createSchool ||
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

abstract class CopyWith_Variables_Mutation_createSchool<TRes> {
  factory CopyWith_Variables_Mutation_createSchool(
    Variables_Mutation_createSchool instance,
    TRes Function(Variables_Mutation_createSchool) then,
  ) = _CopyWithImpl_Variables_Mutation_createSchool;

  factory CopyWith_Variables_Mutation_createSchool.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createSchool;

  TRes call({Input_SchoolsInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createSchool<TRes>
    implements CopyWith_Variables_Mutation_createSchool<TRes> {
  _CopyWithImpl_Variables_Mutation_createSchool(this._instance, this._then);

  final Variables_Mutation_createSchool _instance;

  final TRes Function(Variables_Mutation_createSchool) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_createSchool._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_SchoolsInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createSchool<TRes>
    implements CopyWith_Variables_Mutation_createSchool<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createSchool(this._res);

  TRes _res;

  call({Input_SchoolsInsertInput? object}) => _res;
}

class Mutation_createSchool {
  Mutation_createSchool({this.insertSchoolsOne});

  factory Mutation_createSchool.fromJson(Map<String, dynamic> json) {
    final l$insertSchoolsOne = json['insertSchoolsOne'];
    return Mutation_createSchool(
      insertSchoolsOne: l$insertSchoolsOne == null
          ? null
          : Mutation_createSchool_insertSchoolsOne.fromJson(
              (l$insertSchoolsOne as Map<String, dynamic>),
            ),
    );
  }

  final Mutation_createSchool_insertSchoolsOne? insertSchoolsOne;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertSchoolsOne = insertSchoolsOne;
    _resultData['insertSchoolsOne'] = l$insertSchoolsOne?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertSchoolsOne = insertSchoolsOne;
    return Object.hashAll([l$insertSchoolsOne]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createSchool || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertSchoolsOne = insertSchoolsOne;
    final lOther$insertSchoolsOne = other.insertSchoolsOne;
    if (l$insertSchoolsOne != lOther$insertSchoolsOne) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_createSchool on Mutation_createSchool {
  CopyWith_Mutation_createSchool<Mutation_createSchool> get copyWith =>
      CopyWith_Mutation_createSchool(this, (i) => i);
}

abstract class CopyWith_Mutation_createSchool<TRes> {
  factory CopyWith_Mutation_createSchool(
    Mutation_createSchool instance,
    TRes Function(Mutation_createSchool) then,
  ) = _CopyWithImpl_Mutation_createSchool;

  factory CopyWith_Mutation_createSchool.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createSchool;

  TRes call({Mutation_createSchool_insertSchoolsOne? insertSchoolsOne});
  CopyWith_Mutation_createSchool_insertSchoolsOne<TRes> get insertSchoolsOne;
}

class _CopyWithImpl_Mutation_createSchool<TRes>
    implements CopyWith_Mutation_createSchool<TRes> {
  _CopyWithImpl_Mutation_createSchool(this._instance, this._then);

  final Mutation_createSchool _instance;

  final TRes Function(Mutation_createSchool) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? insertSchoolsOne = _undefined}) => _then(
    Mutation_createSchool(
      insertSchoolsOne: insertSchoolsOne == _undefined
          ? _instance.insertSchoolsOne
          : (insertSchoolsOne as Mutation_createSchool_insertSchoolsOne?),
    ),
  );

  CopyWith_Mutation_createSchool_insertSchoolsOne<TRes> get insertSchoolsOne {
    final local$insertSchoolsOne = _instance.insertSchoolsOne;
    return local$insertSchoolsOne == null
        ? CopyWith_Mutation_createSchool_insertSchoolsOne.stub(_then(_instance))
        : CopyWith_Mutation_createSchool_insertSchoolsOne(
            local$insertSchoolsOne,
            (e) => call(insertSchoolsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createSchool<TRes>
    implements CopyWith_Mutation_createSchool<TRes> {
  _CopyWithStubImpl_Mutation_createSchool(this._res);

  TRes _res;

  call({Mutation_createSchool_insertSchoolsOne? insertSchoolsOne}) => _res;

  CopyWith_Mutation_createSchool_insertSchoolsOne<TRes> get insertSchoolsOne =>
      CopyWith_Mutation_createSchool_insertSchoolsOne.stub(_res);
}

const documentNodeMutationcreateSchool = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createSchool'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'SchoolsInsertInput'),
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
            name: NameNode(value: 'insertSchoolsOne'),
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
                        name: NameNode(value: 'schools_name_key'),
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
        ],
      ),
    ),
  ],
);

class Mutation_createSchool_insertSchoolsOne {
  Mutation_createSchool_insertSchoolsOne({
    required this.id,
    required this.name,
    this.$__typename = 'Schools',
  });

  factory Mutation_createSchool_insertSchoolsOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_createSchool_insertSchoolsOne(
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
    if (other is! Mutation_createSchool_insertSchoolsOne ||
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

extension UtilityExtension_Mutation_createSchool_insertSchoolsOne
    on Mutation_createSchool_insertSchoolsOne {
  CopyWith_Mutation_createSchool_insertSchoolsOne<
    Mutation_createSchool_insertSchoolsOne
  >
  get copyWith =>
      CopyWith_Mutation_createSchool_insertSchoolsOne(this, (i) => i);
}

abstract class CopyWith_Mutation_createSchool_insertSchoolsOne<TRes> {
  factory CopyWith_Mutation_createSchool_insertSchoolsOne(
    Mutation_createSchool_insertSchoolsOne instance,
    TRes Function(Mutation_createSchool_insertSchoolsOne) then,
  ) = _CopyWithImpl_Mutation_createSchool_insertSchoolsOne;

  factory CopyWith_Mutation_createSchool_insertSchoolsOne.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createSchool_insertSchoolsOne;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Mutation_createSchool_insertSchoolsOne<TRes>
    implements CopyWith_Mutation_createSchool_insertSchoolsOne<TRes> {
  _CopyWithImpl_Mutation_createSchool_insertSchoolsOne(
    this._instance,
    this._then,
  );

  final Mutation_createSchool_insertSchoolsOne _instance;

  final TRes Function(Mutation_createSchool_insertSchoolsOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createSchool_insertSchoolsOne(
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

class _CopyWithStubImpl_Mutation_createSchool_insertSchoolsOne<TRes>
    implements CopyWith_Mutation_createSchool_insertSchoolsOne<TRes> {
  _CopyWithStubImpl_Mutation_createSchool_insertSchoolsOne(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}
