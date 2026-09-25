import 'fragments.gql.dart';
import 'package:church_admin/src/core/graphql/scalars.dart';
import 'package:gql/ast.dart';

class Variables_Mutation_insertInvitation {
  factory Variables_Mutation_insertInvitation({
    required UuidValue userUid,
    required DateTime expiresAt,
  }) => Variables_Mutation_insertInvitation._({
    r'userUid': userUid,
    r'expiresAt': expiresAt,
  });

  Variables_Mutation_insertInvitation._(this._$data);

  factory Variables_Mutation_insertInvitation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$userUid = data['userUid'];
    result$data['userUid'] = stringToUuid(l$userUid);
    final l$expiresAt = data['expiresAt'];
    result$data['expiresAt'] = tstzFromString(l$expiresAt);
    return Variables_Mutation_insertInvitation._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get userUid => (_$data['userUid'] as UuidValue);

  DateTime get expiresAt => (_$data['expiresAt'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userUid = userUid;
    result$data['userUid'] = uuidToString(l$userUid);
    final l$expiresAt = expiresAt;
    result$data['expiresAt'] = tstzToString(l$expiresAt);
    return result$data;
  }

  CopyWith_Variables_Mutation_insertInvitation<
    Variables_Mutation_insertInvitation
  >
  get copyWith => CopyWith_Variables_Mutation_insertInvitation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_insertInvitation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userUid = userUid;
    final lOther$userUid = other.userUid;
    if (l$userUid != lOther$userUid) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userUid = userUid;
    final l$expiresAt = expiresAt;
    return Object.hashAll([l$userUid, l$expiresAt]);
  }
}

abstract class CopyWith_Variables_Mutation_insertInvitation<TRes> {
  factory CopyWith_Variables_Mutation_insertInvitation(
    Variables_Mutation_insertInvitation instance,
    TRes Function(Variables_Mutation_insertInvitation) then,
  ) = _CopyWithImpl_Variables_Mutation_insertInvitation;

  factory CopyWith_Variables_Mutation_insertInvitation.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_insertInvitation;

  TRes call({UuidValue? userUid, DateTime? expiresAt});
}

class _CopyWithImpl_Variables_Mutation_insertInvitation<TRes>
    implements CopyWith_Variables_Mutation_insertInvitation<TRes> {
  _CopyWithImpl_Variables_Mutation_insertInvitation(this._instance, this._then);

  final Variables_Mutation_insertInvitation _instance;

  final TRes Function(Variables_Mutation_insertInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userUid = _undefined, Object? expiresAt = _undefined}) =>
      _then(
        Variables_Mutation_insertInvitation._({
          ..._instance._$data,
          if (userUid != _undefined && userUid != null)
            'userUid': (userUid as UuidValue),
          if (expiresAt != _undefined && expiresAt != null)
            'expiresAt': (expiresAt as DateTime),
        }),
      );
}

class _CopyWithStubImpl_Variables_Mutation_insertInvitation<TRes>
    implements CopyWith_Variables_Mutation_insertInvitation<TRes> {
  _CopyWithStubImpl_Variables_Mutation_insertInvitation(this._res);

  TRes _res;

  call({UuidValue? userUid, DateTime? expiresAt}) => _res;
}

