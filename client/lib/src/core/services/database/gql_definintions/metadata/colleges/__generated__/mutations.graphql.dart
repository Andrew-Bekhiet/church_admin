import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createCollege {
  factory Variables_Mutation_createCollege({
    required Input_CreateCollegeInput input,
  }) => Variables_Mutation_createCollege._({r'input': input});

  Variables_Mutation_createCollege._(this._$data);

  factory Variables_Mutation_createCollege.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateCollegeInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createCollege._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateCollegeInput get input =>
      (_$data['input'] as Input_CreateCollegeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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

abstract class CopyWith_Variables_Mutation_createCollege<TRes> {
  factory CopyWith_Variables_Mutation_createCollege(
    Variables_Mutation_createCollege instance,
    TRes Function(Variables_Mutation_createCollege) then,
  ) = _CopyWithImpl_Variables_Mutation_createCollege;

  factory CopyWith_Variables_Mutation_createCollege.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createCollege;

  TRes call({Input_CreateCollegeInput? input});
}

class _CopyWithImpl_Variables_Mutation_createCollege<TRes>
    implements CopyWith_Variables_Mutation_createCollege<TRes> {
  _CopyWithImpl_Variables_Mutation_createCollege(this._instance, this._then);

  final Variables_Mutation_createCollege _instance;

  final TRes Function(Variables_Mutation_createCollege) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createCollege._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateCollegeInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createCollege<TRes>
    implements CopyWith_Variables_Mutation_createCollege<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createCollege(this._res);

  TRes _res;

  call({Input_CreateCollegeInput? input}) => _res;
}

class Mutation_createCollege {
  Mutation_createCollege({
    this.createCollege,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createCollege.fromJson(Map<String, dynamic> json) {
    final l$createCollege = json['createCollege'];
    final l$$__typename = json['__typename'];
    return Mutation_createCollege(
      createCollege: l$createCollege == null
          ? null
          : Mutation_createCollege_createCollege.fromJson(
              (l$createCollege as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createCollege_createCollege? createCollege;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createCollege = createCollege;
    _resultData['createCollege'] = l$createCollege?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createCollege = createCollege;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createCollege, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createCollege || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createCollege = createCollege;
    final lOther$createCollege = other.createCollege;
    if (l$createCollege != lOther$createCollege) {
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
    Mutation_createCollege_createCollege? createCollege,
    String? $__typename,
  });
  CopyWith_Mutation_createCollege_createCollege<TRes> get createCollege;
}

class _CopyWithImpl_Mutation_createCollege<TRes>
    implements CopyWith_Mutation_createCollege<TRes> {
  _CopyWithImpl_Mutation_createCollege(this._instance, this._then);

  final Mutation_createCollege _instance;

  final TRes Function(Mutation_createCollege) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createCollege = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createCollege(
      createCollege: createCollege == _undefined
          ? _instance.createCollege
          : (createCollege as Mutation_createCollege_createCollege?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createCollege_createCollege<TRes> get createCollege {
    final local$createCollege = _instance.createCollege;
    return local$createCollege == null
        ? CopyWith_Mutation_createCollege_createCollege.stub(_then(_instance))
        : CopyWith_Mutation_createCollege_createCollege(
            local$createCollege,
            (e) => call(createCollege: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createCollege<TRes>
    implements CopyWith_Mutation_createCollege<TRes> {
  _CopyWithStubImpl_Mutation_createCollege(this._res);

  TRes _res;

  call({
    Mutation_createCollege_createCollege? createCollege,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createCollege_createCollege<TRes> get createCollege =>
      CopyWith_Mutation_createCollege_createCollege.stub(_res);
}

const documentNodeMutationcreateCollege = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createCollege'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateCollegeInput'),
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
            name: NameNode(value: 'createCollege'),
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
                        name: NameNode(value: 'College'),
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
    fragmentDefinitionCollege,
  ],
);

class Mutation_createCollege_createCollege {
  Mutation_createCollege_createCollege({
    this.result,
    this.$__typename = 'CreateCollegeResult',
  });

  factory Mutation_createCollege_createCollege.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createCollege_createCollege(
      result: l$result == null
          ? null
          : Fragment_College.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_College? result;

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
    if (other is! Mutation_createCollege_createCollege ||
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

extension UtilityExtension_Mutation_createCollege_createCollege
    on Mutation_createCollege_createCollege {
  CopyWith_Mutation_createCollege_createCollege<
    Mutation_createCollege_createCollege
  >
  get copyWith => CopyWith_Mutation_createCollege_createCollege(this, (i) => i);
}

abstract class CopyWith_Mutation_createCollege_createCollege<TRes> {
  factory CopyWith_Mutation_createCollege_createCollege(
    Mutation_createCollege_createCollege instance,
    TRes Function(Mutation_createCollege_createCollege) then,
  ) = _CopyWithImpl_Mutation_createCollege_createCollege;

  factory CopyWith_Mutation_createCollege_createCollege.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createCollege_createCollege;

  TRes call({Fragment_College? result, String? $__typename});
  CopyWith_Fragment_College<TRes> get result;
}

class _CopyWithImpl_Mutation_createCollege_createCollege<TRes>
    implements CopyWith_Mutation_createCollege_createCollege<TRes> {
  _CopyWithImpl_Mutation_createCollege_createCollege(
    this._instance,
    this._then,
  );

  final Mutation_createCollege_createCollege _instance;

  final TRes Function(Mutation_createCollege_createCollege) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createCollege_createCollege(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_College?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_College<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_College.stub(_then(_instance))
        : CopyWith_Fragment_College(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createCollege_createCollege<TRes>
    implements CopyWith_Mutation_createCollege_createCollege<TRes> {
  _CopyWithStubImpl_Mutation_createCollege_createCollege(this._res);

  TRes _res;

  call({Fragment_College? result, String? $__typename}) => _res;

  CopyWith_Fragment_College<TRes> get result =>
      CopyWith_Fragment_College.stub(_res);
}
