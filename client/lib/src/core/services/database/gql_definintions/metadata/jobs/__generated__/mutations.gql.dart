import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_createJob {
  factory Variables_Mutation_createJob({
    required Input_JobsInsertInput object,
  }) => Variables_Mutation_createJob._({r'object': object});

  Variables_Mutation_createJob._(this._$data);

  factory Variables_Mutation_createJob.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$object = data['object'];
    result$data['object'] = Input_JobsInsertInput.fromJson(
      (l$object as Map<String, dynamic>),
    );
    return Variables_Mutation_createJob._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_JobsInsertInput get object =>
      (_$data['object'] as Input_JobsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$object = object;
    result$data['object'] = l$object.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createJob<Variables_Mutation_createJob>
  get copyWith => CopyWith_Variables_Mutation_createJob(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createJob ||
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

abstract class CopyWith_Variables_Mutation_createJob<TRes> {
  factory CopyWith_Variables_Mutation_createJob(
    Variables_Mutation_createJob instance,
    TRes Function(Variables_Mutation_createJob) then,
  ) = _CopyWithImpl_Variables_Mutation_createJob;

  factory CopyWith_Variables_Mutation_createJob.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createJob;

  TRes call({Input_JobsInsertInput? object});
}

class _CopyWithImpl_Variables_Mutation_createJob<TRes>
    implements CopyWith_Variables_Mutation_createJob<TRes> {
  _CopyWithImpl_Variables_Mutation_createJob(this._instance, this._then);

  final Variables_Mutation_createJob _instance;

  final TRes Function(Variables_Mutation_createJob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? object = _undefined}) => _then(
    Variables_Mutation_createJob._({
      ..._instance._$data,
      if (object != _undefined && object != null)
        'object': (object as Input_JobsInsertInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createJob<TRes>
    implements CopyWith_Variables_Mutation_createJob<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createJob(this._res);

  TRes _res;

  call({Input_JobsInsertInput? object}) => _res;
}

class Mutation_createJob {
  Mutation_createJob({this.insertJobsOne});

  factory Mutation_createJob.fromJson(Map<String, dynamic> json) {
    final l$insertJobsOne = json['insertJobsOne'];
    return Mutation_createJob(
      insertJobsOne: l$insertJobsOne == null
          ? null
          : Mutation_createJob_insertJobsOne.fromJson(
              (l$insertJobsOne as Map<String, dynamic>),
            ),
    );
  }

  final Mutation_createJob_insertJobsOne? insertJobsOne;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertJobsOne = insertJobsOne;
    _resultData['insertJobsOne'] = l$insertJobsOne?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertJobsOne = insertJobsOne;
    return Object.hashAll([l$insertJobsOne]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createJob || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertJobsOne = insertJobsOne;
    final lOther$insertJobsOne = other.insertJobsOne;
    if (l$insertJobsOne != lOther$insertJobsOne) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension_Mutation_createJob on Mutation_createJob {
  CopyWith_Mutation_createJob<Mutation_createJob> get copyWith =>
      CopyWith_Mutation_createJob(this, (i) => i);
}

abstract class CopyWith_Mutation_createJob<TRes> {
  factory CopyWith_Mutation_createJob(
    Mutation_createJob instance,
    TRes Function(Mutation_createJob) then,
  ) = _CopyWithImpl_Mutation_createJob;

  factory CopyWith_Mutation_createJob.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createJob;

  TRes call({Mutation_createJob_insertJobsOne? insertJobsOne});
  CopyWith_Mutation_createJob_insertJobsOne<TRes> get insertJobsOne;
}

class _CopyWithImpl_Mutation_createJob<TRes>
    implements CopyWith_Mutation_createJob<TRes> {
  _CopyWithImpl_Mutation_createJob(this._instance, this._then);

  final Mutation_createJob _instance;

  final TRes Function(Mutation_createJob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? insertJobsOne = _undefined}) => _then(
    Mutation_createJob(
      insertJobsOne: insertJobsOne == _undefined
          ? _instance.insertJobsOne
          : (insertJobsOne as Mutation_createJob_insertJobsOne?),
    ),
  );

  CopyWith_Mutation_createJob_insertJobsOne<TRes> get insertJobsOne {
    final local$insertJobsOne = _instance.insertJobsOne;
    return local$insertJobsOne == null
        ? CopyWith_Mutation_createJob_insertJobsOne.stub(_then(_instance))
        : CopyWith_Mutation_createJob_insertJobsOne(
            local$insertJobsOne,
            (e) => call(insertJobsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createJob<TRes>
    implements CopyWith_Mutation_createJob<TRes> {
  _CopyWithStubImpl_Mutation_createJob(this._res);

  TRes _res;

  call({Mutation_createJob_insertJobsOne? insertJobsOne}) => _res;

  CopyWith_Mutation_createJob_insertJobsOne<TRes> get insertJobsOne =>
      CopyWith_Mutation_createJob_insertJobsOne.stub(_res);
}

const documentNodeMutationcreateJob = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createJob'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'object')),
          type: NamedTypeNode(
            name: NameNode(value: 'JobsInsertInput'),
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
            name: NameNode(value: 'insertJobsOne'),
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
                        name: NameNode(value: 'jobs_name_key'),
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

class Mutation_createJob_insertJobsOne {
  Mutation_createJob_insertJobsOne({
    required this.id,
    required this.name,
    this.$__typename = 'Jobs',
  });

  factory Mutation_createJob_insertJobsOne.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation_createJob_insertJobsOne(
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
    if (other is! Mutation_createJob_insertJobsOne ||
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

extension UtilityExtension_Mutation_createJob_insertJobsOne
    on Mutation_createJob_insertJobsOne {
  CopyWith_Mutation_createJob_insertJobsOne<Mutation_createJob_insertJobsOne>
  get copyWith => CopyWith_Mutation_createJob_insertJobsOne(this, (i) => i);
}

abstract class CopyWith_Mutation_createJob_insertJobsOne<TRes> {
  factory CopyWith_Mutation_createJob_insertJobsOne(
    Mutation_createJob_insertJobsOne instance,
    TRes Function(Mutation_createJob_insertJobsOne) then,
  ) = _CopyWithImpl_Mutation_createJob_insertJobsOne;

  factory CopyWith_Mutation_createJob_insertJobsOne.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createJob_insertJobsOne;

  TRes call({UuidValue? id, String? name, String? $__typename});
}

class _CopyWithImpl_Mutation_createJob_insertJobsOne<TRes>
    implements CopyWith_Mutation_createJob_insertJobsOne<TRes> {
  _CopyWithImpl_Mutation_createJob_insertJobsOne(this._instance, this._then);

  final Mutation_createJob_insertJobsOne _instance;

  final TRes Function(Mutation_createJob_insertJobsOne) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createJob_insertJobsOne(
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

class _CopyWithStubImpl_Mutation_createJob_insertJobsOne<TRes>
    implements CopyWith_Mutation_createJob_insertJobsOne<TRes> {
  _CopyWithStubImpl_Mutation_createJob_insertJobsOne(this._res);

  TRes _res;

  call({UuidValue? id, String? name, String? $__typename}) => _res;
}
