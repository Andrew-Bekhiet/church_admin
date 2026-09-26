// Part 10 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> {
  factory CopyWith_Input_AuthUsersDataObjRelInsertInput(
    Input_AuthUsersDataObjRelInsertInput instance,
    TRes Function(Input_AuthUsersDataObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_AuthUsersDataObjRelInsertInput;

  factory CopyWith_Input_AuthUsersDataObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataObjRelInsertInput;

  TRes call({
    Input_AuthUsersDataInsertInput? data,
    Input_AuthUsersDataOnConflict? onConflict,
  });
  CopyWith_Input_AuthUsersDataInsertInput<TRes> get data;
  CopyWith_Input_AuthUsersDataOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AuthUsersDataObjRelInsertInput<TRes>
    implements CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_AuthUsersDataObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersDataObjRelInsertInput _instance;

  final TRes Function(Input_AuthUsersDataObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_AuthUsersDataObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_AuthUsersDataInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_AuthUsersDataOnConflict?),
        }),
      );

  CopyWith_Input_AuthUsersDataInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_AuthUsersDataInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_AuthUsersDataOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AuthUsersDataOnConflict.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthUsersDataObjRelInsertInput<TRes>
    implements CopyWith_Input_AuthUsersDataObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_AuthUsersDataInsertInput? data,
    Input_AuthUsersDataOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_AuthUsersDataInsertInput<TRes> get data =>
      CopyWith_Input_AuthUsersDataInsertInput.stub(_res);

  CopyWith_Input_AuthUsersDataOnConflict<TRes> get onConflict =>
      CopyWith_Input_AuthUsersDataOnConflict.stub(_res);
}

class Input_AuthUsersDataOnConflict {
  factory Input_AuthUsersDataOnConflict({
    required Enum_AuthUsersDataConstraint constraint,
    List<Enum_AuthUsersDataUpdateColumn>? updateColumns,
    Input_AuthUsersDataBoolExp? where,
  }) => Input_AuthUsersDataOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_AuthUsersDataOnConflict._(this._$data);

  factory Input_AuthUsersDataOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_AuthUsersDataConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_AuthUsersDataUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_AuthUsersDataOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_AuthUsersDataConstraint get constraint =>
      (_$data['constraint'] as Enum_AuthUsersDataConstraint);

