import '../../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_createDistrict {
  factory Variables_Mutation_createDistrict({
    required Input_CreateDistrictInput input,
  }) => Variables_Mutation_createDistrict._({r'input': input});

  Variables_Mutation_createDistrict._(this._$data);

  factory Variables_Mutation_createDistrict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateDistrictInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createDistrict._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateDistrictInput get input =>
      (_$data['input'] as Input_CreateDistrictInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
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

abstract class CopyWith_Variables_Mutation_createDistrict<TRes> {
  factory CopyWith_Variables_Mutation_createDistrict(
    Variables_Mutation_createDistrict instance,
    TRes Function(Variables_Mutation_createDistrict) then,
  ) = _CopyWithImpl_Variables_Mutation_createDistrict;

  factory CopyWith_Variables_Mutation_createDistrict.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createDistrict;

  TRes call({Input_CreateDistrictInput? input});
}

class _CopyWithImpl_Variables_Mutation_createDistrict<TRes>
    implements CopyWith_Variables_Mutation_createDistrict<TRes> {
  _CopyWithImpl_Variables_Mutation_createDistrict(this._instance, this._then);

  final Variables_Mutation_createDistrict _instance;

  final TRes Function(Variables_Mutation_createDistrict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createDistrict._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateDistrictInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createDistrict<TRes>
    implements CopyWith_Variables_Mutation_createDistrict<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createDistrict(this._res);

  TRes _res;

  call({Input_CreateDistrictInput? input}) => _res;
}

class Mutation_createDistrict {
  Mutation_createDistrict({
    this.createDistrict,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_createDistrict.fromJson(Map<String, dynamic> json) {
    final l$createDistrict = json['createDistrict'];
    final l$$__typename = json['__typename'];
    return Mutation_createDistrict(
      createDistrict: l$createDistrict == null
          ? null
          : Mutation_createDistrict_createDistrict.fromJson(
              (l$createDistrict as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createDistrict_createDistrict? createDistrict;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createDistrict = createDistrict;
    _resultData['createDistrict'] = l$createDistrict?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createDistrict = createDistrict;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createDistrict, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createDistrict || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDistrict = createDistrict;
    final lOther$createDistrict = other.createDistrict;
    if (l$createDistrict != lOther$createDistrict) {
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
    Mutation_createDistrict_createDistrict? createDistrict,
    String? $__typename,
  });
  CopyWith_Mutation_createDistrict_createDistrict<TRes> get createDistrict;
}

class _CopyWithImpl_Mutation_createDistrict<TRes>
    implements CopyWith_Mutation_createDistrict<TRes> {
  _CopyWithImpl_Mutation_createDistrict(this._instance, this._then);

  final Mutation_createDistrict _instance;

  final TRes Function(Mutation_createDistrict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createDistrict = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createDistrict(
      createDistrict: createDistrict == _undefined
          ? _instance.createDistrict
          : (createDistrict as Mutation_createDistrict_createDistrict?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createDistrict_createDistrict<TRes> get createDistrict {
    final local$createDistrict = _instance.createDistrict;
    return local$createDistrict == null
        ? CopyWith_Mutation_createDistrict_createDistrict.stub(_then(_instance))
        : CopyWith_Mutation_createDistrict_createDistrict(
            local$createDistrict,
            (e) => call(createDistrict: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createDistrict<TRes>
    implements CopyWith_Mutation_createDistrict<TRes> {
  _CopyWithStubImpl_Mutation_createDistrict(this._res);

  TRes _res;

  call({
    Mutation_createDistrict_createDistrict? createDistrict,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_createDistrict_createDistrict<TRes> get createDistrict =>
      CopyWith_Mutation_createDistrict_createDistrict.stub(_res);
}

const documentNodeMutationcreateDistrict = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createDistrict'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateDistrictInput'),
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
            name: NameNode(value: 'createDistrict'),
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
                        name: NameNode(value: 'District'),
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
    fragmentDefinitionDistrict,
  ],
);

class Mutation_createDistrict_createDistrict {
  Mutation_createDistrict_createDistrict({
    this.result,
    this.$__typename = 'CreateDistrictResult',
  });

  factory Mutation_createDistrict_createDistrict.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createDistrict_createDistrict(
      result: l$result == null
          ? null
          : Fragment_District.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_District? result;

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
    if (other is! Mutation_createDistrict_createDistrict ||
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

extension UtilityExtension_Mutation_createDistrict_createDistrict
    on Mutation_createDistrict_createDistrict {
  CopyWith_Mutation_createDistrict_createDistrict<
    Mutation_createDistrict_createDistrict
  >
  get copyWith =>
      CopyWith_Mutation_createDistrict_createDistrict(this, (i) => i);
}

abstract class CopyWith_Mutation_createDistrict_createDistrict<TRes> {
  factory CopyWith_Mutation_createDistrict_createDistrict(
    Mutation_createDistrict_createDistrict instance,
    TRes Function(Mutation_createDistrict_createDistrict) then,
  ) = _CopyWithImpl_Mutation_createDistrict_createDistrict;

  factory CopyWith_Mutation_createDistrict_createDistrict.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createDistrict_createDistrict;

  TRes call({Fragment_District? result, String? $__typename});
  CopyWith_Fragment_District<TRes> get result;
}

class _CopyWithImpl_Mutation_createDistrict_createDistrict<TRes>
    implements CopyWith_Mutation_createDistrict_createDistrict<TRes> {
  _CopyWithImpl_Mutation_createDistrict_createDistrict(
    this._instance,
    this._then,
  );

  final Mutation_createDistrict_createDistrict _instance;

  final TRes Function(Mutation_createDistrict_createDistrict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createDistrict_createDistrict(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_District?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_District<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_District.stub(_then(_instance))
        : CopyWith_Fragment_District(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_createDistrict_createDistrict<TRes>
    implements CopyWith_Mutation_createDistrict_createDistrict<TRes> {
  _CopyWithStubImpl_Mutation_createDistrict_createDistrict(this._res);

  TRes _res;

  call({Fragment_District? result, String? $__typename}) => _res;

  CopyWith_Fragment_District<TRes> get result =>
      CopyWith_Fragment_District.stub(_res);
}
