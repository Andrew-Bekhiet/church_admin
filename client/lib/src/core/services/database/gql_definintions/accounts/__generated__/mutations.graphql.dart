import '../../../../../graphql/__generated__/schema.graphql.dart';

import 'package:gql/ast.dart';

class Mutation_tryClaimAccount {
  Mutation_tryClaimAccount({
    required this.tryClaimAccount,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_tryClaimAccount.fromJson(Map<String, dynamic> json) {
    final l$tryClaimAccount = json['tryClaimAccount'];
    final l$$__typename = json['__typename'];
    return Mutation_tryClaimAccount(
      tryClaimAccount: Mutation_tryClaimAccount_tryClaimAccount.fromJson(
        (l$tryClaimAccount as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_tryClaimAccount_tryClaimAccount tryClaimAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tryClaimAccount = tryClaimAccount;
    _resultData['tryClaimAccount'] = l$tryClaimAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tryClaimAccount = tryClaimAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$tryClaimAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_tryClaimAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tryClaimAccount = tryClaimAccount;
    final lOther$tryClaimAccount = other.tryClaimAccount;
    if (l$tryClaimAccount != lOther$tryClaimAccount) {
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

extension UtilityExtension_Mutation_tryClaimAccount
    on Mutation_tryClaimAccount {
  CopyWith_Mutation_tryClaimAccount<Mutation_tryClaimAccount> get copyWith =>
      CopyWith_Mutation_tryClaimAccount(this, (i) => i);
}

abstract class CopyWith_Mutation_tryClaimAccount<TRes> {
  factory CopyWith_Mutation_tryClaimAccount(
    Mutation_tryClaimAccount instance,
    TRes Function(Mutation_tryClaimAccount) then,
  ) = _CopyWithImpl_Mutation_tryClaimAccount;

  factory CopyWith_Mutation_tryClaimAccount.stub(TRes res) =
      _CopyWithStubImpl_Mutation_tryClaimAccount;

  TRes call({
    Mutation_tryClaimAccount_tryClaimAccount? tryClaimAccount,
    String? $__typename,
  });
  CopyWith_Mutation_tryClaimAccount_tryClaimAccount<TRes> get tryClaimAccount;
}

class _CopyWithImpl_Mutation_tryClaimAccount<TRes>
    implements CopyWith_Mutation_tryClaimAccount<TRes> {
  _CopyWithImpl_Mutation_tryClaimAccount(this._instance, this._then);

  final Mutation_tryClaimAccount _instance;

  final TRes Function(Mutation_tryClaimAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tryClaimAccount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_tryClaimAccount(
      tryClaimAccount: tryClaimAccount == _undefined || tryClaimAccount == null
          ? _instance.tryClaimAccount
          : (tryClaimAccount as Mutation_tryClaimAccount_tryClaimAccount),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_tryClaimAccount_tryClaimAccount<TRes> get tryClaimAccount {
    final local$tryClaimAccount = _instance.tryClaimAccount;
    return CopyWith_Mutation_tryClaimAccount_tryClaimAccount(
      local$tryClaimAccount,
      (e) => call(tryClaimAccount: e),
    );
  }
}

class _CopyWithStubImpl_Mutation_tryClaimAccount<TRes>
    implements CopyWith_Mutation_tryClaimAccount<TRes> {
  _CopyWithStubImpl_Mutation_tryClaimAccount(this._res);

  TRes _res;

  call({
    Mutation_tryClaimAccount_tryClaimAccount? tryClaimAccount,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_tryClaimAccount_tryClaimAccount<TRes> get tryClaimAccount =>
      CopyWith_Mutation_tryClaimAccount_tryClaimAccount.stub(_res);
}

const documentNodeMutationtryClaimAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'tryClaimAccount'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'tryClaimAccount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'uid'),
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
  ],
);

class Mutation_tryClaimAccount_tryClaimAccount {
  Mutation_tryClaimAccount_tryClaimAccount({
    required this.uid,
    this.$__typename = 'ClaimedAccount',
  });

  factory Mutation_tryClaimAccount_tryClaimAccount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uid = json['uid'];
    final l$$__typename = json['__typename'];
    return Mutation_tryClaimAccount_tryClaimAccount(
      uid: (l$uid as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String uid;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uid, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_tryClaimAccount_tryClaimAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
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

extension UtilityExtension_Mutation_tryClaimAccount_tryClaimAccount
    on Mutation_tryClaimAccount_tryClaimAccount {
  CopyWith_Mutation_tryClaimAccount_tryClaimAccount<
    Mutation_tryClaimAccount_tryClaimAccount
  >
  get copyWith =>
      CopyWith_Mutation_tryClaimAccount_tryClaimAccount(this, (i) => i);
}

abstract class CopyWith_Mutation_tryClaimAccount_tryClaimAccount<TRes> {
  factory CopyWith_Mutation_tryClaimAccount_tryClaimAccount(
    Mutation_tryClaimAccount_tryClaimAccount instance,
    TRes Function(Mutation_tryClaimAccount_tryClaimAccount) then,
  ) = _CopyWithImpl_Mutation_tryClaimAccount_tryClaimAccount;

  factory CopyWith_Mutation_tryClaimAccount_tryClaimAccount.stub(TRes res) =
      _CopyWithStubImpl_Mutation_tryClaimAccount_tryClaimAccount;

  TRes call({String? uid, String? $__typename});
}

class _CopyWithImpl_Mutation_tryClaimAccount_tryClaimAccount<TRes>
    implements CopyWith_Mutation_tryClaimAccount_tryClaimAccount<TRes> {
  _CopyWithImpl_Mutation_tryClaimAccount_tryClaimAccount(
    this._instance,
    this._then,
  );

  final Mutation_tryClaimAccount_tryClaimAccount _instance;

  final TRes Function(Mutation_tryClaimAccount_tryClaimAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uid = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_tryClaimAccount_tryClaimAccount(
          uid: uid == _undefined || uid == null
              ? _instance.uid
              : (uid as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Mutation_tryClaimAccount_tryClaimAccount<TRes>
    implements CopyWith_Mutation_tryClaimAccount_tryClaimAccount<TRes> {
  _CopyWithStubImpl_Mutation_tryClaimAccount_tryClaimAccount(this._res);

  TRes _res;

  call({String? uid, String? $__typename}) => _res;
}

class Variables_Mutation_applyInvitationCode {
  factory Variables_Mutation_applyInvitationCode({
    required Input_ApplyInvitationCodeInput input,
  }) => Variables_Mutation_applyInvitationCode._({r'input': input});

  Variables_Mutation_applyInvitationCode._(this._$data);

  factory Variables_Mutation_applyInvitationCode.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_ApplyInvitationCodeInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_applyInvitationCode._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ApplyInvitationCodeInput get input =>
      (_$data['input'] as Input_ApplyInvitationCodeInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_applyInvitationCode<
    Variables_Mutation_applyInvitationCode
  >
  get copyWith =>
      CopyWith_Variables_Mutation_applyInvitationCode(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_applyInvitationCode ||
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

abstract class CopyWith_Variables_Mutation_applyInvitationCode<TRes> {
  factory CopyWith_Variables_Mutation_applyInvitationCode(
    Variables_Mutation_applyInvitationCode instance,
    TRes Function(Variables_Mutation_applyInvitationCode) then,
  ) = _CopyWithImpl_Variables_Mutation_applyInvitationCode;

  factory CopyWith_Variables_Mutation_applyInvitationCode.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_applyInvitationCode;

  TRes call({Input_ApplyInvitationCodeInput? input});
}

class _CopyWithImpl_Variables_Mutation_applyInvitationCode<TRes>
    implements CopyWith_Variables_Mutation_applyInvitationCode<TRes> {
  _CopyWithImpl_Variables_Mutation_applyInvitationCode(
    this._instance,
    this._then,
  );

  final Variables_Mutation_applyInvitationCode _instance;

  final TRes Function(Variables_Mutation_applyInvitationCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_applyInvitationCode._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_ApplyInvitationCodeInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_applyInvitationCode<TRes>
    implements CopyWith_Variables_Mutation_applyInvitationCode<TRes> {
  _CopyWithStubImpl_Variables_Mutation_applyInvitationCode(this._res);

  TRes _res;

  call({Input_ApplyInvitationCodeInput? input}) => _res;
}

class Mutation_applyInvitationCode {
  Mutation_applyInvitationCode({
    required this.applyInvitationCode,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_applyInvitationCode.fromJson(Map<String, dynamic> json) {
    final l$applyInvitationCode = json['applyInvitationCode'];
    final l$$__typename = json['__typename'];
    return Mutation_applyInvitationCode(
      applyInvitationCode:
          Mutation_applyInvitationCode_applyInvitationCode.fromJson(
            (l$applyInvitationCode as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_applyInvitationCode_applyInvitationCode applyInvitationCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$applyInvitationCode = applyInvitationCode;
    _resultData['applyInvitationCode'] = l$applyInvitationCode.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$applyInvitationCode = applyInvitationCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$applyInvitationCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_applyInvitationCode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$applyInvitationCode = applyInvitationCode;
    final lOther$applyInvitationCode = other.applyInvitationCode;
    if (l$applyInvitationCode != lOther$applyInvitationCode) {
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

extension UtilityExtension_Mutation_applyInvitationCode
    on Mutation_applyInvitationCode {
  CopyWith_Mutation_applyInvitationCode<Mutation_applyInvitationCode>
  get copyWith => CopyWith_Mutation_applyInvitationCode(this, (i) => i);
}

abstract class CopyWith_Mutation_applyInvitationCode<TRes> {
  factory CopyWith_Mutation_applyInvitationCode(
    Mutation_applyInvitationCode instance,
    TRes Function(Mutation_applyInvitationCode) then,
  ) = _CopyWithImpl_Mutation_applyInvitationCode;

  factory CopyWith_Mutation_applyInvitationCode.stub(TRes res) =
      _CopyWithStubImpl_Mutation_applyInvitationCode;

  TRes call({
    Mutation_applyInvitationCode_applyInvitationCode? applyInvitationCode,
    String? $__typename,
  });
  CopyWith_Mutation_applyInvitationCode_applyInvitationCode<TRes>
  get applyInvitationCode;
}

class _CopyWithImpl_Mutation_applyInvitationCode<TRes>
    implements CopyWith_Mutation_applyInvitationCode<TRes> {
  _CopyWithImpl_Mutation_applyInvitationCode(this._instance, this._then);

  final Mutation_applyInvitationCode _instance;

  final TRes Function(Mutation_applyInvitationCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? applyInvitationCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_applyInvitationCode(
      applyInvitationCode:
          applyInvitationCode == _undefined || applyInvitationCode == null
          ? _instance.applyInvitationCode
          : (applyInvitationCode
                as Mutation_applyInvitationCode_applyInvitationCode),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_applyInvitationCode_applyInvitationCode<TRes>
  get applyInvitationCode {
    final local$applyInvitationCode = _instance.applyInvitationCode;
    return CopyWith_Mutation_applyInvitationCode_applyInvitationCode(
      local$applyInvitationCode,
      (e) => call(applyInvitationCode: e),
    );
  }
}

class _CopyWithStubImpl_Mutation_applyInvitationCode<TRes>
    implements CopyWith_Mutation_applyInvitationCode<TRes> {
  _CopyWithStubImpl_Mutation_applyInvitationCode(this._res);

  TRes _res;

  call({
    Mutation_applyInvitationCode_applyInvitationCode? applyInvitationCode,
    String? $__typename,
  }) => _res;

  CopyWith_Mutation_applyInvitationCode_applyInvitationCode<TRes>
  get applyInvitationCode =>
      CopyWith_Mutation_applyInvitationCode_applyInvitationCode.stub(_res);
}

const documentNodeMutationapplyInvitationCode = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'applyInvitationCode'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'ApplyInvitationCodeInput'),
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
            name: NameNode(value: 'applyInvitationCode'),
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
                  name: NameNode(value: 'uid'),
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
  ],
);

class Mutation_applyInvitationCode_applyInvitationCode {
  Mutation_applyInvitationCode_applyInvitationCode({
    required this.uid,
    this.$__typename = 'ClaimedAccount',
  });

  factory Mutation_applyInvitationCode_applyInvitationCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$uid = json['uid'];
    final l$$__typename = json['__typename'];
    return Mutation_applyInvitationCode_applyInvitationCode(
      uid: (l$uid as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String uid;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    final l$$__typename = $__typename;
    return Object.hashAll([l$uid, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_applyInvitationCode_applyInvitationCode ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
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

extension UtilityExtension_Mutation_applyInvitationCode_applyInvitationCode
    on Mutation_applyInvitationCode_applyInvitationCode {
  CopyWith_Mutation_applyInvitationCode_applyInvitationCode<
    Mutation_applyInvitationCode_applyInvitationCode
  >
  get copyWith =>
      CopyWith_Mutation_applyInvitationCode_applyInvitationCode(this, (i) => i);
}

abstract class CopyWith_Mutation_applyInvitationCode_applyInvitationCode<TRes> {
  factory CopyWith_Mutation_applyInvitationCode_applyInvitationCode(
    Mutation_applyInvitationCode_applyInvitationCode instance,
    TRes Function(Mutation_applyInvitationCode_applyInvitationCode) then,
  ) = _CopyWithImpl_Mutation_applyInvitationCode_applyInvitationCode;

  factory CopyWith_Mutation_applyInvitationCode_applyInvitationCode.stub(
    TRes res,
  ) = _CopyWithStubImpl_Mutation_applyInvitationCode_applyInvitationCode;

  TRes call({String? uid, String? $__typename});
}

class _CopyWithImpl_Mutation_applyInvitationCode_applyInvitationCode<TRes>
    implements CopyWith_Mutation_applyInvitationCode_applyInvitationCode<TRes> {
  _CopyWithImpl_Mutation_applyInvitationCode_applyInvitationCode(
    this._instance,
    this._then,
  );

  final Mutation_applyInvitationCode_applyInvitationCode _instance;

  final TRes Function(Mutation_applyInvitationCode_applyInvitationCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uid = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_applyInvitationCode_applyInvitationCode(
          uid: uid == _undefined || uid == null
              ? _instance.uid
              : (uid as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl_Mutation_applyInvitationCode_applyInvitationCode<TRes>
    implements CopyWith_Mutation_applyInvitationCode_applyInvitationCode<TRes> {
  _CopyWithStubImpl_Mutation_applyInvitationCode_applyInvitationCode(this._res);

  TRes _res;

  call({String? uid, String? $__typename}) => _res;
}

class Mutation_deleteMyAccount {
  Mutation_deleteMyAccount({
    required this.deleteMyAccount,
    this.$__typename = 'RootMutationType',
  });

  factory Mutation_deleteMyAccount.fromJson(Map<String, dynamic> json) {
    final l$deleteMyAccount = json['deleteMyAccount'];
    final l$$__typename = json['__typename'];
    return Mutation_deleteMyAccount(
      deleteMyAccount: (l$deleteMyAccount as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteMyAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteMyAccount = deleteMyAccount;
    _resultData['deleteMyAccount'] = l$deleteMyAccount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteMyAccount = deleteMyAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteMyAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_deleteMyAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteMyAccount = deleteMyAccount;
    final lOther$deleteMyAccount = other.deleteMyAccount;
    if (l$deleteMyAccount != lOther$deleteMyAccount) {
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

extension UtilityExtension_Mutation_deleteMyAccount
    on Mutation_deleteMyAccount {
  CopyWith_Mutation_deleteMyAccount<Mutation_deleteMyAccount> get copyWith =>
      CopyWith_Mutation_deleteMyAccount(this, (i) => i);
}

abstract class CopyWith_Mutation_deleteMyAccount<TRes> {
  factory CopyWith_Mutation_deleteMyAccount(
    Mutation_deleteMyAccount instance,
    TRes Function(Mutation_deleteMyAccount) then,
  ) = _CopyWithImpl_Mutation_deleteMyAccount;

  factory CopyWith_Mutation_deleteMyAccount.stub(TRes res) =
      _CopyWithStubImpl_Mutation_deleteMyAccount;

  TRes call({bool? deleteMyAccount, String? $__typename});
}

class _CopyWithImpl_Mutation_deleteMyAccount<TRes>
    implements CopyWith_Mutation_deleteMyAccount<TRes> {
  _CopyWithImpl_Mutation_deleteMyAccount(this._instance, this._then);

  final Mutation_deleteMyAccount _instance;

  final TRes Function(Mutation_deleteMyAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteMyAccount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_deleteMyAccount(
      deleteMyAccount: deleteMyAccount == _undefined || deleteMyAccount == null
          ? _instance.deleteMyAccount
          : (deleteMyAccount as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_deleteMyAccount<TRes>
    implements CopyWith_Mutation_deleteMyAccount<TRes> {
  _CopyWithStubImpl_Mutation_deleteMyAccount(this._res);

  TRes _res;

  call({bool? deleteMyAccount, String? $__typename}) => _res;
}

const documentNodeMutationdeleteMyAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'deleteMyAccount'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteMyAccount'),
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
);

class Variables_Mutation_createUser {
  factory Variables_Mutation_createUser({
    required Input_CreateUserInput input,
  }) => Variables_Mutation_createUser._({r'input': input});

  Variables_Mutation_createUser._(this._$data);

  factory Variables_Mutation_createUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input_CreateUserInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables_Mutation_createUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CreateUserInput get input => (_$data['input'] as Input_CreateUserInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith_Variables_Mutation_createUser<Variables_Mutation_createUser>
  get copyWith => CopyWith_Variables_Mutation_createUser(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_createUser ||
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

abstract class CopyWith_Variables_Mutation_createUser<TRes> {
  factory CopyWith_Variables_Mutation_createUser(
    Variables_Mutation_createUser instance,
    TRes Function(Variables_Mutation_createUser) then,
  ) = _CopyWithImpl_Variables_Mutation_createUser;

  factory CopyWith_Variables_Mutation_createUser.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_createUser;

  TRes call({Input_CreateUserInput? input});
}

class _CopyWithImpl_Variables_Mutation_createUser<TRes>
    implements CopyWith_Variables_Mutation_createUser<TRes> {
  _CopyWithImpl_Variables_Mutation_createUser(this._instance, this._then);

  final Variables_Mutation_createUser _instance;

  final TRes Function(Variables_Mutation_createUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables_Mutation_createUser._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input_CreateUserInput),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_createUser<TRes>
    implements CopyWith_Variables_Mutation_createUser<TRes> {
  _CopyWithStubImpl_Variables_Mutation_createUser(this._res);

  TRes _res;

  call({Input_CreateUserInput? input}) => _res;
}

class Mutation_createUser {
  Mutation_createUser({this.createUser, this.$__typename = 'RootMutationType'});

  factory Mutation_createUser.fromJson(Map<String, dynamic> json) {
    final l$createUser = json['createUser'];
    final l$$__typename = json['__typename'];
    return Mutation_createUser(
      createUser: l$createUser == null
          ? null
          : Mutation_createUser_createUser.fromJson(
              (l$createUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createUser_createUser? createUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createUser = createUser;
    _resultData['createUser'] = l$createUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createUser = createUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createUser = createUser;
    final lOther$createUser = other.createUser;
    if (l$createUser != lOther$createUser) {
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

extension UtilityExtension_Mutation_createUser on Mutation_createUser {
  CopyWith_Mutation_createUser<Mutation_createUser> get copyWith =>
      CopyWith_Mutation_createUser(this, (i) => i);
}

abstract class CopyWith_Mutation_createUser<TRes> {
  factory CopyWith_Mutation_createUser(
    Mutation_createUser instance,
    TRes Function(Mutation_createUser) then,
  ) = _CopyWithImpl_Mutation_createUser;

  factory CopyWith_Mutation_createUser.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createUser;

  TRes call({Mutation_createUser_createUser? createUser, String? $__typename});
  CopyWith_Mutation_createUser_createUser<TRes> get createUser;
}

class _CopyWithImpl_Mutation_createUser<TRes>
    implements CopyWith_Mutation_createUser<TRes> {
  _CopyWithImpl_Mutation_createUser(this._instance, this._then);

  final Mutation_createUser _instance;

  final TRes Function(Mutation_createUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createUser(
      createUser: createUser == _undefined
          ? _instance.createUser
          : (createUser as Mutation_createUser_createUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Mutation_createUser_createUser<TRes> get createUser {
    final local$createUser = _instance.createUser;
    return local$createUser == null
        ? CopyWith_Mutation_createUser_createUser.stub(_then(_instance))
        : CopyWith_Mutation_createUser_createUser(
            local$createUser,
            (e) => call(createUser: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createUser<TRes>
    implements CopyWith_Mutation_createUser<TRes> {
  _CopyWithStubImpl_Mutation_createUser(this._res);

  TRes _res;

  call({Mutation_createUser_createUser? createUser, String? $__typename}) =>
      _res;

  CopyWith_Mutation_createUser_createUser<TRes> get createUser =>
      CopyWith_Mutation_createUser_createUser.stub(_res);
}

const documentNodeMutationcreateUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'createUser'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateUserInput'),
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
            name: NameNode(value: 'createUser'),
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
                        name: NameNode(value: 'uid'),
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

class Mutation_createUser_createUser {
  Mutation_createUser_createUser({
    this.result,
    this.$__typename = 'CreateUserResult',
  });

  factory Mutation_createUser_createUser.fromJson(Map<String, dynamic> json) {
    final l$result = json['result'];
    final l$$__typename = json['__typename'];
    return Mutation_createUser_createUser(
      result: l$result == null
          ? null
          : Mutation_createUser_createUser_result.fromJson(
              (l$result as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation_createUser_createUser_result? result;

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
    if (other is! Mutation_createUser_createUser ||
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

extension UtilityExtension_Mutation_createUser_createUser
    on Mutation_createUser_createUser {
  CopyWith_Mutation_createUser_createUser<Mutation_createUser_createUser>
  get copyWith => CopyWith_Mutation_createUser_createUser(this, (i) => i);
}

abstract class CopyWith_Mutation_createUser_createUser<TRes> {
  factory CopyWith_Mutation_createUser_createUser(
    Mutation_createUser_createUser instance,
    TRes Function(Mutation_createUser_createUser) then,
  ) = _CopyWithImpl_Mutation_createUser_createUser;

  factory CopyWith_Mutation_createUser_createUser.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createUser_createUser;

  TRes call({
    Mutation_createUser_createUser_result? result,
    String? $__typename,
  });
  CopyWith_Mutation_createUser_createUser_result<TRes> get result;
}

class _CopyWithImpl_Mutation_createUser_createUser<TRes>
    implements CopyWith_Mutation_createUser_createUser<TRes> {
  _CopyWithImpl_Mutation_createUser_createUser(this._instance, this._then);

  final Mutation_createUser_createUser _instance;

  final TRes Function(Mutation_createUser_createUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? result = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation_createUser_createUser(
          result: result == _undefined
              ? _instance.result
              : (result as Mutation_createUser_createUser_result?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith_Mutation_createUser_createUser_result<TRes> get result {
    final local$result = _instance.result;
    return local$result == null
        ? CopyWith_Mutation_createUser_createUser_result.stub(_then(_instance))
        : CopyWith_Mutation_createUser_createUser_result(
            local$result,
            (e) => call(result: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_createUser_createUser<TRes>
    implements CopyWith_Mutation_createUser_createUser<TRes> {
  _CopyWithStubImpl_Mutation_createUser_createUser(this._res);

  TRes _res;

  call({Mutation_createUser_createUser_result? result, String? $__typename}) =>
      _res;

  CopyWith_Mutation_createUser_createUser_result<TRes> get result =>
      CopyWith_Mutation_createUser_createUser_result.stub(_res);
}

class Mutation_createUser_createUser_result {
  Mutation_createUser_createUser_result({
    required this.id,
    required this.uid,
    this.$__typename = 'User',
  });

  factory Mutation_createUser_createUser_result.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$uid = json['uid'];
    final l$$__typename = json['__typename'];
    return Mutation_createUser_createUser_result(
      id: (l$id as String),
      uid: (l$uid as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String uid;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$uid = uid;
    _resultData['uid'] = l$uid;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$uid = uid;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$uid, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_createUser_createUser_result ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
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

extension UtilityExtension_Mutation_createUser_createUser_result
    on Mutation_createUser_createUser_result {
  CopyWith_Mutation_createUser_createUser_result<
    Mutation_createUser_createUser_result
  >
  get copyWith =>
      CopyWith_Mutation_createUser_createUser_result(this, (i) => i);
}

abstract class CopyWith_Mutation_createUser_createUser_result<TRes> {
  factory CopyWith_Mutation_createUser_createUser_result(
    Mutation_createUser_createUser_result instance,
    TRes Function(Mutation_createUser_createUser_result) then,
  ) = _CopyWithImpl_Mutation_createUser_createUser_result;

  factory CopyWith_Mutation_createUser_createUser_result.stub(TRes res) =
      _CopyWithStubImpl_Mutation_createUser_createUser_result;

  TRes call({String? id, String? uid, String? $__typename});
}

class _CopyWithImpl_Mutation_createUser_createUser_result<TRes>
    implements CopyWith_Mutation_createUser_createUser_result<TRes> {
  _CopyWithImpl_Mutation_createUser_createUser_result(
    this._instance,
    this._then,
  );

  final Mutation_createUser_createUser_result _instance;

  final TRes Function(Mutation_createUser_createUser_result) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? uid = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_createUser_createUser_result(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      uid: uid == _undefined || uid == null ? _instance.uid : (uid as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl_Mutation_createUser_createUser_result<TRes>
    implements CopyWith_Mutation_createUser_createUser_result<TRes> {
  _CopyWithStubImpl_Mutation_createUser_createUser_result(this._res);

  TRes _res;

  call({String? id, String? uid, String? $__typename}) => _res;
}
