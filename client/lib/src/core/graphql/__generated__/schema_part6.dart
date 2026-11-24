// Part 6 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_AuthInvitationsObjRelInsertInput<TRes> {
  factory CopyWith_Input_AuthInvitationsObjRelInsertInput(
    Input_AuthInvitationsObjRelInsertInput instance,
    TRes Function(Input_AuthInvitationsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_AuthInvitationsObjRelInsertInput;

  factory CopyWith_Input_AuthInvitationsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthInvitationsObjRelInsertInput;

  TRes call({
    Input_AuthInvitationsInsertInput? data,
    Input_AuthInvitationsOnConflict? onConflict,
  });
  CopyWith_Input_AuthInvitationsInsertInput<TRes> get data;
  CopyWith_Input_AuthInvitationsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AuthInvitationsObjRelInsertInput<TRes>
    implements CopyWith_Input_AuthInvitationsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_AuthInvitationsObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_AuthInvitationsObjRelInsertInput _instance;

  final TRes Function(Input_AuthInvitationsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_AuthInvitationsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_AuthInvitationsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_AuthInvitationsOnConflict?),
        }),
      );

  CopyWith_Input_AuthInvitationsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_AuthInvitationsInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_AuthInvitationsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AuthInvitationsOnConflict.stub(_then(_instance))
        : CopyWith_Input_AuthInvitationsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthInvitationsObjRelInsertInput<TRes>
    implements CopyWith_Input_AuthInvitationsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AuthInvitationsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_AuthInvitationsInsertInput? data,
    Input_AuthInvitationsOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_AuthInvitationsInsertInput<TRes> get data =>
      CopyWith_Input_AuthInvitationsInsertInput.stub(_res);

  CopyWith_Input_AuthInvitationsOnConflict<TRes> get onConflict =>
      CopyWith_Input_AuthInvitationsOnConflict.stub(_res);
}

class Input_AuthInvitationsOnConflict {
  factory Input_AuthInvitationsOnConflict({
    required Enum_AuthInvitationsConstraint constraint,
    List<Enum_AuthInvitationsUpdateColumn>? updateColumns,
    Input_AuthInvitationsBoolExp? where,
  }) => Input_AuthInvitationsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_AuthInvitationsOnConflict._(this._$data);

  factory Input_AuthInvitationsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_AuthInvitationsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_AuthInvitationsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_AuthInvitationsBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_AuthInvitationsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_AuthInvitationsConstraint get constraint =>
      (_$data['constraint'] as Enum_AuthInvitationsConstraint);

  List<Enum_AuthInvitationsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_AuthInvitationsUpdateColumn>?);

  Input_AuthInvitationsBoolExp? get where =>
      (_$data['where'] as Input_AuthInvitationsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_AuthInvitationsConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_AuthInvitationsUpdateColumn>)
              .map((e) => toJson_Enum_AuthInvitationsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthInvitationsOnConflict<Input_AuthInvitationsOnConflict>
  get copyWith => CopyWith_Input_AuthInvitationsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthInvitationsOnConflict ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$updateColumns = updateColumns;
    final lOther$updateColumns = other.updateColumns;
    if (_$data.containsKey('updateColumns') !=
        other._$data.containsKey('updateColumns')) {
      return false;
    }
    if (l$updateColumns != null && lOther$updateColumns != null) {
      if (l$updateColumns.length != lOther$updateColumns.length) {
        return false;
      }
      for (int i = 0; i < l$updateColumns.length; i++) {
        final l$updateColumns$entry = l$updateColumns[i];
        final lOther$updateColumns$entry = lOther$updateColumns[i];
        if (l$updateColumns$entry != lOther$updateColumns$entry) {
          return false;
        }
      }
    } else if (l$updateColumns != lOther$updateColumns) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$updateColumns = updateColumns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      _$data.containsKey('updateColumns')
          ? l$updateColumns == null
                ? null
                : Object.hashAll(l$updateColumns.map((v) => v))
          : const {},
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthInvitationsOnConflict<TRes> {
  factory CopyWith_Input_AuthInvitationsOnConflict(
    Input_AuthInvitationsOnConflict instance,
    TRes Function(Input_AuthInvitationsOnConflict) then,
  ) = _CopyWithImpl_Input_AuthInvitationsOnConflict;

  factory CopyWith_Input_AuthInvitationsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthInvitationsOnConflict;

  TRes call({
    Enum_AuthInvitationsConstraint? constraint,
    List<Enum_AuthInvitationsUpdateColumn>? updateColumns,
    Input_AuthInvitationsBoolExp? where,
  });
  CopyWith_Input_AuthInvitationsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AuthInvitationsOnConflict<TRes>
    implements CopyWith_Input_AuthInvitationsOnConflict<TRes> {
  _CopyWithImpl_Input_AuthInvitationsOnConflict(this._instance, this._then);

  final Input_AuthInvitationsOnConflict _instance;

  final TRes Function(Input_AuthInvitationsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_AuthInvitationsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_AuthInvitationsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_AuthInvitationsUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_AuthInvitationsBoolExp?),
    }),
  );

  CopyWith_Input_AuthInvitationsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_AuthInvitationsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthInvitationsBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthInvitationsOnConflict<TRes>
    implements CopyWith_Input_AuthInvitationsOnConflict<TRes> {
  _CopyWithStubImpl_Input_AuthInvitationsOnConflict(this._res);

  TRes _res;

  call({
    Enum_AuthInvitationsConstraint? constraint,
    List<Enum_AuthInvitationsUpdateColumn>? updateColumns,
    Input_AuthInvitationsBoolExp? where,
  }) => _res;

  CopyWith_Input_AuthInvitationsBoolExp<TRes> get where =>
      CopyWith_Input_AuthInvitationsBoolExp.stub(_res);
}

class Input_AuthInvitationsOrderBy {
  factory Input_AuthInvitationsOrderBy({
    Enum_OrderBy? claimedAt,
    Enum_OrderBy? code,
    Enum_OrderBy? createdAt,
    Enum_OrderBy? createdBy,
    Input_AuthUsersDataOrderBy? creator,
    Enum_OrderBy? expiresAt,
    Enum_OrderBy? id,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? userUid,
  }) => Input_AuthInvitationsOrderBy._({
    if (claimedAt != null) r'claimedAt': claimedAt,
    if (code != null) r'code': code,
    if (createdAt != null) r'createdAt': createdAt,
    if (createdBy != null) r'createdBy': createdBy,
    if (creator != null) r'creator': creator,
    if (expiresAt != null) r'expiresAt': expiresAt,
    if (id != null) r'id': id,
    if (user != null) r'user': user,
    if (userUid != null) r'userUid': userUid,
  });

  Input_AuthInvitationsOrderBy._(this._$data);

