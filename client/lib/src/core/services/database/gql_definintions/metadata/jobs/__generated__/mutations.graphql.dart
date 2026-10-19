import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createJob {
  factory Variables_Mutation_createJob({required Input_CreateJobInput input}) =>
      Variables_Mutation_createJob._({r'input': input});

  Variables_Mutation_createJob._(this._$data);

  factory Variables_Mutation_createJob.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateJobInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createJob._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateJobInput get input => (_$data['input'] as Input_CreateJobInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith_Variables_Mutation_createJob<TRes> {
  factory CopyWith_Variables_Mutation_createJob(
    Variables_Mutation_createJob instance,
    TRes Function(Variables_Mutation_createJob) then,
  ) = _CopyWithImpl_Variables_Mutation_createJob;

  factory CopyWith_Variables_Mutation_createJob.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createJob;

  TRes call({Input_CreateJobInput? input});
}

class _CopyWithImpl_Variables_Mutation_createJob<TRes>
    implements CopyWith_Variables_Mutation_createJob<TRes> {
  _CopyWithImpl_Variables_Mutation_createJob(this._instance, this._then);

  final Variables_Mutation_createJob _instance;

  final TRes Function(Variables_Mutation_createJob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createJob._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateJobInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createJob<TRes>
    implements CopyWith_Variables_Mutation_createJob<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createJob(this._res);

  TRes _res;

  call({Input_CreateJobInput? input}) => _res;
}

class Mutation_createJob {
  Mutation_createJob({this.createJob, this.$__typename = 'RootMutationType'});

  factory Mutation_createJob.fromJson(Map<String, dynamic> json) {
    final l$createJob = json['createJob'];
    final l$$__typename = json['__typename'];
    return Mutation_createJob(
      createJob: l$createJob == null
          ? null
          : Mutation_createJob_createJob.fromJson(
              (l$createJob as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createJob_createJob? createJob;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createJob = createJob;
    _resultData['createJob'] = l$createJob?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createJob = createJob;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createJob, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createJob || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createJob = createJob;
    final lOther$createJob = other.createJob;
    if (l$createJob != lOther$createJob) {
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

  TRes call({Mutation_createJob_createJob? createJob, String? $__typename});
  CopyWith_Mutation_createJob_createJob<TRes> get createJob;
}

class _CopyWithImpl_Mutation_createJob<TRes>
    implements CopyWith_Mutation_createJob<TRes> {
  _CopyWithImpl_Mutation_createJob(this._instance, this._then);

  final Mutation_createJob _instance;

  final TRes Function(Mutation_createJob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createJob = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createJob(
      createJob: createJob == _undefined
          ? _instance.createJob
          : (createJob as Mutation_createJob_createJob?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createJob_createJob<TRes> get createJob {
    final local$createJob = _instance.createJob;
    return local$createJob == null
        ? CopyWith_Mutation_createJob_createJob.stub(_then(_instance))
        : CopyWith_Mutation_createJob_createJob(
            local$createJob,
            (e) => call(createJob: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createJob<TRes>
    implements CopyWith_Mutation_createJob<TRes> {
  _CopyWithStubImpl_Mutation_createJob(this._res);

  TRes _res;

  call({Mutation_createJob_createJob? createJob, String? $__typename}) => _res;

  CopyWith_Mutation_createJob_createJob<TRes> get createJob =>
      CopyWith_Mutation_createJob_createJob.stub(_res);
}

const documentNodeMutationcreateJob = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createJob'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateJobInput'),
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
            name: NameNode(value: 'createJob'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'result'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Job'),
                        directives: [],
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
    fragmentDefinitionJob,
  ],
);

class Mutation_createJob_createJob {
  Mutation_createJob_createJob({
    this.result,
    this.$__typename = 'CreateJobResult',
  });

  factory Mutation_createJob_createJob.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createJob_createJob(
      result: l$result == null
          ? null
          : Fragment_Job.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Job? result;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$result = result;
    _resultData['result'] = l$result?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$result = result;
    final l$$__typename = $__typename;
    return Object.hashAll([l$result, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createJob_createJob ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
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

extension UtilityExtension_Mutation_createJob_createJob
    on Mutation_createJob_createJob {
  CopyWith_Mutation_createJob_createJob<Mutation_createJob_createJob>
  get copyWith => CopyWith_Mutation_createJob_createJob(this, (i) => i);
}

abstract class CopyWith_Mutation_createJob_createJob<TRes> {
  factory CopyWith_Mutation_createJob_createJob(
    Mutation_createJob_createJob instance,
    TRes Function(Mutation_createJob_createJob) then,
  ) = _CopyWithImpl_Mutation_createJob_createJob;

  factory CopyWith_Mutation_createJob_createJob.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createJob_createJob;

  TRes call({Fragment_Job? result, String? $__typename});
  CopyWith_Fragment_Job<TRes> get result;
}

class _CopyWithImpl_Mutation_createJob_createJob<TRes>
    implements CopyWith_Mutation_createJob_createJob<TRes> {
  _CopyWithImpl_Mutation_createJob_createJob(this._instance, this._then);

  final Mutation_createJob_createJob _instance;

  final TRes Function(Mutation_createJob_createJob) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createJob_createJob(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Job?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Job<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Job.stub(_then(_instance))
        : CopyWith_Fragment_Job(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createJob_createJob<TRes>
    implements CopyWith_Mutation_createJob_createJob<TRes> {
  _CopyWithStubImpl_Mutation_createJob_createJob(this._res);

  TRes _res;

  call({Fragment_Job? result, String? $__typename}) => _res;

  CopyWith_Fragment_Job<TRes> get result => CopyWith_Fragment_Job.stub(_res);
}
