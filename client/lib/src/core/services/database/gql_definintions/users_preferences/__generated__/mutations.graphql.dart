import '../../../../../graphql/__generated__/schema.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_updateMyPreferences {
  factory Variables_Mutation_updateMyPreferences({
    Input_UpdateMyPreferencesInput? input,
  }) => Variables_Mutation_updateMyPreferences._({
    if (input != null) r'input': input,
  });

  Variables_Mutation_updateMyPreferences._(this._$data);

  factory Variables_Mutation_updateMyPreferences.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input_UpdateMyPreferencesInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables_Mutation_updateMyPreferences._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_UpdateMyPreferencesInput? get input =>
      (_$data['input'] as Input_UpdateMyPreferencesInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith_Variables_Mutation_updateMyPreferences<
    Variables_Mutation_updateMyPreferences
  >
  get copyWith =>
      CopyWith_Variables_Mutation_updateMyPreferences(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateMyPreferences ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith_Variables_Mutation_updateMyPreferences<TRes> {
  factory CopyWith_Variables_Mutation_updateMyPreferences(
    Variables_Mutation_updateMyPreferences instance,
    TRes Function(Variables_Mutation_updateMyPreferences) then,
  ) = _CopyWithImpl_Variables_Mutation_updateMyPreferences;

  factory CopyWith_Variables_Mutation_updateMyPreferences.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateMyPreferences;

  TRes call({Input_UpdateMyPreferencesInput? input});
}

class _CopyWithImpl_Variables_Mutation_updateMyPreferences<TRes>
    implements CopyWith_Variables_Mutation_updateMyPreferences<TRes> {
  _CopyWithImpl_Variables_Mutation_updateMyPreferences(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateMyPreferences _instance;

  final TRes Function(Variables_Mutation_updateMyPreferences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_updateMyPreferences._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input_UpdateMyPreferencesInput?),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateMyPreferences<TRes>
    implements CopyWith_Variables_Mutation_updateMyPreferences<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateMyPreferences(this._res);

  TRes _res;

  call({Input_UpdateMyPreferencesInput? input}) => _res;
}

class Mutation_updateMyPreferences {
  Mutation_updateMyPreferences({
    this.updateMyPreferences,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_updateMyPreferences.fromJson(Map<String, dynamic> json) {
    final l$updateMyPreferences = json['updateMyPreferences'];
    final l$$__typename = json['__typename'];
    return Mutation_updateMyPreferences(
      updateMyPreferences: l$updateMyPreferences == null
          ? null
          : Mutation_updateMyPreferences_updateMyPreferences.fromJson(
              (l$updateMyPreferences as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_updateMyPreferences_updateMyPreferences? updateMyPreferences;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMyPreferences = updateMyPreferences;
    _resultData['updateMyPreferences'] = l$updateMyPreferences?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMyPreferences = updateMyPreferences;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateMyPreferences, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateMyPreferences ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMyPreferences = updateMyPreferences;
    final lOther$updateMyPreferences = other.updateMyPreferences;
    if (l$updateMyPreferences != lOther$updateMyPreferences) {
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

extension UtilityExtension_Mutation_updateMyPreferences
    on Mutation_updateMyPreferences {
  CopyWith_Mutation_updateMyPreferences<Mutation_updateMyPreferences>
  get copyWith => CopyWith_Mutation_updateMyPreferences(this, (i) => i);
}

abstract class CopyWith_Mutation_updateMyPreferences<TRes> {
  factory CopyWith_Mutation_updateMyPreferences(
    Mutation_updateMyPreferences instance,
    TRes Function(Mutation_updateMyPreferences) then,
  ) = _CopyWithImpl_Mutation_updateMyPreferences;

  factory CopyWith_Mutation_updateMyPreferences.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateMyPreferences;

  TRes call({
    Mutation_updateMyPreferences_updateMyPreferences? updateMyPreferences,
    String? $__typename,
  });
  CopyWith_Mutation_updateMyPreferences_updateMyPreferences<TRes>
  get updateMyPreferences;
}

class _CopyWithImpl_Mutation_updateMyPreferences<TRes>
    implements CopyWith_Mutation_updateMyPreferences<TRes> {
  _CopyWithImpl_Mutation_updateMyPreferences(this._instance, this._then);

  final Mutation_updateMyPreferences _instance;

  final TRes Function(Mutation_updateMyPreferences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMyPreferences = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateMyPreferences(
      updateMyPreferences: updateMyPreferences == _undefined
          ? _instance.updateMyPreferences
          : (updateMyPreferences
                as Mutation_updateMyPreferences_updateMyPreferences?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_updateMyPreferences_updateMyPreferences<TRes>
  get updateMyPreferences {
    final local$updateMyPreferences = _instance.updateMyPreferences;
    return local$updateMyPreferences == null
        ? CopyWith_Mutation_updateMyPreferences_updateMyPreferences.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_updateMyPreferences_updateMyPreferences(
            local$updateMyPreferences,
            (e) => call(updateMyPreferences: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateMyPreferences<TRes>
    implements CopyWith_Mutation_updateMyPreferences<TRes> {
  _CopyWithStubImpl_Mutation_updateMyPreferences(this._res);

  TRes _res;

  call({
    Mutation_updateMyPreferences_updateMyPreferences? updateMyPreferences,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_updateMyPreferences_updateMyPreferences<TRes>
  get updateMyPreferences =>
      CopyWith_Mutation_updateMyPreferences_updateMyPreferences.stub(_res);
}

const documentNodeMutationupdateMyPreferences = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateMyPreferences'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateMyPreferencesInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateMyPreferences'),
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
                        name: NameNode(value: 'UserPreferences'),
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
    fragmentDefinitionUserPreferences,
  ],
);

class Mutation_updateMyPreferences_updateMyPreferences {
  Mutation_updateMyPreferences_updateMyPreferences({
    this.result,
    this.$__typename = 'UpdateMyPreferencesResult',
  });

  factory Mutation_updateMyPreferences_updateMyPreferences.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_updateMyPreferences_updateMyPreferences(
      result: l$result == null
          ? null
          : Fragment_UserPreferences.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_UserPreferences? result;

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
    if (other is! Mutation_updateMyPreferences_updateMyPreferences ||
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

extension UtilityExtension_Mutation_updateMyPreferences_updateMyPreferences
    on Mutation_updateMyPreferences_updateMyPreferences {
  CopyWith_Mutation_updateMyPreferences_updateMyPreferences<
    Mutation_updateMyPreferences_updateMyPreferences
  >
  get copyWith =>
      CopyWith_Mutation_updateMyPreferences_updateMyPreferences(this, (i) => i);
}

abstract class CopyWith_Mutation_updateMyPreferences_updateMyPreferences<TRes> {
  factory CopyWith_Mutation_updateMyPreferences_updateMyPreferences(
    Mutation_updateMyPreferences_updateMyPreferences instance,
    TRes Function(Mutation_updateMyPreferences_updateMyPreferences) then,
  ) = _CopyWithImpl_Mutation_updateMyPreferences_updateMyPreferences;

  factory CopyWith_Mutation_updateMyPreferences_updateMyPreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_updateMyPreferences_updateMyPreferences;

  TRes call({Fragment_UserPreferences? result, String? $__typename});
  CopyWith_Fragment_UserPreferences<TRes> get result;
}

class _CopyWithImpl_Mutation_updateMyPreferences_updateMyPreferences<TRes>
    implements CopyWith_Mutation_updateMyPreferences_updateMyPreferences<TRes> {
  _CopyWithImpl_Mutation_updateMyPreferences_updateMyPreferences(
    this._instance,
    this._then,
  );

  final Mutation_updateMyPreferences_updateMyPreferences _instance;

  final TRes Function(Mutation_updateMyPreferences_updateMyPreferences) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_updateMyPreferences_updateMyPreferences(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_UserPreferences?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_UserPreferences<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_UserPreferences.stub(_then(_instance))
        : CopyWith_Fragment_UserPreferences(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateMyPreferences_updateMyPreferences<TRes>
    implements CopyWith_Mutation_updateMyPreferences_updateMyPreferences<TRes> {
  _CopyWithStubImpl_Mutation_updateMyPreferences_updateMyPreferences(this._res);

  TRes _res;

  call({Fragment_UserPreferences? result, String? $__typename}) => _res;

  CopyWith_Fragment_UserPreferences<TRes> get result =>
      CopyWith_Fragment_UserPreferences.stub(_res);
}
