import '../../../../../graphql/__generated__/schema.graphql.dart';

import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_recordScreenCaptureAttempt {
  factory Variables_Mutation_recordScreenCaptureAttempt({
    required Input_RecordScreenCaptureAttemptInput input,
  }) => Variables_Mutation_recordScreenCaptureAttempt._({r'input': input});

  Variables_Mutation_recordScreenCaptureAttempt._(this._$data);

  factory Variables_Mutation_recordScreenCaptureAttempt.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_RecordScreenCaptureAttemptInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_recordScreenCaptureAttempt._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_RecordScreenCaptureAttemptInput get input =>
      (_$data['input'] as Input_RecordScreenCaptureAttemptInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_recordScreenCaptureAttempt<
    Variables_Mutation_recordScreenCaptureAttempt
  >
  get copyWith =>
      CopyWith_Variables_Mutation_recordScreenCaptureAttempt(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_recordScreenCaptureAttempt ||
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

abstract class CopyWith_Variables_Mutation_recordScreenCaptureAttempt<TRes> {
  factory CopyWith_Variables_Mutation_recordScreenCaptureAttempt(
    Variables_Mutation_recordScreenCaptureAttempt instance,
    TRes Function(Variables_Mutation_recordScreenCaptureAttempt) then,
  ) = _CopyWithImpl_Variables_Mutation_recordScreenCaptureAttempt;

  factory CopyWith_Variables_Mutation_recordScreenCaptureAttempt.stub(
    TRes res,
  ) = _CopyWithStubImpl_Variables_Mutation_recordScreenCaptureAttempt;

  TRes call({Input_RecordScreenCaptureAttemptInput? input});
}

class _CopyWithImpl_Variables_Mutation_recordScreenCaptureAttempt<TRes>
    implements CopyWith_Variables_Mutation_recordScreenCaptureAttempt<TRes> {
  _CopyWithImpl_Variables_Mutation_recordScreenCaptureAttempt(
    this._instance,
    this._then,
  );

  final Variables_Mutation_recordScreenCaptureAttempt _instance;

  final TRes Function(Variables_Mutation_recordScreenCaptureAttempt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_recordScreenCaptureAttempt._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_RecordScreenCaptureAttemptInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_recordScreenCaptureAttempt<TRes>
    implements CopyWith_Variables_Mutation_recordScreenCaptureAttempt<TRes> {
  _CopyWithStubImpl_Variables_Mutation_recordScreenCaptureAttempt(this._res);

  TRes _res;

  call({Input_RecordScreenCaptureAttemptInput? input}) => _res;
}

class Mutation_recordScreenCaptureAttempt {
  Mutation_recordScreenCaptureAttempt({
    this.recordScreenCaptureAttempt,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_recordScreenCaptureAttempt.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$recordScreenCaptureAttempt = json['recordScreenCaptureAttempt'];
    final l$$__typename = json['__typename'];
    return Mutation_recordScreenCaptureAttempt(
      recordScreenCaptureAttempt: l$recordScreenCaptureAttempt == null
          ? null
          : Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt.fromJson(
              (l$recordScreenCaptureAttempt as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt?
  recordScreenCaptureAttempt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recordScreenCaptureAttempt = recordScreenCaptureAttempt;
    _resultData['recordScreenCaptureAttempt'] = l$recordScreenCaptureAttempt
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recordScreenCaptureAttempt = recordScreenCaptureAttempt;
    final l$$__typename = $__typename;
    return Object.hashAll([l$recordScreenCaptureAttempt, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_recordScreenCaptureAttempt ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordScreenCaptureAttempt = recordScreenCaptureAttempt;
    final lOther$recordScreenCaptureAttempt = other.recordScreenCaptureAttempt;
    if (l$recordScreenCaptureAttempt != lOther$recordScreenCaptureAttempt) {
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

extension UtilityExtension_Mutation_recordScreenCaptureAttempt
    on Mutation_recordScreenCaptureAttempt {
  CopyWith_Mutation_recordScreenCaptureAttempt<
    Mutation_recordScreenCaptureAttempt
  >
  get copyWith => CopyWith_Mutation_recordScreenCaptureAttempt(this, (i) => i);
}

abstract class CopyWith_Mutation_recordScreenCaptureAttempt<TRes> {
  factory CopyWith_Mutation_recordScreenCaptureAttempt(
    Mutation_recordScreenCaptureAttempt instance,
    TRes Function(Mutation_recordScreenCaptureAttempt) then,
  ) = _CopyWithImpl_Mutation_recordScreenCaptureAttempt;

  factory CopyWith_Mutation_recordScreenCaptureAttempt.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt;

  TRes call({
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt?
    recordScreenCaptureAttempt,
    String? $__typename,
  });
  CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt<TRes>
  get recordScreenCaptureAttempt;
}

class _CopyWithImpl_Mutation_recordScreenCaptureAttempt<TRes>
    implements CopyWith_Mutation_recordScreenCaptureAttempt<TRes> {
  _CopyWithImpl_Mutation_recordScreenCaptureAttempt(this._instance, this._then);

  final Mutation_recordScreenCaptureAttempt _instance;

  final TRes Function(Mutation_recordScreenCaptureAttempt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordScreenCaptureAttempt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordScreenCaptureAttempt(
      recordScreenCaptureAttempt: recordScreenCaptureAttempt == _undefined
          ? _instance.recordScreenCaptureAttempt
          : (recordScreenCaptureAttempt
                as Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt<TRes>
  get recordScreenCaptureAttempt {
    final local$recordScreenCaptureAttempt =
        _instance.recordScreenCaptureAttempt;
    return local$recordScreenCaptureAttempt == null
        ? CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt(
            local$recordScreenCaptureAttempt,
            (e) => call(recordScreenCaptureAttempt: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt<TRes>
    implements CopyWith_Mutation_recordScreenCaptureAttempt<TRes> {
  _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt(this._res);

  TRes _res;

  call({
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt?
    recordScreenCaptureAttempt,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt<TRes>
  get recordScreenCaptureAttempt =>
      CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt.stub(
        _res,
      );
}

const documentNodeMutationrecordScreenCaptureAttempt = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'recordScreenCaptureAttempt'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RecordScreenCaptureAttemptInput'),
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
            name: NameNode(value: 'recordScreenCaptureAttempt'),
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
                        name: NameNode(value: 'captureKind'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'recordedAt'),
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

class Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt {
  Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt({
    this.result,
    this.$__typename = 'RecordScreenCaptureAttemptResult',
  });

  factory Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt(
      result: l$result == null
          ? null
          : Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result?
  result;

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
    if (other
            is! Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt ||
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

extension UtilityExtension_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt
    on Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt {
  CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt<
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt
  >
  get copyWith =>
      CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt<
  TRes
> {
  factory CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt(
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt instance,
    TRes Function(
      Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt,
    )
    then,
  ) = _CopyWithImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt;

  factory CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt;

  TRes call({
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result?
    result,
    String? $__typename,
  });
  CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result<
    TRes
  >
  get result;
}

class _CopyWithImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt<
  TRes
>
    implements
        CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt<
          TRes
        > {
  _CopyWithImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt(
    this._instance,
    this._then,
  );

  final Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt
  _instance;

  final TRes Function(
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? result = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt(
      result: result == _undefined
          ? _instance.result
          : (result
                as Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result<
    TRes
  >
  get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt<
  TRes
>
    implements
        CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt<
          TRes
        > {
  _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt(
    this._res,
  );

  TRes _res;

  call({
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result?
    result,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result<
    TRes
  >
  get result =>
      CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result.stub(
        _res,
      );
}

class Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result {
  Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result({
    required this.id,
    required this.captureKind,
    required this.recordedAt,
    this.$__typename = 'ScreenCaptureAttempt',
  });

  factory Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$captureKind = json['captureKind'];
    final l$recordedAt = json['recordedAt'];
    final l$$__typename = json['__typename'];
    return Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result(
      id: (l$id as String),
      captureKind: fromJson_Enum_ScreenCaptureKind((l$captureKind as String)),
      recordedAt: tstzFromString(l$recordedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum_ScreenCaptureKind captureKind;

  final DateTime recordedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$captureKind = captureKind;
    _resultData['captureKind'] = toJson_Enum_ScreenCaptureKind(l$captureKind);
    final l$recordedAt = recordedAt;
    _resultData['recordedAt'] = tstzToString(l$recordedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$captureKind = captureKind;
    final l$recordedAt = recordedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$captureKind, l$recordedAt, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$captureKind = captureKind;
    final lOther$captureKind = other.captureKind;
    if (l$captureKind != lOther$captureKind) {
      return false;
    }
    final l$recordedAt = recordedAt;
    final lOther$recordedAt = other.recordedAt;
    if (l$recordedAt != lOther$recordedAt) {
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

extension UtilityExtension_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result
    on Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result {
  CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result<
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result
  >
  get copyWith =>
      CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result<
  TRes
> {
  factory CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result(
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result
    instance,
    TRes Function(
      Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result,
    )
    then,
  ) = _CopyWithImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result;

  factory CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result;

  TRes call({
    String? id,
    Enum_ScreenCaptureKind? captureKind,
    DateTime? recordedAt,
    String? $__typename,
  });
}

class _CopyWithImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result<
  TRes
>
    implements
        CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result<
          TRes
        > {
  _CopyWithImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result(
    this._instance,
    this._then,
  );

  final Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result
  _instance;

  final TRes Function(
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? captureKind = _undefined,
    Object? recordedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      captureKind: captureKind == _undefined || captureKind == null
          ? _instance.captureKind
          : (captureKind as Enum_ScreenCaptureKind),
      recordedAt: recordedAt == _undefined || recordedAt == null
          ? _instance.recordedAt
          : (recordedAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result<
  TRes
>
    implements
        CopyWith_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result<
          TRes
        > {
  _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt_recordScreenCaptureAttempt_result(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    Enum_ScreenCaptureKind? captureKind,
    DateTime? recordedAt,
    String? $__typename,
  }) => _res;
}