  factory Input_AuthInvitationsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('claimedAt')) {
      final l$claimedAt = data['claimedAt'];
      result$data['claimedAt'] = l$claimedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$claimedAt as String));
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = l$code == null
          ? null
          : fromJson_Enum_OrderBy((l$code as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson_Enum_OrderBy((l$createdAt as String));
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : fromJson_Enum_OrderBy((l$createdBy as String));
    }
    if (data.containsKey('creator')) {
      final l$creator = data['creator'];
      result$data['creator'] = l$creator == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$creator as Map<String, dynamic>),
            );
    }
    if (data.containsKey('expiresAt')) {
      final l$expiresAt = data['expiresAt'];
      result$data['expiresAt'] = l$expiresAt == null
          ? null
          : fromJson_Enum_OrderBy((l$expiresAt as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userUid')) {
      final l$userUid = data['userUid'];
      result$data['userUid'] = l$userUid == null
          ? null
          : fromJson_Enum_OrderBy((l$userUid as String));
    }
    return Input_AuthInvitationsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get claimedAt => (_$data['claimedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get code => (_$data['code'] as Enum_OrderBy?);

  Enum_OrderBy? get createdAt => (_$data['createdAt'] as Enum_OrderBy?);

  Enum_OrderBy? get createdBy => (_$data['createdBy'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get creator =>
      (_$data['creator'] as Input_AuthUsersDataOrderBy?);

  Enum_OrderBy? get expiresAt => (_$data['expiresAt'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Enum_OrderBy? get userUid => (_$data['userUid'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('claimedAt')) {
      final l$claimedAt = claimedAt;
      result$data['claimedAt'] = l$claimedAt == null
          ? null
          : toJson_Enum_OrderBy(l$claimedAt);
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code == null ? null : toJson_Enum_OrderBy(l$code);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : toJson_Enum_OrderBy(l$createdAt);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy == null
          ? null
          : toJson_Enum_OrderBy(l$createdBy);
    }
    if (_$data.containsKey('creator')) {
      final l$creator = creator;
      result$data['creator'] = l$creator?.toJson();
    }
    if (_$data.containsKey('expiresAt')) {
      final l$expiresAt = expiresAt;
      result$data['expiresAt'] = l$expiresAt == null
          ? null
          : toJson_Enum_OrderBy(l$expiresAt);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('userUid')) {
      final l$userUid = userUid;
      result$data['userUid'] = l$userUid == null
          ? null
          : toJson_Enum_OrderBy(l$userUid);
    }
    return result$data;
  }

  CopyWith_Input_AuthInvitationsOrderBy<Input_AuthInvitationsOrderBy>
  get copyWith => CopyWith_Input_AuthInvitationsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthInvitationsOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$claimedAt = claimedAt;
    final lOther$claimedAt = other.claimedAt;
    if (_$data.containsKey('claimedAt') !=
        other._$data.containsKey('claimedAt')) {
      return false;
    }
    if (l$claimedAt != lOther$claimedAt) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$creator = creator;
    final lOther$creator = other.creator;
    if (_$data.containsKey('creator') != other._$data.containsKey('creator')) {
      return false;
    }
    if (l$creator != lOther$creator) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (_$data.containsKey('expiresAt') !=
        other._$data.containsKey('expiresAt')) {
      return false;
    }
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    final l$userUid = userUid;
    final lOther$userUid = other.userUid;
    if (_$data.containsKey('userUid') != other._$data.containsKey('userUid')) {
      return false;
    }
    if (l$userUid != lOther$userUid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$claimedAt = claimedAt;
    final l$code = code;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$creator = creator;
    final l$expiresAt = expiresAt;
    final l$id = id;
    final l$user = user;
    final l$userUid = userUid;
    return Object.hashAll([
      _$data.containsKey('claimedAt') ? l$claimedAt : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('creator') ? l$creator : const {},
      _$data.containsKey('expiresAt') ? l$expiresAt : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('userUid') ? l$userUid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthInvitationsOrderBy<TRes> {
  factory CopyWith_Input_AuthInvitationsOrderBy(
    Input_AuthInvitationsOrderBy instance,
    TRes Function(Input_AuthInvitationsOrderBy) then,
  ) = _CopyWithImpl_Input_AuthInvitationsOrderBy;

  factory CopyWith_Input_AuthInvitationsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthInvitationsOrderBy;

  TRes call({
    Enum_OrderBy? claimedAt,
    Enum_OrderBy? code,
    Enum_OrderBy? createdAt,
    Enum_OrderBy? createdBy,
    Input_AuthUsersDataOrderBy? creator,
    Enum_OrderBy? expiresAt,
    Enum_OrderBy? id,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? userUid,
  });
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get creator;
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_AuthInvitationsOrderBy<TRes>
    implements CopyWith_Input_AuthInvitationsOrderBy<TRes> {
  _CopyWithImpl_Input_AuthInvitationsOrderBy(this._instance, this._then);

  final Input_AuthInvitationsOrderBy _instance;

  final TRes Function(Input_AuthInvitationsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? claimedAt = _undefined,
    Object? code = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? creator = _undefined,
    Object? expiresAt = _undefined,
    Object? id = _undefined,
    Object? user = _undefined,
    Object? userUid = _undefined,
  }) => _then(
    Input_AuthInvitationsOrderBy._({
      ..._instance._$data,
      if (claimedAt != _undefined) 'claimedAt': (claimedAt as Enum_OrderBy?),
      if (code != _undefined) 'code': (code as Enum_OrderBy?),
      if (createdAt != _undefined) 'createdAt': (createdAt as Enum_OrderBy?),
      if (createdBy != _undefined) 'createdBy': (createdBy as Enum_OrderBy?),
      if (creator != _undefined)
        'creator': (creator as Input_AuthUsersDataOrderBy?),
      if (expiresAt != _undefined) 'expiresAt': (expiresAt as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
      if (userUid != _undefined) 'userUid': (userUid as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get creator {
    final local$creator = _instance.creator;
    return local$creator == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(
            local$creator,
            (e) => call(creator: e),
          );
  }

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_AuthInvitationsOrderBy<TRes>
    implements CopyWith_Input_AuthInvitationsOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthInvitationsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? claimedAt,
    Enum_OrderBy? code,
    Enum_OrderBy? createdAt,
    Enum_OrderBy? createdBy,
    Input_AuthUsersDataOrderBy? creator,
    Enum_OrderBy? expiresAt,
    Enum_OrderBy? id,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? userUid,
  }) => _res;

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get creator =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_AuthInvitationsPkColumnsInput {
  factory Input_AuthInvitationsPkColumnsInput({required UuidValue id}) =>
      Input_AuthInvitationsPkColumnsInput._({r'id': id});

  Input_AuthInvitationsPkColumnsInput._(this._$data);

  factory Input_AuthInvitationsPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_AuthInvitationsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_AuthInvitationsPkColumnsInput<
    Input_AuthInvitationsPkColumnsInput
  >
  get copyWith => CopyWith_Input_AuthInvitationsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthInvitationsPkColumnsInput ||
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

abstract class CopyWith_Input_AuthInvitationsPkColumnsInput<TRes> {
  factory CopyWith_Input_AuthInvitationsPkColumnsInput(
    Input_AuthInvitationsPkColumnsInput instance,
    TRes Function(Input_AuthInvitationsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_AuthInvitationsPkColumnsInput;

  factory CopyWith_Input_AuthInvitationsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthInvitationsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_AuthInvitationsPkColumnsInput<TRes>
    implements CopyWith_Input_AuthInvitationsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_AuthInvitationsPkColumnsInput(this._instance, this._then);

  final Input_AuthInvitationsPkColumnsInput _instance;

  final TRes Function(Input_AuthInvitationsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_AuthInvitationsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthInvitationsPkColumnsInput<TRes>
    implements CopyWith_Input_AuthInvitationsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_AuthInvitationsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_AuthInvitationsSetInput {
  factory Input_AuthInvitationsSetInput({DateTime? expiresAt}) =>
      Input_AuthInvitationsSetInput._({
        if (expiresAt != null) r'expiresAt': expiresAt,
      });

  Input_AuthInvitationsSetInput._(this._$data);

  factory Input_AuthInvitationsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('expiresAt')) {
      final l$expiresAt = data['expiresAt'];
      result$data['expiresAt'] = l$expiresAt == null
          ? null
          : tstzFromString(l$expiresAt);
    }
    return Input_AuthInvitationsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get expiresAt => (_$data['expiresAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('expiresAt')) {
      final l$expiresAt = expiresAt;
      result$data['expiresAt'] = l$expiresAt == null
          ? null
          : tstzToString(l$expiresAt);
    }
    return result$data;
  }

  CopyWith_Input_AuthInvitationsSetInput<Input_AuthInvitationsSetInput>
  get copyWith => CopyWith_Input_AuthInvitationsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthInvitationsSetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (_$data.containsKey('expiresAt') !=
        other._$data.containsKey('expiresAt')) {
      return false;
    }
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$expiresAt = expiresAt;
    return Object.hashAll([
      _$data.containsKey('expiresAt') ? l$expiresAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthInvitationsSetInput<TRes> {
  factory CopyWith_Input_AuthInvitationsSetInput(
    Input_AuthInvitationsSetInput instance,
    TRes Function(Input_AuthInvitationsSetInput) then,
  ) = _CopyWithImpl_Input_AuthInvitationsSetInput;

  factory CopyWith_Input_AuthInvitationsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthInvitationsSetInput;

  TRes call({DateTime? expiresAt});
}

class _CopyWithImpl_Input_AuthInvitationsSetInput<TRes>
    implements CopyWith_Input_AuthInvitationsSetInput<TRes> {
  _CopyWithImpl_Input_AuthInvitationsSetInput(this._instance, this._then);

  final Input_AuthInvitationsSetInput _instance;

  final TRes Function(Input_AuthInvitationsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? expiresAt = _undefined}) => _then(
    Input_AuthInvitationsSetInput._({
      ..._instance._$data,
      if (expiresAt != _undefined) 'expiresAt': (expiresAt as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthInvitationsSetInput<TRes>
    implements CopyWith_Input_AuthInvitationsSetInput<TRes> {
  _CopyWithStubImpl_Input_AuthInvitationsSetInput(this._res);

  TRes _res;

  call({DateTime? expiresAt}) => _res;
}

class Input_AuthInvitationsStreamCursorInput {
  factory Input_AuthInvitationsStreamCursorInput({
    required Input_AuthInvitationsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_AuthInvitationsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_AuthInvitationsStreamCursorInput._(this._$data);

  factory Input_AuthInvitationsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_AuthInvitationsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_AuthInvitationsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthInvitationsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_AuthInvitationsStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] = l$ordering == null
          ? null
          : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_AuthInvitationsStreamCursorInput<
    Input_AuthInvitationsStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_AuthInvitationsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthInvitationsStreamCursorInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initialValue = initialValue;
    final lOther$initialValue = other.initialValue;
    if (l$initialValue != lOther$initialValue) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initialValue = initialValue;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initialValue,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthInvitationsStreamCursorInput<TRes> {
  factory CopyWith_Input_AuthInvitationsStreamCursorInput(
    Input_AuthInvitationsStreamCursorInput instance,
    TRes Function(Input_AuthInvitationsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_AuthInvitationsStreamCursorInput;

  factory CopyWith_Input_AuthInvitationsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthInvitationsStreamCursorInput;

  TRes call({
    Input_AuthInvitationsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_AuthInvitationsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_AuthInvitationsStreamCursorInput<TRes>
    implements CopyWith_Input_AuthInvitationsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_AuthInvitationsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_AuthInvitationsStreamCursorInput _instance;

  final TRes Function(Input_AuthInvitationsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_AuthInvitationsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_AuthInvitationsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_AuthInvitationsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_AuthInvitationsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_AuthInvitationsStreamCursorInput<TRes>
    implements CopyWith_Input_AuthInvitationsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_AuthInvitationsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_AuthInvitationsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_AuthInvitationsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_AuthInvitationsStreamCursorValueInput.stub(_res);
}

class Input_AuthInvitationsStreamCursorValueInput {
  factory Input_AuthInvitationsStreamCursorValueInput({
    DateTime? claimedAt,
    String? code,
    DateTime? createdAt,
    UuidValue? createdBy,
    DateTime? expiresAt,
    UuidValue? id,
    UuidValue? userUid,
  }) => Input_AuthInvitationsStreamCursorValueInput._({
    if (claimedAt != null) r'claimedAt': claimedAt,
    if (code != null) r'code': code,
    if (createdAt != null) r'createdAt': createdAt,
    if (createdBy != null) r'createdBy': createdBy,
    if (expiresAt != null) r'expiresAt': expiresAt,
    if (id != null) r'id': id,
    if (userUid != null) r'userUid': userUid,
  });

  Input_AuthInvitationsStreamCursorValueInput._(this._$data);

  factory Input_AuthInvitationsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('claimedAt')) {
      final l$claimedAt = data['claimedAt'];
      result$data['claimedAt'] = l$claimedAt == null
          ? null
          : tstzFromString(l$claimedAt);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : tstzFromString(l$createdAt);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = l$createdBy == null
          ? null
          : stringToUuid(l$createdBy);
    }
    if (data.containsKey('expiresAt')) {
      final l$expiresAt = data['expiresAt'];
      result$data['expiresAt'] = l$expiresAt == null
          ? null
          : tstzFromString(l$expiresAt);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('userUid')) {
      final l$userUid = data['userUid'];
      result$data['userUid'] = l$userUid == null
          ? null
          : stringToUuid(l$userUid);
    }
    return Input_AuthInvitationsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get claimedAt => (_$data['claimedAt'] as DateTime?);

  String? get code => (_$data['code'] as String?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  UuidValue? get createdBy => (_$data['createdBy'] as UuidValue?);

  DateTime? get expiresAt => (_$data['expiresAt'] as DateTime?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  UuidValue? get userUid => (_$data['userUid'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('claimedAt')) {
      final l$claimedAt = claimedAt;
      result$data['claimedAt'] = l$claimedAt == null
          ? null
          : tstzToString(l$claimedAt);
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : tstzToString(l$createdAt);
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy == null
          ? null
          : uuidToString(l$createdBy);
    }
    if (_$data.containsKey('expiresAt')) {
      final l$expiresAt = expiresAt;
      result$data['expiresAt'] = l$expiresAt == null
          ? null
          : tstzToString(l$expiresAt);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('userUid')) {
      final l$userUid = userUid;
      result$data['userUid'] = l$userUid == null
          ? null
          : uuidToString(l$userUid);
    }
    return result$data;
  }

  CopyWith_Input_AuthInvitationsStreamCursorValueInput<
    Input_AuthInvitationsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_AuthInvitationsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthInvitationsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$claimedAt = claimedAt;
    final lOther$claimedAt = other.claimedAt;
    if (_$data.containsKey('claimedAt') !=
        other._$data.containsKey('claimedAt')) {
      return false;
    }
    if (l$claimedAt != lOther$claimedAt) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (_$data.containsKey('expiresAt') !=
        other._$data.containsKey('expiresAt')) {
      return false;
    }
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$userUid = userUid;
    final lOther$userUid = other.userUid;
    if (_$data.containsKey('userUid') != other._$data.containsKey('userUid')) {
      return false;
    }
    if (l$userUid != lOther$userUid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$claimedAt = claimedAt;
    final l$code = code;
    final l$createdAt = createdAt;
    final l$createdBy = createdBy;
    final l$expiresAt = expiresAt;
    final l$id = id;
    final l$userUid = userUid;
    return Object.hashAll([
      _$data.containsKey('claimedAt') ? l$claimedAt : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('expiresAt') ? l$expiresAt : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('userUid') ? l$userUid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthInvitationsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_AuthInvitationsStreamCursorValueInput(
    Input_AuthInvitationsStreamCursorValueInput instance,
    TRes Function(Input_AuthInvitationsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_AuthInvitationsStreamCursorValueInput;

  factory CopyWith_Input_AuthInvitationsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthInvitationsStreamCursorValueInput;

  TRes call({
    DateTime? claimedAt,
    String? code,
    DateTime? createdAt,
    UuidValue? createdBy,
    DateTime? expiresAt,
    UuidValue? id,
    UuidValue? userUid,
  });
}

class _CopyWithImpl_Input_AuthInvitationsStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthInvitationsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_AuthInvitationsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_AuthInvitationsStreamCursorValueInput _instance;

  final TRes Function(Input_AuthInvitationsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? claimedAt = _undefined,
    Object? code = _undefined,
    Object? createdAt = _undefined,
    Object? createdBy = _undefined,
    Object? expiresAt = _undefined,
    Object? id = _undefined,
    Object? userUid = _undefined,
  }) => _then(
    Input_AuthInvitationsStreamCursorValueInput._({
      ..._instance._$data,
      if (claimedAt != _undefined) 'claimedAt': (claimedAt as DateTime?),
      if (code != _undefined) 'code': (code as String?),
      if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
      if (createdBy != _undefined) 'createdBy': (createdBy as UuidValue?),
      if (expiresAt != _undefined) 'expiresAt': (expiresAt as DateTime?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (userUid != _undefined) 'userUid': (userUid as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthInvitationsStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthInvitationsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_AuthInvitationsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    DateTime? claimedAt,
    String? code,
    DateTime? createdAt,
    UuidValue? createdBy,
    DateTime? expiresAt,
    UuidValue? id,
    UuidValue? userUid,
  }) => _res;
}

class Input_AuthInvitationsUpdates {
  factory Input_AuthInvitationsUpdates({
    Input_AuthInvitationsSetInput? $_set,
    required Input_AuthInvitationsBoolExp where,
  }) => Input_AuthInvitationsUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_AuthInvitationsUpdates._(this._$data);

  factory Input_AuthInvitationsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_AuthInvitationsSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_AuthInvitationsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_AuthInvitationsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthInvitationsSetInput? get $_set =>
      (_$data['_set'] as Input_AuthInvitationsSetInput?);

  Input_AuthInvitationsBoolExp get where =>
      (_$data['where'] as Input_AuthInvitationsBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_AuthInvitationsUpdates<Input_AuthInvitationsUpdates>
  get copyWith => CopyWith_Input_AuthInvitationsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthInvitationsUpdates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith_Input_AuthInvitationsUpdates<TRes> {
  factory CopyWith_Input_AuthInvitationsUpdates(
    Input_AuthInvitationsUpdates instance,
    TRes Function(Input_AuthInvitationsUpdates) then,
  ) = _CopyWithImpl_Input_AuthInvitationsUpdates;

  factory CopyWith_Input_AuthInvitationsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthInvitationsUpdates;

  TRes call({
    Input_AuthInvitationsSetInput? $_set,
    Input_AuthInvitationsBoolExp? where,
  });
  CopyWith_Input_AuthInvitationsSetInput<TRes> get $_set;
  CopyWith_Input_AuthInvitationsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AuthInvitationsUpdates<TRes>
    implements CopyWith_Input_AuthInvitationsUpdates<TRes> {
  _CopyWithImpl_Input_AuthInvitationsUpdates(this._instance, this._then);

  final Input_AuthInvitationsUpdates _instance;

  final TRes Function(Input_AuthInvitationsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_AuthInvitationsUpdates._({
      ..._instance._$data,
      if ($_set != _undefined)
        '_set': ($_set as Input_AuthInvitationsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_AuthInvitationsBoolExp),
    }),
  );

  CopyWith_Input_AuthInvitationsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_AuthInvitationsSetInput.stub(_then(_instance))
        : CopyWith_Input_AuthInvitationsSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_AuthInvitationsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_AuthInvitationsBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_AuthInvitationsUpdates<TRes>
    implements CopyWith_Input_AuthInvitationsUpdates<TRes> {
  _CopyWithStubImpl_Input_AuthInvitationsUpdates(this._res);

  TRes _res;

  call({
    Input_AuthInvitationsSetInput? $_set,
    Input_AuthInvitationsBoolExp? where,
  }) => _res;

  CopyWith_Input_AuthInvitationsSetInput<TRes> get $_set =>
      CopyWith_Input_AuthInvitationsSetInput.stub(_res);

  CopyWith_Input_AuthInvitationsBoolExp<TRes> get where =>
      CopyWith_Input_AuthInvitationsBoolExp.stub(_res);
}

class Input_AuthUsersAdminOnAggregateOrderBy {
  factory Input_AuthUsersAdminOnAggregateOrderBy({
    Input_AuthUsersAdminOnAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_AuthUsersAdminOnMaxOrderBy? max,
    Input_AuthUsersAdminOnMinOrderBy? min,
    Input_AuthUsersAdminOnStddevOrderBy? stddev,
    Input_AuthUsersAdminOnStddevPopOrderBy? stddevPop,
    Input_AuthUsersAdminOnStddevSampOrderBy? stddevSamp,
    Input_AuthUsersAdminOnSumOrderBy? sum,
    Input_AuthUsersAdminOnVarPopOrderBy? varPop,
    Input_AuthUsersAdminOnVarSampOrderBy? varSamp,
    Input_AuthUsersAdminOnVarianceOrderBy? variance,
  }) => Input_AuthUsersAdminOnAggregateOrderBy._({
    if (avg != null) r'avg': avg,
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
    if (stddev != null) r'stddev': stddev,
    if (stddevPop != null) r'stddevPop': stddevPop,
    if (stddevSamp != null) r'stddevSamp': stddevSamp,
    if (sum != null) r'sum': sum,
    if (varPop != null) r'varPop': varPop,
    if (varSamp != null) r'varSamp': varSamp,
    if (variance != null) r'variance': variance,
  });

  Input_AuthUsersAdminOnAggregateOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnAggregateOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_AuthUsersAdminOnAvgOrderBy.fromJson(
              (l$avg as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : fromJson_Enum_OrderBy((l$count as String));
    }
    if (data.containsKey('max')) {
      final l$max = data['max'];
      result$data['max'] = l$max == null
          ? null
          : Input_AuthUsersAdminOnMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_AuthUsersAdminOnMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_AuthUsersAdminOnStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_AuthUsersAdminOnStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_AuthUsersAdminOnStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_AuthUsersAdminOnSumOrderBy.fromJson(
              (l$sum as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_AuthUsersAdminOnVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_AuthUsersAdminOnVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_AuthUsersAdminOnVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_AuthUsersAdminOnAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnAvgOrderBy? get avg =>
      (_$data['avg'] as Input_AuthUsersAdminOnAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_AuthUsersAdminOnMaxOrderBy? get max =>
      (_$data['max'] as Input_AuthUsersAdminOnMaxOrderBy?);

  Input_AuthUsersAdminOnMinOrderBy? get min =>
      (_$data['min'] as Input_AuthUsersAdminOnMinOrderBy?);

  Input_AuthUsersAdminOnStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_AuthUsersAdminOnStddevOrderBy?);

  Input_AuthUsersAdminOnStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_AuthUsersAdminOnStddevPopOrderBy?);

  Input_AuthUsersAdminOnStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_AuthUsersAdminOnStddevSampOrderBy?);

  Input_AuthUsersAdminOnSumOrderBy? get sum =>
      (_$data['sum'] as Input_AuthUsersAdminOnSumOrderBy?);

  Input_AuthUsersAdminOnVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_AuthUsersAdminOnVarPopOrderBy?);

  Input_AuthUsersAdminOnVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_AuthUsersAdminOnVarSampOrderBy?);

  Input_AuthUsersAdminOnVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_AuthUsersAdminOnVarianceOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avg')) {
      final l$avg = avg;
      result$data['avg'] = l$avg?.toJson();
    }
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count == null
          ? null
          : toJson_Enum_OrderBy(l$count);
    }
    if (_$data.containsKey('max')) {
      final l$max = max;
      result$data['max'] = l$max?.toJson();
    }
    if (_$data.containsKey('min')) {
      final l$min = min;
      result$data['min'] = l$min?.toJson();
    }
    if (_$data.containsKey('stddev')) {
      final l$stddev = stddev;
      result$data['stddev'] = l$stddev?.toJson();
    }
    if (_$data.containsKey('stddevPop')) {
      final l$stddevPop = stddevPop;
      result$data['stddevPop'] = l$stddevPop?.toJson();
    }
    if (_$data.containsKey('stddevSamp')) {
      final l$stddevSamp = stddevSamp;
      result$data['stddevSamp'] = l$stddevSamp?.toJson();
    }
    if (_$data.containsKey('sum')) {
      final l$sum = sum;
      result$data['sum'] = l$sum?.toJson();
    }
    if (_$data.containsKey('varPop')) {
      final l$varPop = varPop;
      result$data['varPop'] = l$varPop?.toJson();
    }
    if (_$data.containsKey('varSamp')) {
      final l$varSamp = varSamp;
      result$data['varSamp'] = l$varSamp?.toJson();
    }
    if (_$data.containsKey('variance')) {
      final l$variance = variance;
      result$data['variance'] = l$variance?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<
    Input_AuthUsersAdminOnAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_AuthUsersAdminOnAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnAggregateOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avg = avg;
    final lOther$avg = other.avg;
    if (_$data.containsKey('avg') != other._$data.containsKey('avg')) {
      return false;
    }
    if (l$avg != lOther$avg) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (_$data.containsKey('max') != other._$data.containsKey('max')) {
      return false;
    }
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (_$data.containsKey('min') != other._$data.containsKey('min')) {
      return false;
    }
    if (l$min != lOther$min) {
      return false;
    }
    final l$stddev = stddev;
    final lOther$stddev = other.stddev;
    if (_$data.containsKey('stddev') != other._$data.containsKey('stddev')) {
      return false;
    }
    if (l$stddev != lOther$stddev) {
      return false;
    }
    final l$stddevPop = stddevPop;
    final lOther$stddevPop = other.stddevPop;
    if (_$data.containsKey('stddevPop') !=
        other._$data.containsKey('stddevPop')) {
      return false;
    }
    if (l$stddevPop != lOther$stddevPop) {
      return false;
    }
    final l$stddevSamp = stddevSamp;
    final lOther$stddevSamp = other.stddevSamp;
    if (_$data.containsKey('stddevSamp') !=
        other._$data.containsKey('stddevSamp')) {
      return false;
    }
    if (l$stddevSamp != lOther$stddevSamp) {
      return false;
    }
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (_$data.containsKey('sum') != other._$data.containsKey('sum')) {
      return false;
    }
    if (l$sum != lOther$sum) {
      return false;
    }
    final l$varPop = varPop;
    final lOther$varPop = other.varPop;
    if (_$data.containsKey('varPop') != other._$data.containsKey('varPop')) {
      return false;
    }
    if (l$varPop != lOther$varPop) {
      return false;
    }
    final l$varSamp = varSamp;
    final lOther$varSamp = other.varSamp;
    if (_$data.containsKey('varSamp') != other._$data.containsKey('varSamp')) {
      return false;
    }
    if (l$varSamp != lOther$varSamp) {
      return false;
    }
    final l$variance = variance;
    final lOther$variance = other.variance;
    if (_$data.containsKey('variance') !=
        other._$data.containsKey('variance')) {
      return false;
    }
    if (l$variance != lOther$variance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avg = avg;
    final l$count = count;
    final l$max = max;
    final l$min = min;
    final l$stddev = stddev;
    final l$stddevPop = stddevPop;
    final l$stddevSamp = stddevSamp;
    final l$sum = sum;
    final l$varPop = varPop;
    final l$varSamp = varSamp;
    final l$variance = variance;
    return Object.hashAll([
      _$data.containsKey('avg') ? l$avg : const {},
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
      _$data.containsKey('stddev') ? l$stddev : const {},
      _$data.containsKey('stddevPop') ? l$stddevPop : const {},
      _$data.containsKey('stddevSamp') ? l$stddevSamp : const {},
      _$data.containsKey('sum') ? l$sum : const {},
      _$data.containsKey('varPop') ? l$varPop : const {},
      _$data.containsKey('varSamp') ? l$varSamp : const {},
      _$data.containsKey('variance') ? l$variance : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnAggregateOrderBy(
    Input_AuthUsersAdminOnAggregateOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnAggregateOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnAggregateOrderBy;

  TRes call({
    Input_AuthUsersAdminOnAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_AuthUsersAdminOnMaxOrderBy? max,
    Input_AuthUsersAdminOnMinOrderBy? min,
    Input_AuthUsersAdminOnStddevOrderBy? stddev,
    Input_AuthUsersAdminOnStddevPopOrderBy? stddevPop,
    Input_AuthUsersAdminOnStddevSampOrderBy? stddevSamp,
    Input_AuthUsersAdminOnSumOrderBy? sum,
    Input_AuthUsersAdminOnVarPopOrderBy? varPop,
    Input_AuthUsersAdminOnVarSampOrderBy? varSamp,
    Input_AuthUsersAdminOnVarianceOrderBy? variance,
  });
  CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> get avg;
  CopyWith_Input_AuthUsersAdminOnMaxOrderBy<TRes> get max;
  CopyWith_Input_AuthUsersAdminOnMinOrderBy<TRes> get min;
  CopyWith_Input_AuthUsersAdminOnStddevOrderBy<TRes> get stddev;
  CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> get sum;
  CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnAggregateOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avg = _undefined,
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
    Object? stddev = _undefined,
    Object? stddevPop = _undefined,
    Object? stddevSamp = _undefined,
    Object? sum = _undefined,
    Object? varPop = _undefined,
    Object? varSamp = _undefined,
    Object? variance = _undefined,
  }) => _then(
    Input_AuthUsersAdminOnAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined) 'avg': (avg as Input_AuthUsersAdminOnAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_AuthUsersAdminOnMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_AuthUsersAdminOnMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_AuthUsersAdminOnStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_AuthUsersAdminOnStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp': (stddevSamp as Input_AuthUsersAdminOnStddevSampOrderBy?),
      if (sum != _undefined) 'sum': (sum as Input_AuthUsersAdminOnSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_AuthUsersAdminOnVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_AuthUsersAdminOnVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_AuthUsersAdminOnVarianceOrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_AuthUsersAdminOnAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnAvgOrderBy(
            local$avg,
            (e) => call(avg: e),
          );
  }

  CopyWith_Input_AuthUsersAdminOnMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_AuthUsersAdminOnMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_AuthUsersAdminOnMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_AuthUsersAdminOnMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }

  CopyWith_Input_AuthUsersAdminOnStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_AuthUsersAdminOnStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_AuthUsersAdminOnSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnSumOrderBy(
            local$sum,
            (e) => call(sum: e),
          );
  }

  CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_AuthUsersAdminOnVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_AuthUsersAdminOnVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_AuthUsersAdminOnVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnAggregateOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_AuthUsersAdminOnMaxOrderBy? max,
    Input_AuthUsersAdminOnMinOrderBy? min,
    Input_AuthUsersAdminOnStddevOrderBy? stddev,
    Input_AuthUsersAdminOnStddevPopOrderBy? stddevPop,
    Input_AuthUsersAdminOnStddevSampOrderBy? stddevSamp,
    Input_AuthUsersAdminOnSumOrderBy? sum,
    Input_AuthUsersAdminOnVarPopOrderBy? varPop,
    Input_AuthUsersAdminOnVarSampOrderBy? varSamp,
    Input_AuthUsersAdminOnVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> get avg =>
      CopyWith_Input_AuthUsersAdminOnAvgOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnMaxOrderBy<TRes> get max =>
      CopyWith_Input_AuthUsersAdminOnMaxOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnMinOrderBy<TRes> get min =>
      CopyWith_Input_AuthUsersAdminOnMinOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_AuthUsersAdminOnStddevOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_AuthUsersAdminOnStddevPopOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_AuthUsersAdminOnStddevSampOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> get sum =>
      CopyWith_Input_AuthUsersAdminOnSumOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_AuthUsersAdminOnVarPopOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_AuthUsersAdminOnVarSampOrderBy.stub(_res);

  CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_AuthUsersAdminOnVarianceOrderBy.stub(_res);
}

class Input_AuthUsersAdminOnArrRelInsertInput {
  factory Input_AuthUsersAdminOnArrRelInsertInput({
    required List<Input_AuthUsersAdminOnInsertInput> data,
    Input_AuthUsersAdminOnOnConflict? onConflict,
  }) => Input_AuthUsersAdminOnArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_AuthUsersAdminOnArrRelInsertInput._(this._$data);

  factory Input_AuthUsersAdminOnArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_AuthUsersAdminOnInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_AuthUsersAdminOnOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_AuthUsersAdminOnArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthUsersAdminOnInsertInput> get data =>
      (_$data['data'] as List<Input_AuthUsersAdminOnInsertInput>);

  Input_AuthUsersAdminOnOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_AuthUsersAdminOnOnConflict?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.map((e) => e.toJson()).toList();
    if (_$data.containsKey('onConflict')) {
      final l$onConflict = onConflict;
      result$data['onConflict'] = l$onConflict?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<
    Input_AuthUsersAdminOnArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_AuthUsersAdminOnArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnArrRelInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) {
      return false;
    }
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) {
        return false;
      }
    }
    final l$onConflict = onConflict;
    final lOther$onConflict = other.onConflict;
    if (_$data.containsKey('onConflict') !=
        other._$data.containsKey('onConflict')) {
      return false;
    }
    if (l$onConflict != lOther$onConflict) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$onConflict = onConflict;
    return Object.hashAll([
      Object.hashAll(l$data.map((v) => v)),
      _$data.containsKey('onConflict') ? l$onConflict : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnArrRelInsertInput(
    Input_AuthUsersAdminOnArrRelInsertInput instance,
    TRes Function(Input_AuthUsersAdminOnArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnArrRelInsertInput;

  factory CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnArrRelInsertInput;

  TRes call({
    List<Input_AuthUsersAdminOnInsertInput>? data,
    Input_AuthUsersAdminOnOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_AuthUsersAdminOnInsertInput> Function(
      Iterable<
        CopyWith_Input_AuthUsersAdminOnInsertInput<
          Input_AuthUsersAdminOnInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersAdminOnOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AuthUsersAdminOnArrRelInsertInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnArrRelInsertInput _instance;

  final TRes Function(Input_AuthUsersAdminOnArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_AuthUsersAdminOnArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_AuthUsersAdminOnInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_AuthUsersAdminOnOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_AuthUsersAdminOnInsertInput> Function(
      Iterable<
        CopyWith_Input_AuthUsersAdminOnInsertInput<
          Input_AuthUsersAdminOnInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_AuthUsersAdminOnInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_AuthUsersAdminOnOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AuthUsersAdminOnOnConflict.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnArrRelInsertInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_AuthUsersAdminOnInsertInput>? data,
    Input_AuthUsersAdminOnOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_AuthUsersAdminOnOnConflict<TRes> get onConflict =>
      CopyWith_Input_AuthUsersAdminOnOnConflict.stub(_res);
}

class Input_AuthUsersAdminOnAvgOrderBy {
  factory Input_AuthUsersAdminOnAvgOrderBy({Enum_OrderBy? serviceStudyYear}) =>
      Input_AuthUsersAdminOnAvgOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_AuthUsersAdminOnAvgOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnAvgOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnAvgOrderBy<Input_AuthUsersAdminOnAvgOrderBy>
  get copyWith => CopyWith_Input_AuthUsersAdminOnAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnAvgOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnAvgOrderBy(
    Input_AuthUsersAdminOnAvgOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnAvgOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnAvgOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnAvgOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnAvgOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnAvgOrderBy(this._instance, this._then);

  final Input_AuthUsersAdminOnAvgOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnAvgOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnAvgOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnAvgOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnBoolExp {
  factory Input_AuthUsersAdminOnBoolExp({
    List<Input_AuthUsersAdminOnBoolExp>? $_and,
    Input_AuthUsersAdminOnBoolExp? $_not,
    List<Input_AuthUsersAdminOnBoolExp>? $_or,
    Input_UuidComparisonExp? adminOnArea,
    Input_UuidComparisonExp? adminOnGroup,
    Input_UuidComparisonExp? adminOnService,
    Input_AreasBoolExp? area,
    Input_BooleanComparisonExp? areaAdminOnUsers,
    Input_BooleanComparisonExp? areaAllowEdit,
    Input_BooleanComparisonExp? areaAllowExport,
    Input_ClassesBoolExp? classes,
    Input_ClassesAggregateBoolExp? classesAggregate,
    Input_GroupsBoolExp? group,
    Input_BooleanComparisonExp? groupAdminOnUsers,
    Input_BooleanComparisonExp? groupAllowEdit,
    Input_BooleanComparisonExp? groupAllowExport,
    Input_BooleanComparisonExp? groupAllowRecordAttendance,
    Input_BooleanComparisonExp? groupAllowRecordServantsAttendance,
    Input_BooleanComparisonExp? groupWriteRelatedFamilies,
    Input_UuidComparisonExp? permissionId,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceAdminOnUsers,
    Input_BooleanComparisonExp? serviceAllowEdit,
    Input_BooleanComparisonExp? serviceAllowExport,
    Input_BooleanComparisonExp? serviceAllowRecordAttendance,
    Input_BooleanComparisonExp? serviceAllowRecordServantsAttendance,
    Input_BooleanComparisonExp? serviceGender,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? serviceStudyYearData,
    Input_BooleanComparisonExp? serviceWriteRelatedFamilies,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_AuthUsersAdminOnBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminOnArea != null) r'adminOnArea': adminOnArea,
    if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
    if (adminOnService != null) r'adminOnService': adminOnService,
    if (area != null) r'area': area,
    if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
    if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
    if (areaAllowExport != null) r'areaAllowExport': areaAllowExport,
    if (classes != null) r'classes': classes,
    if (classesAggregate != null) r'classesAggregate': classesAggregate,
    if (group != null) r'group': group,
    if (groupAdminOnUsers != null) r'groupAdminOnUsers': groupAdminOnUsers,
    if (groupAllowEdit != null) r'groupAllowEdit': groupAllowEdit,
    if (groupAllowExport != null) r'groupAllowExport': groupAllowExport,
    if (groupAllowRecordAttendance != null)
      r'groupAllowRecordAttendance': groupAllowRecordAttendance,
    if (groupAllowRecordServantsAttendance != null)
      r'groupAllowRecordServantsAttendance': groupAllowRecordServantsAttendance,
    if (groupWriteRelatedFamilies != null)
      r'groupWriteRelatedFamilies': groupWriteRelatedFamilies,
    if (permissionId != null) r'permissionId': permissionId,
    if (service != null) r'service': service,
    if (serviceAdminOnUsers != null)
      r'serviceAdminOnUsers': serviceAdminOnUsers,
    if (serviceAllowEdit != null) r'serviceAllowEdit': serviceAllowEdit,
    if (serviceAllowExport != null) r'serviceAllowExport': serviceAllowExport,
    if (serviceAllowRecordAttendance != null)
      r'serviceAllowRecordAttendance': serviceAllowRecordAttendance,
    if (serviceAllowRecordServantsAttendance != null)
      r'serviceAllowRecordServantsAttendance':
          serviceAllowRecordServantsAttendance,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceStudyYearData != null)
      r'serviceStudyYearData': serviceStudyYearData,
    if (serviceWriteRelatedFamilies != null)
      r'serviceWriteRelatedFamilies': serviceWriteRelatedFamilies,
    if (uid != null) r'uid': uid,
    if (user != null) r'user': user,
  });

  Input_AuthUsersAdminOnBoolExp._(this._$data);

  factory Input_AuthUsersAdminOnBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_AuthUsersAdminOnBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AuthUsersAdminOnBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_AuthUsersAdminOnBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('adminOnArea')) {
      final l$adminOnArea = data['adminOnArea'];
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$adminOnArea as Map<String, dynamic>),
            );
    }
    if (data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = data['adminOnGroup'];
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$adminOnGroup as Map<String, dynamic>),
            );
    }
    if (data.containsKey('adminOnService')) {
      final l$adminOnService = data['adminOnService'];
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$adminOnService as Map<String, dynamic>),
            );
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasBoolExp.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = data['areaAdminOnUsers'];
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$areaAdminOnUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = data['areaAllowEdit'];
      result$data['areaAllowEdit'] = l$areaAllowEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$areaAllowEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = data['areaAllowExport'];
      result$data['areaAllowExport'] = l$areaAllowExport == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$areaAllowExport as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$classes as Map<String, dynamic>));
    }
    if (data.containsKey('classesAggregate')) {
      final l$classesAggregate = data['classesAggregate'];
      result$data['classesAggregate'] = l$classesAggregate == null
          ? null
          : Input_ClassesAggregateBoolExp.fromJson(
              (l$classesAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = data['groupAdminOnUsers'];
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$groupAdminOnUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = data['groupAllowEdit'];
      result$data['groupAllowEdit'] = l$groupAllowEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$groupAllowEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = data['groupAllowExport'];
      result$data['groupAllowExport'] = l$groupAllowExport == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$groupAllowExport as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupAllowRecordAttendance')) {
      final l$groupAllowRecordAttendance = data['groupAllowRecordAttendance'];
      result$data['groupAllowRecordAttendance'] =
          l$groupAllowRecordAttendance == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$groupAllowRecordAttendance as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupAllowRecordServantsAttendance')) {
      final l$groupAllowRecordServantsAttendance =
          data['groupAllowRecordServantsAttendance'];
      result$data['groupAllowRecordServantsAttendance'] =
          l$groupAllowRecordServantsAttendance == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$groupAllowRecordServantsAttendance as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = data['groupWriteRelatedFamilies'];
      result$data['groupWriteRelatedFamilies'] =
          l$groupWriteRelatedFamilies == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$groupWriteRelatedFamilies as Map<String, dynamic>),
            );
    }
    if (data.containsKey('permissionId')) {
      final l$permissionId = data['permissionId'];
      result$data['permissionId'] = l$permissionId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$permissionId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = data['serviceAdminOnUsers'];
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceAdminOnUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = data['serviceAllowEdit'];
      result$data['serviceAllowEdit'] = l$serviceAllowEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceAllowEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = data['serviceAllowExport'];
      result$data['serviceAllowExport'] = l$serviceAllowExport == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceAllowExport as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceAllowRecordAttendance')) {
      final l$serviceAllowRecordAttendance =
          data['serviceAllowRecordAttendance'];
      result$data['serviceAllowRecordAttendance'] =
          l$serviceAllowRecordAttendance == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceAllowRecordAttendance as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceAllowRecordServantsAttendance')) {
      final l$serviceAllowRecordServantsAttendance =
          data['serviceAllowRecordServantsAttendance'];
      result$data['serviceAllowRecordServantsAttendance'] =
          l$serviceAllowRecordServantsAttendance == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceAllowRecordServantsAttendance as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceGender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$serviceStudyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceStudyYearData')) {
      final l$serviceStudyYearData = data['serviceStudyYearData'];
      result$data['serviceStudyYearData'] = l$serviceStudyYearData == null
          ? null
          : Input_StudyYearsBoolExp.fromJson(
              (l$serviceStudyYearData as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = data['serviceWriteRelatedFamilies'];
      result$data['serviceWriteRelatedFamilies'] =
          l$serviceWriteRelatedFamilies == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceWriteRelatedFamilies as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$uid as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_AuthUsersAdminOnBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthUsersAdminOnBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_AuthUsersAdminOnBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get $_not =>
      (_$data['_not'] as Input_AuthUsersAdminOnBoolExp?);

  List<Input_AuthUsersAdminOnBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_AuthUsersAdminOnBoolExp>?);

  Input_UuidComparisonExp? get adminOnArea =>
      (_$data['adminOnArea'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get adminOnGroup =>
      (_$data['adminOnGroup'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get adminOnService =>
      (_$data['adminOnService'] as Input_UuidComparisonExp?);

  Input_AreasBoolExp? get area => (_$data['area'] as Input_AreasBoolExp?);

  Input_BooleanComparisonExp? get areaAdminOnUsers =>
      (_$data['areaAdminOnUsers'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get areaAllowEdit =>
      (_$data['areaAllowEdit'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get areaAllowExport =>
      (_$data['areaAllowExport'] as Input_BooleanComparisonExp?);

  Input_ClassesBoolExp? get classes =>
      (_$data['classes'] as Input_ClassesBoolExp?);

  Input_ClassesAggregateBoolExp? get classesAggregate =>
      (_$data['classesAggregate'] as Input_ClassesAggregateBoolExp?);

  Input_GroupsBoolExp? get group => (_$data['group'] as Input_GroupsBoolExp?);

  Input_BooleanComparisonExp? get groupAdminOnUsers =>
      (_$data['groupAdminOnUsers'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get groupAllowEdit =>
      (_$data['groupAllowEdit'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get groupAllowExport =>
      (_$data['groupAllowExport'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get groupAllowRecordAttendance =>
      (_$data['groupAllowRecordAttendance'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get groupAllowRecordServantsAttendance =>
      (_$data['groupAllowRecordServantsAttendance']
          as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get groupWriteRelatedFamilies =>
      (_$data['groupWriteRelatedFamilies'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get permissionId =>
      (_$data['permissionId'] as Input_UuidComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_BooleanComparisonExp? get serviceAdminOnUsers =>
      (_$data['serviceAdminOnUsers'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get serviceAllowEdit =>
      (_$data['serviceAllowEdit'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get serviceAllowExport =>
      (_$data['serviceAllowExport'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get serviceAllowRecordAttendance =>
      (_$data['serviceAllowRecordAttendance'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get serviceAllowRecordServantsAttendance =>
      (_$data['serviceAllowRecordServantsAttendance']
          as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get serviceGender =>
      (_$data['serviceGender'] as Input_BooleanComparisonExp?);

  Input_IntComparisonExp? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Input_IntComparisonExp?);

  Input_StudyYearsBoolExp? get serviceStudyYearData =>
      (_$data['serviceStudyYearData'] as Input_StudyYearsBoolExp?);

  Input_BooleanComparisonExp? get serviceWriteRelatedFamilies =>
      (_$data['serviceWriteRelatedFamilies'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get uid =>
      (_$data['uid'] as Input_UuidComparisonExp?);

  Input_AuthUsersDataBoolExp? get user =>
      (_$data['user'] as Input_AuthUsersDataBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('adminOnArea')) {
      final l$adminOnArea = adminOnArea;
      result$data['adminOnArea'] = l$adminOnArea?.toJson();
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] = l$adminOnGroup?.toJson();
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService?.toJson();
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = areaAdminOnUsers;
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers?.toJson();
    }
    if (_$data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = areaAllowEdit;
      result$data['areaAllowEdit'] = l$areaAllowEdit?.toJson();
    }
    if (_$data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = areaAllowExport;
      result$data['areaAllowExport'] = l$areaAllowExport?.toJson();
    }
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('classesAggregate')) {
      final l$classesAggregate = classesAggregate;
      result$data['classesAggregate'] = l$classesAggregate?.toJson();
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = groupAdminOnUsers;
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers?.toJson();
    }
    if (_$data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = groupAllowEdit;
      result$data['groupAllowEdit'] = l$groupAllowEdit?.toJson();
    }
    if (_$data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = groupAllowExport;
      result$data['groupAllowExport'] = l$groupAllowExport?.toJson();
    }
    if (_$data.containsKey('groupAllowRecordAttendance')) {
      final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
      result$data['groupAllowRecordAttendance'] = l$groupAllowRecordAttendance
          ?.toJson();
    }
    if (_$data.containsKey('groupAllowRecordServantsAttendance')) {
      final l$groupAllowRecordServantsAttendance =
          groupAllowRecordServantsAttendance;
      result$data['groupAllowRecordServantsAttendance'] =
          l$groupAllowRecordServantsAttendance?.toJson();
    }
    if (_$data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
      result$data['groupWriteRelatedFamilies'] = l$groupWriteRelatedFamilies
          ?.toJson();
    }
    if (_$data.containsKey('permissionId')) {
      final l$permissionId = permissionId;
      result$data['permissionId'] = l$permissionId?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = serviceAdminOnUsers;
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers?.toJson();
    }
    if (_$data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = serviceAllowEdit;
      result$data['serviceAllowEdit'] = l$serviceAllowEdit?.toJson();
    }
    if (_$data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = serviceAllowExport;
      result$data['serviceAllowExport'] = l$serviceAllowExport?.toJson();
    }
    if (_$data.containsKey('serviceAllowRecordAttendance')) {
      final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
      result$data['serviceAllowRecordAttendance'] =
          l$serviceAllowRecordAttendance?.toJson();
    }
    if (_$data.containsKey('serviceAllowRecordServantsAttendance')) {
      final l$serviceAllowRecordServantsAttendance =
          serviceAllowRecordServantsAttendance;
      result$data['serviceAllowRecordServantsAttendance'] =
          l$serviceAllowRecordServantsAttendance?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender?.toJson();
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear?.toJson();
    }
    if (_$data.containsKey('serviceStudyYearData')) {
      final l$serviceStudyYearData = serviceStudyYearData;
      result$data['serviceStudyYearData'] = l$serviceStudyYearData?.toJson();
    }
    if (_$data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
      result$data['serviceWriteRelatedFamilies'] = l$serviceWriteRelatedFamilies
          ?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersAdminOnBoolExp<Input_AuthUsersAdminOnBoolExp>
  get copyWith => CopyWith_Input_AuthUsersAdminOnBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnBoolExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$adminOnArea = adminOnArea;
    final lOther$adminOnArea = other.adminOnArea;
    if (_$data.containsKey('adminOnArea') !=
        other._$data.containsKey('adminOnArea')) {
      return false;
    }
    if (l$adminOnArea != lOther$adminOnArea) {
      return false;
    }
    final l$adminOnGroup = adminOnGroup;
    final lOther$adminOnGroup = other.adminOnGroup;
    if (_$data.containsKey('adminOnGroup') !=
        other._$data.containsKey('adminOnGroup')) {
      return false;
    }
    if (l$adminOnGroup != lOther$adminOnGroup) {
      return false;
    }
    final l$adminOnService = adminOnService;
    final lOther$adminOnService = other.adminOnService;
    if (_$data.containsKey('adminOnService') !=
        other._$data.containsKey('adminOnService')) {
      return false;
    }
    if (l$adminOnService != lOther$adminOnService) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final lOther$areaAdminOnUsers = other.areaAdminOnUsers;
    if (_$data.containsKey('areaAdminOnUsers') !=
        other._$data.containsKey('areaAdminOnUsers')) {
      return false;
    }
    if (l$areaAdminOnUsers != lOther$areaAdminOnUsers) {
      return false;
    }
    final l$areaAllowEdit = areaAllowEdit;
    final lOther$areaAllowEdit = other.areaAllowEdit;
    if (_$data.containsKey('areaAllowEdit') !=
        other._$data.containsKey('areaAllowEdit')) {
      return false;
    }
    if (l$areaAllowEdit != lOther$areaAllowEdit) {
      return false;
    }
    final l$areaAllowExport = areaAllowExport;
    final lOther$areaAllowExport = other.areaAllowExport;
    if (_$data.containsKey('areaAllowExport') !=
        other._$data.containsKey('areaAllowExport')) {
      return false;
    }
    if (l$areaAllowExport != lOther$areaAllowExport) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
      return false;
    }
    final l$classesAggregate = classesAggregate;
    final lOther$classesAggregate = other.classesAggregate;
    if (_$data.containsKey('classesAggregate') !=
        other._$data.containsKey('classesAggregate')) {
      return false;
    }
    if (l$classesAggregate != lOther$classesAggregate) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (_$data.containsKey('group') != other._$data.containsKey('group')) {
      return false;
    }
    if (l$group != lOther$group) {
      return false;
    }
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final lOther$groupAdminOnUsers = other.groupAdminOnUsers;
    if (_$data.containsKey('groupAdminOnUsers') !=
        other._$data.containsKey('groupAdminOnUsers')) {
      return false;
    }
    if (l$groupAdminOnUsers != lOther$groupAdminOnUsers) {
      return false;
    }
    final l$groupAllowEdit = groupAllowEdit;
    final lOther$groupAllowEdit = other.groupAllowEdit;
    if (_$data.containsKey('groupAllowEdit') !=
        other._$data.containsKey('groupAllowEdit')) {
      return false;
    }
    if (l$groupAllowEdit != lOther$groupAllowEdit) {
      return false;
    }
    final l$groupAllowExport = groupAllowExport;
    final lOther$groupAllowExport = other.groupAllowExport;
    if (_$data.containsKey('groupAllowExport') !=
        other._$data.containsKey('groupAllowExport')) {
      return false;
    }
    if (l$groupAllowExport != lOther$groupAllowExport) {
      return false;
    }
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final lOther$groupAllowRecordAttendance = other.groupAllowRecordAttendance;
    if (_$data.containsKey('groupAllowRecordAttendance') !=
        other._$data.containsKey('groupAllowRecordAttendance')) {
      return false;
    }
    if (l$groupAllowRecordAttendance != lOther$groupAllowRecordAttendance) {
      return false;
    }
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final lOther$groupAllowRecordServantsAttendance =
        other.groupAllowRecordServantsAttendance;
    if (_$data.containsKey('groupAllowRecordServantsAttendance') !=
        other._$data.containsKey('groupAllowRecordServantsAttendance')) {
      return false;
    }
    if (l$groupAllowRecordServantsAttendance !=
        lOther$groupAllowRecordServantsAttendance) {
      return false;
    }
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final lOther$groupWriteRelatedFamilies = other.groupWriteRelatedFamilies;
    if (_$data.containsKey('groupWriteRelatedFamilies') !=
        other._$data.containsKey('groupWriteRelatedFamilies')) {
      return false;
    }
    if (l$groupWriteRelatedFamilies != lOther$groupWriteRelatedFamilies) {
      return false;
    }
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (_$data.containsKey('permissionId') !=
        other._$data.containsKey('permissionId')) {
      return false;
    }
    if (l$permissionId != lOther$permissionId) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
      return false;
    }
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final lOther$serviceAdminOnUsers = other.serviceAdminOnUsers;
    if (_$data.containsKey('serviceAdminOnUsers') !=
        other._$data.containsKey('serviceAdminOnUsers')) {
      return false;
    }
    if (l$serviceAdminOnUsers != lOther$serviceAdminOnUsers) {
      return false;
    }
    final l$serviceAllowEdit = serviceAllowEdit;
    final lOther$serviceAllowEdit = other.serviceAllowEdit;
    if (_$data.containsKey('serviceAllowEdit') !=
        other._$data.containsKey('serviceAllowEdit')) {
      return false;
    }
    if (l$serviceAllowEdit != lOther$serviceAllowEdit) {
      return false;
    }
    final l$serviceAllowExport = serviceAllowExport;
    final lOther$serviceAllowExport = other.serviceAllowExport;
    if (_$data.containsKey('serviceAllowExport') !=
        other._$data.containsKey('serviceAllowExport')) {
      return false;
    }
    if (l$serviceAllowExport != lOther$serviceAllowExport) {
      return false;
    }
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final lOther$serviceAllowRecordAttendance =
        other.serviceAllowRecordAttendance;
    if (_$data.containsKey('serviceAllowRecordAttendance') !=
        other._$data.containsKey('serviceAllowRecordAttendance')) {
      return false;
    }
    if (l$serviceAllowRecordAttendance != lOther$serviceAllowRecordAttendance) {
      return false;
    }
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final lOther$serviceAllowRecordServantsAttendance =
        other.serviceAllowRecordServantsAttendance;
    if (_$data.containsKey('serviceAllowRecordServantsAttendance') !=
        other._$data.containsKey('serviceAllowRecordServantsAttendance')) {
      return false;
    }
    if (l$serviceAllowRecordServantsAttendance !=
        lOther$serviceAllowRecordServantsAttendance) {
      return false;
    }
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (_$data.containsKey('serviceGender') !=
        other._$data.containsKey('serviceGender')) {
      return false;
    }
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$serviceStudyYear = serviceStudyYear;
    final lOther$serviceStudyYear = other.serviceStudyYear;
    if (_$data.containsKey('serviceStudyYear') !=
        other._$data.containsKey('serviceStudyYear')) {
      return false;
    }
    if (l$serviceStudyYear != lOther$serviceStudyYear) {
      return false;
    }
    final l$serviceStudyYearData = serviceStudyYearData;
    final lOther$serviceStudyYearData = other.serviceStudyYearData;
    if (_$data.containsKey('serviceStudyYearData') !=
        other._$data.containsKey('serviceStudyYearData')) {
      return false;
    }
    if (l$serviceStudyYearData != lOther$serviceStudyYearData) {
      return false;
    }
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final lOther$serviceWriteRelatedFamilies =
        other.serviceWriteRelatedFamilies;
    if (_$data.containsKey('serviceWriteRelatedFamilies') !=
        other._$data.containsKey('serviceWriteRelatedFamilies')) {
      return false;
    }
    if (l$serviceWriteRelatedFamilies != lOther$serviceWriteRelatedFamilies) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (_$data.containsKey('uid') != other._$data.containsKey('uid')) {
      return false;
    }
    if (l$uid != lOther$uid) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$adminOnArea = adminOnArea;
    final l$adminOnGroup = adminOnGroup;
    final l$adminOnService = adminOnService;
    final l$area = area;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAllowExport = areaAllowExport;
    final l$classes = classes;
    final l$classesAggregate = classesAggregate;
    final l$group = group;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAllowExport = groupAllowExport;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final l$permissionId = permissionId;
    final l$service = service;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAllowExport = serviceAllowExport;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$serviceGender = serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceStudyYearData = serviceStudyYearData;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$uid = uid;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
                ? null
                : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
                ? null
                : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('areaAllowExport') ? l$areaAllowExport : const {},
      _$data.containsKey('classes') ? l$classes : const {},
      _$data.containsKey('classesAggregate') ? l$classesAggregate : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupAdminOnUsers') ? l$groupAdminOnUsers : const {},
      _$data.containsKey('groupAllowEdit') ? l$groupAllowEdit : const {},
      _$data.containsKey('groupAllowExport') ? l$groupAllowExport : const {},
      _$data.containsKey('groupAllowRecordAttendance')
          ? l$groupAllowRecordAttendance
          : const {},
      _$data.containsKey('groupAllowRecordServantsAttendance')
          ? l$groupAllowRecordServantsAttendance
          : const {},
      _$data.containsKey('groupWriteRelatedFamilies')
          ? l$groupWriteRelatedFamilies
          : const {},
      _$data.containsKey('permissionId') ? l$permissionId : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceAdminOnUsers')
          ? l$serviceAdminOnUsers
          : const {},
      _$data.containsKey('serviceAllowEdit') ? l$serviceAllowEdit : const {},
      _$data.containsKey('serviceAllowExport')
          ? l$serviceAllowExport
          : const {},
      _$data.containsKey('serviceAllowRecordAttendance')
          ? l$serviceAllowRecordAttendance
          : const {},
      _$data.containsKey('serviceAllowRecordServantsAttendance')
          ? l$serviceAllowRecordServantsAttendance
          : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceStudyYearData')
          ? l$serviceStudyYearData
          : const {},
      _$data.containsKey('serviceWriteRelatedFamilies')
          ? l$serviceWriteRelatedFamilies
          : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}
