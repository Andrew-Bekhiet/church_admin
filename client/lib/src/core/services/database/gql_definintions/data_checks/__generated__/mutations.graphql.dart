import '../../../../../graphql/__generated__/schema.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_overrideDataCheck {
  factory Variables_Mutation_overrideDataCheck({
    required Input_OverrideDataCheckInput input,
  }) => Variables_Mutation_overrideDataCheck._({r'input': input});

  Variables_Mutation_overrideDataCheck._(this._$data);

  factory Variables_Mutation_overrideDataCheck.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_OverrideDataCheckInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_overrideDataCheck._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_OverrideDataCheckInput get input =>
      (_$data['input'] as Input_OverrideDataCheckInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_overrideDataCheck<
    Variables_Mutation_overrideDataCheck
  >
  get copyWith => CopyWith_Variables_Mutation_overrideDataCheck(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_overrideDataCheck ||
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

abstract class CopyWith_Variables_Mutation_overrideDataCheck<TRes> {
  factory CopyWith_Variables_Mutation_overrideDataCheck(
    Variables_Mutation_overrideDataCheck instance,
    TRes Function(Variables_Mutation_overrideDataCheck) then,
  ) = _CopyWithImpl_Variables_Mutation_overrideDataCheck;

  factory CopyWith_Variables_Mutation_overrideDataCheck.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_overrideDataCheck;

  TRes call({Input_OverrideDataCheckInput? input});
}

class _CopyWithImpl_Variables_Mutation_overrideDataCheck<TRes>
    implements CopyWith_Variables_Mutation_overrideDataCheck<TRes> {
  _CopyWithImpl_Variables_Mutation_overrideDataCheck(
    this._instance,
    this._then,
  );

  final Variables_Mutation_overrideDataCheck _instance;

  final TRes Function(Variables_Mutation_overrideDataCheck) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_overrideDataCheck._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_OverrideDataCheckInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_overrideDataCheck<TRes>
    implements CopyWith_Variables_Mutation_overrideDataCheck<TRes> {
  _CopyWithStubImpl_Variables_Mutation_overrideDataCheck(this._res);

  TRes _res;

  call({Input_OverrideDataCheckInput? input}) => _res;
}

class Mutation_overrideDataCheck {
  Mutation_overrideDataCheck({
    this.overrideDataCheck,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_overrideDataCheck.fromJson(Map<String, dynamic> json) {
    final l$overrideDataCheck = json['overrideDataCheck'];
    final l$$__typename = json['__typename'];
    return Mutation_overrideDataCheck(
      overrideDataCheck: l$overrideDataCheck == null
          ? null
          : Mutation_overrideDataCheck_overrideDataCheck.fromJson(
              (l$overrideDataCheck as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_overrideDataCheck_overrideDataCheck? overrideDataCheck;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$overrideDataCheck = overrideDataCheck;
    _resultData['overrideDataCheck'] = l$overrideDataCheck?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$overrideDataCheck = overrideDataCheck;
    final l$$__typename = $__typename;
    return Object.hashAll([l$overrideDataCheck, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_overrideDataCheck ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$overrideDataCheck = overrideDataCheck;
    final lOther$overrideDataCheck = other.overrideDataCheck;
    if (l$overrideDataCheck != lOther$overrideDataCheck) {
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

extension UtilityExtension_Mutation_overrideDataCheck
    on Mutation_overrideDataCheck {
  CopyWith_Mutation_overrideDataCheck<Mutation_overrideDataCheck>
  get copyWith => CopyWith_Mutation_overrideDataCheck(this, (i) => i);
}

abstract class CopyWith_Mutation_overrideDataCheck<TRes> {
  factory CopyWith_Mutation_overrideDataCheck(
    Mutation_overrideDataCheck instance,
    TRes Function(Mutation_overrideDataCheck) then,
  ) = _CopyWithImpl_Mutation_overrideDataCheck;

  factory CopyWith_Mutation_overrideDataCheck.stub(TRes res) =
      _CopyWithStubImpl_Mutation_overrideDataCheck;

  TRes call({
    Mutation_overrideDataCheck_overrideDataCheck? overrideDataCheck,
    String? $__typename,
  });
  CopyWith_Mutation_overrideDataCheck_overrideDataCheck<TRes>
  get overrideDataCheck;
}

class _CopyWithImpl_Mutation_overrideDataCheck<TRes>
    implements CopyWith_Mutation_overrideDataCheck<TRes> {
  _CopyWithImpl_Mutation_overrideDataCheck(this._instance, this._then);

  final Mutation_overrideDataCheck _instance;

  final TRes Function(Mutation_overrideDataCheck) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? overrideDataCheck = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_overrideDataCheck(
      overrideDataCheck: overrideDataCheck == _undefined
          ? _instance.overrideDataCheck
          : (overrideDataCheck
                as Mutation_overrideDataCheck_overrideDataCheck?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_overrideDataCheck_overrideDataCheck<TRes>
  get overrideDataCheck {
    final local$overrideDataCheck = _instance.overrideDataCheck;
    return local$overrideDataCheck == null
        ? CopyWith_Mutation_overrideDataCheck_overrideDataCheck.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_overrideDataCheck_overrideDataCheck(
            local$overrideDataCheck,
            (e) => call(overrideDataCheck: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_overrideDataCheck<TRes>
    implements CopyWith_Mutation_overrideDataCheck<TRes> {
  _CopyWithStubImpl_Mutation_overrideDataCheck(this._res);

  TRes _res;

  call({
    Mutation_overrideDataCheck_overrideDataCheck? overrideDataCheck,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_overrideDataCheck_overrideDataCheck<TRes>
  get overrideDataCheck =>
      CopyWith_Mutation_overrideDataCheck_overrideDataCheck.stub(_res);
}

const documentNodeMutationoverrideDataCheck = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'overrideDataCheck'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'OverrideDataCheckInput'),
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
            name: NameNode(value: 'overrideDataCheck'),
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
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'familyId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'isComplete'),
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

class Mutation_overrideDataCheck_overrideDataCheck {
  Mutation_overrideDataCheck_overrideDataCheck({
    this.result,
    this.$__typename = 'OverrideDataCheckResult',
  });

  factory Mutation_overrideDataCheck_overrideDataCheck.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_overrideDataCheck_overrideDataCheck(
      result: l$result == null
          ? null
          : Mutation_overrideDataCheck_overrideDataCheck_result.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_overrideDataCheck_overrideDataCheck_result? result;

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
    if (other is! Mutation_overrideDataCheck_overrideDataCheck ||
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

extension UtilityExtension_Mutation_overrideDataCheck_overrideDataCheck
    on Mutation_overrideDataCheck_overrideDataCheck {
  CopyWith_Mutation_overrideDataCheck_overrideDataCheck<
    Mutation_overrideDataCheck_overrideDataCheck
  >
  get copyWith =>
      CopyWith_Mutation_overrideDataCheck_overrideDataCheck(this, (i) => i);
}

abstract class CopyWith_Mutation_overrideDataCheck_overrideDataCheck<TRes> {
  factory CopyWith_Mutation_overrideDataCheck_overrideDataCheck(
    Mutation_overrideDataCheck_overrideDataCheck instance,
    TRes Function(Mutation_overrideDataCheck_overrideDataCheck) then,
  ) = _CopyWithImpl_Mutation_overrideDataCheck_overrideDataCheck;

  factory CopyWith_Mutation_overrideDataCheck_overrideDataCheck.stub(TRes res) =
      _CopyWithStubImpl_Mutation_overrideDataCheck_overrideDataCheck;

  TRes call({
    Mutation_overrideDataCheck_overrideDataCheck_result? result,
    String? $__typename,
  });
  CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result<TRes> get result;
}

class _CopyWithImpl_Mutation_overrideDataCheck_overrideDataCheck<TRes>
    implements CopyWith_Mutation_overrideDataCheck_overrideDataCheck<TRes> {
  _CopyWithImpl_Mutation_overrideDataCheck_overrideDataCheck(
    this._instance,
    this._then,
  );

  final Mutation_overrideDataCheck_overrideDataCheck _instance;

  final TRes Function(Mutation_overrideDataCheck_overrideDataCheck) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_overrideDataCheck_overrideDataCheck(
          result: result == _undefined
              ? _instance.result
              : (result
                    as Mutation_overrideDataCheck_overrideDataCheck_result?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result<TRes>
  get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_overrideDataCheck_overrideDataCheck<TRes>
    implements CopyWith_Mutation_overrideDataCheck_overrideDataCheck<TRes> {
  _CopyWithStubImpl_Mutation_overrideDataCheck_overrideDataCheck(this._res);

  TRes _res;

  call({
    Mutation_overrideDataCheck_overrideDataCheck_result? result,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result<TRes>
  get result =>
      CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result.stub(_res);
}

class Mutation_overrideDataCheck_overrideDataCheck_result {
  Mutation_overrideDataCheck_overrideDataCheck_result({
    required this.id,
    required this.familyId,
    required this.isComplete,
    this.$__typename = 'DataCheckOverride',
  });

  factory Mutation_overrideDataCheck_overrideDataCheck_result.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$familyId = json['familyId'];
    final l$isComplete = json['isComplete'];
    final l$$__typename = json['__typename'];
    return Mutation_overrideDataCheck_overrideDataCheck_result(
      id: (l$id as String),
      familyId: (l$familyId as String),
      isComplete: (l$isComplete as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String familyId;

  final bool isComplete;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$familyId = familyId;
    _resultData['familyId'] = l$familyId;
    final l$isComplete = isComplete;
    _resultData['isComplete'] = l$isComplete;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$familyId, l$isComplete, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_overrideDataCheck_overrideDataCheck_result ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (l$isComplete != lOther$isComplete) {
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

extension UtilityExtension_Mutation_overrideDataCheck_overrideDataCheck_result
    on Mutation_overrideDataCheck_overrideDataCheck_result {
  CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result<
    Mutation_overrideDataCheck_overrideDataCheck_result
  >
  get copyWith => CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result(
    this,
    (i) => i,
  );
}

abstract class CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result<
  TRes
> {
  factory CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result(
    Mutation_overrideDataCheck_overrideDataCheck_result instance,
    TRes Function(Mutation_overrideDataCheck_overrideDataCheck_result) then,
  ) = _CopyWithImpl_Mutation_overrideDataCheck_overrideDataCheck_result;

  factory CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_overrideDataCheck_overrideDataCheck_result;

  TRes call({
    String? id,
    String? familyId,
    bool? isComplete,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_overrideDataCheck_overrideDataCheck_result<TRes>
    implements
        CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result<TRes> {
  _CopyWithImpl_Mutation_overrideDataCheck_overrideDataCheck_result(
    this._instance,
    this._then,
  );

  final Mutation_overrideDataCheck_overrideDataCheck_result _instance;

  final TRes Function(Mutation_overrideDataCheck_overrideDataCheck_result)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_overrideDataCheck_overrideDataCheck_result(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      familyId: familyId == _undefined || familyId == null
          ? _instance.familyId
          : (familyId as String),
      isComplete: isComplete == _undefined || isComplete == null
          ? _instance.isComplete
          : (isComplete as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_overrideDataCheck_overrideDataCheck_result<
  TRes
>
    implements
        CopyWith_Mutation_overrideDataCheck_overrideDataCheck_result<TRes> {
  _CopyWithStubImpl_Mutation_overrideDataCheck_overrideDataCheck_result(
    this._res,
  );

  TRes _res;

  call({String? id, String? familyId, bool? isComplete, String? $__typename}) =>
      _res;
}

class Variables_Mutation_clearDataCheckOverride {
  factory Variables_Mutation_clearDataCheckOverride({required String id}) =>
      Variables_Mutation_clearDataCheckOverride._({r'id': id});

  Variables_Mutation_clearDataCheckOverride._(this._$data);

  factory Variables_Mutation_clearDataCheckOverride.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_clearDataCheckOverride._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_clearDataCheckOverride<
    Variables_Mutation_clearDataCheckOverride
  >
  get copyWith =>
      CopyWith_Variables_Mutation_clearDataCheckOverride(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_clearDataCheckOverride ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Variables_Mutation_clearDataCheckOverride<TRes> {
  factory CopyWith_Variables_Mutation_clearDataCheckOverride(
    Variables_Mutation_clearDataCheckOverride instance,
    TRes Function(Variables_Mutation_clearDataCheckOverride) then,
  ) = _CopyWithImpl_Variables_Mutation_clearDataCheckOverride;

  factory CopyWith_Variables_Mutation_clearDataCheckOverride.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_clearDataCheckOverride;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_clearDataCheckOverride<TRes>
    implements CopyWith_Variables_Mutation_clearDataCheckOverride<TRes> {
  _CopyWithImpl_Variables_Mutation_clearDataCheckOverride(
    this._instance,
    this._then,
  );

  final Variables_Mutation_clearDataCheckOverride _instance;

  final TRes Function(Variables_Mutation_clearDataCheckOverride) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_clearDataCheckOverride._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_clearDataCheckOverride<TRes>
    implements CopyWith_Variables_Mutation_clearDataCheckOverride<TRes> {
  _CopyWithStubImpl_Variables_Mutation_clearDataCheckOverride(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_clearDataCheckOverride {
  Mutation_clearDataCheckOverride({
    this.clearDataCheckOverride,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_clearDataCheckOverride.fromJson(Map<String, dynamic> json) {
    final l$clearDataCheckOverride = json['clearDataCheckOverride'];
    final l$$__typename = json['__typename'];
    return Mutation_clearDataCheckOverride(
      clearDataCheckOverride: l$clearDataCheckOverride == null
          ? null
          : Mutation_clearDataCheckOverride_clearDataCheckOverride.fromJson(
              (l$clearDataCheckOverride as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_clearDataCheckOverride_clearDataCheckOverride?
  clearDataCheckOverride;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clearDataCheckOverride = clearDataCheckOverride;
    _resultData['clearDataCheckOverride'] = l$clearDataCheckOverride?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clearDataCheckOverride = clearDataCheckOverride;
    final l$$__typename = $__typename;
    return Object.hashAll([l$clearDataCheckOverride, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_clearDataCheckOverride ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$clearDataCheckOverride = clearDataCheckOverride;
    final lOther$clearDataCheckOverride = other.clearDataCheckOverride;
    if (l$clearDataCheckOverride != lOther$clearDataCheckOverride) {
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

extension UtilityExtension_Mutation_clearDataCheckOverride
    on Mutation_clearDataCheckOverride {
  CopyWith_Mutation_clearDataCheckOverride<Mutation_clearDataCheckOverride>
  get copyWith => CopyWith_Mutation_clearDataCheckOverride(this, (i) => i);
}

abstract class CopyWith_Mutation_clearDataCheckOverride<TRes> {
  factory CopyWith_Mutation_clearDataCheckOverride(
    Mutation_clearDataCheckOverride instance,
    TRes Function(Mutation_clearDataCheckOverride) then,
  ) = _CopyWithImpl_Mutation_clearDataCheckOverride;

  factory CopyWith_Mutation_clearDataCheckOverride.stub(TRes res) =
      _CopyWithStubImpl_Mutation_clearDataCheckOverride;

  TRes call({
    Mutation_clearDataCheckOverride_clearDataCheckOverride?
    clearDataCheckOverride,
    String? $__typename,
  });
  CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride<TRes>
  get clearDataCheckOverride;
}

class _CopyWithImpl_Mutation_clearDataCheckOverride<TRes>
    implements CopyWith_Mutation_clearDataCheckOverride<TRes> {
  _CopyWithImpl_Mutation_clearDataCheckOverride(this._instance, this._then);

  final Mutation_clearDataCheckOverride _instance;

  final TRes Function(Mutation_clearDataCheckOverride) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clearDataCheckOverride = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_clearDataCheckOverride(
      clearDataCheckOverride: clearDataCheckOverride == _undefined
          ? _instance.clearDataCheckOverride
          : (clearDataCheckOverride
                as Mutation_clearDataCheckOverride_clearDataCheckOverride?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride<TRes>
  get clearDataCheckOverride {
    final local$clearDataCheckOverride = _instance.clearDataCheckOverride;
    return local$clearDataCheckOverride == null
        ? CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride(
            local$clearDataCheckOverride,
            (e) => call(clearDataCheckOverride: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_clearDataCheckOverride<TRes>
    implements CopyWith_Mutation_clearDataCheckOverride<TRes> {
  _CopyWithStubImpl_Mutation_clearDataCheckOverride(this._res);

  TRes _res;

  call({
    Mutation_clearDataCheckOverride_clearDataCheckOverride?
    clearDataCheckOverride,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride<TRes>
  get clearDataCheckOverride =>
      CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride.stub(
        _res,
      );
}

const documentNodeMutationclearDataCheckOverride = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'clearDataCheckOverride'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'clearDataCheckOverride'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
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
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'familyId'),
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

class Mutation_clearDataCheckOverride_clearDataCheckOverride {
  Mutation_clearDataCheckOverride_clearDataCheckOverride({
    this.result,
    this.$__typename = 'ClearDataCheckOverrideResult',
  });

  factory Mutation_clearDataCheckOverride_clearDataCheckOverride.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_clearDataCheckOverride_clearDataCheckOverride(
      result: l$result == null
          ? null
          : Mutation_clearDataCheckOverride_clearDataCheckOverride_result.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_clearDataCheckOverride_clearDataCheckOverride_result? result;

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
    if (other is! Mutation_clearDataCheckOverride_clearDataCheckOverride ||
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

extension UtilityExtension_Mutation_clearDataCheckOverride_clearDataCheckOverride
    on Mutation_clearDataCheckOverride_clearDataCheckOverride {
  CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride<
    Mutation_clearDataCheckOverride_clearDataCheckOverride
  >
  get copyWith =>
      CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride<
  TRes
> {
  factory CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride(
    Mutation_clearDataCheckOverride_clearDataCheckOverride instance,
    TRes Function(Mutation_clearDataCheckOverride_clearDataCheckOverride) then,
  ) = _CopyWithImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride;

  factory CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride;

  TRes call({
    Mutation_clearDataCheckOverride_clearDataCheckOverride_result? result,
    String? $__typename,
  });
  CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result<TRes>
  get result;
}

class _CopyWithImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride<TRes>
    implements
        CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride<TRes> {
  _CopyWithImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride(
    this._instance,
    this._then,
  );

  final Mutation_clearDataCheckOverride_clearDataCheckOverride _instance;

  final TRes Function(Mutation_clearDataCheckOverride_clearDataCheckOverride)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_clearDataCheckOverride_clearDataCheckOverride(
      result: result == _undefined
          ? _instance.result
          : (result
                as Mutation_clearDataCheckOverride_clearDataCheckOverride_result?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result<TRes>
  get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride<
  TRes
>
    implements
        CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride<TRes> {
  _CopyWithStubImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride(
    this._res,
  );

  TRes _res;

  call({
    Mutation_clearDataCheckOverride_clearDataCheckOverride_result? result,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result<TRes>
  get result =>
      CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result.stub(
        _res,
      );
}

class Mutation_clearDataCheckOverride_clearDataCheckOverride_result {
  Mutation_clearDataCheckOverride_clearDataCheckOverride_result({
    required this.id,
    required this.familyId,
    this.$__typename = 'DataCheckOverride',
  });

  factory Mutation_clearDataCheckOverride_clearDataCheckOverride_result.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$familyId = json['familyId'];
    final l$$__typename = json['__typename'];
    return Mutation_clearDataCheckOverride_clearDataCheckOverride_result(
      id: (l$id as String),
      familyId: (l$familyId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String familyId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$familyId = familyId;
    _resultData['familyId'] = l$familyId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$familyId = familyId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$familyId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_clearDataCheckOverride_clearDataCheckOverride_result ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
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

extension UtilityExtension_Mutation_clearDataCheckOverride_clearDataCheckOverride_result
    on Mutation_clearDataCheckOverride_clearDataCheckOverride_result {
  CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result<
    Mutation_clearDataCheckOverride_clearDataCheckOverride_result
  >
  get copyWith =>
      CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result<
  TRes
> {
  factory CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result(
    Mutation_clearDataCheckOverride_clearDataCheckOverride_result instance,
    TRes Function(Mutation_clearDataCheckOverride_clearDataCheckOverride_result)
    then,
  ) = _CopyWithImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride_result;

  factory CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride_result;

  TRes call({String? id, String? familyId, String? $__typename});
}

class _CopyWithImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride_result<
  TRes
>
    implements
        CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result<
          TRes
        > {
  _CopyWithImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride_result(
    this._instance,
    this._then,
  );

  final Mutation_clearDataCheckOverride_clearDataCheckOverride_result _instance;

  final TRes Function(
    Mutation_clearDataCheckOverride_clearDataCheckOverride_result,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? familyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_clearDataCheckOverride_clearDataCheckOverride_result(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      familyId: familyId == _undefined || familyId == null
          ? _instance.familyId
          : (familyId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride_result<
  TRes
>
    implements
        CopyWith_Mutation_clearDataCheckOverride_clearDataCheckOverride_result<
          TRes
        > {
  _CopyWithStubImpl_Mutation_clearDataCheckOverride_clearDataCheckOverride_result(
    this._res,
  );

  TRes _res;

  call({String? id, String? familyId, String? $__typename}) => _res;
}
