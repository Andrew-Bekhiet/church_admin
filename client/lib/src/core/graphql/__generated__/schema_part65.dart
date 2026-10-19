// Part 65 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_UserPermissionFilterPermission<TRes> {
  factory CopyWith_Input_UserPermissionFilterPermission(
    Input_UserPermissionFilterPermission instance,
    TRes Function(Input_UserPermissionFilterPermission) then,
  ) = _CopyWithImpl_Input_UserPermissionFilterPermission;

  factory CopyWith_Input_UserPermissionFilterPermission.stub(TRes res) =
      _CopyWithStubImpl_Input_UserPermissionFilterPermission;

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

class _CopyWithImpl_Input_UserPermissionFilterPermission<TRes>
    implements CopyWith_Input_UserPermissionFilterPermission<TRes> {
  _CopyWithImpl_Input_UserPermissionFilterPermission(
    this._instance,
    this._then,
  );

  final Input_UserPermissionFilterPermission _instance;

  final TRes Function(Input_UserPermissionFilterPermission) _then;

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
    Input_UserPermissionFilterPermission._({
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

class _CopyWithStubImpl_Input_UserPermissionFilterPermission<TRes>
    implements CopyWith_Input_UserPermissionFilterPermission<TRes> {
  _CopyWithStubImpl_Input_UserPermissionFilterPermission(this._res);

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

class Input_UserPermissionFilterUid {
  factory Input_UserPermissionFilterUid({
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
  }) => Input_UserPermissionFilterUid._({
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

  Input_UserPermissionFilterUid._(this._$data);

  factory Input_UserPermissionFilterUid.fromJson(Map<String, dynamic> data) {
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
    return Input_UserPermissionFilterUid._(result$data);
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

  CopyWith_Input_UserPermissionFilterUid<Input_UserPermissionFilterUid>
  get copyWith => CopyWith_Input_UserPermissionFilterUid(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserPermissionFilterUid ||
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

abstract class CopyWith_Input_UserPermissionFilterUid<TRes> {
  factory CopyWith_Input_UserPermissionFilterUid(
    Input_UserPermissionFilterUid instance,
    TRes Function(Input_UserPermissionFilterUid) then,
  ) = _CopyWithImpl_Input_UserPermissionFilterUid;

  factory CopyWith_Input_UserPermissionFilterUid.stub(TRes res) =
      _CopyWithStubImpl_Input_UserPermissionFilterUid;

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

class _CopyWithImpl_Input_UserPermissionFilterUid<TRes>
    implements CopyWith_Input_UserPermissionFilterUid<TRes> {
  _CopyWithImpl_Input_UserPermissionFilterUid(this._instance, this._then);

  final Input_UserPermissionFilterUid _instance;

  final TRes Function(Input_UserPermissionFilterUid) _then;

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
    Input_UserPermissionFilterUid._({
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

class _CopyWithStubImpl_Input_UserPermissionFilterUid<TRes>
    implements CopyWith_Input_UserPermissionFilterUid<TRes> {
  _CopyWithStubImpl_Input_UserPermissionFilterUid(this._res);

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

class Input_UserPermissionFilterInput {
  factory Input_UserPermissionFilterInput({
    List<Input_UserPermissionFilterInput>? and,
    List<Input_UserPermissionFilterInput>? or,
    List<Input_UserPermissionFilterInput>? not,
    Input_UserPermissionFilterUid? uid,
    Input_UserPermissionFilterPermission? permission,
    Input_UserFilterInput? user,
  }) => Input_UserPermissionFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (uid != null) r'uid': uid,
    if (permission != null) r'permission': permission,
    if (user != null) r'user': user,
  });

  Input_UserPermissionFilterInput._(this._$data);

  factory Input_UserPermissionFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_UserPermissionFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_UserPermissionFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_UserPermissionFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_UserPermissionFilterUid.fromJson(
              (l$uid as Map<String, dynamic>),
            );
    }
    if (data.containsKey('permission')) {
      final l$permission = data['permission'];
      result$data['permission'] = l$permission == null
          ? null
          : Input_UserPermissionFilterPermission.fromJson(
              (l$permission as Map<String, dynamic>),
            );
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_UserFilterInput.fromJson((l$user as Map<String, dynamic>));
    }
    return Input_UserPermissionFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_UserPermissionFilterInput>? get and =>
      (_$data['and'] as List<Input_UserPermissionFilterInput>?);

  List<Input_UserPermissionFilterInput>? get or =>
      (_$data['or'] as List<Input_UserPermissionFilterInput>?);

  List<Input_UserPermissionFilterInput>? get not =>
      (_$data['not'] as List<Input_UserPermissionFilterInput>?);

  Input_UserPermissionFilterUid? get uid =>
      (_$data['uid'] as Input_UserPermissionFilterUid?);

  Input_UserPermissionFilterPermission? get permission =>
      (_$data['permission'] as Input_UserPermissionFilterPermission?);

  Input_UserFilterInput? get user => (_$data['user'] as Input_UserFilterInput?);

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
    if (_$data.containsKey('permission')) {
      final l$permission = permission;
      result$data['permission'] = l$permission?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_UserPermissionFilterInput<Input_UserPermissionFilterInput>
  get copyWith => CopyWith_Input_UserPermissionFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserPermissionFilterInput ||
        runtimeType != other.runtimeType) {
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
    final l$permission = permission;
    final lOther$permission = other.permission;
    if (_$data.containsKey('permission') !=
        other._$data.containsKey('permission')) {
      return false;
    }
    if (l$permission != lOther$permission) {
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
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$uid = uid;
    final l$permission = permission;
    final l$user = user;
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
      _$data.containsKey('permission') ? l$permission : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_UserPermissionFilterInput<TRes> {
  factory CopyWith_Input_UserPermissionFilterInput(
    Input_UserPermissionFilterInput instance,
    TRes Function(Input_UserPermissionFilterInput) then,
  ) = _CopyWithImpl_Input_UserPermissionFilterInput;

  factory CopyWith_Input_UserPermissionFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UserPermissionFilterInput;

  TRes call({
    List<Input_UserPermissionFilterInput>? and,
    List<Input_UserPermissionFilterInput>? or,
    List<Input_UserPermissionFilterInput>? not,
    Input_UserPermissionFilterUid? uid,
    Input_UserPermissionFilterPermission? permission,
    Input_UserFilterInput? user,
  });
  TRes and(
    Iterable<Input_UserPermissionFilterInput>? Function(
      Iterable<
        CopyWith_Input_UserPermissionFilterInput<
          Input_UserPermissionFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_UserPermissionFilterInput>? Function(
      Iterable<
        CopyWith_Input_UserPermissionFilterInput<
          Input_UserPermissionFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_UserPermissionFilterInput>? Function(
      Iterable<
        CopyWith_Input_UserPermissionFilterInput<
          Input_UserPermissionFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_UserPermissionFilterUid<TRes> get uid;
  CopyWith_Input_UserPermissionFilterPermission<TRes> get permission;
  CopyWith_Input_UserFilterInput<TRes> get user;
}

class _CopyWithImpl_Input_UserPermissionFilterInput<TRes>
    implements CopyWith_Input_UserPermissionFilterInput<TRes> {
  _CopyWithImpl_Input_UserPermissionFilterInput(this._instance, this._then);

  final Input_UserPermissionFilterInput _instance;

  final TRes Function(Input_UserPermissionFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? uid = _undefined,
    Object? permission = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_UserPermissionFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input_UserPermissionFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input_UserPermissionFilterInput>?),
      if (not != _undefined)
        'not': (not as List<Input_UserPermissionFilterInput>?),
      if (uid != _undefined) 'uid': (uid as Input_UserPermissionFilterUid?),
      if (permission != _undefined)
        'permission': (permission as Input_UserPermissionFilterPermission?),
      if (user != _undefined) 'user': (user as Input_UserFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input_UserPermissionFilterInput>? Function(
      Iterable<
        CopyWith_Input_UserPermissionFilterInput<
          Input_UserPermissionFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_UserPermissionFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_UserPermissionFilterInput>? Function(
      Iterable<
        CopyWith_Input_UserPermissionFilterInput<
          Input_UserPermissionFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_UserPermissionFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_UserPermissionFilterInput>? Function(
      Iterable<
        CopyWith_Input_UserPermissionFilterInput<
          Input_UserPermissionFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_UserPermissionFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_UserPermissionFilterUid<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_UserPermissionFilterUid.stub(_then(_instance))
        : CopyWith_Input_UserPermissionFilterUid(
            local$uid,
            (e) => call(uid: e),
          );
  }

  CopyWith_Input_UserPermissionFilterPermission<TRes> get permission {
    final local$permission = _instance.permission;
    return local$permission == null
        ? CopyWith_Input_UserPermissionFilterPermission.stub(_then(_instance))
        : CopyWith_Input_UserPermissionFilterPermission(
            local$permission,
            (e) => call(permission: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_UserPermissionFilterInput<TRes>
    implements CopyWith_Input_UserPermissionFilterInput<TRes> {
  _CopyWithStubImpl_Input_UserPermissionFilterInput(this._res);

  TRes _res;

  call({
    List<Input_UserPermissionFilterInput>? and,
    List<Input_UserPermissionFilterInput>? or,
    List<Input_UserPermissionFilterInput>? not,
    Input_UserPermissionFilterUid? uid,
    Input_UserPermissionFilterPermission? permission,
    Input_UserFilterInput? user,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_UserPermissionFilterUid<TRes> get uid =>
      CopyWith_Input_UserPermissionFilterUid.stub(_res);

  CopyWith_Input_UserPermissionFilterPermission<TRes> get permission =>
      CopyWith_Input_UserPermissionFilterPermission.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get user =>
      CopyWith_Input_UserFilterInput.stub(_res);
}

class Input_UserPermissionSortInput {
  factory Input_UserPermissionSortInput({
    Enum_SortOrder? order,
    required Enum_UserPermissionSortField field,
  }) => Input_UserPermissionSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_UserPermissionSortInput._(this._$data);

  factory Input_UserPermissionSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_UserPermissionSortField(
      (l$field as String),
    );
    return Input_UserPermissionSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_UserPermissionSortField get field =>
      (_$data['field'] as Enum_UserPermissionSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_UserPermissionSortField(l$field);
    return result$data;
  }

  CopyWith_Input_UserPermissionSortInput<Input_UserPermissionSortInput>
  get copyWith => CopyWith_Input_UserPermissionSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserPermissionSortInput ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_UserPermissionSortInput<TRes> {
  factory CopyWith_Input_UserPermissionSortInput(
    Input_UserPermissionSortInput instance,
    TRes Function(Input_UserPermissionSortInput) then,
  ) = _CopyWithImpl_Input_UserPermissionSortInput;

  factory CopyWith_Input_UserPermissionSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UserPermissionSortInput;

  TRes call({Enum_SortOrder? order, Enum_UserPermissionSortField? field});
}

class _CopyWithImpl_Input_UserPermissionSortInput<TRes>
    implements CopyWith_Input_UserPermissionSortInput<TRes> {
  _CopyWithImpl_Input_UserPermissionSortInput(this._instance, this._then);

  final Input_UserPermissionSortInput _instance;

  final TRes Function(Input_UserPermissionSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_UserPermissionSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_UserPermissionSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_UserPermissionSortInput<TRes>
    implements CopyWith_Input_UserPermissionSortInput<TRes> {
  _CopyWithStubImpl_Input_UserPermissionSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_UserPermissionSortField? field}) => _res;
}

class Input_ApplyInvitationCodeInput {
  factory Input_ApplyInvitationCodeInput({required String code}) =>
      Input_ApplyInvitationCodeInput._({r'code': code});

  Input_ApplyInvitationCodeInput._(this._$data);

  factory Input_ApplyInvitationCodeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Input_ApplyInvitationCodeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith_Input_ApplyInvitationCodeInput<Input_ApplyInvitationCodeInput>
  get copyWith => CopyWith_Input_ApplyInvitationCodeInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ApplyInvitationCodeInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith_Input_ApplyInvitationCodeInput<TRes> {
  factory CopyWith_Input_ApplyInvitationCodeInput(
    Input_ApplyInvitationCodeInput instance,
    TRes Function(Input_ApplyInvitationCodeInput) then,
  ) = _CopyWithImpl_Input_ApplyInvitationCodeInput;

  factory CopyWith_Input_ApplyInvitationCodeInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ApplyInvitationCodeInput;

  TRes call({String? code});
}

class _CopyWithImpl_Input_ApplyInvitationCodeInput<TRes>
    implements CopyWith_Input_ApplyInvitationCodeInput<TRes> {
  _CopyWithImpl_Input_ApplyInvitationCodeInput(this._instance, this._then);

  final Input_ApplyInvitationCodeInput _instance;

  final TRes Function(Input_ApplyInvitationCodeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) => _then(
    Input_ApplyInvitationCodeInput._({
      ..._instance._$data,
      if (code != _undefined && code != null) 'code': (code as String),
    }),
  );
}

class _CopyWithStubImpl_Input_ApplyInvitationCodeInput<TRes>
    implements CopyWith_Input_ApplyInvitationCodeInput<TRes> {
  _CopyWithStubImpl_Input_ApplyInvitationCodeInput(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Input_UpdateUserPermissionsInput {
  factory Input_UpdateUserPermissionsInput({
    List<String>? permissions,
    List<Input_AdminOnInput>? adminOn,
  }) => Input_UpdateUserPermissionsInput._({
    if (permissions != null) r'permissions': permissions,
    if (adminOn != null) r'adminOn': adminOn,
  });

  Input_UpdateUserPermissionsInput._(this._$data);

  factory Input_UpdateUserPermissionsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('permissions')) {
      final l$permissions = data['permissions'];
      result$data['permissions'] = (l$permissions as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('adminOn')) {
      final l$adminOn = data['adminOn'];
      result$data['adminOn'] = (l$adminOn as List<dynamic>?)
          ?.map((e) => Input_AdminOnInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input_UpdateUserPermissionsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get permissions => (_$data['permissions'] as List<String>?);

  List<Input_AdminOnInput>? get adminOn =>
      (_$data['adminOn'] as List<Input_AdminOnInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('permissions')) {
      final l$permissions = permissions;
      result$data['permissions'] = l$permissions?.map((e) => e).toList();
    }
    if (_$data.containsKey('adminOn')) {
      final l$adminOn = adminOn;
      result$data['adminOn'] = l$adminOn?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith_Input_UpdateUserPermissionsInput<Input_UpdateUserPermissionsInput>
  get copyWith => CopyWith_Input_UpdateUserPermissionsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateUserPermissionsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (_$data.containsKey('permissions') !=
        other._$data.containsKey('permissions')) {
      return false;
    }
    if (l$permissions != null && lOther$permissions != null) {
      if (l$permissions.length != lOther$permissions.length) {
        return false;
      }
      for (int i = 0; i < l$permissions.length; i++) {
        final l$permissions$entry = l$permissions[i];
        final lOther$permissions$entry = lOther$permissions[i];
        if (l$permissions$entry != lOther$permissions$entry) {
          return false;
        }
      }
    } else if (l$permissions != lOther$permissions) {
      return false;
    }
    final l$adminOn = adminOn;
    final lOther$adminOn = other.adminOn;
    if (_$data.containsKey('adminOn') != other._$data.containsKey('adminOn')) {
      return false;
    }
    if (l$adminOn != null && lOther$adminOn != null) {
      if (l$adminOn.length != lOther$adminOn.length) {
        return false;
      }
      for (int i = 0; i < l$adminOn.length; i++) {
        final l$adminOn$entry = l$adminOn[i];
        final lOther$adminOn$entry = lOther$adminOn[i];
        if (l$adminOn$entry != lOther$adminOn$entry) {
          return false;
        }
      }
    } else if (l$adminOn != lOther$adminOn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$permissions = permissions;
    final l$adminOn = adminOn;
    return Object.hashAll([
      _$data.containsKey('permissions')
          ? l$permissions == null
                ? null
                : Object.hashAll(l$permissions.map((v) => v))
          : const {},
      _$data.containsKey('adminOn')
          ? l$adminOn == null
                ? null
                : Object.hashAll(l$adminOn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateUserPermissionsInput<TRes> {
  factory CopyWith_Input_UpdateUserPermissionsInput(
    Input_UpdateUserPermissionsInput instance,
    TRes Function(Input_UpdateUserPermissionsInput) then,
  ) = _CopyWithImpl_Input_UpdateUserPermissionsInput;

  factory CopyWith_Input_UpdateUserPermissionsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateUserPermissionsInput;

  TRes call({List<String>? permissions, List<Input_AdminOnInput>? adminOn});
  TRes adminOn(
    Iterable<Input_AdminOnInput>? Function(
      Iterable<CopyWith_Input_AdminOnInput<Input_AdminOnInput>>?,
    )
    _fn,
  );
}

class _CopyWithImpl_Input_UpdateUserPermissionsInput<TRes>
    implements CopyWith_Input_UpdateUserPermissionsInput<TRes> {
  _CopyWithImpl_Input_UpdateUserPermissionsInput(this._instance, this._then);

  final Input_UpdateUserPermissionsInput _instance;

  final TRes Function(Input_UpdateUserPermissionsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? permissions = _undefined, Object? adminOn = _undefined}) =>
      _then(
        Input_UpdateUserPermissionsInput._({
          ..._instance._$data,
          if (permissions != _undefined)
            'permissions': (permissions as List<String>?),
          if (adminOn != _undefined)
            'adminOn': (adminOn as List<Input_AdminOnInput>?),
        }),
      );

  TRes adminOn(
    Iterable<Input_AdminOnInput>? Function(
      Iterable<CopyWith_Input_AdminOnInput<Input_AdminOnInput>>?,
    )
    _fn,
  ) => call(
    adminOn: _fn(
      _instance.adminOn?.map((e) => CopyWith_Input_AdminOnInput(e, (i) => i)),
    )?.toList(),
  );
}

class _CopyWithStubImpl_Input_UpdateUserPermissionsInput<TRes>
    implements CopyWith_Input_UpdateUserPermissionsInput<TRes> {
  _CopyWithStubImpl_Input_UpdateUserPermissionsInput(this._res);

  TRes _res;

  call({List<String>? permissions, List<Input_AdminOnInput>? adminOn}) => _res;

  adminOn(_fn) => _res;
}

class Input_UpdateUserInput {
  factory Input_UpdateUserInput({
    String? name,
    String? email,
    String? personId,
  }) => Input_UpdateUserInput._({
    if (name != null) r'name': name,
    if (email != null) r'email': email,
    if (personId != null) r'personId': personId,
  });

  Input_UpdateUserInput._(this._$data);

  factory Input_UpdateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = (l$personId as String?);
    }
    return Input_UpdateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get personId => (_$data['personId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId;
    }
    return result$data;
  }

  CopyWith_Input_UpdateUserInput<Input_UpdateUserInput> get copyWith =>
      CopyWith_Input_UpdateUserInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateUserInput || runtimeType != other.runtimeType) {
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
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateUserInput<TRes> {
  factory CopyWith_Input_UpdateUserInput(
    Input_UpdateUserInput instance,
    TRes Function(Input_UpdateUserInput) then,
  ) = _CopyWithImpl_Input_UpdateUserInput;

  factory CopyWith_Input_UpdateUserInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateUserInput;

  TRes call({String? name, String? email, String? personId});
}

class _CopyWithImpl_Input_UpdateUserInput<TRes>
    implements CopyWith_Input_UpdateUserInput<TRes> {
  _CopyWithImpl_Input_UpdateUserInput(this._instance, this._then);

  final Input_UpdateUserInput _instance;

  final TRes Function(Input_UpdateUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_UpdateUserInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (email != _undefined) 'email': (email as String?),
      if (personId != _undefined) 'personId': (personId as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_UpdateUserInput<TRes>
    implements CopyWith_Input_UpdateUserInput<TRes> {
  _CopyWithStubImpl_Input_UpdateUserInput(this._res);

  TRes _res;

  call({String? name, String? email, String? personId}) => _res;
}

class Input_CreateUserInput {
  factory Input_CreateUserInput({
    required String name,
    String? email,
    List<String>? permissions,
    List<Input_AdminOnInput>? adminOn,
    String? personId,
    Input_NewPersonInput? newPerson,
    DateTime? invitationExpiresAt,
  }) => Input_CreateUserInput._({
    r'name': name,
    if (email != null) r'email': email,
    if (permissions != null) r'permissions': permissions,
    if (adminOn != null) r'adminOn': adminOn,
    if (personId != null) r'personId': personId,
    if (newPerson != null) r'newPerson': newPerson,
    if (invitationExpiresAt != null)
      r'invitationExpiresAt': invitationExpiresAt,
  });

  Input_CreateUserInput._(this._$data);

  factory Input_CreateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('permissions')) {
      final l$permissions = data['permissions'];
      result$data['permissions'] = (l$permissions as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('adminOn')) {
      final l$adminOn = data['adminOn'];
      result$data['adminOn'] = (l$adminOn as List<dynamic>?)
          ?.map((e) => Input_AdminOnInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = (l$personId as String?);
    }
    if (data.containsKey('newPerson')) {
      final l$newPerson = data['newPerson'];
      result$data['newPerson'] = l$newPerson == null
          ? null
          : Input_NewPersonInput.fromJson(
              (l$newPerson as Map<String, dynamic>),
            );
    }
    if (data.containsKey('invitationExpiresAt')) {
      final l$invitationExpiresAt = data['invitationExpiresAt'];
      result$data['invitationExpiresAt'] = l$invitationExpiresAt == null
          ? null
          : tstzFromString(l$invitationExpiresAt);
    }
    return Input_CreateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String? get email => (_$data['email'] as String?);

  List<String>? get permissions => (_$data['permissions'] as List<String>?);

  List<Input_AdminOnInput>? get adminOn =>
      (_$data['adminOn'] as List<Input_AdminOnInput>?);

  String? get personId => (_$data['personId'] as String?);

  Input_NewPersonInput? get newPerson =>
      (_$data['newPerson'] as Input_NewPersonInput?);

  DateTime? get invitationExpiresAt =>
      (_$data['invitationExpiresAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('permissions')) {
      final l$permissions = permissions;
      result$data['permissions'] = l$permissions?.map((e) => e).toList();
    }
    if (_$data.containsKey('adminOn')) {
      final l$adminOn = adminOn;
      result$data['adminOn'] = l$adminOn?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId;
    }
    if (_$data.containsKey('newPerson')) {
      final l$newPerson = newPerson;
      result$data['newPerson'] = l$newPerson?.toJson();
    }
    if (_$data.containsKey('invitationExpiresAt')) {
      final l$invitationExpiresAt = invitationExpiresAt;
      result$data['invitationExpiresAt'] = l$invitationExpiresAt == null
          ? null
          : tstzToString(l$invitationExpiresAt);
    }
    return result$data;
  }

  CopyWith_Input_CreateUserInput<Input_CreateUserInput> get copyWith =>
      CopyWith_Input_CreateUserInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CreateUserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
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
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (_$data.containsKey('permissions') !=
        other._$data.containsKey('permissions')) {
      return false;
    }
    if (l$permissions != null && lOther$permissions != null) {
      if (l$permissions.length != lOther$permissions.length) {
        return false;
      }
      for (int i = 0; i < l$permissions.length; i++) {
        final l$permissions$entry = l$permissions[i];
        final lOther$permissions$entry = lOther$permissions[i];
        if (l$permissions$entry != lOther$permissions$entry) {
          return false;
        }
      }
    } else if (l$permissions != lOther$permissions) {
      return false;
    }
    final l$adminOn = adminOn;
    final lOther$adminOn = other.adminOn;
    if (_$data.containsKey('adminOn') != other._$data.containsKey('adminOn')) {
      return false;
    }
    if (l$adminOn != null && lOther$adminOn != null) {
      if (l$adminOn.length != lOther$adminOn.length) {
        return false;
      }
      for (int i = 0; i < l$adminOn.length; i++) {
        final l$adminOn$entry = l$adminOn[i];
        final lOther$adminOn$entry = lOther$adminOn[i];
        if (l$adminOn$entry != lOther$adminOn$entry) {
          return false;
        }
      }
    } else if (l$adminOn != lOther$adminOn) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$newPerson = newPerson;
    final lOther$newPerson = other.newPerson;
    if (_$data.containsKey('newPerson') !=
        other._$data.containsKey('newPerson')) {
      return false;
    }
    if (l$newPerson != lOther$newPerson) {
      return false;
    }
    final l$invitationExpiresAt = invitationExpiresAt;
    final lOther$invitationExpiresAt = other.invitationExpiresAt;
    if (_$data.containsKey('invitationExpiresAt') !=
        other._$data.containsKey('invitationExpiresAt')) {
      return false;
    }
    if (l$invitationExpiresAt != lOther$invitationExpiresAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$permissions = permissions;
    final l$adminOn = adminOn;
    final l$personId = personId;
    final l$newPerson = newPerson;
    final l$invitationExpiresAt = invitationExpiresAt;
    return Object.hashAll([
      l$name,
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('permissions')
          ? l$permissions == null
                ? null
                : Object.hashAll(l$permissions.map((v) => v))
          : const {},
      _$data.containsKey('adminOn')
          ? l$adminOn == null
                ? null
                : Object.hashAll(l$adminOn.map((v) => v))
          : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('newPerson') ? l$newPerson : const {},
      _$data.containsKey('invitationExpiresAt')
          ? l$invitationExpiresAt
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_CreateUserInput<TRes> {
  factory CopyWith_Input_CreateUserInput(
    Input_CreateUserInput instance,
    TRes Function(Input_CreateUserInput) then,
  ) = _CopyWithImpl_Input_CreateUserInput;

  factory CopyWith_Input_CreateUserInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CreateUserInput;

  TRes call({
    String? name,
    String? email,
    List<String>? permissions,
    List<Input_AdminOnInput>? adminOn,
    String? personId,
    Input_NewPersonInput? newPerson,
    DateTime? invitationExpiresAt,
  });
  TRes adminOn(
    Iterable<Input_AdminOnInput>? Function(
      Iterable<CopyWith_Input_AdminOnInput<Input_AdminOnInput>>?,
    )
    _fn,
  );
  CopyWith_Input_NewPersonInput<TRes> get newPerson;
}

class _CopyWithImpl_Input_CreateUserInput<TRes>
    implements CopyWith_Input_CreateUserInput<TRes> {
  _CopyWithImpl_Input_CreateUserInput(this._instance, this._then);

  final Input_CreateUserInput _instance;

  final TRes Function(Input_CreateUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? permissions = _undefined,
    Object? adminOn = _undefined,
    Object? personId = _undefined,
    Object? newPerson = _undefined,
    Object? invitationExpiresAt = _undefined,
  }) => _then(
    Input_CreateUserInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (email != _undefined) 'email': (email as String?),
      if (permissions != _undefined)
        'permissions': (permissions as List<String>?),
      if (adminOn != _undefined)
        'adminOn': (adminOn as List<Input_AdminOnInput>?),
      if (personId != _undefined) 'personId': (personId as String?),
      if (newPerson != _undefined)
        'newPerson': (newPerson as Input_NewPersonInput?),
      if (invitationExpiresAt != _undefined)
        'invitationExpiresAt': (invitationExpiresAt as DateTime?),
    }),
  );

  TRes adminOn(
    Iterable<Input_AdminOnInput>? Function(
      Iterable<CopyWith_Input_AdminOnInput<Input_AdminOnInput>>?,
    )
    _fn,
  ) => call(
    adminOn: _fn(
      _instance.adminOn?.map((e) => CopyWith_Input_AdminOnInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_NewPersonInput<TRes> get newPerson {
    final local$newPerson = _instance.newPerson;
    return local$newPerson == null
        ? CopyWith_Input_NewPersonInput.stub(_then(_instance))
        : CopyWith_Input_NewPersonInput(
            local$newPerson,
            (e) => call(newPerson: e),
          );
  }
}

class _CopyWithStubImpl_Input_CreateUserInput<TRes>
    implements CopyWith_Input_CreateUserInput<TRes> {
  _CopyWithStubImpl_Input_CreateUserInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    List<String>? permissions,
    List<Input_AdminOnInput>? adminOn,
    String? personId,
    Input_NewPersonInput? newPerson,
    DateTime? invitationExpiresAt,
  }) => _res;

  adminOn(_fn) => _res;

  CopyWith_Input_NewPersonInput<TRes> get newPerson =>
      CopyWith_Input_NewPersonInput.stub(_res);
}

class Input_UserFilterCurrentUserCanManageThisUser {
  factory Input_UserFilterCurrentUserCanManageThisUser({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => Input_UserFilterCurrentUserCanManageThisUser._({
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

  Input_UserFilterCurrentUserCanManageThisUser._(this._$data);

  factory Input_UserFilterCurrentUserCanManageThisUser.fromJson(
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
          ?.map((e) => (e as bool))
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
    return Input_UserFilterCurrentUserCanManageThisUser._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  bool? get eq => (_$data['eq'] as bool?);

  bool? get notEq => (_$data['notEq'] as bool?);

  List<bool>? get $in => (_$data['in'] as List<bool>?);

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

  CopyWith_Input_UserFilterCurrentUserCanManageThisUser<
    Input_UserFilterCurrentUserCanManageThisUser
  >
  get copyWith =>
      CopyWith_Input_UserFilterCurrentUserCanManageThisUser(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserFilterCurrentUserCanManageThisUser ||
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

abstract class CopyWith_Input_UserFilterCurrentUserCanManageThisUser<TRes> {
  factory CopyWith_Input_UserFilterCurrentUserCanManageThisUser(
    Input_UserFilterCurrentUserCanManageThisUser instance,
    TRes Function(Input_UserFilterCurrentUserCanManageThisUser) then,
  ) = _CopyWithImpl_Input_UserFilterCurrentUserCanManageThisUser;

  factory CopyWith_Input_UserFilterCurrentUserCanManageThisUser.stub(TRes res) =
      _CopyWithStubImpl_Input_UserFilterCurrentUserCanManageThisUser;

  TRes call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_UserFilterCurrentUserCanManageThisUser<TRes>
    implements CopyWith_Input_UserFilterCurrentUserCanManageThisUser<TRes> {
  _CopyWithImpl_Input_UserFilterCurrentUserCanManageThisUser(
    this._instance,
    this._then,
  );

  final Input_UserFilterCurrentUserCanManageThisUser _instance;

  final TRes Function(Input_UserFilterCurrentUserCanManageThisUser) _then;

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
    Input_UserFilterCurrentUserCanManageThisUser._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as bool?),
      if (notEq != _undefined) 'notEq': (notEq as bool?),
      if ($in != _undefined) 'in': ($in as List<bool>?),
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

class _CopyWithStubImpl_Input_UserFilterCurrentUserCanManageThisUser<TRes>
    implements CopyWith_Input_UserFilterCurrentUserCanManageThisUser<TRes> {
  _CopyWithStubImpl_Input_UserFilterCurrentUserCanManageThisUser(this._res);

  TRes _res;

  call({
    bool? isNil,
    bool? eq,
    bool? notEq,
    List<bool>? $in,
    bool? lessThan,
    bool? greaterThan,
    bool? lessThanOrEqual,
    bool? greaterThanOrEqual,
    bool? isDistinctFrom,
    bool? isNotDistinctFrom,
  }) => _res;
}

class Input_UserFilterPersonName {
  factory Input_UserFilterPersonName({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
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
  }) => Input_UserFilterPersonName._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (contains != null) r'contains': contains,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
    if (stringEndsWith != null) r'stringEndsWith': stringEndsWith,
    if (stringStartsWith != null) r'stringStartsWith': stringStartsWith,
    if (like != null) r'like': like,
    if (ilike != null) r'ilike': ilike,
  });

  Input_UserFilterPersonName._(this._$data);

  factory Input_UserFilterPersonName.fromJson(Map<String, dynamic> data) {
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
          ?.map((e) => (e as String?))
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
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    if (data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = data['stringEndsWith'];
      result$data['stringEndsWith'] = (l$stringEndsWith as String?);
    }
    if (data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = data['stringStartsWith'];
      result$data['stringStartsWith'] = (l$stringStartsWith as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('ilike')) {
      final l$ilike = data['ilike'];
      result$data['ilike'] = (l$ilike as String?);
    }
    return Input_UserFilterPersonName._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  String? get stringEndsWith => (_$data['stringEndsWith'] as String?);

  String? get stringStartsWith => (_$data['stringStartsWith'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get ilike => (_$data['ilike'] as String?);

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
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    if (_$data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = stringEndsWith;
      result$data['stringEndsWith'] = l$stringEndsWith;
    }
    if (_$data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = stringStartsWith;
      result$data['stringStartsWith'] = l$stringStartsWith;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('ilike')) {
      final l$ilike = ilike;
      result$data['ilike'] = l$ilike;
    }
    return result$data;
  }

  CopyWith_Input_UserFilterPersonName<Input_UserFilterPersonName>
  get copyWith => CopyWith_Input_UserFilterPersonName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UserFilterPersonName ||
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
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
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
    final l$stringEndsWith = stringEndsWith;
    final lOther$stringEndsWith = other.stringEndsWith;
    if (_$data.containsKey('stringEndsWith') !=
        other._$data.containsKey('stringEndsWith')) {
      return false;
    }
    if (l$stringEndsWith != lOther$stringEndsWith) {
      return false;
    }
    final l$stringStartsWith = stringStartsWith;
    final lOther$stringStartsWith = other.stringStartsWith;
    if (_$data.containsKey('stringStartsWith') !=
        other._$data.containsKey('stringStartsWith')) {
      return false;
    }
    if (l$stringStartsWith != lOther$stringStartsWith) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$ilike = ilike;
    final lOther$ilike = other.ilike;
    if (_$data.containsKey('ilike') != other._$data.containsKey('ilike')) {
      return false;
    }
    if (l$ilike != lOther$ilike) {
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
    final l$contains = contains;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final l$stringEndsWith = stringEndsWith;
    final l$stringStartsWith = stringStartsWith;
    final l$like = like;
    final l$ilike = ilike;
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
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
      _$data.containsKey('stringEndsWith') ? l$stringEndsWith : const {},
      _$data.containsKey('stringStartsWith') ? l$stringStartsWith : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('ilike') ? l$ilike : const {},
    ]);
  }
}
