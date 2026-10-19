import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createSchool {
  factory Variables_Mutation_createSchool({
    required Input_CreateSchoolInput input,
  }) => Variables_Mutation_createSchool._({r'input': input});

  Variables_Mutation_createSchool._(this._$data);

  factory Variables_Mutation_createSchool.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateSchoolInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createSchool._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateSchoolInput get input =>
      (_$data['input'] as Input_CreateSchoolInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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

abstract class CopyWith_Variables_Mutation_createSchool<TRes> {
  factory CopyWith_Variables_Mutation_createSchool(
    Variables_Mutation_createSchool instance,
    TRes Function(Variables_Mutation_createSchool) then,
  ) = _CopyWithImpl_Variables_Mutation_createSchool;

  factory CopyWith_Variables_Mutation_createSchool.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createSchool;

  TRes call({Input_CreateSchoolInput? input});
}

class _CopyWithImpl_Variables_Mutation_createSchool<TRes>
    implements CopyWith_Variables_Mutation_createSchool<TRes> {
  _CopyWithImpl_Variables_Mutation_createSchool(this._instance, this._then);

  final Variables_Mutation_createSchool _instance;

  final TRes Function(Variables_Mutation_createSchool) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createSchool._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateSchoolInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createSchool<TRes>
    implements CopyWith_Variables_Mutation_createSchool<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createSchool(this._res);

  TRes _res;

  call({Input_CreateSchoolInput? input}) => _res;
}

class Mutation_createSchool {
  Mutation_createSchool({
    this.createSchool,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createSchool.fromJson(Map<String, dynamic> json) {
    final l$createSchool = json['createSchool'];
    final l$$__typename = json['__typename'];
    return Mutation_createSchool(
      createSchool: l$createSchool == null
          ? null
          : Mutation_createSchool_createSchool.fromJson(
              (l$createSchool as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createSchool_createSchool? createSchool;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createSchool = createSchool;
    _resultData['createSchool'] = l$createSchool?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createSchool = createSchool;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createSchool, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createSchool || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createSchool = createSchool;
    final lOther$createSchool = other.createSchool;
    if (l$createSchool != lOther$createSchool) {
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

  TRes call({
    Mutation_createSchool_createSchool? createSchool,
    String? $__typename,
  });
  CopyWith_Mutation_createSchool_createSchool<TRes> get createSchool;
}

class _CopyWithImpl_Mutation_createSchool<TRes>
    implements CopyWith_Mutation_createSchool<TRes> {
  _CopyWithImpl_Mutation_createSchool(this._instance, this._then);

  final Mutation_createSchool _instance;

  final TRes Function(Mutation_createSchool) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createSchool = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createSchool(
      createSchool: createSchool == _undefined
          ? _instance.createSchool
          : (createSchool as Mutation_createSchool_createSchool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createSchool_createSchool<TRes> get createSchool {
    final local$createSchool = _instance.createSchool;
    return local$createSchool == null
        ? CopyWith_Mutation_createSchool_createSchool.stub(_then(_instance))
        : CopyWith_Mutation_createSchool_createSchool(
            local$createSchool,
            (e) => call(createSchool: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createSchool<TRes>
    implements CopyWith_Mutation_createSchool<TRes> {
  _CopyWithStubImpl_Mutation_createSchool(this._res);

  TRes _res;

  call({
    Mutation_createSchool_createSchool? createSchool,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createSchool_createSchool<TRes> get createSchool =>
      CopyWith_Mutation_createSchool_createSchool.stub(_res);
}

const documentNodeMutationcreateSchool = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createSchool'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateSchoolInput'),
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
            name: NameNode(value: 'createSchool'),
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
                        name: NameNode(value: 'School'),
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
    fragmentDefinitionSchool,
  ],
);

class Mutation_createSchool_createSchool {
  Mutation_createSchool_createSchool({
    this.result,
    this.$__typename = 'CreateSchoolResult',
  });

  factory Mutation_createSchool_createSchool.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createSchool_createSchool(
      result: l$result == null
          ? null
          : Fragment_School.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_School? result;

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
    if (other is! Mutation_createSchool_createSchool ||
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

extension UtilityExtension_Mutation_createSchool_createSchool
    on Mutation_createSchool_createSchool {
  CopyWith_Mutation_createSchool_createSchool<
    Mutation_createSchool_createSchool
  >
  get copyWith => CopyWith_Mutation_createSchool_createSchool(this, (i) => i);
}

abstract class CopyWith_Mutation_createSchool_createSchool<TRes> {
  factory CopyWith_Mutation_createSchool_createSchool(
    Mutation_createSchool_createSchool instance,
    TRes Function(Mutation_createSchool_createSchool) then,
  ) = _CopyWithImpl_Mutation_createSchool_createSchool;

  factory CopyWith_Mutation_createSchool_createSchool.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createSchool_createSchool;

  TRes call({Fragment_School? result, String? $__typename});
  CopyWith_Fragment_School<TRes> get result;
}

class _CopyWithImpl_Mutation_createSchool_createSchool<TRes>
    implements CopyWith_Mutation_createSchool_createSchool<TRes> {
  _CopyWithImpl_Mutation_createSchool_createSchool(this._instance, this._then);

  final Mutation_createSchool_createSchool _instance;

  final TRes Function(Mutation_createSchool_createSchool) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createSchool_createSchool(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_School?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_School<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_School.stub(_then(_instance))
        : CopyWith_Fragment_School(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createSchool_createSchool<TRes>
    implements CopyWith_Mutation_createSchool_createSchool<TRes> {
  _CopyWithStubImpl_Mutation_createSchool_createSchool(this._res);

  TRes _res;

  call({Fragment_School? result, String? $__typename}) => _res;

  CopyWith_Fragment_School<TRes> get result =>
      CopyWith_Fragment_School.stub(_res);
}