class Mutation_insertInvitation {
  Mutation_insertInvitation({
    this.insertAuthInvitationsOne,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_insertInvitation.fromJson(Map<String, dynamic> json) {
    final l$insertAuthInvitationsOne = json['insertAuthInvitationsOne'];
    final l$$__typename = json['__typename'];
    return Mutation_insertInvitation(
      insertAuthInvitationsOne: l$insertAuthInvitationsOne == null
          ? null
          : Fragment_Invitation.fromJson(
              (l$insertAuthInvitationsOne as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Invitation? insertAuthInvitationsOne;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertAuthInvitationsOne = insertAuthInvitationsOne;
    _resultData['insertAuthInvitationsOne'] = l$insertAuthInvitationsOne
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertAuthInvitationsOne = insertAuthInvitationsOne;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insertAuthInvitationsOne, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_insertInvitation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertAuthInvitationsOne = insertAuthInvitationsOne;
    final lOther$insertAuthInvitationsOne = other.insertAuthInvitationsOne;
    if (l$insertAuthInvitationsOne != lOther$insertAuthInvitationsOne) {
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

extension UtilityExtension_Mutation_insertInvitation
    on Mutation_insertInvitation {
  CopyWith_Mutation_insertInvitation<Mutation_insertInvitation> get copyWith =>
      CopyWith_Mutation_insertInvitation(this, (i) => i);
}

abstract class CopyWith_Mutation_insertInvitation<TRes> {
  factory CopyWith_Mutation_insertInvitation(
    Mutation_insertInvitation instance,
    TRes Function(Mutation_insertInvitation) then,
  ) = _CopyWithImpl_Mutation_insertInvitation;

  factory CopyWith_Mutation_insertInvitation.stub(TRes res) =
      _CopyWithStubImpl_Mutation_insertInvitation;

  TRes call({
    Fragment_Invitation? insertAuthInvitationsOne,
    String? $__typename,
  });
  CopyWith_Fragment_Invitation<TRes> get insertAuthInvitationsOne;
}

class _CopyWithImpl_Mutation_insertInvitation<TRes>
    implements CopyWith_Mutation_insertInvitation<TRes> {
  _CopyWithImpl_Mutation_insertInvitation(this._instance, this._then);

  final Mutation_insertInvitation _instance;

  final TRes Function(Mutation_insertInvitation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertAuthInvitationsOne = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_insertInvitation(
      insertAuthInvitationsOne: insertAuthInvitationsOne == _undefined
          ? _instance.insertAuthInvitationsOne
          : (insertAuthInvitationsOne as Fragment_Invitation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Invitation<TRes> get insertAuthInvitationsOne {
    final local$insertAuthInvitationsOne = _instance.insertAuthInvitationsOne;
    return local$insertAuthInvitationsOne == null
        ? CopyWith_Fragment_Invitation.stub(_then(_instance))
        : CopyWith_Fragment_Invitation(
            local$insertAuthInvitationsOne,
            (e) => call(insertAuthInvitationsOne: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_insertInvitation<TRes>
    implements CopyWith_Mutation_insertInvitation<TRes> {
  _CopyWithStubImpl_Mutation_insertInvitation(this._res);

  TRes _res;

  call({Fragment_Invitation? insertAuthInvitationsOne, String? $__typename}) =>
      _res;

  CopyWith_Fragment_Invitation<TRes> get insertAuthInvitationsOne =>
      CopyWith_Fragment_Invitation.stub(_res);
}

const documentNodeMutationinsertInvitation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'insertInvitation'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'userUid')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'expiresAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
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
            name: NameNode(value: 'insertAuthInvitationsOne'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'object'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'userUid'),
                      value: VariableNode(name: NameNode(value: 'userUid')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'expiresAt'),
                      value: VariableNode(name: NameNode(value: 'expiresAt')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Invitation'),
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
    fragmentDefinitionInvitation,
  ],
);

class Variables_Mutation_updateInvitationExpiry {
  factory Variables_Mutation_updateInvitationExpiry({
    required UuidValue id,
    required DateTime expiresAt,
  }) => Variables_Mutation_updateInvitationExpiry._({
    r'id': id,
    r'expiresAt': expiresAt,
  });

  Variables_Mutation_updateInvitationExpiry._(this._$data);

  factory Variables_Mutation_updateInvitationExpiry.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    final l$expiresAt = data['expiresAt'];
    result$data['expiresAt'] = tstzFromString(l$expiresAt);
    return Variables_Mutation_updateInvitationExpiry._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  DateTime get expiresAt => (_$data['expiresAt'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    final l$expiresAt = expiresAt;
    result$data['expiresAt'] = tstzToString(l$expiresAt);
    return result$data;
  }

  CopyWith_Variables_Mutation_updateInvitationExpiry<
    Variables_Mutation_updateInvitationExpiry
  >
  get copyWith =>
      CopyWith_Variables_Mutation_updateInvitationExpiry(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables_Mutation_updateInvitationExpiry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$expiresAt = expiresAt;
    return Object.hashAll([l$id, l$expiresAt]);
  }
}

abstract class CopyWith_Variables_Mutation_updateInvitationExpiry<TRes> {
  factory CopyWith_Variables_Mutation_updateInvitationExpiry(
    Variables_Mutation_updateInvitationExpiry instance,
    TRes Function(Variables_Mutation_updateInvitationExpiry) then,
  ) = _CopyWithImpl_Variables_Mutation_updateInvitationExpiry;

  factory CopyWith_Variables_Mutation_updateInvitationExpiry.stub(TRes res) =
      _CopyWithStubImpl_Variables_Mutation_updateInvitationExpiry;

  TRes call({UuidValue? id, DateTime? expiresAt});
}

class _CopyWithImpl_Variables_Mutation_updateInvitationExpiry<TRes>
    implements CopyWith_Variables_Mutation_updateInvitationExpiry<TRes> {
  _CopyWithImpl_Variables_Mutation_updateInvitationExpiry(
    this._instance,
    this._then,
  );

  final Variables_Mutation_updateInvitationExpiry _instance;

  final TRes Function(Variables_Mutation_updateInvitationExpiry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? expiresAt = _undefined}) => _then(
    Variables_Mutation_updateInvitationExpiry._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
      if (expiresAt != _undefined && expiresAt != null)
        'expiresAt': (expiresAt as DateTime),
    }),
  );
}

class _CopyWithStubImpl_Variables_Mutation_updateInvitationExpiry<TRes>
    implements CopyWith_Variables_Mutation_updateInvitationExpiry<TRes> {
  _CopyWithStubImpl_Variables_Mutation_updateInvitationExpiry(this._res);

  TRes _res;

  call({UuidValue? id, DateTime? expiresAt}) => _res;
}

class Mutation_updateInvitationExpiry {
  Mutation_updateInvitationExpiry({
    this.updateAuthInvitationsByPk,
    this.$__typename = 'mutation_root',
  });

  factory Mutation_updateInvitationExpiry.fromJson(Map<String, dynamic> json) {
    final l$updateAuthInvitationsByPk = json['updateAuthInvitationsByPk'];
    final l$$__typename = json['__typename'];
    return Mutation_updateInvitationExpiry(
      updateAuthInvitationsByPk: l$updateAuthInvitationsByPk == null
          ? null
          : Fragment_Invitation.fromJson(
              (l$updateAuthInvitationsByPk as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment_Invitation? updateAuthInvitationsByPk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAuthInvitationsByPk = updateAuthInvitationsByPk;
    _resultData['updateAuthInvitationsByPk'] = l$updateAuthInvitationsByPk
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAuthInvitationsByPk = updateAuthInvitationsByPk;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAuthInvitationsByPk, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation_updateInvitationExpiry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAuthInvitationsByPk = updateAuthInvitationsByPk;
    final lOther$updateAuthInvitationsByPk = other.updateAuthInvitationsByPk;
    if (l$updateAuthInvitationsByPk != lOther$updateAuthInvitationsByPk) {
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

extension UtilityExtension_Mutation_updateInvitationExpiry
    on Mutation_updateInvitationExpiry {
  CopyWith_Mutation_updateInvitationExpiry<Mutation_updateInvitationExpiry>
  get copyWith => CopyWith_Mutation_updateInvitationExpiry(this, (i) => i);
}

abstract class CopyWith_Mutation_updateInvitationExpiry<TRes> {
  factory CopyWith_Mutation_updateInvitationExpiry(
    Mutation_updateInvitationExpiry instance,
    TRes Function(Mutation_updateInvitationExpiry) then,
  ) = _CopyWithImpl_Mutation_updateInvitationExpiry;

  factory CopyWith_Mutation_updateInvitationExpiry.stub(TRes res) =
      _CopyWithStubImpl_Mutation_updateInvitationExpiry;

  TRes call({
    Fragment_Invitation? updateAuthInvitationsByPk,
    String? $__typename,
  });
  CopyWith_Fragment_Invitation<TRes> get updateAuthInvitationsByPk;
}

class _CopyWithImpl_Mutation_updateInvitationExpiry<TRes>
    implements CopyWith_Mutation_updateInvitationExpiry<TRes> {
  _CopyWithImpl_Mutation_updateInvitationExpiry(this._instance, this._then);

  final Mutation_updateInvitationExpiry _instance;

  final TRes Function(Mutation_updateInvitationExpiry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAuthInvitationsByPk = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation_updateInvitationExpiry(
      updateAuthInvitationsByPk: updateAuthInvitationsByPk == _undefined
          ? _instance.updateAuthInvitationsByPk
          : (updateAuthInvitationsByPk as Fragment_Invitation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith_Fragment_Invitation<TRes> get updateAuthInvitationsByPk {
    final local$updateAuthInvitationsByPk = _instance.updateAuthInvitationsByPk;
    return local$updateAuthInvitationsByPk == null
        ? CopyWith_Fragment_Invitation.stub(_then(_instance))
        : CopyWith_Fragment_Invitation(
            local$updateAuthInvitationsByPk,
            (e) => call(updateAuthInvitationsByPk: e),
          );
  }
}

class _CopyWithStubImpl_Mutation_updateInvitationExpiry<TRes>
    implements CopyWith_Mutation_updateInvitationExpiry<TRes> {
  _CopyWithStubImpl_Mutation_updateInvitationExpiry(this._res);

  TRes _res;

  call({Fragment_Invitation? updateAuthInvitationsByPk, String? $__typename}) =>
      _res;

  CopyWith_Fragment_Invitation<TRes> get updateAuthInvitationsByPk =>
      CopyWith_Fragment_Invitation.stub(_res);
}

const documentNodeMutationupdateInvitationExpiry = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'updateInvitationExpiry'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'expiresAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'timestamptz'),
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
            name: NameNode(value: 'updateAuthInvitationsByPk'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'pkColumns'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'id')),
                    ),
                  ],
                ),
              ),
              ArgumentNode(
                name: NameNode(value: '_set'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'expiresAt'),
                      value: VariableNode(name: NameNode(value: 'expiresAt')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Invitation'),
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
    fragmentDefinitionInvitation,
  ],
);
