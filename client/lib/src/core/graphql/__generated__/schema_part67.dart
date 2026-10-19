// Part 67 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_UserFilterName<TRes> {
  factory CopyWith_Input_UserFilterName(
    Input_UserFilterName instance,
    TRes Function(Input_UserFilterName) then,
  ) = _CopyWithImpl_Input_UserFilterName;

  factory CopyWith_Input_UserFilterName.stub(TRes res) =
      _CopyWithStubImpl_Input_UserFilterName;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  });
}

class _CopyWithImpl_Input_UserFilterName<TRes>
    implements CopyWith_Input_UserFilterName<TRes> {
  _CopyWithImpl_Input_UserFilterName(this._instance, this._then);

  final Input_UserFilterName _instance;

  final TRes Function(Input_UserFilterName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? contains = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
    Object? stringEndsWith = _undefined,
    Object? stringStartsWith = _undefined,
    Object? like = _undefined,
    Object? ilike = _undefined,
  }) => _then(
    Input_UserFilterName._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
      if (stringEndsWith != _undefined)
        'stringEndsWith': (stringEndsWith as String?),
      if (stringStartsWith != _undefined)
        'stringStartsWith': (stringStartsWith as String?),
      if (like != _undefined) 'like': (like as String?),
      if (ilike != _undefined) 'ilike': (ilike as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_UserFilterName<TRes>
    implements CopyWith_Input_UserFilterName<TRes> {
  _CopyWithStubImpl_Input_UserFilterName(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => _res;
}

class Input_UserFilterUid {
  factory Input_UserFilterUid({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_UserFilterUid._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_UserFilterUid._(this._$data);

  factory Input_UserFilterUid.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_UserFilterUid._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_UserFilterUid<Input_UserFilterUid> get copyWith =>
      CopyWith_Input_UserFilterUid(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserFilterUid || runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_UserFilterUid<TRes> {
  factory CopyWith_Input_UserFilterUid(
    Input_UserFilterUid instance,
    TRes Function(Input_UserFilterUid) then,
  ) = _CopyWithImpl_Input_UserFilterUid;

  factory CopyWith_Input_UserFilterUid.stub(TRes res) =
      _CopyWithStubImpl_Input_UserFilterUid;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_UserFilterUid<TRes>
    implements CopyWith_Input_UserFilterUid<TRes> {
  _CopyWithImpl_Input_UserFilterUid(this._instance, this._then);

  final Input_UserFilterUid _instance;

  final TRes Function(Input_UserFilterUid) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_UserFilterUid._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_UserFilterUid<TRes>
    implements CopyWith_Input_UserFilterUid<TRes> {
  _CopyWithStubImpl_Input_UserFilterUid(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_UserFilterInput {
  factory Input_UserFilterInput({
    List<Input_UserFilterInput>? and,
    List<Input_UserFilterInput>? or,
    List<Input_UserFilterInput>? not,
    Input_UserFilterUid? uid,
    Input_UserFilterName? name,
    Input_UserFilterEmail? email,
    Input_UserFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_UserFilterBlurhash? blurhash,
    Input_UserFilterAuthId? authId,
    Input_InvitationFilterInput? invitation,
    Input_PersonFilterInput? person,
    Input_UserPreferencesFilterInput? preferences,
    Input_LatestEditFilterInput? latestEdit,
    Input_ScopeGrantFilterInput? scopeGrants,
    Input_DeviceTokenFilterInput? deviceTokens,
    Input_UserPermissionFilterInput? permissions,
    Input_UserFilterLastEdit? lastEdit,
    Input_UserFilterPersonName? personName,
    Input_UserFilterCurrentUserCanManageThisUser? currentUserCanManageThisUser,
  }) => Input_UserFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (uid != null) r'uid': uid,
    if (name != null) r'name': name,
    if (email != null) r'email': email,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (blurhash != null) r'blurhash': blurhash,
    if (authId != null) r'authId': authId,
    if (invitation != null) r'invitation': invitation,
    if (person != null) r'person': person,
    if (preferences != null) r'preferences': preferences,
    if (latestEdit != null) r'latestEdit': latestEdit,
    if (scopeGrants != null) r'scopeGrants': scopeGrants,
    if (deviceTokens != null) r'deviceTokens': deviceTokens,
    if (permissions != null) r'permissions': permissions,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (personName != null) r'personName': personName,
    if (currentUserCanManageThisUser != null)
      r'currentUserCanManageThisUser': currentUserCanManageThisUser,
  });

  Input_UserFilterInput._(this._$data);

  factory Input_UserFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_UserFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_UserFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_UserFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_UserFilterUid.fromJson((l$uid as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_UserFilterName.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : Input_UserFilterEmail.fromJson((l$email as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_UserFilterPhotoUpdatedAt.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_UserFilterBlurhash.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('authId')) {
      final l$authId = data['authId'];
      result$data['authId'] = l$authId == null
          ? null
          : Input_UserFilterAuthId.fromJson((l$authId as Map<String, dynamic>));
    }
    if (data.containsKey('invitation')) {
      final l$invitation = data['invitation'];
      result$data['invitation'] = l$invitation == null
          ? null
          : Input_InvitationFilterInput.fromJson(
              (l$invitation as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonFilterInput.fromJson(
              (l$person as Map<String, dynamic>),
            );
    }
    if (data.containsKey('preferences')) {
      final l$preferences = data['preferences'];
      result$data['preferences'] = l$preferences == null
          ? null
          : Input_UserPreferencesFilterInput.fromJson(
              (l$preferences as Map<String, dynamic>),
            );
    }
    if (data.containsKey('latestEdit')) {
      final l$latestEdit = data['latestEdit'];
      result$data['latestEdit'] = l$latestEdit == null
          ? null
          : Input_LatestEditFilterInput.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('scopeGrants')) {
      final l$scopeGrants = data['scopeGrants'];
      result$data['scopeGrants'] = l$scopeGrants == null
          ? null
          : Input_ScopeGrantFilterInput.fromJson(
              (l$scopeGrants as Map<String, dynamic>),
            );
    }
    if (data.containsKey('deviceTokens')) {
      final l$deviceTokens = data['deviceTokens'];
      result$data['deviceTokens'] = l$deviceTokens == null
          ? null
          : Input_DeviceTokenFilterInput.fromJson(
              (l$deviceTokens as Map<String, dynamic>),
            );
    }
    if (data.containsKey('permissions')) {
      final l$permissions = data['permissions'];
      result$data['permissions'] = l$permissions == null
          ? null
          : Input_UserPermissionFilterInput.fromJson(
              (l$permissions as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_UserFilterLastEdit.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personName')) {
      final l$personName = data['personName'];
      result$data['personName'] = l$personName == null
          ? null
          : Input_UserFilterPersonName.fromJson(
              (l$personName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser =
          data['currentUserCanManageThisUser'];
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser == null
          ? null
          : Input_UserFilterCurrentUserCanManageThisUser.fromJson(
              (l$currentUserCanManageThisUser as Map<String, dynamic>),
            );
    }
    return Input_UserFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_UserFilterInput>? get and =>
      (_$data['and'] as List<Input_UserFilterInput>?);

  List<Input_UserFilterInput>? get or =>
      (_$data['or'] as List<Input_UserFilterInput>?);

  List<Input_UserFilterInput>? get not =>
      (_$data['not'] as List<Input_UserFilterInput>?);

  Input_UserFilterUid? get uid => (_$data['uid'] as Input_UserFilterUid?);

  Input_UserFilterName? get name => (_$data['name'] as Input_UserFilterName?);

  Input_UserFilterEmail? get email =>
      (_$data['email'] as Input_UserFilterEmail?);

  Input_UserFilterPhotoUpdatedAt? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_UserFilterPhotoUpdatedAt?);

  Input_UserFilterBlurhash? get blurhash =>
      (_$data['blurhash'] as Input_UserFilterBlurhash?);

  Input_UserFilterAuthId? get authId =>
      (_$data['authId'] as Input_UserFilterAuthId?);

  Input_InvitationFilterInput? get invitation =>
      (_$data['invitation'] as Input_InvitationFilterInput?);

  Input_PersonFilterInput? get person =>
      (_$data['person'] as Input_PersonFilterInput?);

  Input_UserPreferencesFilterInput? get preferences =>
      (_$data['preferences'] as Input_UserPreferencesFilterInput?);

  Input_LatestEditFilterInput? get latestEdit =>
      (_$data['latestEdit'] as Input_LatestEditFilterInput?);

  Input_ScopeGrantFilterInput? get scopeGrants =>
      (_$data['scopeGrants'] as Input_ScopeGrantFilterInput?);

  Input_DeviceTokenFilterInput? get deviceTokens =>
      (_$data['deviceTokens'] as Input_DeviceTokenFilterInput?);

  Input_UserPermissionFilterInput? get permissions =>
      (_$data['permissions'] as Input_UserPermissionFilterInput?);

  Input_UserFilterLastEdit? get lastEdit =>
      (_$data['lastEdit'] as Input_UserFilterLastEdit?);

  Input_UserFilterPersonName? get personName =>
      (_$data['personName'] as Input_UserFilterPersonName?);

  Input_UserFilterCurrentUserCanManageThisUser?
  get currentUserCanManageThisUser =>
      (_$data['currentUserCanManageThisUser']
          as Input_UserFilterCurrentUserCanManageThisUser?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('authId')) {
      final l$authId = authId;
      result$data['authId'] = l$authId?.toJson();
    }
    if (_$data.containsKey('invitation')) {
      final l$invitation = invitation;
      result$data['invitation'] = l$invitation?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('preferences')) {
      final l$preferences = preferences;
      result$data['preferences'] = l$preferences?.toJson();
    }
    if (_$data.containsKey('latestEdit')) {
      final l$latestEdit = latestEdit;
      result$data['latestEdit'] = l$latestEdit?.toJson();
    }
    if (_$data.containsKey('scopeGrants')) {
      final l$scopeGrants = scopeGrants;
      result$data['scopeGrants'] = l$scopeGrants?.toJson();
    }
    if (_$data.containsKey('deviceTokens')) {
      final l$deviceTokens = deviceTokens;
      result$data['deviceTokens'] = l$deviceTokens?.toJson();
    }
    if (_$data.containsKey('permissions')) {
      final l$permissions = permissions;
      result$data['permissions'] = l$permissions?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('personName')) {
      final l$personName = personName;
      result$data['personName'] = l$personName?.toJson();
    }
    if (_$data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_UserFilterInput<Input_UserFilterInput> get copyWith =>
      CopyWith_Input_UserFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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
    final l$authId = authId;
    final lOther$authId = other.authId;
    if (_$data.containsKey('authId') != other._$data.containsKey('authId')) {
      return false;
    }
    if (l$authId != lOther$authId) {
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
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
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
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (_$data.containsKey('latestEdit') !=
        other._$data.containsKey('latestEdit')) {
      return false;
    }
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$scopeGrants = scopeGrants;
    final lOther$scopeGrants = other.scopeGrants;
    if (_$data.containsKey('scopeGrants') !=
        other._$data.containsKey('scopeGrants')) {
      return false;
    }
    if (l$scopeGrants != lOther$scopeGrants) {
      return false;
    }
    final l$deviceTokens = deviceTokens;
    final lOther$deviceTokens = other.deviceTokens;
    if (_$data.containsKey('deviceTokens') !=
        other._$data.containsKey('deviceTokens')) {
      return false;
    }
    if (l$deviceTokens != lOther$deviceTokens) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (_$data.containsKey('permissions') !=
        other._$data.containsKey('permissions')) {
      return false;
    }
    if (l$permissions != lOther$permissions) {
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
    final l$personName = personName;
    final lOther$personName = other.personName;
    if (_$data.containsKey('personName') !=
        other._$data.containsKey('personName')) {
      return false;
    }
    if (l$personName != lOther$personName) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$uid = uid;
    final l$name = name;
    final l$email = email;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$authId = authId;
    final l$invitation = invitation;
    final l$person = person;
    final l$preferences = preferences;
    final l$latestEdit = latestEdit;
    final l$scopeGrants = scopeGrants;
    final l$deviceTokens = deviceTokens;
    final l$permissions = permissions;
    final l$lastEdit = lastEdit;
    final l$personName = personName;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not')
          ? l$not == null
                ? null
                : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('authId') ? l$authId : const {},
      _$data.containsKey('invitation') ? l$invitation : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('preferences') ? l$preferences : const {},
      _$data.containsKey('latestEdit') ? l$latestEdit : const {},
      _$data.containsKey('scopeGrants') ? l$scopeGrants : const {},
      _$data.containsKey('deviceTokens') ? l$deviceTokens : const {},
      _$data.containsKey('permissions') ? l$permissions : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('personName') ? l$personName : const {},
      _$data.containsKey('currentUserCanManageThisUser')
          ? l$currentUserCanManageThisUser
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UserFilterInput<TRes> {
  factory CopyWith_Input_UserFilterInput(
    Input_UserFilterInput instance,
    TRes Function(Input_UserFilterInput) then,
  ) = _CopyWithImpl_Input_UserFilterInput;

  factory CopyWith_Input_UserFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UserFilterInput;

  TRes call({
    List<Input_UserFilterInput>? and,
    List<Input_UserFilterInput>? or,
    List<Input_UserFilterInput>? not,
    Input_UserFilterUid? uid,
    Input_UserFilterName? name,
    Input_UserFilterEmail? email,
    Input_UserFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_UserFilterBlurhash? blurhash,
    Input_UserFilterAuthId? authId,
    Input_InvitationFilterInput? invitation,
    Input_PersonFilterInput? person,
    Input_UserPreferencesFilterInput? preferences,
    Input_LatestEditFilterInput? latestEdit,
    Input_ScopeGrantFilterInput? scopeGrants,
    Input_DeviceTokenFilterInput? deviceTokens,
    Input_UserPermissionFilterInput? permissions,
    Input_UserFilterLastEdit? lastEdit,
    Input_UserFilterPersonName? personName,
    Input_UserFilterCurrentUserCanManageThisUser? currentUserCanManageThisUser,
  });
  TRes and(
    Iterable<Input_UserFilterInput>? Function(
      Iterable<CopyWith_Input_UserFilterInput<Input_UserFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_UserFilterInput>? Function(
      Iterable<CopyWith_Input_UserFilterInput<Input_UserFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_UserFilterInput>? Function(
      Iterable<CopyWith_Input_UserFilterInput<Input_UserFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_UserFilterUid<TRes> get uid;
  CopyWith_Input_UserFilterName<TRes> get name;
  CopyWith_Input_UserFilterEmail<TRes> get email;
  CopyWith_Input_UserFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_UserFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_UserFilterAuthId<TRes> get authId;
  CopyWith_Input_InvitationFilterInput<TRes> get invitation;
  CopyWith_Input_PersonFilterInput<TRes> get person;
  CopyWith_Input_UserPreferencesFilterInput<TRes> get preferences;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_ScopeGrantFilterInput<TRes> get scopeGrants;
  CopyWith_Input_DeviceTokenFilterInput<TRes> get deviceTokens;
  CopyWith_Input_UserPermissionFilterInput<TRes> get permissions;
  CopyWith_Input_UserFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_UserFilterPersonName<TRes> get personName;
  CopyWith_Input_UserFilterCurrentUserCanManageThisUser<TRes>
  get currentUserCanManageThisUser;
}

class _CopyWithImpl_Input_UserFilterInput<TRes>
    implements CopyWith_Input_UserFilterInput<TRes> {
  _CopyWithImpl_Input_UserFilterInput(this._instance, this._then);

  final Input_UserFilterInput _instance;

  final TRes Function(Input_UserFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? uid = _undefined,
    Object? name = _undefined,
    Object? email = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? authId = _undefined,
    Object? invitation = _undefined,
    Object? person = _undefined,
    Object? preferences = _undefined,
    Object? latestEdit = _undefined,
    Object? scopeGrants = _undefined,
    Object? deviceTokens = _undefined,
    Object? permissions = _undefined,
    Object? lastEdit = _undefined,
    Object? personName = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
  }) => _then(
    Input_UserFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_UserFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_UserFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_UserFilterInput>?),
      if (uid != _undefined) 'uid': (uid as Input_UserFilterUid?),
      if (name != _undefined) 'name': (name as Input_UserFilterName?),
      if (email != _undefined) 'email': (email as Input_UserFilterEmail?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_UserFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_UserFilterBlurhash?),
      if (authId != _undefined) 'authId': (authId as Input_UserFilterAuthId?),
      if (invitation != _undefined)
        'invitation': (invitation as Input_InvitationFilterInput?),
      if (person != _undefined) 'person': (person as Input_PersonFilterInput?),
      if (preferences != _undefined)
        'preferences': (preferences as Input_UserPreferencesFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (scopeGrants != _undefined)
        'scopeGrants': (scopeGrants as Input_ScopeGrantFilterInput?),
      if (deviceTokens != _undefined)
        'deviceTokens': (deviceTokens as Input_DeviceTokenFilterInput?),
      if (permissions != _undefined)
        'permissions': (permissions as Input_UserPermissionFilterInput?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_UserFilterLastEdit?),
      if (personName != _undefined)
        'personName': (personName as Input_UserFilterPersonName?),
      if (currentUserCanManageThisUser != _undefined)
        'currentUserCanManageThisUser':
            (currentUserCanManageThisUser
                as Input_UserFilterCurrentUserCanManageThisUser?),
    }),
  );

  TRes and(
    Iterable<Input_UserFilterInput>? Function(
      Iterable<CopyWith_Input_UserFilterInput<Input_UserFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_UserFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_UserFilterInput>? Function(
      Iterable<CopyWith_Input_UserFilterInput<Input_UserFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_UserFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_UserFilterInput>? Function(
      Iterable<CopyWith_Input_UserFilterInput<Input_UserFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_UserFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_UserFilterUid<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_UserFilterUid.stub(_then(_instance))
        : CopyWith_Input_UserFilterUid(local$uid, (e) => call(uid: e));
  }

  CopyWith_Input_UserFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_UserFilterName.stub(_then(_instance))
        : CopyWith_Input_UserFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_UserFilterEmail<TRes> get email {
    final local$email = _instance.email;
    return local$email == null
        ? CopyWith_Input_UserFilterEmail.stub(_then(_instance))
        : CopyWith_Input_UserFilterEmail(local$email, (e) => call(email: e));
  }

  CopyWith_Input_UserFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_UserFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_UserFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_UserFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_UserFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_UserFilterBlurhash(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_UserFilterAuthId<TRes> get authId {
    final local$authId = _instance.authId;
    return local$authId == null
        ? CopyWith_Input_UserFilterAuthId.stub(_then(_instance))
        : CopyWith_Input_UserFilterAuthId(local$authId, (e) => call(authId: e));
  }

  CopyWith_Input_InvitationFilterInput<TRes> get invitation {
    final local$invitation = _instance.invitation;
    return local$invitation == null
        ? CopyWith_Input_InvitationFilterInput.stub(_then(_instance))
        : CopyWith_Input_InvitationFilterInput(
            local$invitation,
            (e) => call(invitation: e),
          );
  }

  CopyWith_Input_PersonFilterInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonFilterInput.stub(_then(_instance))
        : CopyWith_Input_PersonFilterInput(
            local$person,
            (e) => call(person: e),
          );
  }

  CopyWith_Input_UserPreferencesFilterInput<TRes> get preferences {
    final local$preferences = _instance.preferences;
    return local$preferences == null
        ? CopyWith_Input_UserPreferencesFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserPreferencesFilterInput(
            local$preferences,
            (e) => call(preferences: e),
          );
  }

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Input_LatestEditFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestEditFilterInput(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterInput<TRes> get scopeGrants {
    final local$scopeGrants = _instance.scopeGrants;
    return local$scopeGrants == null
        ? CopyWith_Input_ScopeGrantFilterInput.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterInput(
            local$scopeGrants,
            (e) => call(scopeGrants: e),
          );
  }

  CopyWith_Input_DeviceTokenFilterInput<TRes> get deviceTokens {
    final local$deviceTokens = _instance.deviceTokens;
    return local$deviceTokens == null
        ? CopyWith_Input_DeviceTokenFilterInput.stub(_then(_instance))
        : CopyWith_Input_DeviceTokenFilterInput(
            local$deviceTokens,
            (e) => call(deviceTokens: e),
          );
  }

  CopyWith_Input_UserPermissionFilterInput<TRes> get permissions {
    final local$permissions = _instance.permissions;
    return local$permissions == null
        ? CopyWith_Input_UserPermissionFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserPermissionFilterInput(
            local$permissions,
            (e) => call(permissions: e),
          );
  }

  CopyWith_Input_UserFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_UserFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_UserFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_UserFilterPersonName<TRes> get personName {
    final local$personName = _instance.personName;
    return local$personName == null
        ? CopyWith_Input_UserFilterPersonName.stub(_then(_instance))
        : CopyWith_Input_UserFilterPersonName(
            local$personName,
            (e) => call(personName: e),
          );
  }

  CopyWith_Input_UserFilterCurrentUserCanManageThisUser<TRes>
  get currentUserCanManageThisUser {
    final local$currentUserCanManageThisUser =
        _instance.currentUserCanManageThisUser;
    return local$currentUserCanManageThisUser == null
        ? CopyWith_Input_UserFilterCurrentUserCanManageThisUser.stub(
            _then(_instance),
          )
        : CopyWith_Input_UserFilterCurrentUserCanManageThisUser(
            local$currentUserCanManageThisUser,
            (e) => call(currentUserCanManageThisUser: e),
          );
  }
}

class _CopyWithStubImpl_Input_UserFilterInput<TRes>
    implements CopyWith_Input_UserFilterInput<TRes> {
  _CopyWithStubImpl_Input_UserFilterInput(this._res);

  TRes _res;

  call({
    List<Input_UserFilterInput>? and,
    List<Input_UserFilterInput>? or,
    List<Input_UserFilterInput>? not,
    Input_UserFilterUid? uid,
    Input_UserFilterName? name,
    Input_UserFilterEmail? email,
    Input_UserFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_UserFilterBlurhash? blurhash,
    Input_UserFilterAuthId? authId,
    Input_InvitationFilterInput? invitation,
    Input_PersonFilterInput? person,
    Input_UserPreferencesFilterInput? preferences,
    Input_LatestEditFilterInput? latestEdit,
    Input_ScopeGrantFilterInput? scopeGrants,
    Input_DeviceTokenFilterInput? deviceTokens,
    Input_UserPermissionFilterInput? permissions,
    Input_UserFilterLastEdit? lastEdit,
    Input_UserFilterPersonName? personName,
    Input_UserFilterCurrentUserCanManageThisUser? currentUserCanManageThisUser,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_UserFilterUid<TRes> get uid =>
      CopyWith_Input_UserFilterUid.stub(_res);

  CopyWith_Input_UserFilterName<TRes> get name =>
      CopyWith_Input_UserFilterName.stub(_res);

  CopyWith_Input_UserFilterEmail<TRes> get email =>
      CopyWith_Input_UserFilterEmail.stub(_res);

  CopyWith_Input_UserFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_UserFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_UserFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_UserFilterBlurhash.stub(_res);

  CopyWith_Input_UserFilterAuthId<TRes> get authId =>
      CopyWith_Input_UserFilterAuthId.stub(_res);

  CopyWith_Input_InvitationFilterInput<TRes> get invitation =>
      CopyWith_Input_InvitationFilterInput.stub(_res);

  CopyWith_Input_PersonFilterInput<TRes> get person =>
      CopyWith_Input_PersonFilterInput.stub(_res);

  CopyWith_Input_UserPreferencesFilterInput<TRes> get preferences =>
      CopyWith_Input_UserPreferencesFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_ScopeGrantFilterInput<TRes> get scopeGrants =>
      CopyWith_Input_ScopeGrantFilterInput.stub(_res);

  CopyWith_Input_DeviceTokenFilterInput<TRes> get deviceTokens =>
      CopyWith_Input_DeviceTokenFilterInput.stub(_res);

  CopyWith_Input_UserPermissionFilterInput<TRes> get permissions =>
      CopyWith_Input_UserPermissionFilterInput.stub(_res);

  CopyWith_Input_UserFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_UserFilterLastEdit.stub(_res);

  CopyWith_Input_UserFilterPersonName<TRes> get personName =>
      CopyWith_Input_UserFilterPersonName.stub(_res);

  CopyWith_Input_UserFilterCurrentUserCanManageThisUser<TRes>
  get currentUserCanManageThisUser =>
      CopyWith_Input_UserFilterCurrentUserCanManageThisUser.stub(_res);
}

class Input_UserSortInput {
  factory Input_UserSortInput({
    Enum_SortOrder? order,
    required Enum_UserSortField field,
  }) => Input_UserSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_UserSortInput._(this._$data);

  factory Input_UserSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_UserSortField((l$field as String));
    return Input_UserSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_UserSortField get field => (_$data['field'] as Enum_UserSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_UserSortField(l$field);
    return result$data;
  }

  CopyWith_Input_UserSortInput<Input_UserSortInput> get copyWith =>
      CopyWith_Input_UserSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserSortInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
    ]);
  }
}

abstract class CopyWith_Input_UserSortInput<TRes> {
  factory CopyWith_Input_UserSortInput(
    Input_UserSortInput instance,
    TRes Function(Input_UserSortInput) then,
  ) = _CopyWithImpl_Input_UserSortInput;

  factory CopyWith_Input_UserSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UserSortInput;

  TRes call({Enum_SortOrder? order, Enum_UserSortField? field});
}

class _CopyWithImpl_Input_UserSortInput<TRes>
    implements CopyWith_Input_UserSortInput<TRes> {
  _CopyWithImpl_Input_UserSortInput(this._instance, this._then);

  final Input_UserSortInput _instance;

  final TRes Function(Input_UserSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_UserSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_UserSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_UserSortInput<TRes>
    implements CopyWith_Input_UserSortInput<TRes> {
  _CopyWithStubImpl_Input_UserSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_UserSortField? field}) => _res;
}

class Input_ScopeGrantFilterGroupAllowRecordServantsAttendance {
  factory Input_ScopeGrantFilterGroupAllowRecordServantsAttendance({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool?>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => Input_ScopeGrantFilterGroupAllowRecordServantsAttendance._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_ScopeGrantFilterGroupAllowRecordServantsAttendance._(this._$data);

  factory Input_ScopeGrantFilterGroupAllowRecordServantsAttendance.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as bool?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as bool?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as bool?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as bool?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as bool?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as bool?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as bool?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as bool?);
    }
    return Input_ScopeGrantFilterGroupAllowRecordServantsAttendance._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get notEq => (_$data['notEq'] as bool?);

  List<bool?>? get $in => (_$data['in'] as List<bool?>?);

  bool? get lessThan => (_$data['lessThan'] as bool?);

  bool? get greaterThan => (_$data['greaterThan'] as bool?);

  bool? get lessThanOrEqual => (_$data['lessThanOrEqual'] as bool?);

  bool? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as bool?);

  bool? get isDistinctFrom => (_$data['isDistinctFrom'] as bool?);

  bool? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<
    Input_ScopeGrantFilterGroupAllowRecordServantsAttendance
  >
  get copyWith =>
      CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ScopeGrantFilterGroupAllowRecordServantsAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<
  TRes
> {
  factory CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance(
    Input_ScopeGrantFilterGroupAllowRecordServantsAttendance instance,
    TRes Function(Input_ScopeGrantFilterGroupAllowRecordServantsAttendance)
    then,
  ) = _CopyWithImpl_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance;

  factory CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance;

  TRes call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool?>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<
  TRes
>
    implements
        CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<
          TRes
        > {
  _CopyWithImpl_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance(
    this._instance,
    this._then,
  );

  final Input_ScopeGrantFilterGroupAllowRecordServantsAttendance _instance;

  final TRes Function(Input_ScopeGrantFilterGroupAllowRecordServantsAttendance)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_ScopeGrantFilterGroupAllowRecordServantsAttendance._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
      if (notEq != _undefined) 'notEq': (notEq as bool?),
      if ($in != _undefined) 'in': ($in as List<bool?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as bool?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as bool?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as bool?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as bool?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as bool?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<
  TRes
>
    implements
        CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<
          TRes
        > {
  _CopyWithStubImpl_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance(
    this._res,
  );

  TRes _res;

  call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool?>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => _res;
}

class Input_ScopeGrantFilterGroupAllowRecordAttendance {
  factory Input_ScopeGrantFilterGroupAllowRecordAttendance({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool?>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => Input_ScopeGrantFilterGroupAllowRecordAttendance._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_ScopeGrantFilterGroupAllowRecordAttendance._(this._$data);

  factory Input_ScopeGrantFilterGroupAllowRecordAttendance.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as bool?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as bool?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as bool?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as bool?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as bool?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as bool?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as bool?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as bool?);
    }
    return Input_ScopeGrantFilterGroupAllowRecordAttendance._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get notEq => (_$data['notEq'] as bool?);

  List<bool?>? get $in => (_$data['in'] as List<bool?>?);

  bool? get lessThan => (_$data['lessThan'] as bool?);

  bool? get greaterThan => (_$data['greaterThan'] as bool?);

  bool? get lessThanOrEqual => (_$data['lessThanOrEqual'] as bool?);

  bool? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as bool?);

  bool? get isDistinctFrom => (_$data['isDistinctFrom'] as bool?);

  bool? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<
    Input_ScopeGrantFilterGroupAllowRecordAttendance
  >
  get copyWith =>
      CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ScopeGrantFilterGroupAllowRecordAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes> {
  factory CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance(
    Input_ScopeGrantFilterGroupAllowRecordAttendance instance,
    TRes Function(Input_ScopeGrantFilterGroupAllowRecordAttendance) then,
  ) = _CopyWithImpl_Input_ScopeGrantFilterGroupAllowRecordAttendance;

  factory CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_ScopeGrantFilterGroupAllowRecordAttendance;

  TRes call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool?>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes>
    implements CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes> {
  _CopyWithImpl_Input_ScopeGrantFilterGroupAllowRecordAttendance(
    this._instance,
    this._then,
  );

  final Input_ScopeGrantFilterGroupAllowRecordAttendance _instance;

  final TRes Function(Input_ScopeGrantFilterGroupAllowRecordAttendance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_ScopeGrantFilterGroupAllowRecordAttendance._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
      if (notEq != _undefined) 'notEq': (notEq as bool?),
      if ($in != _undefined) 'in': ($in as List<bool?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as bool?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as bool?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as bool?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as bool?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as bool?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes>
    implements CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes> {
  _CopyWithStubImpl_Input_ScopeGrantFilterGroupAllowRecordAttendance(this._res);

  TRes _res;

  call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool?>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => _res;
}

class Input_ScopeGrantFilterServiceAllowRecordServantsAttendance {
  factory Input_ScopeGrantFilterServiceAllowRecordServantsAttendance({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool?>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => Input_ScopeGrantFilterServiceAllowRecordServantsAttendance._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_ScopeGrantFilterServiceAllowRecordServantsAttendance._(this._$data);

  factory Input_ScopeGrantFilterServiceAllowRecordServantsAttendance.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as bool?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as bool?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as bool?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as bool?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as bool?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as bool?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as bool?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as bool?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as bool?);
    }
    return Input_ScopeGrantFilterServiceAllowRecordServantsAttendance._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get notEq => (_$data['notEq'] as bool?);

  List<bool?>? get $in => (_$data['in'] as List<bool?>?);

  bool? get lessThan => (_$data['lessThan'] as bool?);

  bool? get greaterThan => (_$data['greaterThan'] as bool?);

  bool? get lessThanOrEqual => (_$data['lessThanOrEqual'] as bool?);

  bool? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as bool?);

  bool? get isDistinctFrom => (_$data['isDistinctFrom'] as bool?);

  bool? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance<
    Input_ScopeGrantFilterServiceAllowRecordServantsAttendance
  >
  get copyWith =>
      CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ScopeGrantFilterServiceAllowRecordServantsAttendance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}
