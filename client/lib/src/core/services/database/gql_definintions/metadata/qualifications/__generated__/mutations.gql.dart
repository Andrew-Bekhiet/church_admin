import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createQualification {
  factory Variables_Mutation_createQualification({
    required Input_QualificationsInsertInput object,
  }) => Variables_Mutation_createQualification._({r'object': object});

  Variables_Mutation_createQualification._(this._$data);

  factory Variables_Mutation_createQualification.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_QualificationsInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_createQualification._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_QualificationsInsertInput get object =>
      (_$data['object'] as Input_QualificationsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createQualification<
    Variables_Mutation_createQualification
  >
  get copyWith =>
      CopyWith_Variables_Mutation_createQualification(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createQualification ||
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

abstract class CopyWith_Variables_Mutation_createQualification<TRes> {
  factory CopyWith_Variables_Mutation_createQualification(
    Variables_Mutation_createQualification instance,
    TRes Function(Variables_Mutation_createQualification) then,
  ) = _CopyWithImpl_Variables_Mutation_createQualification;

  factory CopyWith_Variables_Mutation_createQualification.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createQualification;

  TRes call({Input_QualificationsInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createQualification<TRes>
    implements CopyWith_Variables_Mutation_createQualification<TRes> {
  _CopyWithImpl_Variables_Mutation_createQualification(
    this._instance,
    this._then,
  );

  final Variables_Mutation_createQualification _instance;

  final TRes Function(Variables_Mutation_createQualification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_createQualification._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_QualificationsInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createQualification<TRes>
    implements CopyWith_Variables_Mutation_createQualification<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createQualification(this._res);

  TRes _res;

  call({Input_QualificationsInsertInput? object}) => _res;
}

class Mutation_createQualification {
  Mutation_createQualification({
    this.insertQualificationsOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_createQualification.fromJson(Map<String, dynamic> json) {
    final l$insertQualificationsOne = json['insertQualificationsOne'];
    final l$$__typename = json['__typename'];
    return Mutation_createQualification(
      insertQualificationsOne: l$insertQualificationsOne == null
          ? null
          : Mutation_createQualification_insertQualificationsOne.fromJson(
              (l$insertQualificationsOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createQualification_insertQualificationsOne?
  insertQualificationsOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertQualificationsOne = insertQualificationsOne;
    _resultData['insertQualificationsOne'] = l$insertQualificationsOne
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertQualificationsOne = insertQualificationsOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertQualificationsOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createQualification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertQualificationsOne = insertQualificationsOne;
    final lOther$insertQualificationsOne = other.insertQualificationsOne;
    if (l$insertQualificationsOne != lOther$insertQualificationsOne) {
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

extension UtilityExtension_Mutation_createQualification
    on Mutation_createQualification {
  CopyWith_Mutation_createQualification<Mutation_createQualification>
  get copyWith => CopyWith_Mutation_createQualification(this, (i) => i);
}

abstract class CopyWith_Mutation_createQualification<TRes> {
  factory CopyWith_Mutation_createQualification(
    Mutation_createQualification instance,
    TRes Function(Mutation_createQualification) then,
  ) = _CopyWithImpl_Mutation_createQualification;

  factory CopyWith_Mutation_createQualification.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createQualification;

  TRes call({
    Mutation_createQualification_insertQualificationsOne?
    insertQualificationsOne,
    String? $__typename,
  });
  CopyWith_Mutation_createQualification_insertQualificationsOne<TRes>
  get insertQualificationsOne;
}

class _CopyWithImpl_Mutation_createQualification<TRes>
    implements CopyWith_Mutation_createQualification<TRes> {
  _CopyWithImpl_Mutation_createQualification(this._instance, this._then);

  final Mutation_createQualification _instance;

  final TRes Function(Mutation_createQualification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertQualificationsOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createQualification(
      insertQualificationsOne: insertQualificationsOne == _undefined
          ? _instance.insertQualificationsOne
          : (insertQualificationsOne
                as Mutation_createQualification_insertQualificationsOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createQualification_insertQualificationsOne<TRes>
  get insertQualificationsOne {
    final local$insertQualificationsOne = _instance.insertQualificationsOne;
    return local$insertQualificationsOne == null
        ? CopyWith_Mutation_createQualification_insertQualificationsOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_createQualification_insertQualificationsOne(
            local$insertQualificationsOne,
            (e) => call(insertQualificationsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createQualification<TRes>
    implements CopyWith_Mutation_createQualification<TRes> {
  _CopyWithStubImpl_Mutation_createQualification(this._res);

  TRes _res;

  call({
    Mutation_createQualification_insertQualificationsOne?
    insertQualificationsOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createQualification_insertQualificationsOne<TRes>
  get insertQualificationsOne =>
      CopyWith_Mutation_createQualification_insertQualificationsOne.stub(_res);
}

const documentNodeMutationcreateQualification = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createQualification'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'QualificationsInsertInput'),
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
            name: NameNode(value: 'insertQualificationsOne'),
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
                        name: NameNode(value: 'qualifications_name_key'),
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

class Mutation_createQualification_insertQualificationsOne {
  Mutation_createQualification_insertQualificationsOne({
    required this.id,
    required this.name,
    this.$__typename = 'Qualifications',
  });

  factory Mutation_createQualification_insertQualificationsOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_createQualification_insertQualificationsOne(
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
    if (other is! Mutation_createQualification_insertQualificationsOne ||
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

extension UtilityExtension_Mutation_createQualification_insertQualificationsOne
    on Mutation_createQualification_insertQualificationsOne {
  CopyWith_Mutation_createQualification_insertQualificationsOne<
    Mutation_createQualification_insertQualificationsOne
  >
  get copyWith => CopyWith_Mutation_createQualification_insertQualificationsOne(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_createQualification_insertQualificationsOne<
  TRes
> {
  factory CopyWith_Mutation_createQualification_insertQualificationsOne(
    Mutation_createQualification_insertQualificationsOne instance,
    TRes Function(Mutation_createQualification_insertQualificationsOne) then,
  ) = _CopyWithImpl_Mutation_createQualification_insertQualificationsOne;

  factory CopyWith_Mutation_createQualification_insertQualificationsOne.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_createQualification_insertQualificationsOne;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Mutation_createQualification_insertQualificationsOne<TRes>
    implements
        CopyWith_Mutation_createQualification_insertQualificationsOne<TRes> {
  _CopyWithImpl_Mutation_createQualification_insertQualificationsOne(
    this._instance,
    this._then,
  );

  final Mutation_createQualification_insertQualificationsOne _instance;

  final TRes Function(Mutation_createQualification_insertQualificationsOne)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createQualification_insertQualificationsOne(
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

class _CopyWithStubImpl_Mutation_createQualification_insertQualificationsOne<
  TRes
>
    implements
        CopyWith_Mutation_createQualification_insertQualificationsOne<TRes> {
  _CopyWithStubImpl_Mutation_createQualification_insertQualificationsOne(
    this._res,
  );

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}
