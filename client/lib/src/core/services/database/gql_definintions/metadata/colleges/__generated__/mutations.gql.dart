import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createCollege {
  factory Variables_Mutation_createCollege({
    required Input_CollegesInsertInput object,
  }) => Variables_Mutation_createCollege._({r'object': object});

  Variables_Mutation_createCollege._(this._$data);

  factory Variables_Mutation_createCollege.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_CollegesInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_createCollege._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CollegesInsertInput get object =>
      (_$data['object'] as Input_CollegesInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createCollege<Variables_Mutation_createCollege>
  get copyWith => CopyWith_Variables_Mutation_createCollege(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createCollege ||
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

abstract class CopyWith_Variables_Mutation_createCollege<TRes> {
  factory CopyWith_Variables_Mutation_createCollege(
    Variables_Mutation_createCollege instance,
    TRes Function(Variables_Mutation_createCollege) then,
  ) = _CopyWithImpl_Variables_Mutation_createCollege;

  factory CopyWith_Variables_Mutation_createCollege.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createCollege;

  TRes call({Input_CollegesInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createCollege<TRes>
    implements CopyWith_Variables_Mutation_createCollege<TRes> {
  _CopyWithImpl_Variables_Mutation_createCollege(this._instance, this._then);

  final Variables_Mutation_createCollege _instance;

  final TRes Function(Variables_Mutation_createCollege) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_createCollege._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_CollegesInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createCollege<TRes>
    implements CopyWith_Variables_Mutation_createCollege<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createCollege(this._res);

  TRes _res;

  call({Input_CollegesInsertInput? object}) => _res;
}

class Mutation_createCollege {
  Mutation_createCollege({
    this.insertCollegesOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_createCollege.fromJson(Map<String, dynamic> json) {
    final l$insertCollegesOne = json['insertCollegesOne'];
    final l$$__typename = json['__typename'];
    return Mutation_createCollege(
      insertCollegesOne: l$insertCollegesOne == null
          ? null
          : Mutation_createCollege_insertCollegesOne.fromJson(
              (l$insertCollegesOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createCollege_insertCollegesOne? insertCollegesOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertCollegesOne = insertCollegesOne;
    _resultData['insertCollegesOne'] = l$insertCollegesOne?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertCollegesOne = insertCollegesOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertCollegesOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createCollege || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertCollegesOne = insertCollegesOne;
    final lOther$insertCollegesOne = other.insertCollegesOne;
    if (l$insertCollegesOne != lOther$insertCollegesOne) {
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

extension UtilityExtension_Mutation_createCollege on Mutation_createCollege {
  CopyWith_Mutation_createCollege<Mutation_createCollege> get copyWith =>
      CopyWith_Mutation_createCollege(this, (i) => i);
}

abstract class CopyWith_Mutation_createCollege<TRes> {
  factory CopyWith_Mutation_createCollege(
    Mutation_createCollege instance,
    TRes Function(Mutation_createCollege) then,
  ) = _CopyWithImpl_Mutation_createCollege;

  factory CopyWith_Mutation_createCollege.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createCollege;

  TRes call({
    Mutation_createCollege_insertCollegesOne? insertCollegesOne,
    String? $__typename,
  });
  CopyWith_Mutation_createCollege_insertCollegesOne<TRes> get insertCollegesOne;
}

class _CopyWithImpl_Mutation_createCollege<TRes>
    implements CopyWith_Mutation_createCollege<TRes> {
  _CopyWithImpl_Mutation_createCollege(this._instance, this._then);

  final Mutation_createCollege _instance;

  final TRes Function(Mutation_createCollege) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertCollegesOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createCollege(
      insertCollegesOne: insertCollegesOne == _undefined
          ? _instance.insertCollegesOne
          : (insertCollegesOne as Mutation_createCollege_insertCollegesOne?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createCollege_insertCollegesOne<TRes>
  get insertCollegesOne {
    final local$insertCollegesOne = _instance.insertCollegesOne;
    return local$insertCollegesOne == null
        ? CopyWith_Mutation_createCollege_insertCollegesOne.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_createCollege_insertCollegesOne(
            local$insertCollegesOne,
            (e) => call(insertCollegesOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createCollege<TRes>
    implements CopyWith_Mutation_createCollege<TRes> {
  _CopyWithStubImpl_Mutation_createCollege(this._res);

  TRes _res;

  call({
    Mutation_createCollege_insertCollegesOne? insertCollegesOne,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createCollege_insertCollegesOne<TRes>
  get insertCollegesOne =>
      CopyWith_Mutation_createCollege_insertCollegesOne.stub(_res);
}

const documentNodeMutationcreateCollege = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createCollege'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'CollegesInsertInput'),
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
            name: NameNode(value: 'insertCollegesOne'),
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
                        name: NameNode(value: 'colleges_name_key'),
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

class Mutation_createCollege_insertCollegesOne {
  Mutation_createCollege_insertCollegesOne({
    required this.id,
    required this.name,
    this.$__typename = 'Colleges',
  });

  factory Mutation_createCollege_insertCollegesOne.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_createCollege_insertCollegesOne(
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
    if (other is! Mutation_createCollege_insertCollegesOne ||
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

extension UtilityExtension_Mutation_createCollege_insertCollegesOne
    on Mutation_createCollege_insertCollegesOne {
  CopyWith_Mutation_createCollege_insertCollegesOne<
    Mutation_createCollege_insertCollegesOne
  >
  get copyWith =>
      CopyWith_Mutation_createCollege_insertCollegesOne(this, (i) => i);
}

abstract class CopyWith_Mutation_createCollege_insertCollegesOne<TRes> {
  factory CopyWith_Mutation_createCollege_insertCollegesOne(
    Mutation_createCollege_insertCollegesOne instance,
    TRes Function(Mutation_createCollege_insertCollegesOne) then,
  ) = _CopyWithImpl_Mutation_createCollege_insertCollegesOne;

  factory CopyWith_Mutation_createCollege_insertCollegesOne.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createCollege_insertCollegesOne;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Mutation_createCollege_insertCollegesOne<TRes>
    implements CopyWith_Mutation_createCollege_insertCollegesOne<TRes> {
  _CopyWithImpl_Mutation_createCollege_insertCollegesOne(
    this._instance,
    this._then,
  );

  final Mutation_createCollege_insertCollegesOne _instance;

  final TRes Function(Mutation_createCollege_insertCollegesOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createCollege_insertCollegesOne(
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

class _CopyWithStubImpl_Mutation_createCollege_insertCollegesOne<TRes>
    implements CopyWith_Mutation_createCollege_insertCollegesOne<TRes> {
  _CopyWithStubImpl_Mutation_createCollege_insertCollegesOne(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}
