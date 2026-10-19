import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createQualification {
  factory Variables_Mutation_createQualification({
    required Input_CreateQualificationInput input,
  }) => Variables_Mutation_createQualification._({r'input': input});

  Variables_Mutation_createQualification._(this._$data);

  factory Variables_Mutation_createQualification.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateQualificationInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createQualification._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateQualificationInput get input =>
      (_$data['input'] as Input_CreateQualificationInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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

abstract class CopyWith_Variables_Mutation_createQualification<TRes> {
  factory CopyWith_Variables_Mutation_createQualification(
    Variables_Mutation_createQualification instance,
    TRes Function(Variables_Mutation_createQualification) then,
  ) = _CopyWithImpl_Variables_Mutation_createQualification;

  factory CopyWith_Variables_Mutation_createQualification.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createQualification;

  TRes call({Input_CreateQualificationInput? input});
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

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createQualification._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateQualificationInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createQualification<TRes>
    implements CopyWith_Variables_Mutation_createQualification<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createQualification(this._res);

  TRes _res;

  call({Input_CreateQualificationInput? input}) => _res;
}

class Mutation_createQualification {
  Mutation_createQualification({
    this.createQualification,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createQualification.fromJson(Map<String, dynamic> json) {
    final l$createQualification = json['createQualification'];
    final l$$__typename = json['__typename'];
    return Mutation_createQualification(
      createQualification: l$createQualification == null
          ? null
          : Mutation_createQualification_createQualification.fromJson(
              (l$createQualification as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createQualification_createQualification? createQualification;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createQualification = createQualification;
    _resultData['createQualification'] = l$createQualification?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createQualification = createQualification;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createQualification, l$$__typename]);
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
    final l$createQualification = createQualification;
    final lOther$createQualification = other.createQualification;
    if (l$createQualification != lOther$createQualification) {
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
    Mutation_createQualification_createQualification? createQualification,
    String? $__typename,
  });
  CopyWith_Mutation_createQualification_createQualification<TRes>
  get createQualification;
}

class _CopyWithImpl_Mutation_createQualification<TRes>
    implements CopyWith_Mutation_createQualification<TRes> {
  _CopyWithImpl_Mutation_createQualification(this._instance, this._then);

  final Mutation_createQualification _instance;

  final TRes Function(Mutation_createQualification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createQualification = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createQualification(
      createQualification: createQualification == _undefined
          ? _instance.createQualification
          : (createQualification
                as Mutation_createQualification_createQualification?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createQualification_createQualification<TRes>
  get createQualification {
    final local$createQualification = _instance.createQualification;
    return local$createQualification == null
        ? CopyWith_Mutation_createQualification_createQualification.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_createQualification_createQualification(
            local$createQualification,
            (e) => call(createQualification: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createQualification<TRes>
    implements CopyWith_Mutation_createQualification<TRes> {
  _CopyWithStubImpl_Mutation_createQualification(this._res);

  TRes _res;

  call({
    Mutation_createQualification_createQualification? createQualification,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createQualification_createQualification<TRes>
  get createQualification =>
      CopyWith_Mutation_createQualification_createQualification.stub(_res);
}

const documentNodeMutationcreateQualification = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createQualification'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateQualificationInput'),
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
            name: NameNode(value: 'createQualification'),
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
                        name: NameNode(value: 'Qualification'),
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
    fragmentDefinitionQualification,
  ],
);

class Mutation_createQualification_createQualification {
  Mutation_createQualification_createQualification({
    this.result,
    this.$__typename = 'CreateQualificationResult',
  });

  factory Mutation_createQualification_createQualification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createQualification_createQualification(
      result: l$result == null
          ? null
          : Fragment_Qualification.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Qualification? result;

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
    if (other is! Mutation_createQualification_createQualification ||
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

extension UtilityExtension_Mutation_createQualification_createQualification
    on Mutation_createQualification_createQualification {
  CopyWith_Mutation_createQualification_createQualification<
    Mutation_createQualification_createQualification
  >
  get copyWith =>
      CopyWith_Mutation_createQualification_createQualification(this, (i) => i);
}

abstract class CopyWith_Mutation_createQualification_createQualification<TRes> {
  factory CopyWith_Mutation_createQualification_createQualification(
    Mutation_createQualification_createQualification instance,
    TRes Function(Mutation_createQualification_createQualification) then,
  ) = _CopyWithImpl_Mutation_createQualification_createQualification;

  factory CopyWith_Mutation_createQualification_createQualification.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_createQualification_createQualification;

  TRes call({Fragment_Qualification? result, String? $__typename});
  CopyWith_Fragment_Qualification<TRes> get result;
}

class _CopyWithImpl_Mutation_createQualification_createQualification<TRes>
    implements CopyWith_Mutation_createQualification_createQualification<TRes> {
  _CopyWithImpl_Mutation_createQualification_createQualification(
    this._instance,
    this._then,
  );

  final Mutation_createQualification_createQualification _instance;

  final TRes Function(Mutation_createQualification_createQualification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createQualification_createQualification(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Qualification?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Qualification<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Qualification.stub(_then(_instance))
        : CopyWith_Fragment_Qualification(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createQualification_createQualification<TRes>
    implements CopyWith_Mutation_createQualification_createQualification<TRes> {
  _CopyWithStubImpl_Mutation_createQualification_createQualification(this._res);

  TRes _res;

  call({Fragment_Qualification? result, String? $__typename}) => _res;

  CopyWith_Fragment_Qualification<TRes> get result =>
      CopyWith_Fragment_Qualification.stub(_res);
}
