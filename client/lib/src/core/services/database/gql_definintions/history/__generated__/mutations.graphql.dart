import '../../../../../graphql/__generated__/schema.graphql.dart';
import '../../gql/__generated__/fragments.graphql.dart';
import 'fragments.graphql.dart';

import 'package:gql/ast.dart';

class Variables_Mutation_recordVisit {
  factory Variables_Mutation_recordVisit({
    required Input_RecordVisitInput input,
  }) => Variables_Mutation_recordVisit._({r'input': input});

  Variables_Mutation_recordVisit._(this._$data);

  factory Variables_Mutation_recordVisit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_RecordVisitInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_recordVisit._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_RecordVisitInput get input =>
      (_$data['input'] as Input_RecordVisitInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_recordVisit<Variables_Mutation_recordVisit>
  get copyWith => CopyWith_Variables_Mutation_recordVisit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_recordVisit ||
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

abstract class CopyWith_Variables_Mutation_recordVisit<TRes> {
  factory CopyWith_Variables_Mutation_recordVisit(
    Variables_Mutation_recordVisit instance,
    TRes Function(Variables_Mutation_recordVisit) then,
  ) = _CopyWithImpl_Variables_Mutation_recordVisit;

  factory CopyWith_Variables_Mutation_recordVisit.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_recordVisit;

  TRes call({Input_RecordVisitInput? input});
}

class _CopyWithImpl_Variables_Mutation_recordVisit<TRes>
    implements CopyWith_Variables_Mutation_recordVisit<TRes> {
  _CopyWithImpl_Variables_Mutation_recordVisit(this._instance, this._then);

  final Variables_Mutation_recordVisit _instance;

  final TRes Function(Variables_Mutation_recordVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_recordVisit._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_RecordVisitInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_recordVisit<TRes>
    implements CopyWith_Variables_Mutation_recordVisit<TRes> {
  _CopyWithStubImpl_Variables_Mutation_recordVisit(this._res);

  TRes _res;

  call({Input_RecordVisitInput? input}) => _res;
}

class Mutation_recordVisit {
  Mutation_recordVisit({
    this.recordVisit,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_recordVisit.fromJson(Map<String, dynamic> json) {
    final l$recordVisit = json['recordVisit'];
    final l$$__typename = json['__typename'];
    return Mutation_recordVisit(
      recordVisit: l$recordVisit == null
          ? null
          : Mutation_recordVisit_recordVisit.fromJson(
              (l$recordVisit as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_recordVisit_recordVisit? recordVisit;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recordVisit = recordVisit;
    _resultData['recordVisit'] = l$recordVisit?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recordVisit = recordVisit;
    final l$$__typename = $__typename;
    return Object.hashAll([l$recordVisit, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_recordVisit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordVisit = recordVisit;
    final lOther$recordVisit = other.recordVisit;
    if (l$recordVisit != lOther$recordVisit) {
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

extension UtilityExtension_Mutation_recordVisit on Mutation_recordVisit {
  CopyWith_Mutation_recordVisit<Mutation_recordVisit> get copyWith =>
      CopyWith_Mutation_recordVisit(this, (i) => i);
}

abstract class CopyWith_Mutation_recordVisit<TRes> {
  factory CopyWith_Mutation_recordVisit(
    Mutation_recordVisit instance,
    TRes Function(Mutation_recordVisit) then,
  ) = _CopyWithImpl_Mutation_recordVisit;

  factory CopyWith_Mutation_recordVisit.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordVisit;

  TRes call({
    Mutation_recordVisit_recordVisit? recordVisit,
    String? $__typename,
  });
  CopyWith_Mutation_recordVisit_recordVisit<TRes> get recordVisit;
}

class _CopyWithImpl_Mutation_recordVisit<TRes>
    implements CopyWith_Mutation_recordVisit<TRes> {
  _CopyWithImpl_Mutation_recordVisit(this._instance, this._then);

  final Mutation_recordVisit _instance;

  final TRes Function(Mutation_recordVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordVisit = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordVisit(
      recordVisit: recordVisit == _undefined
          ? _instance.recordVisit
          : (recordVisit as Mutation_recordVisit_recordVisit?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_recordVisit_recordVisit<TRes> get recordVisit {
    final local$recordVisit = _instance.recordVisit;
    return local$recordVisit == null
        ? CopyWith_Mutation_recordVisit_recordVisit.stub(_then(_instance))
        : CopyWith_Mutation_recordVisit_recordVisit(
            local$recordVisit,
            (e) => call(recordVisit: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordVisit<TRes>
    implements CopyWith_Mutation_recordVisit<TRes> {
  _CopyWithStubImpl_Mutation_recordVisit(this._res);

  TRes _res;

  call({Mutation_recordVisit_recordVisit? recordVisit, String? $__typename}) =>
      _res;

  CopyWith_Mutation_recordVisit_recordVisit<TRes> get recordVisit =>
      CopyWith_Mutation_recordVisit_recordVisit.stub(_res);
}

const documentNodeMutationrecordVisit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'recordVisit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RecordVisitInput'),
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
            name: NameNode(value: 'recordVisit'),
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
                        name: NameNode(value: 'Visit'),
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
    fragmentDefinitionVisit,
    fragmentDefinitionUser,
  ],
);

class Mutation_recordVisit_recordVisit {
  Mutation_recordVisit_recordVisit({
    this.result,
    this.$__typename = 'RecordVisitResult',
  });

  factory Mutation_recordVisit_recordVisit.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_recordVisit_recordVisit(
      result: l$result == null
          ? null
          : Fragment_Visit.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Visit? result;

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
    if (other is! Mutation_recordVisit_recordVisit ||
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

extension UtilityExtension_Mutation_recordVisit_recordVisit
    on Mutation_recordVisit_recordVisit {
  CopyWith_Mutation_recordVisit_recordVisit<Mutation_recordVisit_recordVisit>
  get copyWith => CopyWith_Mutation_recordVisit_recordVisit(this, (i) => i);
}

abstract class CopyWith_Mutation_recordVisit_recordVisit<TRes> {
  factory CopyWith_Mutation_recordVisit_recordVisit(
    Mutation_recordVisit_recordVisit instance,
    TRes Function(Mutation_recordVisit_recordVisit) then,
  ) = _CopyWithImpl_Mutation_recordVisit_recordVisit;

  factory CopyWith_Mutation_recordVisit_recordVisit.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordVisit_recordVisit;

  TRes call({Fragment_Visit? result, String? $__typename});
  CopyWith_Fragment_Visit<TRes> get result;
}

class _CopyWithImpl_Mutation_recordVisit_recordVisit<TRes>
    implements CopyWith_Mutation_recordVisit_recordVisit<TRes> {
  _CopyWithImpl_Mutation_recordVisit_recordVisit(this._instance, this._then);

  final Mutation_recordVisit_recordVisit _instance;

  final TRes Function(Mutation_recordVisit_recordVisit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_recordVisit_recordVisit(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Visit?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Visit<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Visit.stub(_then(_instance))
        : CopyWith_Fragment_Visit(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_recordVisit_recordVisit<TRes>
    implements CopyWith_Mutation_recordVisit_recordVisit<TRes> {
  _CopyWithStubImpl_Mutation_recordVisit_recordVisit(this._res);

  TRes _res;

  call({Fragment_Visit? result, String? $__typename}) => _res;

  CopyWith_Fragment_Visit<TRes> get result =>
      CopyWith_Fragment_Visit.stub(_res);
}

class Variables_Mutation_recordCall {
  factory Variables_Mutation_recordCall({
    required Input_RecordCallInput input,
  }) => Variables_Mutation_recordCall._({r'input': input});

  Variables_Mutation_recordCall._(this._$data);

  factory Variables_Mutation_recordCall.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_RecordCallInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_recordCall._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_RecordCallInput get input => (_$data['input'] as Input_RecordCallInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_recordCall<Variables_Mutation_recordCall>
  get copyWith => CopyWith_Variables_Mutation_recordCall(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_recordCall ||
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

abstract class CopyWith_Variables_Mutation_recordCall<TRes> {
  factory CopyWith_Variables_Mutation_recordCall(
    Variables_Mutation_recordCall instance,
    TRes Function(Variables_Mutation_recordCall) then,
  ) = _CopyWithImpl_Variables_Mutation_recordCall;

  factory CopyWith_Variables_Mutation_recordCall.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_recordCall;

  TRes call({Input_RecordCallInput? input});
}

class _CopyWithImpl_Variables_Mutation_recordCall<TRes>
    implements CopyWith_Variables_Mutation_recordCall<TRes> {
  _CopyWithImpl_Variables_Mutation_recordCall(this._instance, this._then);

  final Variables_Mutation_recordCall _instance;

  final TRes Function(Variables_Mutation_recordCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_recordCall._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_RecordCallInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_recordCall<TRes>
    implements CopyWith_Variables_Mutation_recordCall<TRes> {
  _CopyWithStubImpl_Variables_Mutation_recordCall(this._res);

  TRes _res;

  call({Input_RecordCallInput? input}) => _res;
}

class Mutation_recordCall {
  Mutation_recordCall({this.recordCall, this.$__typename = 'RootMutationType'});

  factory Mutation_recordCall.fromJson(Map<String, dynamic> json) {
    final l$recordCall = json['recordCall'];
    final l$$__typename = json['__typename'];
    return Mutation_recordCall(
      recordCall: l$recordCall == null
          ? null
          : Mutation_recordCall_recordCall.fromJson(
              (l$recordCall as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_recordCall_recordCall? recordCall;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recordCall = recordCall;
    _resultData['recordCall'] = l$recordCall?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recordCall = recordCall;
    final l$$__typename = $__typename;
    return Object.hashAll([l$recordCall, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_recordCall || runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordCall = recordCall;
    final lOther$recordCall = other.recordCall;
    if (l$recordCall != lOther$recordCall) {
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

extension UtilityExtension_Mutation_recordCall on Mutation_recordCall {
  CopyWith_Mutation_recordCall<Mutation_recordCall> get copyWith =>
      CopyWith_Mutation_recordCall(this, (i) => i);
}

abstract class CopyWith_Mutation_recordCall<TRes> {
  factory CopyWith_Mutation_recordCall(
    Mutation_recordCall instance,
    TRes Function(Mutation_recordCall) then,
  ) = _CopyWithImpl_Mutation_recordCall;

  factory CopyWith_Mutation_recordCall.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordCall;

  TRes call({Mutation_recordCall_recordCall? recordCall, String? $__typename});
  CopyWith_Mutation_recordCall_recordCall<TRes> get recordCall;
}

class _CopyWithImpl_Mutation_recordCall<TRes>
    implements CopyWith_Mutation_recordCall<TRes> {
  _CopyWithImpl_Mutation_recordCall(this._instance, this._then);

  final Mutation_recordCall _instance;

  final TRes Function(Mutation_recordCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordCall = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordCall(
      recordCall: recordCall == _undefined
          ? _instance.recordCall
          : (recordCall as Mutation_recordCall_recordCall?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_recordCall_recordCall<TRes> get recordCall {
    final local$recordCall = _instance.recordCall;
    return local$recordCall == null
        ? CopyWith_Mutation_recordCall_recordCall.stub(_then(_instance))
        : CopyWith_Mutation_recordCall_recordCall(
            local$recordCall,
            (e) => call(recordCall: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordCall<TRes>
    implements CopyWith_Mutation_recordCall<TRes> {
  _CopyWithStubImpl_Mutation_recordCall(this._res);

  TRes _res;

  call({Mutation_recordCall_recordCall? recordCall, String? $__typename}) =>
      _res;

  CopyWith_Mutation_recordCall_recordCall<TRes> get recordCall =>
      CopyWith_Mutation_recordCall_recordCall.stub(_res);
}

const documentNodeMutationrecordCall = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'recordCall'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RecordCallInput'),
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
            name: NameNode(value: 'recordCall'),
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
                        name: NameNode(value: 'Call'),
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
    fragmentDefinitionCall,
    fragmentDefinitionUser,
  ],
);

class Mutation_recordCall_recordCall {
  Mutation_recordCall_recordCall({
    this.result,
    this.$__typename = 'RecordCallResult',
  });

  factory Mutation_recordCall_recordCall.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_recordCall_recordCall(
      result: l$result == null
          ? null
          : Fragment_Call.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Call? result;

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
    if (other is! Mutation_recordCall_recordCall ||
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

extension UtilityExtension_Mutation_recordCall_recordCall
    on Mutation_recordCall_recordCall {
  CopyWith_Mutation_recordCall_recordCall<Mutation_recordCall_recordCall>
  get copyWith => CopyWith_Mutation_recordCall_recordCall(this, (i) => i);
}

abstract class CopyWith_Mutation_recordCall_recordCall<TRes> {
  factory CopyWith_Mutation_recordCall_recordCall(
    Mutation_recordCall_recordCall instance,
    TRes Function(Mutation_recordCall_recordCall) then,
  ) = _CopyWithImpl_Mutation_recordCall_recordCall;

  factory CopyWith_Mutation_recordCall_recordCall.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordCall_recordCall;

  TRes call({Fragment_Call? result, String? $__typename});
  CopyWith_Fragment_Call<TRes> get result;
}

class _CopyWithImpl_Mutation_recordCall_recordCall<TRes>
    implements CopyWith_Mutation_recordCall_recordCall<TRes> {
  _CopyWithImpl_Mutation_recordCall_recordCall(this._instance, this._then);

  final Mutation_recordCall_recordCall _instance;

  final TRes Function(Mutation_recordCall_recordCall) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_recordCall_recordCall(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Call?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Call<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Call.stub(_then(_instance))
        : CopyWith_Fragment_Call(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_recordCall_recordCall<TRes>
    implements CopyWith_Mutation_recordCall_recordCall<TRes> {
  _CopyWithStubImpl_Mutation_recordCall_recordCall(this._res);

  TRes _res;

  call({Fragment_Call? result, String? $__typename}) => _res;

  CopyWith_Fragment_Call<TRes> get result => CopyWith_Fragment_Call.stub(_res);
}

class Variables_Mutation_recordConfession {
  factory Variables_Mutation_recordConfession({
    required Input_RecordConfessionInput input,
  }) => Variables_Mutation_recordConfession._({r'input': input});

  Variables_Mutation_recordConfession._(this._$data);

  factory Variables_Mutation_recordConfession.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_RecordConfessionInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_recordConfession._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_RecordConfessionInput get input =>
      (_$data['input'] as Input_RecordConfessionInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_recordConfession<
    Variables_Mutation_recordConfession
  >
  get copyWith => CopyWith_Variables_Mutation_recordConfession(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_recordConfession ||
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

abstract class CopyWith_Variables_Mutation_recordConfession<TRes> {
  factory CopyWith_Variables_Mutation_recordConfession(
    Variables_Mutation_recordConfession instance,
    TRes Function(Variables_Mutation_recordConfession) then,
  ) = _CopyWithImpl_Variables_Mutation_recordConfession;

  factory CopyWith_Variables_Mutation_recordConfession.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_recordConfession;

  TRes call({Input_RecordConfessionInput? input});
}

class _CopyWithImpl_Variables_Mutation_recordConfession<TRes>
    implements CopyWith_Variables_Mutation_recordConfession<TRes> {
  _CopyWithImpl_Variables_Mutation_recordConfession(this._instance, this._then);

  final Variables_Mutation_recordConfession _instance;

  final TRes Function(Variables_Mutation_recordConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_recordConfession._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_RecordConfessionInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_recordConfession<TRes>
    implements CopyWith_Variables_Mutation_recordConfession<TRes> {
  _CopyWithStubImpl_Variables_Mutation_recordConfession(this._res);

  TRes _res;

  call({Input_RecordConfessionInput? input}) => _res;
}

class Mutation_recordConfession {
  Mutation_recordConfession({
    this.recordConfession,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_recordConfession.fromJson(Map<String, dynamic> json) {
    final l$recordConfession = json['recordConfession'];
    final l$$__typename = json['__typename'];
    return Mutation_recordConfession(
      recordConfession: l$recordConfession == null
          ? null
          : Mutation_recordConfession_recordConfession.fromJson(
              (l$recordConfession as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_recordConfession_recordConfession? recordConfession;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recordConfession = recordConfession;
    _resultData['recordConfession'] = l$recordConfession?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recordConfession = recordConfession;
    final l$$__typename = $__typename;
    return Object.hashAll([l$recordConfession, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_recordConfession ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordConfession = recordConfession;
    final lOther$recordConfession = other.recordConfession;
    if (l$recordConfession != lOther$recordConfession) {
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

extension UtilityExtension_Mutation_recordConfession
    on Mutation_recordConfession {
  CopyWith_Mutation_recordConfession<Mutation_recordConfession> get copyWith =>
      CopyWith_Mutation_recordConfession(this, (i) => i);
}

abstract class CopyWith_Mutation_recordConfession<TRes> {
  factory CopyWith_Mutation_recordConfession(
    Mutation_recordConfession instance,
    TRes Function(Mutation_recordConfession) then,
  ) = _CopyWithImpl_Mutation_recordConfession;

  factory CopyWith_Mutation_recordConfession.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordConfession;

  TRes call({
    Mutation_recordConfession_recordConfession? recordConfession,
    String? $__typename,
  });
  CopyWith_Mutation_recordConfession_recordConfession<TRes>
  get recordConfession;
}

class _CopyWithImpl_Mutation_recordConfession<TRes>
    implements CopyWith_Mutation_recordConfession<TRes> {
  _CopyWithImpl_Mutation_recordConfession(this._instance, this._then);

  final Mutation_recordConfession _instance;

  final TRes Function(Mutation_recordConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordConfession = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordConfession(
      recordConfession: recordConfession == _undefined
          ? _instance.recordConfession
          : (recordConfession as Mutation_recordConfession_recordConfession?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_recordConfession_recordConfession<TRes>
  get recordConfession {
    final local$recordConfession = _instance.recordConfession;
    return local$recordConfession == null
        ? CopyWith_Mutation_recordConfession_recordConfession.stub(
            _then(_instance),
          )
        : CopyWith_Mutation_recordConfession_recordConfession(
            local$recordConfession,
            (e) => call(recordConfession: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordConfession<TRes>
    implements CopyWith_Mutation_recordConfession<TRes> {
  _CopyWithStubImpl_Mutation_recordConfession(this._res);

  TRes _res;

  call({
    Mutation_recordConfession_recordConfession? recordConfession,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_recordConfession_recordConfession<TRes>
  get recordConfession =>
      CopyWith_Mutation_recordConfession_recordConfession.stub(_res);
}

const documentNodeMutationrecordConfession = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'recordConfession'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RecordConfessionInput'),
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
            name: NameNode(value: 'recordConfession'),
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
                        name: NameNode(value: 'Confession'),
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
    fragmentDefinitionConfession,
    fragmentDefinitionUser,
  ],
);

class Mutation_recordConfession_recordConfession {
  Mutation_recordConfession_recordConfession({
    this.result,
    this.$__typename = 'RecordConfessionResult',
  });

  factory Mutation_recordConfession_recordConfession.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_recordConfession_recordConfession(
      result: l$result == null
          ? null
          : Fragment_Confession.fromJson((l$result as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Confession? result;

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
    if (other is! Mutation_recordConfession_recordConfession ||
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

extension UtilityExtension_Mutation_recordConfession_recordConfession
    on Mutation_recordConfession_recordConfession {
  CopyWith_Mutation_recordConfession_recordConfession<
    Mutation_recordConfession_recordConfession
  >
  get copyWith =>
      CopyWith_Mutation_recordConfession_recordConfession(this, (i) => i);
}

abstract class CopyWith_Mutation_recordConfession_recordConfession<TRes> {
  factory CopyWith_Mutation_recordConfession_recordConfession(
    Mutation_recordConfession_recordConfession instance,
    TRes Function(Mutation_recordConfession_recordConfession) then,
  ) = _CopyWithImpl_Mutation_recordConfession_recordConfession;

  factory CopyWith_Mutation_recordConfession_recordConfession.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordConfession_recordConfession;

  TRes call({Fragment_Confession? result, String? $__typename});
  CopyWith_Fragment_Confession<TRes> get result;
}

class _CopyWithImpl_Mutation_recordConfession_recordConfession<TRes>
    implements CopyWith_Mutation_recordConfession_recordConfession<TRes> {
  _CopyWithImpl_Mutation_recordConfession_recordConfession(
    this._instance,
    this._then,
  );

  final Mutation_recordConfession_recordConfession _instance;

  final TRes Function(Mutation_recordConfession_recordConfession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_recordConfession_recordConfession(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_Confession?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_Confession<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_Confession.stub(_then(_instance))
        : CopyWith_Fragment_Confession(local$result, (e) => call(result: e));
  }
}

class _CopyWithStubImpl_Mutation_recordConfession_recordConfession<TRes>
    implements CopyWith_Mutation_recordConfession_recordConfession<TRes> {
  _CopyWithStubImpl_Mutation_recordConfession_recordConfession(this._res);

  TRes _res;

  call({Fragment_Confession? result, String? $__typename}) => _res;

  CopyWith_Fragment_Confession<TRes> get result =>
      CopyWith_Fragment_Confession.stub(_res);
}

class Variables_Mutation_recordKodas {
  factory Variables_Mutation_recordKodas({
    required Input_RecordKodasInput input,
  }) => Variables_Mutation_recordKodas._({r'input': input});

  Variables_Mutation_recordKodas._(this._$data);

  factory Variables_Mutation_recordKodas.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_RecordKodasInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_recordKodas._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_RecordKodasInput get input =>
      (_$data['input'] as Input_RecordKodasInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_recordKodas<Variables_Mutation_recordKodas>
  get copyWith => CopyWith_Variables_Mutation_recordKodas(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_recordKodas ||
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

abstract class CopyWith_Variables_Mutation_recordKodas<TRes> {
  factory CopyWith_Variables_Mutation_recordKodas(
    Variables_Mutation_recordKodas instance,
    TRes Function(Variables_Mutation_recordKodas) then,
  ) = _CopyWithImpl_Variables_Mutation_recordKodas;

  factory CopyWith_Variables_Mutation_recordKodas.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_recordKodas;

  TRes call({Input_RecordKodasInput? input});
}

class _CopyWithImpl_Variables_Mutation_recordKodas<TRes>
    implements CopyWith_Variables_Mutation_recordKodas<TRes> {
  _CopyWithImpl_Variables_Mutation_recordKodas(this._instance, this._then);

  final Variables_Mutation_recordKodas _instance;

  final TRes Function(Variables_Mutation_recordKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_recordKodas._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_RecordKodasInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_recordKodas<TRes>
    implements CopyWith_Variables_Mutation_recordKodas<TRes> {
  _CopyWithStubImpl_Variables_Mutation_recordKodas(this._res);

  TRes _res;

  call({Input_RecordKodasInput? input}) => _res;
}

class Mutation_recordKodas {
  Mutation_recordKodas({
    this.recordKodas,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_recordKodas.fromJson(Map<String, dynamic> json) {
    final l$recordKodas = json['recordKodas'];
    final l$$__typename = json['__typename'];
    return Mutation_recordKodas(
      recordKodas: l$recordKodas == null
          ? null
          : Mutation_recordKodas_recordKodas.fromJson(
              (l$recordKodas as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_recordKodas_recordKodas? recordKodas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recordKodas = recordKodas;
    _resultData['recordKodas'] = l$recordKodas?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recordKodas = recordKodas;
    final l$$__typename = $__typename;
    return Object.hashAll([l$recordKodas, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_recordKodas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordKodas = recordKodas;
    final lOther$recordKodas = other.recordKodas;
    if (l$recordKodas != lOther$recordKodas) {
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

extension UtilityExtension_Mutation_recordKodas on Mutation_recordKodas {
  CopyWith_Mutation_recordKodas<Mutation_recordKodas> get copyWith =>
      CopyWith_Mutation_recordKodas(this, (i) => i);
}

abstract class CopyWith_Mutation_recordKodas<TRes> {
  factory CopyWith_Mutation_recordKodas(
    Mutation_recordKodas instance,
    TRes Function(Mutation_recordKodas) then,
  ) = _CopyWithImpl_Mutation_recordKodas;

  factory CopyWith_Mutation_recordKodas.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordKodas;

  TRes call({
    Mutation_recordKodas_recordKodas? recordKodas,
    String? $__typename,
  });
  CopyWith_Mutation_recordKodas_recordKodas<TRes> get recordKodas;
}

class _CopyWithImpl_Mutation_recordKodas<TRes>
    implements CopyWith_Mutation_recordKodas<TRes> {
  _CopyWithImpl_Mutation_recordKodas(this._instance, this._then);

  final Mutation_recordKodas _instance;

  final TRes Function(Mutation_recordKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordKodas = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_recordKodas(
      recordKodas: recordKodas == _undefined
          ? _instance.recordKodas
          : (recordKodas as Mutation_recordKodas_recordKodas?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_recordKodas_recordKodas<TRes> get recordKodas {
    final local$recordKodas = _instance.recordKodas;
    return local$recordKodas == null
        ? CopyWith_Mutation_recordKodas_recordKodas.stub(_then(_instance))
        : CopyWith_Mutation_recordKodas_recordKodas(
            local$recordKodas,
            (e) => call(recordKodas: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordKodas<TRes>
    implements CopyWith_Mutation_recordKodas<TRes> {
  _CopyWithStubImpl_Mutation_recordKodas(this._res);

  TRes _res;

  call({Mutation_recordKodas_recordKodas? recordKodas, String? $__typename}) =>
      _res;

  CopyWith_Mutation_recordKodas_recordKodas<TRes> get recordKodas =>
      CopyWith_Mutation_recordKodas_recordKodas.stub(_res);
}

const documentNodeMutationrecordKodas = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'recordKodas'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RecordKodasInput'),
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
            name: NameNode(value: 'recordKodas'),
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
                        name: NameNode(value: 'KodasDayRecord'),
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
    fragmentDefinitionKodasDayRecord,
  ],
);

class Mutation_recordKodas_recordKodas {
  Mutation_recordKodas_recordKodas({
    this.result,
    this.$__typename = 'RecordKodasResult',
  });

  factory Mutation_recordKodas_recordKodas.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_recordKodas_recordKodas(
      result: l$result == null
          ? null
          : Fragment_KodasDayRecord.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_KodasDayRecord? result;

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
    if (other is! Mutation_recordKodas_recordKodas ||
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

extension UtilityExtension_Mutation_recordKodas_recordKodas
    on Mutation_recordKodas_recordKodas {
  CopyWith_Mutation_recordKodas_recordKodas<Mutation_recordKodas_recordKodas>
  get copyWith => CopyWith_Mutation_recordKodas_recordKodas(this, (i) => i);
}

abstract class CopyWith_Mutation_recordKodas_recordKodas<TRes> {
  factory CopyWith_Mutation_recordKodas_recordKodas(
    Mutation_recordKodas_recordKodas instance,
    TRes Function(Mutation_recordKodas_recordKodas) then,
  ) = _CopyWithImpl_Mutation_recordKodas_recordKodas;

  factory CopyWith_Mutation_recordKodas_recordKodas.stub(TRes res) =
      _CopyWithStubImpl_Mutation_recordKodas_recordKodas;

  TRes call({Fragment_KodasDayRecord? result, String? $__typename});
  CopyWith_Fragment_KodasDayRecord<TRes> get result;
}

class _CopyWithImpl_Mutation_recordKodas_recordKodas<TRes>
    implements CopyWith_Mutation_recordKodas_recordKodas<TRes> {
  _CopyWithImpl_Mutation_recordKodas_recordKodas(this._instance, this._then);

  final Mutation_recordKodas_recordKodas _instance;

  final TRes Function(Mutation_recordKodas_recordKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_recordKodas_recordKodas(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_KodasDayRecord?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_KodasDayRecord<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_KodasDayRecord.stub(_then(_instance))
        : CopyWith_Fragment_KodasDayRecord(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_recordKodas_recordKodas<TRes>
    implements CopyWith_Mutation_recordKodas_recordKodas<TRes> {
  _CopyWithStubImpl_Mutation_recordKodas_recordKodas(this._res);

  TRes _res;

  call({Fragment_KodasDayRecord? result, String? $__typename}) => _res;

  CopyWith_Fragment_KodasDayRecord<TRes> get result =>
      CopyWith_Fragment_KodasDayRecord.stub(_res);
}

class Variables_Mutation_deleteKodas {
  factory Variables_Mutation_deleteKodas({required String id}) =>
      Variables_Mutation_deleteKodas._({r'id': id});

  Variables_Mutation_deleteKodas._(this._$data);

  factory Variables_Mutation_deleteKodas.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables_Mutation_deleteKodas._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith_Variables_Mutation_deleteKodas<Variables_Mutation_deleteKodas>
  get copyWith => CopyWith_Variables_Mutation_deleteKodas(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_deleteKodas ||
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

abstract class CopyWith_Variables_Mutation_deleteKodas<TRes> {
  factory CopyWith_Variables_Mutation_deleteKodas(
    Variables_Mutation_deleteKodas instance,
    TRes Function(Variables_Mutation_deleteKodas) then,
  ) = _CopyWithImpl_Variables_Mutation_deleteKodas;

  factory CopyWith_Variables_Mutation_deleteKodas.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_deleteKodas;

  TRes call({String? id});
}

class _CopyWithImpl_Variables_Mutation_deleteKodas<TRes>
    implements CopyWith_Variables_Mutation_deleteKodas<TRes> {
  _CopyWithImpl_Variables_Mutation_deleteKodas(this._instance, this._then);

  final Variables_Mutation_deleteKodas _instance;

  final TRes Function(Variables_Mutation_deleteKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables_Mutation_deleteKodas._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_deleteKodas<TRes>
    implements CopyWith_Variables_Mutation_deleteKodas<TRes> {
  _CopyWithStubImpl_Variables_Mutation_deleteKodas(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation_deleteKodas {
  Mutation_deleteKodas({
    this.deleteKodas,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deleteKodas.fromJson(Map<String, dynamic> json) {
    final l$deleteKodas = json['deleteKodas'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteKodas(
      deleteKodas: l$deleteKodas == null
          ? null
          : Mutation_deleteKodas_deleteKodas.fromJson(
              (l$deleteKodas as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_deleteKodas_deleteKodas? deleteKodas;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteKodas = deleteKodas;
    _resultData['deleteKodas'] = l$deleteKodas?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteKodas = deleteKodas;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteKodas, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteKodas || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteKodas = deleteKodas;
    final lOther$deleteKodas = other.deleteKodas;
    if (l$deleteKodas != lOther$deleteKodas) {
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

extension UtilityExtension_Mutation_deleteKodas on Mutation_deleteKodas {
  CopyWith_Mutation_deleteKodas<Mutation_deleteKodas> get copyWith =>
      CopyWith_Mutation_deleteKodas(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteKodas<TRes> {
  factory CopyWith_Mutation_deleteKodas(
    Mutation_deleteKodas instance,
    TRes Function(Mutation_deleteKodas) then,
  ) = _CopyWithImpl_Mutation_deleteKodas;

  factory CopyWith_Mutation_deleteKodas.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteKodas;

  TRes call({
    Mutation_deleteKodas_deleteKodas? deleteKodas,
    String? $__typename,
  });
  CopyWith_Mutation_deleteKodas_deleteKodas<TRes> get deleteKodas;
}

class _CopyWithImpl_Mutation_deleteKodas<TRes>
    implements CopyWith_Mutation_deleteKodas<TRes> {
  _CopyWithImpl_Mutation_deleteKodas(this._instance, this._then);

  final Mutation_deleteKodas _instance;

  final TRes Function(Mutation_deleteKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteKodas = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteKodas(
      deleteKodas: deleteKodas == _undefined
          ? _instance.deleteKodas
          : (deleteKodas as Mutation_deleteKodas_deleteKodas?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_deleteKodas_deleteKodas<TRes> get deleteKodas {
    final local$deleteKodas = _instance.deleteKodas;
    return local$deleteKodas == null
        ? CopyWith_Mutation_deleteKodas_deleteKodas.stub(_then(_instance))
        : CopyWith_Mutation_deleteKodas_deleteKodas(
            local$deleteKodas,
            (e) => call(deleteKodas: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteKodas<TRes>
    implements CopyWith_Mutation_deleteKodas<TRes> {
  _CopyWithStubImpl_Mutation_deleteKodas(this._res);

  TRes _res;

  call({Mutation_deleteKodas_deleteKodas? deleteKodas, String? $__typename}) =>
      _res;

  CopyWith_Mutation_deleteKodas_deleteKodas<TRes> get deleteKodas =>
      CopyWith_Mutation_deleteKodas_deleteKodas.stub(_res);
}

const documentNodeMutationdeleteKodas = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteKodas'),
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
            name: NameNode(value: 'deleteKodas'),
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'KodasDayRecord'),
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
    fragmentDefinitionKodasDayRecord,
  ],
);

class Mutation_deleteKodas_deleteKodas {
  Mutation_deleteKodas_deleteKodas({
    this.result,
    this.$__typename = 'DeleteKodasResult',
  });

  factory Mutation_deleteKodas_deleteKodas.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteKodas_deleteKodas(
      result: l$result == null
          ? null
          : Fragment_KodasDayRecord.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_KodasDayRecord? result;

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
    if (other is! Mutation_deleteKodas_deleteKodas ||
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

extension UtilityExtension_Mutation_deleteKodas_deleteKodas
    on Mutation_deleteKodas_deleteKodas {
  CopyWith_Mutation_deleteKodas_deleteKodas<Mutation_deleteKodas_deleteKodas>
  get copyWith => CopyWith_Mutation_deleteKodas_deleteKodas(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteKodas_deleteKodas<TRes> {
  factory CopyWith_Mutation_deleteKodas_deleteKodas(
    Mutation_deleteKodas_deleteKodas instance,
    TRes Function(Mutation_deleteKodas_deleteKodas) then,
  ) = _CopyWithImpl_Mutation_deleteKodas_deleteKodas;

  factory CopyWith_Mutation_deleteKodas_deleteKodas.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteKodas_deleteKodas;

  TRes call({Fragment_KodasDayRecord? result, String? $__typename});
  CopyWith_Fragment_KodasDayRecord<TRes> get result;
}

class _CopyWithImpl_Mutation_deleteKodas_deleteKodas<TRes>
    implements CopyWith_Mutation_deleteKodas_deleteKodas<TRes> {
  _CopyWithImpl_Mutation_deleteKodas_deleteKodas(this._instance, this._then);

  final Mutation_deleteKodas_deleteKodas _instance;

  final TRes Function(Mutation_deleteKodas_deleteKodas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_deleteKodas_deleteKodas(
          result: result == _undefined
              ? _instance.result
              : (result as Fragment_KodasDayRecord?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Fragment_KodasDayRecord<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Fragment_KodasDayRecord.stub(_then(_instance))
        : CopyWith_Fragment_KodasDayRecord(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_deleteKodas_deleteKodas<TRes>
    implements CopyWith_Mutation_deleteKodas_deleteKodas<TRes> {
  _CopyWithStubImpl_Mutation_deleteKodas_deleteKodas(this._res);

  TRes _res;

  call({Fragment_KodasDayRecord? result, String? $__typename}) => _res;

  CopyWith_Fragment_KodasDayRecord<TRes> get result =>
      CopyWith_Fragment_KodasDayRecord.stub(_res);
}