  List<Enum_AuthUsersDataUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_AuthUsersDataUpdateColumn>?);

  Input_AuthUsersDataBoolExp? get where =>
      (_$data['where'] as Input_AuthUsersDataBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_AuthUsersDataConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_AuthUsersDataUpdateColumn>)
              .map((e) => toJson_Enum_AuthUsersDataUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersDataOnConflict<Input_AuthUsersDataOnConflict>
  get copyWith => CopyWith_Input_AuthUsersDataOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataOnConflict ||
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

abstract class CopyWith_Input_AuthUsersDataOnConflict<TRes> {
  factory CopyWith_Input_AuthUsersDataOnConflict(
    Input_AuthUsersDataOnConflict instance,
    TRes Function(Input_AuthUsersDataOnConflict) then,
  ) = _CopyWithImpl_Input_AuthUsersDataOnConflict;

  factory CopyWith_Input_AuthUsersDataOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataOnConflict;

  TRes call({
    Enum_AuthUsersDataConstraint? constraint,
    List<Enum_AuthUsersDataUpdateColumn>? updateColumns,
    Input_AuthUsersDataBoolExp? where,
  });
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AuthUsersDataOnConflict<TRes>
    implements CopyWith_Input_AuthUsersDataOnConflict<TRes> {
  _CopyWithImpl_Input_AuthUsersDataOnConflict(this._instance, this._then);

  final Input_AuthUsersDataOnConflict _instance;

  final TRes Function(Input_AuthUsersDataOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_AuthUsersDataOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_AuthUsersDataConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_AuthUsersDataUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_AuthUsersDataBoolExp?),
    }),
  );

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthUsersDataOnConflict<TRes>
    implements CopyWith_Input_AuthUsersDataOnConflict<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataOnConflict(this._res);

  TRes _res;

  call({
    Enum_AuthUsersDataConstraint? constraint,
    List<Enum_AuthUsersDataUpdateColumn>? updateColumns,
    Input_AuthUsersDataBoolExp? where,
  }) => _res;

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get where =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_AuthUsersDataOrderBy {
  factory Input_AuthUsersDataOrderBy({
    Input_AuthUsersAdminOnAggregateOrderBy? adminOnAggregate,
    Enum_OrderBy? authId,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? currentUserCanManageThisUser,
    Enum_OrderBy? email,
    Input_UsersFcmTokensAggregateOrderBy? fcmTokensAggregate,
    Input_AuthInvitationsOrderBy? invitation,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_AuthUsersPermissionsAggregateOrderBy? permissionsAggregate,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? photoUpdatedAt,
    Input_UsersPreferencesOrderBy? preferences,
    Enum_OrderBy? uid,
  }) => Input_AuthUsersDataOrderBy._({
    if (adminOnAggregate != null) r'adminOnAggregate': adminOnAggregate,
    if (authId != null) r'authId': authId,
    if (blurhash != null) r'blurhash': blurhash,
    if (currentUserCanManageThisUser != null)
      r'currentUserCanManageThisUser': currentUserCanManageThisUser,
    if (email != null) r'email': email,
    if (fcmTokensAggregate != null) r'fcmTokensAggregate': fcmTokensAggregate,
    if (invitation != null) r'invitation': invitation,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (permissionsAggregate != null)
      r'permissionsAggregate': permissionsAggregate,
    if (person != null) r'person': person,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (preferences != null) r'preferences': preferences,
    if (uid != null) r'uid': uid,
  });

  Input_AuthUsersDataOrderBy._(this._$data);

  factory Input_AuthUsersDataOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminOnAggregate')) {
      final l$adminOnAggregate = data['adminOnAggregate'];
      result$data['adminOnAggregate'] = l$adminOnAggregate == null
          ? null
          : Input_AuthUsersAdminOnAggregateOrderBy.fromJson(
              (l$adminOnAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('authId')) {
      final l$authId = data['authId'];
      result$data['authId'] = l$authId == null
          ? null
          : fromJson_Enum_OrderBy((l$authId as String));
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser =
          data['currentUserCanManageThisUser'];
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser == null
          ? null
          : fromJson_Enum_OrderBy((l$currentUserCanManageThisUser as String));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : fromJson_Enum_OrderBy((l$email as String));
    }
    if (data.containsKey('fcmTokensAggregate')) {
      final l$fcmTokensAggregate = data['fcmTokensAggregate'];
      result$data['fcmTokensAggregate'] = l$fcmTokensAggregate == null
          ? null
          : Input_UsersFcmTokensAggregateOrderBy.fromJson(
              (l$fcmTokensAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('invitation')) {
      final l$invitation = data['invitation'];
      result$data['invitation'] = l$invitation == null
          ? null
          : Input_AuthInvitationsOrderBy.fromJson(
              (l$invitation as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsOrderBy.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('permissionsAggregate')) {
      final l$permissionsAggregate = data['permissionsAggregate'];
      result$data['permissionsAggregate'] = l$permissionsAggregate == null
          ? null
          : Input_AuthUsersPermissionsAggregateOrderBy.fromJson(
              (l$permissionsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsOrderBy.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('preferences')) {
      final l$preferences = data['preferences'];
      result$data['preferences'] = l$preferences == null
          ? null
          : Input_UsersPreferencesOrderBy.fromJson(
              (l$preferences as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    return Input_AuthUsersDataOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnAggregateOrderBy? get adminOnAggregate =>
      (_$data['adminOnAggregate'] as Input_AuthUsersAdminOnAggregateOrderBy?);

  Enum_OrderBy? get authId => (_$data['authId'] as Enum_OrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get currentUserCanManageThisUser =>
      (_$data['currentUserCanManageThisUser'] as Enum_OrderBy?);

  Enum_OrderBy? get email => (_$data['email'] as Enum_OrderBy?);

  Input_UsersFcmTokensAggregateOrderBy? get fcmTokensAggregate =>
      (_$data['fcmTokensAggregate'] as Input_UsersFcmTokensAggregateOrderBy?);

  Input_AuthInvitationsOrderBy? get invitation =>
      (_$data['invitation'] as Input_AuthInvitationsOrderBy?);

  Input_HistoryLatestEditsOrderBy? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsOrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_AuthUsersPermissionsAggregateOrderBy? get permissionsAggregate =>
      (_$data['permissionsAggregate']
          as Input_AuthUsersPermissionsAggregateOrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Input_UsersPreferencesOrderBy? get preferences =>
      (_$data['preferences'] as Input_UsersPreferencesOrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminOnAggregate')) {
      final l$adminOnAggregate = adminOnAggregate;
      result$data['adminOnAggregate'] = l$adminOnAggregate?.toJson();
    }
    if (_$data.containsKey('authId')) {
      final l$authId = authId;
      result$data['authId'] = l$authId == null
          ? null
          : toJson_Enum_OrderBy(l$authId);
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser == null
          ? null
          : toJson_Enum_OrderBy(l$currentUserCanManageThisUser);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email == null
          ? null
          : toJson_Enum_OrderBy(l$email);
    }
    if (_$data.containsKey('fcmTokensAggregate')) {
      final l$fcmTokensAggregate = fcmTokensAggregate;
      result$data['fcmTokensAggregate'] = l$fcmTokensAggregate?.toJson();
    }
    if (_$data.containsKey('invitation')) {
      final l$invitation = invitation;
      result$data['invitation'] = l$invitation?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('permissionsAggregate')) {
      final l$permissionsAggregate = permissionsAggregate;
      result$data['permissionsAggregate'] = l$permissionsAggregate?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('preferences')) {
      final l$preferences = preferences;
      result$data['preferences'] = l$preferences?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersDataOrderBy<Input_AuthUsersDataOrderBy>
  get copyWith => CopyWith_Input_AuthUsersDataOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminOnAggregate = adminOnAggregate;
    final lOther$adminOnAggregate = other.adminOnAggregate;
    if (_$data.containsKey('adminOnAggregate') !=
        other._$data.containsKey('adminOnAggregate')) {
      return false;
    }
    if (l$adminOnAggregate != lOther$adminOnAggregate) {
      return false;
    }
    final l$authId = authId;
    final lOther$authId = other.authId;
    if (_$data.containsKey('authId') != other._$data.containsKey('authId')) {
      return false;
    }
    if (l$authId != lOther$authId) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final lOther$currentUserCanManageThisUser =
        other.currentUserCanManageThisUser;
    if (_$data.containsKey('currentUserCanManageThisUser') !=
        other._$data.containsKey('currentUserCanManageThisUser')) {
      return false;
    }
    if (l$currentUserCanManageThisUser != lOther$currentUserCanManageThisUser) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$fcmTokensAggregate = fcmTokensAggregate;
    final lOther$fcmTokensAggregate = other.fcmTokensAggregate;
    if (_$data.containsKey('fcmTokensAggregate') !=
        other._$data.containsKey('fcmTokensAggregate')) {
      return false;
    }
    if (l$fcmTokensAggregate != lOther$fcmTokensAggregate) {
      return false;
    }
    final l$invitation = invitation;
    final lOther$invitation = other.invitation;
    if (_$data.containsKey('invitation') !=
        other._$data.containsKey('invitation')) {
      return false;
    }
    if (l$invitation != lOther$invitation) {
      return false;
    }
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (_$data.containsKey('lastEdit') !=
        other._$data.containsKey('lastEdit')) {
      return false;
    }
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$permissionsAggregate = permissionsAggregate;
    final lOther$permissionsAggregate = other.permissionsAggregate;
    if (_$data.containsKey('permissionsAggregate') !=
        other._$data.containsKey('permissionsAggregate')) {
      return false;
    }
    if (l$permissionsAggregate != lOther$permissionsAggregate) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$preferences = preferences;
    final lOther$preferences = other.preferences;
    if (_$data.containsKey('preferences') !=
        other._$data.containsKey('preferences')) {
      return false;
    }
    if (l$preferences != lOther$preferences) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$adminOnAggregate = adminOnAggregate;
    final l$authId = authId;
    final l$blurhash = blurhash;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$email = email;
    final l$fcmTokensAggregate = fcmTokensAggregate;
    final l$invitation = invitation;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$permissionsAggregate = permissionsAggregate;
    final l$person = person;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$preferences = preferences;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('adminOnAggregate') ? l$adminOnAggregate : const {},
      _$data.containsKey('authId') ? l$authId : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('currentUserCanManageThisUser')
          ? l$currentUserCanManageThisUser
          : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('fcmTokensAggregate')
          ? l$fcmTokensAggregate
          : const {},
      _$data.containsKey('invitation') ? l$invitation : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('permissionsAggregate')
          ? l$permissionsAggregate
          : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('preferences') ? l$preferences : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersDataOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersDataOrderBy(
    Input_AuthUsersDataOrderBy instance,
    TRes Function(Input_AuthUsersDataOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersDataOrderBy;

  factory CopyWith_Input_AuthUsersDataOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataOrderBy;

  TRes call({
    Input_AuthUsersAdminOnAggregateOrderBy? adminOnAggregate,
    Enum_OrderBy? authId,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? currentUserCanManageThisUser,
    Enum_OrderBy? email,
    Input_UsersFcmTokensAggregateOrderBy? fcmTokensAggregate,
    Input_AuthInvitationsOrderBy? invitation,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_AuthUsersPermissionsAggregateOrderBy? permissionsAggregate,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? photoUpdatedAt,
    Input_UsersPreferencesOrderBy? preferences,
    Enum_OrderBy? uid,
  });
  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminOnAggregate;
  CopyWith_Input_UsersFcmTokensAggregateOrderBy<TRes> get fcmTokensAggregate;
  CopyWith_Input_AuthInvitationsOrderBy<TRes> get invitation;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_AuthUsersPermissionsAggregateOrderBy<TRes>
  get permissionsAggregate;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_UsersPreferencesOrderBy<TRes> get preferences;
}

class _CopyWithImpl_Input_AuthUsersDataOrderBy<TRes>
    implements CopyWith_Input_AuthUsersDataOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersDataOrderBy(this._instance, this._then);

  final Input_AuthUsersDataOrderBy _instance;

  final TRes Function(Input_AuthUsersDataOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOnAggregate = _undefined,
    Object? authId = _undefined,
    Object? blurhash = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? email = _undefined,
    Object? fcmTokensAggregate = _undefined,
    Object? invitation = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? permissionsAggregate = _undefined,
    Object? person = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? preferences = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersDataOrderBy._({
      ..._instance._$data,
      if (adminOnAggregate != _undefined)
        'adminOnAggregate':
            (adminOnAggregate as Input_AuthUsersAdminOnAggregateOrderBy?),
      if (authId != _undefined) 'authId': (authId as Enum_OrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (currentUserCanManageThisUser != _undefined)
        'currentUserCanManageThisUser':
            (currentUserCanManageThisUser as Enum_OrderBy?),
      if (email != _undefined) 'email': (email as Enum_OrderBy?),
      if (fcmTokensAggregate != _undefined)
        'fcmTokensAggregate':
            (fcmTokensAggregate as Input_UsersFcmTokensAggregateOrderBy?),
      if (invitation != _undefined)
        'invitation': (invitation as Input_AuthInvitationsOrderBy?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsOrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (permissionsAggregate != _undefined)
        'permissionsAggregate':
            (permissionsAggregate
                as Input_AuthUsersPermissionsAggregateOrderBy?),
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (preferences != _undefined)
        'preferences': (preferences as Input_UsersPreferencesOrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminOnAggregate {
    final local$adminOnAggregate = _instance.adminOnAggregate;
    return local$adminOnAggregate == null
        ? CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnAggregateOrderBy(
            local$adminOnAggregate,
            (e) => call(adminOnAggregate: e),
          );
  }

  CopyWith_Input_UsersFcmTokensAggregateOrderBy<TRes> get fcmTokensAggregate {
    final local$fcmTokensAggregate = _instance.fcmTokensAggregate;
    return local$fcmTokensAggregate == null
        ? CopyWith_Input_UsersFcmTokensAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_UsersFcmTokensAggregateOrderBy(
            local$fcmTokensAggregate,
            (e) => call(fcmTokensAggregate: e),
          );
  }

  CopyWith_Input_AuthInvitationsOrderBy<TRes> get invitation {
    final local$invitation = _instance.invitation;
    return local$invitation == null
        ? CopyWith_Input_AuthInvitationsOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthInvitationsOrderBy(
            local$invitation,
            (e) => call(invitation: e),
          );
  }

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsOrderBy(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_AuthUsersPermissionsAggregateOrderBy<TRes>
  get permissionsAggregate {
    final local$permissionsAggregate = _instance.permissionsAggregate;
    return local$permissionsAggregate == null
        ? CopyWith_Input_AuthUsersPermissionsAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_AuthUsersPermissionsAggregateOrderBy(
            local$permissionsAggregate,
            (e) => call(permissionsAggregate: e),
          );
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }

  CopyWith_Input_UsersPreferencesOrderBy<TRes> get preferences {
    final local$preferences = _instance.preferences;
    return local$preferences == null
        ? CopyWith_Input_UsersPreferencesOrderBy.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesOrderBy(
            local$preferences,
            (e) => call(preferences: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthUsersDataOrderBy<TRes>
    implements CopyWith_Input_AuthUsersDataOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataOrderBy(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnAggregateOrderBy? adminOnAggregate,
    Enum_OrderBy? authId,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? currentUserCanManageThisUser,
    Enum_OrderBy? email,
    Input_UsersFcmTokensAggregateOrderBy? fcmTokensAggregate,
    Input_AuthInvitationsOrderBy? invitation,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_AuthUsersPermissionsAggregateOrderBy? permissionsAggregate,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? photoUpdatedAt,
    Input_UsersPreferencesOrderBy? preferences,
    Enum_OrderBy? uid,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminOnAggregate =>
      CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_res);

  CopyWith_Input_UsersFcmTokensAggregateOrderBy<TRes> get fcmTokensAggregate =>
      CopyWith_Input_UsersFcmTokensAggregateOrderBy.stub(_res);

  CopyWith_Input_AuthInvitationsOrderBy<TRes> get invitation =>
      CopyWith_Input_AuthInvitationsOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_AuthUsersPermissionsAggregateOrderBy<TRes>
  get permissionsAggregate =>
      CopyWith_Input_AuthUsersPermissionsAggregateOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_UsersPreferencesOrderBy<TRes> get preferences =>
      CopyWith_Input_UsersPreferencesOrderBy.stub(_res);
}

class Input_AuthUsersDataPkColumnsInput {
  factory Input_AuthUsersDataPkColumnsInput({required UuidValue uid}) =>
      Input_AuthUsersDataPkColumnsInput._({r'uid': uid});

  Input_AuthUsersDataPkColumnsInput._(this._$data);

  factory Input_AuthUsersDataPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    return Input_AuthUsersDataPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    return result$data;
  }

  CopyWith_Input_AuthUsersDataPkColumnsInput<Input_AuthUsersDataPkColumnsInput>
  get copyWith => CopyWith_Input_AuthUsersDataPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uid = uid;
    final lOther$uid = other.uid;
    if (l$uid != lOther$uid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$uid = uid;
    return Object.hashAll([l$uid]);
  }
}

abstract class CopyWith_Input_AuthUsersDataPkColumnsInput<TRes> {
  factory CopyWith_Input_AuthUsersDataPkColumnsInput(
    Input_AuthUsersDataPkColumnsInput instance,
    TRes Function(Input_AuthUsersDataPkColumnsInput) then,
  ) = _CopyWithImpl_Input_AuthUsersDataPkColumnsInput;

  factory CopyWith_Input_AuthUsersDataPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataPkColumnsInput;

  TRes call({UuidValue? uid});
}

class _CopyWithImpl_Input_AuthUsersDataPkColumnsInput<TRes>
    implements CopyWith_Input_AuthUsersDataPkColumnsInput<TRes> {
  _CopyWithImpl_Input_AuthUsersDataPkColumnsInput(this._instance, this._then);

  final Input_AuthUsersDataPkColumnsInput _instance;

  final TRes Function(Input_AuthUsersDataPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uid = _undefined}) => _then(
    Input_AuthUsersDataPkColumnsInput._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersDataPkColumnsInput<TRes>
    implements CopyWith_Input_AuthUsersDataPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? uid}) => _res;
}

class Input_AuthUsersDataSetInput {
  factory Input_AuthUsersDataSetInput({String? email, String? name}) =>
      Input_AuthUsersDataSetInput._({
        if (email != null) r'email': email,
        if (name != null) r'name': name,
      });

  Input_AuthUsersDataSetInput._(this._$data);

  factory Input_AuthUsersDataSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_AuthUsersDataSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get email => (_$data['email'] as String?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersDataSetInput<Input_AuthUsersDataSetInput>
  get copyWith => CopyWith_Input_AuthUsersDataSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataSetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersDataSetInput<TRes> {
  factory CopyWith_Input_AuthUsersDataSetInput(
    Input_AuthUsersDataSetInput instance,
    TRes Function(Input_AuthUsersDataSetInput) then,
  ) = _CopyWithImpl_Input_AuthUsersDataSetInput;

  factory CopyWith_Input_AuthUsersDataSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataSetInput;

  TRes call({String? email, String? name});
}

class _CopyWithImpl_Input_AuthUsersDataSetInput<TRes>
    implements CopyWith_Input_AuthUsersDataSetInput<TRes> {
  _CopyWithImpl_Input_AuthUsersDataSetInput(this._instance, this._then);

  final Input_AuthUsersDataSetInput _instance;

  final TRes Function(Input_AuthUsersDataSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? email = _undefined, Object? name = _undefined}) => _then(
    Input_AuthUsersDataSetInput._({
      ..._instance._$data,
      if (email != _undefined) 'email': (email as String?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersDataSetInput<TRes>
    implements CopyWith_Input_AuthUsersDataSetInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataSetInput(this._res);

  TRes _res;

  call({String? email, String? name}) => _res;
}

class Input_AuthUsersDataStreamCursorInput {
  factory Input_AuthUsersDataStreamCursorInput({
    required Input_AuthUsersDataStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_AuthUsersDataStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_AuthUsersDataStreamCursorInput._(this._$data);

  factory Input_AuthUsersDataStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_AuthUsersDataStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_AuthUsersDataStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersDataStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_AuthUsersDataStreamCursorValueInput);

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

  CopyWith_Input_AuthUsersDataStreamCursorInput<
    Input_AuthUsersDataStreamCursorInput
  >
  get copyWith => CopyWith_Input_AuthUsersDataStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataStreamCursorInput ||
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

abstract class CopyWith_Input_AuthUsersDataStreamCursorInput<TRes> {
  factory CopyWith_Input_AuthUsersDataStreamCursorInput(
    Input_AuthUsersDataStreamCursorInput instance,
    TRes Function(Input_AuthUsersDataStreamCursorInput) then,
  ) = _CopyWithImpl_Input_AuthUsersDataStreamCursorInput;

  factory CopyWith_Input_AuthUsersDataStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataStreamCursorInput;

  TRes call({
    Input_AuthUsersDataStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_AuthUsersDataStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_AuthUsersDataStreamCursorInput<TRes>
    implements CopyWith_Input_AuthUsersDataStreamCursorInput<TRes> {
  _CopyWithImpl_Input_AuthUsersDataStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersDataStreamCursorInput _instance;

  final TRes Function(Input_AuthUsersDataStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_AuthUsersDataStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_AuthUsersDataStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_AuthUsersDataStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_AuthUsersDataStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_AuthUsersDataStreamCursorInput<TRes>
    implements CopyWith_Input_AuthUsersDataStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_AuthUsersDataStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_AuthUsersDataStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_AuthUsersDataStreamCursorValueInput.stub(_res);
}

class Input_AuthUsersDataStreamCursorValueInput {
  factory Input_AuthUsersDataStreamCursorValueInput({
    String? authId,
    String? blurhash,
    String? email,
    String? name,
    DateTime? photoUpdatedAt,
    UuidValue? uid,
  }) => Input_AuthUsersDataStreamCursorValueInput._({
    if (authId != null) r'authId': authId,
    if (blurhash != null) r'blurhash': blurhash,
    if (email != null) r'email': email,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (uid != null) r'uid': uid,
  });

  Input_AuthUsersDataStreamCursorValueInput._(this._$data);

  factory Input_AuthUsersDataStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('authId')) {
      final l$authId = data['authId'];
      result$data['authId'] = (l$authId as String?);
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = (l$blurhash as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt);
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null ? null : stringToUuid(l$uid);
    }
    return Input_AuthUsersDataStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get authId => (_$data['authId'] as String?);

  String? get blurhash => (_$data['blurhash'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get name => (_$data['name'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('authId')) {
      final l$authId = authId;
      result$data['authId'] = l$authId;
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzToString(l$photoUpdatedAt);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : uuidToString(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersDataStreamCursorValueInput<
    Input_AuthUsersDataStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_AuthUsersDataStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$authId = authId;
    final lOther$authId = other.authId;
    if (_$data.containsKey('authId') != other._$data.containsKey('authId')) {
      return false;
    }
    if (l$authId != lOther$authId) {
      return false;
    }
    final l$blurhash = blurhash;
    final lOther$blurhash = other.blurhash;
    if (_$data.containsKey('blurhash') !=
        other._$data.containsKey('blurhash')) {
      return false;
    }
    if (l$blurhash != lOther$blurhash) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$authId = authId;
    final l$blurhash = blurhash;
    final l$email = email;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('authId') ? l$authId : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersDataStreamCursorValueInput<TRes> {
  factory CopyWith_Input_AuthUsersDataStreamCursorValueInput(
    Input_AuthUsersDataStreamCursorValueInput instance,
    TRes Function(Input_AuthUsersDataStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_AuthUsersDataStreamCursorValueInput;

  factory CopyWith_Input_AuthUsersDataStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataStreamCursorValueInput;

  TRes call({
    String? authId,
    String? blurhash,
    String? email,
    String? name,
    DateTime? photoUpdatedAt,
    UuidValue? uid,
  });
}

class _CopyWithImpl_Input_AuthUsersDataStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthUsersDataStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_AuthUsersDataStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersDataStreamCursorValueInput _instance;

  final TRes Function(Input_AuthUsersDataStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? authId = _undefined,
    Object? blurhash = _undefined,
    Object? email = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersDataStreamCursorValueInput._({
      ..._instance._$data,
      if (authId != _undefined) 'authId': (authId as String?),
      if (blurhash != _undefined) 'blurhash': (blurhash as String?),
      if (email != _undefined) 'email': (email as String?),
      if (name != _undefined) 'name': (name as String?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as DateTime?),
      if (uid != _undefined) 'uid': (uid as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersDataStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthUsersDataStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataStreamCursorValueInput(this._res);

  TRes _res;

  call({
    String? authId,
    String? blurhash,
    String? email,
    String? name,
    DateTime? photoUpdatedAt,
    UuidValue? uid,
  }) => _res;
}

class Input_AuthUsersDataUpdates {
  factory Input_AuthUsersDataUpdates({
    Input_AuthUsersDataSetInput? $_set,
    required Input_AuthUsersDataBoolExp where,
  }) => Input_AuthUsersDataUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_AuthUsersDataUpdates._(this._$data);

  factory Input_AuthUsersDataUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_AuthUsersDataSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_AuthUsersDataBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_AuthUsersDataUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersDataSetInput? get $_set =>
      (_$data['_set'] as Input_AuthUsersDataSetInput?);

  Input_AuthUsersDataBoolExp get where =>
      (_$data['where'] as Input_AuthUsersDataBoolExp);

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

  CopyWith_Input_AuthUsersDataUpdates<Input_AuthUsersDataUpdates>
  get copyWith => CopyWith_Input_AuthUsersDataUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataUpdates ||
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

abstract class CopyWith_Input_AuthUsersDataUpdates<TRes> {
  factory CopyWith_Input_AuthUsersDataUpdates(
    Input_AuthUsersDataUpdates instance,
    TRes Function(Input_AuthUsersDataUpdates) then,
  ) = _CopyWithImpl_Input_AuthUsersDataUpdates;

  factory CopyWith_Input_AuthUsersDataUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataUpdates;

  TRes call({
    Input_AuthUsersDataSetInput? $_set,
    Input_AuthUsersDataBoolExp? where,
  });
  CopyWith_Input_AuthUsersDataSetInput<TRes> get $_set;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_AuthUsersDataUpdates<TRes>
    implements CopyWith_Input_AuthUsersDataUpdates<TRes> {
  _CopyWithImpl_Input_AuthUsersDataUpdates(this._instance, this._then);

  final Input_AuthUsersDataUpdates _instance;

  final TRes Function(Input_AuthUsersDataUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_AuthUsersDataUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_AuthUsersDataSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_AuthUsersDataBoolExp),
    }),
  );

  CopyWith_Input_AuthUsersDataSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_AuthUsersDataSetInput.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_AuthUsersDataBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_AuthUsersDataUpdates<TRes>
    implements CopyWith_Input_AuthUsersDataUpdates<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataUpdates(this._res);

  TRes _res;

  call({
    Input_AuthUsersDataSetInput? $_set,
    Input_AuthUsersDataBoolExp? where,
  }) => _res;

  CopyWith_Input_AuthUsersDataSetInput<TRes> get $_set =>
      CopyWith_Input_AuthUsersDataSetInput.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get where =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_AuthUsersPermissionsAggregateOrderBy {
  factory Input_AuthUsersPermissionsAggregateOrderBy({
    Enum_OrderBy? count,
    Input_AuthUsersPermissionsMaxOrderBy? max,
    Input_AuthUsersPermissionsMinOrderBy? min,
  }) => Input_AuthUsersPermissionsAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_AuthUsersPermissionsAggregateOrderBy._(this._$data);

  factory Input_AuthUsersPermissionsAggregateOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
          : Input_AuthUsersPermissionsMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_AuthUsersPermissionsMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_AuthUsersPermissionsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_AuthUsersPermissionsMaxOrderBy? get max =>
      (_$data['max'] as Input_AuthUsersPermissionsMaxOrderBy?);

  Input_AuthUsersPermissionsMinOrderBy? get min =>
      (_$data['min'] as Input_AuthUsersPermissionsMinOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    return result$data;
  }

  CopyWith_Input_AuthUsersPermissionsAggregateOrderBy<
    Input_AuthUsersPermissionsAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_AuthUsersPermissionsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersPermissionsAggregateOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$min = min;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersPermissionsAggregateOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersPermissionsAggregateOrderBy(
    Input_AuthUsersPermissionsAggregateOrderBy instance,
    TRes Function(Input_AuthUsersPermissionsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersPermissionsAggregateOrderBy;

  factory CopyWith_Input_AuthUsersPermissionsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersPermissionsAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_AuthUsersPermissionsMaxOrderBy? max,
    Input_AuthUsersPermissionsMinOrderBy? min,
  });
  CopyWith_Input_AuthUsersPermissionsMaxOrderBy<TRes> get max;
  CopyWith_Input_AuthUsersPermissionsMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_AuthUsersPermissionsAggregateOrderBy<TRes>
    implements CopyWith_Input_AuthUsersPermissionsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersPermissionsAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersPermissionsAggregateOrderBy _instance;

  final TRes Function(Input_AuthUsersPermissionsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_AuthUsersPermissionsAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_AuthUsersPermissionsMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_AuthUsersPermissionsMinOrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersPermissionsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_AuthUsersPermissionsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersPermissionsMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_AuthUsersPermissionsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_AuthUsersPermissionsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersPermissionsMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthUsersPermissionsAggregateOrderBy<TRes>
    implements CopyWith_Input_AuthUsersPermissionsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersPermissionsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_AuthUsersPermissionsMaxOrderBy? max,
    Input_AuthUsersPermissionsMinOrderBy? min,
  }) => _res;

  CopyWith_Input_AuthUsersPermissionsMaxOrderBy<TRes> get max =>
      CopyWith_Input_AuthUsersPermissionsMaxOrderBy.stub(_res);

  CopyWith_Input_AuthUsersPermissionsMinOrderBy<TRes> get min =>
      CopyWith_Input_AuthUsersPermissionsMinOrderBy.stub(_res);
}

class Input_AuthUsersPermissionsArrRelInsertInput {
  factory Input_AuthUsersPermissionsArrRelInsertInput({
    required List<Input_AuthUsersPermissionsInsertInput> data,
    Input_AuthUsersPermissionsOnConflict? onConflict,
  }) => Input_AuthUsersPermissionsArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_AuthUsersPermissionsArrRelInsertInput._(this._$data);

  factory Input_AuthUsersPermissionsArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_AuthUsersPermissionsInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_AuthUsersPermissionsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_AuthUsersPermissionsArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthUsersPermissionsInsertInput> get data =>
      (_$data['data'] as List<Input_AuthUsersPermissionsInsertInput>);

  Input_AuthUsersPermissionsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_AuthUsersPermissionsOnConflict?);

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

  CopyWith_Input_AuthUsersPermissionsArrRelInsertInput<
    Input_AuthUsersPermissionsArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_AuthUsersPermissionsArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersPermissionsArrRelInsertInput ||
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

abstract class CopyWith_Input_AuthUsersPermissionsArrRelInsertInput<TRes> {
  factory CopyWith_Input_AuthUsersPermissionsArrRelInsertInput(
    Input_AuthUsersPermissionsArrRelInsertInput instance,
    TRes Function(Input_AuthUsersPermissionsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_AuthUsersPermissionsArrRelInsertInput;

  factory CopyWith_Input_AuthUsersPermissionsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersPermissionsArrRelInsertInput;

  TRes call({
    List<Input_AuthUsersPermissionsInsertInput>? data,
    Input_AuthUsersPermissionsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_AuthUsersPermissionsInsertInput> Function(
      Iterable<
        CopyWith_Input_AuthUsersPermissionsInsertInput<
          Input_AuthUsersPermissionsInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersPermissionsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AuthUsersPermissionsArrRelInsertInput<TRes>
    implements CopyWith_Input_AuthUsersPermissionsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_AuthUsersPermissionsArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersPermissionsArrRelInsertInput _instance;

  final TRes Function(Input_AuthUsersPermissionsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_AuthUsersPermissionsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_AuthUsersPermissionsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_AuthUsersPermissionsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_AuthUsersPermissionsInsertInput> Function(
      Iterable<
        CopyWith_Input_AuthUsersPermissionsInsertInput<
          Input_AuthUsersPermissionsInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_AuthUsersPermissionsInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_AuthUsersPermissionsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AuthUsersPermissionsOnConflict.stub(_then(_instance))
        : CopyWith_Input_AuthUsersPermissionsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_AuthUsersPermissionsArrRelInsertInput<TRes>
    implements CopyWith_Input_AuthUsersPermissionsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersPermissionsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_AuthUsersPermissionsInsertInput>? data,
    Input_AuthUsersPermissionsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_AuthUsersPermissionsOnConflict<TRes> get onConflict =>
      CopyWith_Input_AuthUsersPermissionsOnConflict.stub(_res);
}

class Input_AuthUsersPermissionsBoolExp {
  factory Input_AuthUsersPermissionsBoolExp({
    List<Input_AuthUsersPermissionsBoolExp>? $_and,
    Input_AuthUsersPermissionsBoolExp? $_not,
    List<Input_AuthUsersPermissionsBoolExp>? $_or,
    Input_StringComparisonExp? permission,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_AuthUsersPermissionsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (permission != null) r'permission': permission,
    if (uid != null) r'uid': uid,
    if (user != null) r'user': user,
  });

  Input_AuthUsersPermissionsBoolExp._(this._$data);

  factory Input_AuthUsersPermissionsBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_AuthUsersPermissionsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AuthUsersPermissionsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_AuthUsersPermissionsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('permission')) {
      final l$permission = data['permission'];
      result$data['permission'] = l$permission == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$permission as Map<String, dynamic>),
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
    return Input_AuthUsersPermissionsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthUsersPermissionsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_AuthUsersPermissionsBoolExp>?);

  Input_AuthUsersPermissionsBoolExp? get $_not =>
      (_$data['_not'] as Input_AuthUsersPermissionsBoolExp?);

  List<Input_AuthUsersPermissionsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_AuthUsersPermissionsBoolExp>?);

  Input_StringComparisonExp? get permission =>
      (_$data['permission'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('permission')) {
      final l$permission = permission;
      result$data['permission'] = l$permission?.toJson();
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

  CopyWith_Input_AuthUsersPermissionsBoolExp<Input_AuthUsersPermissionsBoolExp>
  get copyWith => CopyWith_Input_AuthUsersPermissionsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersPermissionsBoolExp ||
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
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (_$data.containsKey('permission') !=
        other._$data.containsKey('permission')) {
      return false;
    }
    if (l$permission != lOther$permission) {
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
    final l$permission = permission;
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
      _$data.containsKey('permission') ? l$permission : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> {
  factory CopyWith_Input_AuthUsersPermissionsBoolExp(
    Input_AuthUsersPermissionsBoolExp instance,
    TRes Function(Input_AuthUsersPermissionsBoolExp) then,
  ) = _CopyWithImpl_Input_AuthUsersPermissionsBoolExp;

  factory CopyWith_Input_AuthUsersPermissionsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersPermissionsBoolExp;

  TRes call({
    List<Input_AuthUsersPermissionsBoolExp>? $_and,
    Input_AuthUsersPermissionsBoolExp? $_not,
    List<Input_AuthUsersPermissionsBoolExp>? $_or,
    Input_StringComparisonExp? permission,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_AuthUsersPermissionsBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersPermissionsBoolExp<
          Input_AuthUsersPermissionsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_AuthUsersPermissionsBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersPermissionsBoolExp<
          Input_AuthUsersPermissionsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_StringComparisonExp<TRes> get permission;
  CopyWith_Input_UuidComparisonExp<TRes> get uid;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_AuthUsersPermissionsBoolExp<TRes>
    implements CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> {
  _CopyWithImpl_Input_AuthUsersPermissionsBoolExp(this._instance, this._then);

  final Input_AuthUsersPermissionsBoolExp _instance;

  final TRes Function(Input_AuthUsersPermissionsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? permission = _undefined,
    Object? uid = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_AuthUsersPermissionsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_AuthUsersPermissionsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_AuthUsersPermissionsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_AuthUsersPermissionsBoolExp>?),
      if (permission != _undefined)
        'permission': (permission as Input_StringComparisonExp?),
      if (uid != _undefined) 'uid': (uid as Input_UuidComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_AuthUsersPermissionsBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersPermissionsBoolExp<
          Input_AuthUsersPermissionsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_AuthUsersPermissionsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_AuthUsersPermissionsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersPermissionsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_AuthUsersPermissionsBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersPermissionsBoolExp<
          Input_AuthUsersPermissionsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_AuthUsersPermissionsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_StringComparisonExp<TRes> get permission {
    final local$permission = _instance.permission;
    return local$permission == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$permission,
            (e) => call(permission: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$uid, (e) => call(uid: e));
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_AuthUsersPermissionsBoolExp<TRes>
    implements CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> {
  _CopyWithStubImpl_Input_AuthUsersPermissionsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_AuthUsersPermissionsBoolExp>? $_and,
    Input_AuthUsersPermissionsBoolExp? $_not,
    List<Input_AuthUsersPermissionsBoolExp>? $_or,
    Input_StringComparisonExp? permission,
    Input_UuidComparisonExp? uid,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> get $_not =>
      CopyWith_Input_AuthUsersPermissionsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_StringComparisonExp<TRes> get permission =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get uid =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_AuthUsersPermissionsInsertInput {
  factory Input_AuthUsersPermissionsInsertInput({
    String? permission,
    UuidValue? uid,
    Input_AuthUsersDataObjRelInsertInput? user,
  }) => Input_AuthUsersPermissionsInsertInput._({
    if (permission != null) r'permission': permission,
    if (uid != null) r'uid': uid,
    if (user != null) r'user': user,
  });

  Input_AuthUsersPermissionsInsertInput._(this._$data);

  factory Input_AuthUsersPermissionsInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('permission')) {
      final l$permission = data['permission'];
      result$data['permission'] = (l$permission as String?);
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null ? null : stringToUuid(l$uid);
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataObjRelInsertInput.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_AuthUsersPermissionsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get permission => (_$data['permission'] as String?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  Input_AuthUsersDataObjRelInsertInput? get user =>
      (_$data['user'] as Input_AuthUsersDataObjRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('permission')) {
      final l$permission = permission;
      result$data['permission'] = l$permission;
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : uuidToString(l$uid);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersPermissionsInsertInput<
    Input_AuthUsersPermissionsInsertInput
  >
  get copyWith =>
      CopyWith_Input_AuthUsersPermissionsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersPermissionsInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (_$data.containsKey('permission') !=
        other._$data.containsKey('permission')) {
      return false;
    }
    if (l$permission != lOther$permission) {
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
    final l$permission = permission;
    final l$uid = uid;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('permission') ? l$permission : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}
