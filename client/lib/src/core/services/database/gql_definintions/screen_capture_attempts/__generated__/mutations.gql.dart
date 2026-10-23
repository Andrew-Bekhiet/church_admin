import 'package:gql/ast.dart';

class Variables_Mutation_recordScreenCaptureAttempt {
  factory Variables_Mutation_recordScreenCaptureAttempt({
    required String captureKind,
  }) => Variables_Mutation_recordScreenCaptureAttempt._({
    r'captureKind': captureKind,
  });

  Variables_Mutation_recordScreenCaptureAttempt._(this._$data);

  factory Variables_Mutation_recordScreenCaptureAttempt.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$captureKind = data['captureKind'];
    result$data['captureKind'] = (l$captureKind as String);
    return Variables_Mutation_recordScreenCaptureAttempt._(result$data);
  }

  Map<String, dynamic> _$data;

  String get captureKind => (_$data['captureKind'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$captureKind = captureKind;
    result$data['captureKind'] = l$captureKind;
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
    final l$captureKind = captureKind;
    final lOther$captureKind = other.captureKind;
    if (l$captureKind != lOther$captureKind) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$captureKind = captureKind;
    return Object.hashAll([l$captureKind]);
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

  TRes call({String? captureKind});
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

  TRes call({Object? captureKind = _undefined}) => _then(
    Variables_Mutation_recordScreenCaptureAttempt._({
      ..._instance._$data,
      if (captureKind != _undefined && captureKind != null)
        'captureKind': (captureKind as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_recordScreenCaptureAttempt<TRes>
    implements CopyWith_Variables_Mutation_recordScreenCaptureAttempt<TRes> {
  _CopyWithStubImpl_Variables_Mutation_recordScreenCaptureAttempt(this._res);

  TRes _res;

  call({String? captureKind}) => _res;
}

class Mutation_recordScreenCaptureAttempt {
  Mutation_recordScreenCaptureAttempt({
    this.insertOperationsScreenCaptureAttempts,
  });

  factory Mutation_recordScreenCaptureAttempt.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$insertOperationsScreenCaptureAttempts =
        json['insertOperationsScreenCaptureAttempts'];
    return Mutation_recordScreenCaptureAttempt(
      insertOperationsScreenCaptureAttempts:
          l$insertOperationsScreenCaptureAttempts == null
          ? null
          : Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts.fromJson(
              (l$insertOperationsScreenCaptureAttempts as Map<String, dynamic>),
            ),
    );
  }

  final Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts?
  insertOperationsScreenCaptureAttempts;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertOperationsScreenCaptureAttempts =
        insertOperationsScreenCaptureAttempts;
    _resultData['insertOperationsScreenCaptureAttempts'] =
        l$insertOperationsScreenCaptureAttempts?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertOperationsScreenCaptureAttempts =
        insertOperationsScreenCaptureAttempts;
    return Object.hashAll([l$insertOperationsScreenCaptureAttempts]);
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
    final l$insertOperationsScreenCaptureAttempts =
        insertOperationsScreenCaptureAttempts;
    final lOther$insertOperationsScreenCaptureAttempts =
        other.insertOperationsScreenCaptureAttempts;
    if (l$insertOperationsScreenCaptureAttempts !=
        lOther$insertOperationsScreenCaptureAttempts) {
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
    Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts?
    insertOperationsScreenCaptureAttempts,
  });
  CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts<
    TRes
  >
  get insertOperationsScreenCaptureAttempts;
}

class _CopyWithImpl_Mutation_recordScreenCaptureAttempt<TRes>
    implements CopyWith_Mutation_recordScreenCaptureAttempt<TRes> {
  _CopyWithImpl_Mutation_recordScreenCaptureAttempt(this._instance, this._then);

  final Mutation_recordScreenCaptureAttempt _instance;

  final TRes Function(Mutation_recordScreenCaptureAttempt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertOperationsScreenCaptureAttempts = _undefined,
  }) => _then(
    Mutation_recordScreenCaptureAttempt(
      insertOperationsScreenCaptureAttempts:
          insertOperationsScreenCaptureAttempts == _undefined
          ? _instance.insertOperationsScreenCaptureAttempts
          : (insertOperationsScreenCaptureAttempts
                as Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts?),
    ),
  );

  CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts<
    TRes
  >
  get insertOperationsScreenCaptureAttempts {
    final local$insertOperationsScreenCaptureAttempts =
        _instance.insertOperationsScreenCaptureAttempts;
    return local$insertOperationsScreenCaptureAttempts == null
        ? CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts(
            local$insertOperationsScreenCaptureAttempts,
            (e) => call(insertOperationsScreenCaptureAttempts: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt<TRes>
    implements CopyWith_Mutation_recordScreenCaptureAttempt<TRes> {
  _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt(this._res);

  TRes _res;

  call({
    Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts?
    insertOperationsScreenCaptureAttempts,
  }) => _res;

  CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts<
    TRes
  >
  get insertOperationsScreenCaptureAttempts =>
      CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts.stub(
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
          variable: VariableNode(name: NameNode(value: 'captureKind')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'insertOperationsScreenCaptureAttempts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'objects'),
                value: ListValueNode(
                  values: [
                    ObjectValueNode(
                      fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'captureKind'),
                          value: VariableNode(
                            name: NameNode(value: 'captureKind'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'affectedRows'),
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

class Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts {
  Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts({
    required this.affectedRows,
    this.$__typename = 'OperationsScreenCaptureAttemptsMutationResponse',
  });

  factory Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$affectedRows = json['affectedRows'];
    final l$$__typename = json['__typename'];
    return Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts(
      affectedRows: (l$affectedRows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedRows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedRows = affectedRows;
    _resultData['affectedRows'] = l$affectedRows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedRows = affectedRows;
    final l$$__typename = $__typename;
    return Object.hashAll([l$affectedRows, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedRows = affectedRows;
    final lOther$affectedRows = other.affectedRows;
    if (l$affectedRows != lOther$affectedRows) {
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

extension UtilityExtension_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts
    on Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts {
  CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts<
    Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts
  >
  get copyWith =>
      CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts(
        this,
        (i) => i,
      );
}

abstract class CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts<
  TRes
> {
  factory CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts(
    Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts
    instance,
    TRes Function(
      Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts,
    )
    then,
  ) = _CopyWithImpl_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts;

  factory CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts;

  TRes call({int? affectedRows, String? $__typename});
}

class _CopyWithImpl_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts<
  TRes
>
    implements
        CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts<
          TRes
        > {
  _CopyWithImpl_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts(
    this._instance,
    this._then,
  );

  final Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts
  _instance;

  final TRes Function(
    Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedRows = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts(
      affectedRows: affectedRows == _undefined || affectedRows == null
          ? _instance.affectedRows
          : (affectedRows as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts<
  TRes
>
    implements
        CopyWith_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts<
          TRes
        > {
  _CopyWithStubImpl_Mutation_recordScreenCaptureAttempt_insertOperationsScreenCaptureAttempts(
    this._res,
  );

  TRes _res;

  call({int? affectedRows, String? $__typename}) => _res;
}
