// Part 59 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_UsersFcmTokensStreamCursorInput<TRes> {
  factory CopyWith_Input_UsersFcmTokensStreamCursorInput(
    Input_UsersFcmTokensStreamCursorInput instance,
    TRes Function(Input_UsersFcmTokensStreamCursorInput) then,
  ) = _CopyWithImpl_Input_UsersFcmTokensStreamCursorInput;

  factory CopyWith_Input_UsersFcmTokensStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersFcmTokensStreamCursorInput;

  TRes call({
    Input_UsersFcmTokensStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_UsersFcmTokensStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_UsersFcmTokensStreamCursorInput<TRes>
    implements CopyWith_Input_UsersFcmTokensStreamCursorInput<TRes> {
  _CopyWithImpl_Input_UsersFcmTokensStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_UsersFcmTokensStreamCursorInput _instance;

  final TRes Function(Input_UsersFcmTokensStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_UsersFcmTokensStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_UsersFcmTokensStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_UsersFcmTokensStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_UsersFcmTokensStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_UsersFcmTokensStreamCursorInput<TRes>
    implements CopyWith_Input_UsersFcmTokensStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_UsersFcmTokensStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_UsersFcmTokensStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_UsersFcmTokensStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_UsersFcmTokensStreamCursorValueInput.stub(_res);
}

class Input_UsersFcmTokensStreamCursorValueInput {
  factory Input_UsersFcmTokensStreamCursorValueInput({
    DateTime? createdAt,
    String? token,
    UuidValue? uid,
  }) => Input_UsersFcmTokensStreamCursorValueInput._({
    if (createdAt != null) r'createdAt': createdAt,
    if (token != null) r'token': token,
    if (uid != null) r'uid': uid,
  });

  Input_UsersFcmTokensStreamCursorValueInput._(this._$data);

  factory Input_UsersFcmTokensStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : tstzFromString(l$createdAt);
    }
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = (l$token as String?);
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null ? null : stringToUuid(l$uid);
    }
    return Input_UsersFcmTokensStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  String? get token => (_$data['token'] as String?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : tstzToString(l$createdAt);
    }
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = l$token;
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : uuidToString(l$uid);
    }
    return result$data;
  }

  CopyWith_Input_UsersFcmTokensStreamCursorValueInput<
    Input_UsersFcmTokensStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_UsersFcmTokensStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersFcmTokensStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
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
    final l$createdAt = createdAt;
    final l$token = token;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersFcmTokensStreamCursorValueInput<TRes> {
  factory CopyWith_Input_UsersFcmTokensStreamCursorValueInput(
    Input_UsersFcmTokensStreamCursorValueInput instance,
    TRes Function(Input_UsersFcmTokensStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_UsersFcmTokensStreamCursorValueInput;

  factory CopyWith_Input_UsersFcmTokensStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersFcmTokensStreamCursorValueInput;

  TRes call({DateTime? createdAt, String? token, UuidValue? uid});
}

class _CopyWithImpl_Input_UsersFcmTokensStreamCursorValueInput<TRes>
    implements CopyWith_Input_UsersFcmTokensStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_UsersFcmTokensStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_UsersFcmTokensStreamCursorValueInput _instance;

  final TRes Function(Input_UsersFcmTokensStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? token = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_UsersFcmTokensStreamCursorValueInput._({
      ..._instance._$data,
      if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
      if (token != _undefined) 'token': (token as String?),
      if (uid != _undefined) 'uid': (uid as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersFcmTokensStreamCursorValueInput<TRes>
    implements CopyWith_Input_UsersFcmTokensStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_UsersFcmTokensStreamCursorValueInput(this._res);

  TRes _res;

  call({DateTime? createdAt, String? token, UuidValue? uid}) => _res;
}

class Input_UsersPreferencesAppendInput {
  factory Input_UsersPreferencesAppendInput({Json? orderByPreferences}) =>
      Input_UsersPreferencesAppendInput._({
        if (orderByPreferences != null)
          r'orderByPreferences': orderByPreferences,
      });

  Input_UsersPreferencesAppendInput._(this._$data);

  factory Input_UsersPreferencesAppendInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = data['orderByPreferences'];
      result$data['orderByPreferences'] = (l$orderByPreferences as Json?);
    }
    return Input_UsersPreferencesAppendInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json? get orderByPreferences => (_$data['orderByPreferences'] as Json?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = orderByPreferences;
      result$data['orderByPreferences'] = l$orderByPreferences;
    }
    return result$data;
  }

  CopyWith_Input_UsersPreferencesAppendInput<Input_UsersPreferencesAppendInput>
  get copyWith => CopyWith_Input_UsersPreferencesAppendInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesAppendInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (_$data.containsKey('orderByPreferences') !=
        other._$data.containsKey('orderByPreferences')) {
      return false;
    }
    if (l$orderByPreferences != lOther$orderByPreferences) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderByPreferences = orderByPreferences;
    return Object.hashAll([
      _$data.containsKey('orderByPreferences')
          ? l$orderByPreferences
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersPreferencesAppendInput<TRes> {
  factory CopyWith_Input_UsersPreferencesAppendInput(
    Input_UsersPreferencesAppendInput instance,
    TRes Function(Input_UsersPreferencesAppendInput) then,
  ) = _CopyWithImpl_Input_UsersPreferencesAppendInput;

  factory CopyWith_Input_UsersPreferencesAppendInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesAppendInput;

  TRes call({Json? orderByPreferences});
}

class _CopyWithImpl_Input_UsersPreferencesAppendInput<TRes>
    implements CopyWith_Input_UsersPreferencesAppendInput<TRes> {
  _CopyWithImpl_Input_UsersPreferencesAppendInput(this._instance, this._then);

  final Input_UsersPreferencesAppendInput _instance;

  final TRes Function(Input_UsersPreferencesAppendInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderByPreferences = _undefined}) => _then(
    Input_UsersPreferencesAppendInput._({
      ..._instance._$data,
      if (orderByPreferences != _undefined)
        'orderByPreferences': (orderByPreferences as Json?),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersPreferencesAppendInput<TRes>
    implements CopyWith_Input_UsersPreferencesAppendInput<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesAppendInput(this._res);

  TRes _res;

  call({Json? orderByPreferences}) => _res;
}

class Input_UsersPreferencesBoolExp {
  factory Input_UsersPreferencesBoolExp({
    List<Input_UsersPreferencesBoolExp>? $_and,
    Input_UsersPreferencesBoolExp? $_not,
    List<Input_UsersPreferencesBoolExp>? $_or,
    Input_BooleanComparisonExp? darkTheme,
    Input_BooleanComparisonExp? greatFeastTheme,
    Input_StringComparisonExp? lastHomeMode,
    Input_JsonbComparisonExp? orderByPreferences,
    Input_UuidComparisonExp? uid,
    Input_TimestamptzComparisonExp? updatedAt,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_UsersPreferencesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (darkTheme != null) r'darkTheme': darkTheme,
    if (greatFeastTheme != null) r'greatFeastTheme': greatFeastTheme,
    if (lastHomeMode != null) r'lastHomeMode': lastHomeMode,
    if (orderByPreferences != null) r'orderByPreferences': orderByPreferences,
    if (uid != null) r'uid': uid,
    if (updatedAt != null) r'updatedAt': updatedAt,
    if (user != null) r'user': user,
  });

  Input_UsersPreferencesBoolExp._(this._$data);

  factory Input_UsersPreferencesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_UsersPreferencesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_UsersPreferencesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_UsersPreferencesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('darkTheme')) {
      final l$darkTheme = data['darkTheme'];
      result$data['darkTheme'] = l$darkTheme == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$darkTheme as Map<String, dynamic>),
            );
    }
    if (data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = data['greatFeastTheme'];
      result$data['greatFeastTheme'] = l$greatFeastTheme == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$greatFeastTheme as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = data['lastHomeMode'];
      result$data['lastHomeMode'] = l$lastHomeMode == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$lastHomeMode as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = data['orderByPreferences'];
      result$data['orderByPreferences'] = l$orderByPreferences == null
          ? null
          : Input_JsonbComparisonExp.fromJson(
              (l$orderByPreferences as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$uid as Map<String, dynamic>));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$updatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_UsersPreferencesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_UsersPreferencesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_UsersPreferencesBoolExp>?);

  Input_UsersPreferencesBoolExp? get $_not =>
      (_$data['_not'] as Input_UsersPreferencesBoolExp?);

  List<Input_UsersPreferencesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_UsersPreferencesBoolExp>?);

  Input_BooleanComparisonExp? get darkTheme =>
      (_$data['darkTheme'] as Input_BooleanComparisonExp?);

  Input_BooleanComparisonExp? get greatFeastTheme =>
      (_$data['greatFeastTheme'] as Input_BooleanComparisonExp?);

  Input_StringComparisonExp? get lastHomeMode =>
      (_$data['lastHomeMode'] as Input_StringComparisonExp?);

  Input_JsonbComparisonExp? get orderByPreferences =>
      (_$data['orderByPreferences'] as Input_JsonbComparisonExp?);

  Input_UuidComparisonExp? get uid =>
      (_$data['uid'] as Input_UuidComparisonExp?);

  Input_TimestamptzComparisonExp? get updatedAt =>
      (_$data['updatedAt'] as Input_TimestamptzComparisonExp?);

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
    if (_$data.containsKey('darkTheme')) {
      final l$darkTheme = darkTheme;
      result$data['darkTheme'] = l$darkTheme?.toJson();
    }
    if (_$data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = greatFeastTheme;
      result$data['greatFeastTheme'] = l$greatFeastTheme?.toJson();
    }
    if (_$data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = lastHomeMode;
      result$data['lastHomeMode'] = l$lastHomeMode?.toJson();
    }
    if (_$data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = orderByPreferences;
      result$data['orderByPreferences'] = l$orderByPreferences?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_UsersPreferencesBoolExp<Input_UsersPreferencesBoolExp>
  get copyWith => CopyWith_Input_UsersPreferencesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesBoolExp ||
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
    final l$darkTheme = darkTheme;
    final lOther$darkTheme = other.darkTheme;
    if (_$data.containsKey('darkTheme') !=
        other._$data.containsKey('darkTheme')) {
      return false;
    }
    if (l$darkTheme != lOther$darkTheme) {
      return false;
    }
    final l$greatFeastTheme = greatFeastTheme;
    final lOther$greatFeastTheme = other.greatFeastTheme;
    if (_$data.containsKey('greatFeastTheme') !=
        other._$data.containsKey('greatFeastTheme')) {
      return false;
    }
    if (l$greatFeastTheme != lOther$greatFeastTheme) {
      return false;
    }
    final l$lastHomeMode = lastHomeMode;
    final lOther$lastHomeMode = other.lastHomeMode;
    if (_$data.containsKey('lastHomeMode') !=
        other._$data.containsKey('lastHomeMode')) {
      return false;
    }
    if (l$lastHomeMode != lOther$lastHomeMode) {
      return false;
    }
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (_$data.containsKey('orderByPreferences') !=
        other._$data.containsKey('orderByPreferences')) {
      return false;
    }
    if (l$orderByPreferences != lOther$orderByPreferences) {
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
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
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
    final l$darkTheme = darkTheme;
    final l$greatFeastTheme = greatFeastTheme;
    final l$lastHomeMode = lastHomeMode;
    final l$orderByPreferences = orderByPreferences;
    final l$uid = uid;
    final l$updatedAt = updatedAt;
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
      _$data.containsKey('darkTheme') ? l$darkTheme : const {},
      _$data.containsKey('greatFeastTheme') ? l$greatFeastTheme : const {},
      _$data.containsKey('lastHomeMode') ? l$lastHomeMode : const {},
      _$data.containsKey('orderByPreferences')
          ? l$orderByPreferences
          : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersPreferencesBoolExp<TRes> {
  factory CopyWith_Input_UsersPreferencesBoolExp(
    Input_UsersPreferencesBoolExp instance,
    TRes Function(Input_UsersPreferencesBoolExp) then,
  ) = _CopyWithImpl_Input_UsersPreferencesBoolExp;

  factory CopyWith_Input_UsersPreferencesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesBoolExp;

  TRes call({
    List<Input_UsersPreferencesBoolExp>? $_and,
    Input_UsersPreferencesBoolExp? $_not,
    List<Input_UsersPreferencesBoolExp>? $_or,
    Input_BooleanComparisonExp? darkTheme,
    Input_BooleanComparisonExp? greatFeastTheme,
    Input_StringComparisonExp? lastHomeMode,
    Input_JsonbComparisonExp? orderByPreferences,
    Input_UuidComparisonExp? uid,
    Input_TimestamptzComparisonExp? updatedAt,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_UsersPreferencesBoolExp>? Function(
      Iterable<
        CopyWith_Input_UsersPreferencesBoolExp<Input_UsersPreferencesBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_UsersPreferencesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_UsersPreferencesBoolExp>? Function(
      Iterable<
        CopyWith_Input_UsersPreferencesBoolExp<Input_UsersPreferencesBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_BooleanComparisonExp<TRes> get darkTheme;
  CopyWith_Input_BooleanComparisonExp<TRes> get greatFeastTheme;
  CopyWith_Input_StringComparisonExp<TRes> get lastHomeMode;
  CopyWith_Input_JsonbComparisonExp<TRes> get orderByPreferences;
  CopyWith_Input_UuidComparisonExp<TRes> get uid;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get updatedAt;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_UsersPreferencesBoolExp<TRes>
    implements CopyWith_Input_UsersPreferencesBoolExp<TRes> {
  _CopyWithImpl_Input_UsersPreferencesBoolExp(this._instance, this._then);

  final Input_UsersPreferencesBoolExp _instance;

  final TRes Function(Input_UsersPreferencesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? darkTheme = _undefined,
    Object? greatFeastTheme = _undefined,
    Object? lastHomeMode = _undefined,
    Object? orderByPreferences = _undefined,
    Object? uid = _undefined,
    Object? updatedAt = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_UsersPreferencesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_UsersPreferencesBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_UsersPreferencesBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_UsersPreferencesBoolExp>?),
      if (darkTheme != _undefined)
        'darkTheme': (darkTheme as Input_BooleanComparisonExp?),
      if (greatFeastTheme != _undefined)
        'greatFeastTheme': (greatFeastTheme as Input_BooleanComparisonExp?),
      if (lastHomeMode != _undefined)
        'lastHomeMode': (lastHomeMode as Input_StringComparisonExp?),
      if (orderByPreferences != _undefined)
        'orderByPreferences': (orderByPreferences as Input_JsonbComparisonExp?),
      if (uid != _undefined) 'uid': (uid as Input_UuidComparisonExp?),
      if (updatedAt != _undefined)
        'updatedAt': (updatedAt as Input_TimestamptzComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_UsersPreferencesBoolExp>? Function(
      Iterable<
        CopyWith_Input_UsersPreferencesBoolExp<Input_UsersPreferencesBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_UsersPreferencesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_UsersPreferencesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_UsersPreferencesBoolExp.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_UsersPreferencesBoolExp>? Function(
      Iterable<
        CopyWith_Input_UsersPreferencesBoolExp<Input_UsersPreferencesBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_UsersPreferencesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_BooleanComparisonExp<TRes> get darkTheme {
    final local$darkTheme = _instance.darkTheme;
    return local$darkTheme == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$darkTheme,
            (e) => call(darkTheme: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get greatFeastTheme {
    final local$greatFeastTheme = _instance.greatFeastTheme;
    return local$greatFeastTheme == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$greatFeastTheme,
            (e) => call(greatFeastTheme: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get lastHomeMode {
    final local$lastHomeMode = _instance.lastHomeMode;
    return local$lastHomeMode == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$lastHomeMode,
            (e) => call(lastHomeMode: e),
          );
  }

  CopyWith_Input_JsonbComparisonExp<TRes> get orderByPreferences {
    final local$orderByPreferences = _instance.orderByPreferences;
    return local$orderByPreferences == null
        ? CopyWith_Input_JsonbComparisonExp.stub(_then(_instance))
        : CopyWith_Input_JsonbComparisonExp(
            local$orderByPreferences,
            (e) => call(orderByPreferences: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$uid, (e) => call(uid: e));
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$updatedAt,
            (e) => call(updatedAt: e),
          );
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_UsersPreferencesBoolExp<TRes>
    implements CopyWith_Input_UsersPreferencesBoolExp<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_UsersPreferencesBoolExp>? $_and,
    Input_UsersPreferencesBoolExp? $_not,
    List<Input_UsersPreferencesBoolExp>? $_or,
    Input_BooleanComparisonExp? darkTheme,
    Input_BooleanComparisonExp? greatFeastTheme,
    Input_StringComparisonExp? lastHomeMode,
    Input_JsonbComparisonExp? orderByPreferences,
    Input_UuidComparisonExp? uid,
    Input_TimestamptzComparisonExp? updatedAt,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_UsersPreferencesBoolExp<TRes> get $_not =>
      CopyWith_Input_UsersPreferencesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_BooleanComparisonExp<TRes> get darkTheme =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get greatFeastTheme =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get lastHomeMode =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_JsonbComparisonExp<TRes> get orderByPreferences =>
      CopyWith_Input_JsonbComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get uid =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get updatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_UsersPreferencesDeleteAtPathInput {
  factory Input_UsersPreferencesDeleteAtPathInput({
    List<String>? orderByPreferences,
  }) => Input_UsersPreferencesDeleteAtPathInput._({
    if (orderByPreferences != null) r'orderByPreferences': orderByPreferences,
  });

  Input_UsersPreferencesDeleteAtPathInput._(this._$data);

  factory Input_UsersPreferencesDeleteAtPathInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = data['orderByPreferences'];
      result$data['orderByPreferences'] =
          (l$orderByPreferences as List<dynamic>?)
              ?.map((e) => (e as String))
              .toList();
    }
    return Input_UsersPreferencesDeleteAtPathInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get orderByPreferences =>
      (_$data['orderByPreferences'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = orderByPreferences;
      result$data['orderByPreferences'] = l$orderByPreferences
          ?.map((e) => e)
          .toList();
    }
    return result$data;
  }

  CopyWith_Input_UsersPreferencesDeleteAtPathInput<
    Input_UsersPreferencesDeleteAtPathInput
  >
  get copyWith =>
      CopyWith_Input_UsersPreferencesDeleteAtPathInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesDeleteAtPathInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (_$data.containsKey('orderByPreferences') !=
        other._$data.containsKey('orderByPreferences')) {
      return false;
    }
    if (l$orderByPreferences != null && lOther$orderByPreferences != null) {
      if (l$orderByPreferences.length != lOther$orderByPreferences.length) {
        return false;
      }
      for (int i = 0; i < l$orderByPreferences.length; i++) {
        final l$orderByPreferences$entry = l$orderByPreferences[i];
        final lOther$orderByPreferences$entry = lOther$orderByPreferences[i];
        if (l$orderByPreferences$entry != lOther$orderByPreferences$entry) {
          return false;
        }
      }
    } else if (l$orderByPreferences != lOther$orderByPreferences) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderByPreferences = orderByPreferences;
    return Object.hashAll([
      _$data.containsKey('orderByPreferences')
          ? l$orderByPreferences == null
                ? null
                : Object.hashAll(l$orderByPreferences.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersPreferencesDeleteAtPathInput<TRes> {
  factory CopyWith_Input_UsersPreferencesDeleteAtPathInput(
    Input_UsersPreferencesDeleteAtPathInput instance,
    TRes Function(Input_UsersPreferencesDeleteAtPathInput) then,
  ) = _CopyWithImpl_Input_UsersPreferencesDeleteAtPathInput;

  factory CopyWith_Input_UsersPreferencesDeleteAtPathInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesDeleteAtPathInput;

  TRes call({List<String>? orderByPreferences});
}

class _CopyWithImpl_Input_UsersPreferencesDeleteAtPathInput<TRes>
    implements CopyWith_Input_UsersPreferencesDeleteAtPathInput<TRes> {
  _CopyWithImpl_Input_UsersPreferencesDeleteAtPathInput(
    this._instance,
    this._then,
  );

  final Input_UsersPreferencesDeleteAtPathInput _instance;

  final TRes Function(Input_UsersPreferencesDeleteAtPathInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderByPreferences = _undefined}) => _then(
    Input_UsersPreferencesDeleteAtPathInput._({
      ..._instance._$data,
      if (orderByPreferences != _undefined)
        'orderByPreferences': (orderByPreferences as List<String>?),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersPreferencesDeleteAtPathInput<TRes>
    implements CopyWith_Input_UsersPreferencesDeleteAtPathInput<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesDeleteAtPathInput(this._res);

  TRes _res;

  call({List<String>? orderByPreferences}) => _res;
}

class Input_UsersPreferencesDeleteElemInput {
  factory Input_UsersPreferencesDeleteElemInput({int? orderByPreferences}) =>
      Input_UsersPreferencesDeleteElemInput._({
        if (orderByPreferences != null)
          r'orderByPreferences': orderByPreferences,
      });

  Input_UsersPreferencesDeleteElemInput._(this._$data);

  factory Input_UsersPreferencesDeleteElemInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = data['orderByPreferences'];
      result$data['orderByPreferences'] = (l$orderByPreferences as int?);
    }
    return Input_UsersPreferencesDeleteElemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get orderByPreferences => (_$data['orderByPreferences'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = orderByPreferences;
      result$data['orderByPreferences'] = l$orderByPreferences;
    }
    return result$data;
  }

  CopyWith_Input_UsersPreferencesDeleteElemInput<
    Input_UsersPreferencesDeleteElemInput
  >
  get copyWith =>
      CopyWith_Input_UsersPreferencesDeleteElemInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesDeleteElemInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (_$data.containsKey('orderByPreferences') !=
        other._$data.containsKey('orderByPreferences')) {
      return false;
    }
    if (l$orderByPreferences != lOther$orderByPreferences) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderByPreferences = orderByPreferences;
    return Object.hashAll([
      _$data.containsKey('orderByPreferences')
          ? l$orderByPreferences
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersPreferencesDeleteElemInput<TRes> {
  factory CopyWith_Input_UsersPreferencesDeleteElemInput(
    Input_UsersPreferencesDeleteElemInput instance,
    TRes Function(Input_UsersPreferencesDeleteElemInput) then,
  ) = _CopyWithImpl_Input_UsersPreferencesDeleteElemInput;

  factory CopyWith_Input_UsersPreferencesDeleteElemInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesDeleteElemInput;

  TRes call({int? orderByPreferences});
}

class _CopyWithImpl_Input_UsersPreferencesDeleteElemInput<TRes>
    implements CopyWith_Input_UsersPreferencesDeleteElemInput<TRes> {
  _CopyWithImpl_Input_UsersPreferencesDeleteElemInput(
    this._instance,
    this._then,
  );

  final Input_UsersPreferencesDeleteElemInput _instance;

  final TRes Function(Input_UsersPreferencesDeleteElemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderByPreferences = _undefined}) => _then(
    Input_UsersPreferencesDeleteElemInput._({
      ..._instance._$data,
      if (orderByPreferences != _undefined)
        'orderByPreferences': (orderByPreferences as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersPreferencesDeleteElemInput<TRes>
    implements CopyWith_Input_UsersPreferencesDeleteElemInput<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesDeleteElemInput(this._res);

  TRes _res;

  call({int? orderByPreferences}) => _res;
}

class Input_UsersPreferencesDeleteKeyInput {
  factory Input_UsersPreferencesDeleteKeyInput({String? orderByPreferences}) =>
      Input_UsersPreferencesDeleteKeyInput._({
        if (orderByPreferences != null)
          r'orderByPreferences': orderByPreferences,
      });

  Input_UsersPreferencesDeleteKeyInput._(this._$data);

  factory Input_UsersPreferencesDeleteKeyInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = data['orderByPreferences'];
      result$data['orderByPreferences'] = (l$orderByPreferences as String?);
    }
    return Input_UsersPreferencesDeleteKeyInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get orderByPreferences => (_$data['orderByPreferences'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = orderByPreferences;
      result$data['orderByPreferences'] = l$orderByPreferences;
    }
    return result$data;
  }

  CopyWith_Input_UsersPreferencesDeleteKeyInput<
    Input_UsersPreferencesDeleteKeyInput
  >
  get copyWith => CopyWith_Input_UsersPreferencesDeleteKeyInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesDeleteKeyInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (_$data.containsKey('orderByPreferences') !=
        other._$data.containsKey('orderByPreferences')) {
      return false;
    }
    if (l$orderByPreferences != lOther$orderByPreferences) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderByPreferences = orderByPreferences;
    return Object.hashAll([
      _$data.containsKey('orderByPreferences')
          ? l$orderByPreferences
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersPreferencesDeleteKeyInput<TRes> {
  factory CopyWith_Input_UsersPreferencesDeleteKeyInput(
    Input_UsersPreferencesDeleteKeyInput instance,
    TRes Function(Input_UsersPreferencesDeleteKeyInput) then,
  ) = _CopyWithImpl_Input_UsersPreferencesDeleteKeyInput;

  factory CopyWith_Input_UsersPreferencesDeleteKeyInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesDeleteKeyInput;

  TRes call({String? orderByPreferences});
}

class _CopyWithImpl_Input_UsersPreferencesDeleteKeyInput<TRes>
    implements CopyWith_Input_UsersPreferencesDeleteKeyInput<TRes> {
  _CopyWithImpl_Input_UsersPreferencesDeleteKeyInput(
    this._instance,
    this._then,
  );

  final Input_UsersPreferencesDeleteKeyInput _instance;

  final TRes Function(Input_UsersPreferencesDeleteKeyInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderByPreferences = _undefined}) => _then(
    Input_UsersPreferencesDeleteKeyInput._({
      ..._instance._$data,
      if (orderByPreferences != _undefined)
        'orderByPreferences': (orderByPreferences as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersPreferencesDeleteKeyInput<TRes>
    implements CopyWith_Input_UsersPreferencesDeleteKeyInput<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesDeleteKeyInput(this._res);

  TRes _res;

  call({String? orderByPreferences}) => _res;
}

class Input_UsersPreferencesOrderBy {
  factory Input_UsersPreferencesOrderBy({
    Enum_OrderBy? darkTheme,
    Enum_OrderBy? greatFeastTheme,
    Enum_OrderBy? lastHomeMode,
    Enum_OrderBy? orderByPreferences,
    Enum_OrderBy? uid,
    Enum_OrderBy? updatedAt,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_UsersPreferencesOrderBy._({
    if (darkTheme != null) r'darkTheme': darkTheme,
    if (greatFeastTheme != null) r'greatFeastTheme': greatFeastTheme,
    if (lastHomeMode != null) r'lastHomeMode': lastHomeMode,
    if (orderByPreferences != null) r'orderByPreferences': orderByPreferences,
    if (uid != null) r'uid': uid,
    if (updatedAt != null) r'updatedAt': updatedAt,
    if (user != null) r'user': user,
  });

  Input_UsersPreferencesOrderBy._(this._$data);

  factory Input_UsersPreferencesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('darkTheme')) {
      final l$darkTheme = data['darkTheme'];
      result$data['darkTheme'] = l$darkTheme == null
          ? null
          : fromJson_Enum_OrderBy((l$darkTheme as String));
    }
    if (data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = data['greatFeastTheme'];
      result$data['greatFeastTheme'] = l$greatFeastTheme == null
          ? null
          : fromJson_Enum_OrderBy((l$greatFeastTheme as String));
    }
    if (data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = data['lastHomeMode'];
      result$data['lastHomeMode'] = l$lastHomeMode == null
          ? null
          : fromJson_Enum_OrderBy((l$lastHomeMode as String));
    }
    if (data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = data['orderByPreferences'];
      result$data['orderByPreferences'] = l$orderByPreferences == null
          ? null
          : fromJson_Enum_OrderBy((l$orderByPreferences as String));
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : fromJson_Enum_OrderBy((l$uid as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$updatedAt as String));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_UsersPreferencesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get darkTheme => (_$data['darkTheme'] as Enum_OrderBy?);

  Enum_OrderBy? get greatFeastTheme =>
      (_$data['greatFeastTheme'] as Enum_OrderBy?);

  Enum_OrderBy? get lastHomeMode => (_$data['lastHomeMode'] as Enum_OrderBy?);

  Enum_OrderBy? get orderByPreferences =>
      (_$data['orderByPreferences'] as Enum_OrderBy?);

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Enum_OrderBy? get updatedAt => (_$data['updatedAt'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('darkTheme')) {
      final l$darkTheme = darkTheme;
      result$data['darkTheme'] = l$darkTheme == null
          ? null
          : toJson_Enum_OrderBy(l$darkTheme);
    }
    if (_$data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = greatFeastTheme;
      result$data['greatFeastTheme'] = l$greatFeastTheme == null
          ? null
          : toJson_Enum_OrderBy(l$greatFeastTheme);
    }
    if (_$data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = lastHomeMode;
      result$data['lastHomeMode'] = l$lastHomeMode == null
          ? null
          : toJson_Enum_OrderBy(l$lastHomeMode);
    }
    if (_$data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = orderByPreferences;
      result$data['orderByPreferences'] = l$orderByPreferences == null
          ? null
          : toJson_Enum_OrderBy(l$orderByPreferences);
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : toJson_Enum_OrderBy(l$uid);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$updatedAt);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_UsersPreferencesOrderBy<Input_UsersPreferencesOrderBy>
  get copyWith => CopyWith_Input_UsersPreferencesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$darkTheme = darkTheme;
    final lOther$darkTheme = other.darkTheme;
    if (_$data.containsKey('darkTheme') !=
        other._$data.containsKey('darkTheme')) {
      return false;
    }
    if (l$darkTheme != lOther$darkTheme) {
      return false;
    }
    final l$greatFeastTheme = greatFeastTheme;
    final lOther$greatFeastTheme = other.greatFeastTheme;
    if (_$data.containsKey('greatFeastTheme') !=
        other._$data.containsKey('greatFeastTheme')) {
      return false;
    }
    if (l$greatFeastTheme != lOther$greatFeastTheme) {
      return false;
    }
    final l$lastHomeMode = lastHomeMode;
    final lOther$lastHomeMode = other.lastHomeMode;
    if (_$data.containsKey('lastHomeMode') !=
        other._$data.containsKey('lastHomeMode')) {
      return false;
    }
    if (l$lastHomeMode != lOther$lastHomeMode) {
      return false;
    }
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (_$data.containsKey('orderByPreferences') !=
        other._$data.containsKey('orderByPreferences')) {
      return false;
    }
    if (l$orderByPreferences != lOther$orderByPreferences) {
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
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
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
    final l$darkTheme = darkTheme;
    final l$greatFeastTheme = greatFeastTheme;
    final l$lastHomeMode = lastHomeMode;
    final l$orderByPreferences = orderByPreferences;
    final l$uid = uid;
    final l$updatedAt = updatedAt;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('darkTheme') ? l$darkTheme : const {},
      _$data.containsKey('greatFeastTheme') ? l$greatFeastTheme : const {},
      _$data.containsKey('lastHomeMode') ? l$lastHomeMode : const {},
      _$data.containsKey('orderByPreferences')
          ? l$orderByPreferences
          : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersPreferencesOrderBy<TRes> {
  factory CopyWith_Input_UsersPreferencesOrderBy(
    Input_UsersPreferencesOrderBy instance,
    TRes Function(Input_UsersPreferencesOrderBy) then,
  ) = _CopyWithImpl_Input_UsersPreferencesOrderBy;

  factory CopyWith_Input_UsersPreferencesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesOrderBy;

  TRes call({
    Enum_OrderBy? darkTheme,
    Enum_OrderBy? greatFeastTheme,
    Enum_OrderBy? lastHomeMode,
    Enum_OrderBy? orderByPreferences,
    Enum_OrderBy? uid,
    Enum_OrderBy? updatedAt,
    Input_AuthUsersDataOrderBy? user,
  });
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_UsersPreferencesOrderBy<TRes>
    implements CopyWith_Input_UsersPreferencesOrderBy<TRes> {
  _CopyWithImpl_Input_UsersPreferencesOrderBy(this._instance, this._then);

  final Input_UsersPreferencesOrderBy _instance;

  final TRes Function(Input_UsersPreferencesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? darkTheme = _undefined,
    Object? greatFeastTheme = _undefined,
    Object? lastHomeMode = _undefined,
    Object? orderByPreferences = _undefined,
    Object? uid = _undefined,
    Object? updatedAt = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_UsersPreferencesOrderBy._({
      ..._instance._$data,
      if (darkTheme != _undefined) 'darkTheme': (darkTheme as Enum_OrderBy?),
      if (greatFeastTheme != _undefined)
        'greatFeastTheme': (greatFeastTheme as Enum_OrderBy?),
      if (lastHomeMode != _undefined)
        'lastHomeMode': (lastHomeMode as Enum_OrderBy?),
      if (orderByPreferences != _undefined)
        'orderByPreferences': (orderByPreferences as Enum_OrderBy?),
      if (uid != _undefined) 'uid': (uid as Enum_OrderBy?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_UsersPreferencesOrderBy<TRes>
    implements CopyWith_Input_UsersPreferencesOrderBy<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? darkTheme,
    Enum_OrderBy? greatFeastTheme,
    Enum_OrderBy? lastHomeMode,
    Enum_OrderBy? orderByPreferences,
    Enum_OrderBy? uid,
    Enum_OrderBy? updatedAt,
    Input_AuthUsersDataOrderBy? user,
  }) => _res;

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_UsersPreferencesPkColumnsInput {
  factory Input_UsersPreferencesPkColumnsInput({required UuidValue uid}) =>
      Input_UsersPreferencesPkColumnsInput._({r'uid': uid});

  Input_UsersPreferencesPkColumnsInput._(this._$data);

  factory Input_UsersPreferencesPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$uid = data['uid'];
    result$data['uid'] = stringToUuid(l$uid);
    return Input_UsersPreferencesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get uid => (_$data['uid'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$uid = uid;
    result$data['uid'] = uuidToString(l$uid);
    return result$data;
  }

  CopyWith_Input_UsersPreferencesPkColumnsInput<
    Input_UsersPreferencesPkColumnsInput
  >
  get copyWith => CopyWith_Input_UsersPreferencesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesPkColumnsInput ||
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

abstract class CopyWith_Input_UsersPreferencesPkColumnsInput<TRes> {
  factory CopyWith_Input_UsersPreferencesPkColumnsInput(
    Input_UsersPreferencesPkColumnsInput instance,
    TRes Function(Input_UsersPreferencesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_UsersPreferencesPkColumnsInput;

  factory CopyWith_Input_UsersPreferencesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesPkColumnsInput;

  TRes call({UuidValue? uid});
}

class _CopyWithImpl_Input_UsersPreferencesPkColumnsInput<TRes>
    implements CopyWith_Input_UsersPreferencesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_UsersPreferencesPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_UsersPreferencesPkColumnsInput _instance;

  final TRes Function(Input_UsersPreferencesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? uid = _undefined}) => _then(
    Input_UsersPreferencesPkColumnsInput._({
      ..._instance._$data,
      if (uid != _undefined && uid != null) 'uid': (uid as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersPreferencesPkColumnsInput<TRes>
    implements CopyWith_Input_UsersPreferencesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? uid}) => _res;
}

class Input_UsersPreferencesPrependInput {
  factory Input_UsersPreferencesPrependInput({Json? orderByPreferences}) =>
      Input_UsersPreferencesPrependInput._({
        if (orderByPreferences != null)
          r'orderByPreferences': orderByPreferences,
      });

  Input_UsersPreferencesPrependInput._(this._$data);

  factory Input_UsersPreferencesPrependInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = data['orderByPreferences'];
      result$data['orderByPreferences'] = (l$orderByPreferences as Json?);
    }
    return Input_UsersPreferencesPrependInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Json? get orderByPreferences => (_$data['orderByPreferences'] as Json?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = orderByPreferences;
      result$data['orderByPreferences'] = l$orderByPreferences;
    }
    return result$data;
  }

  CopyWith_Input_UsersPreferencesPrependInput<
    Input_UsersPreferencesPrependInput
  >
  get copyWith => CopyWith_Input_UsersPreferencesPrependInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesPrependInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (_$data.containsKey('orderByPreferences') !=
        other._$data.containsKey('orderByPreferences')) {
      return false;
    }
    if (l$orderByPreferences != lOther$orderByPreferences) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderByPreferences = orderByPreferences;
    return Object.hashAll([
      _$data.containsKey('orderByPreferences')
          ? l$orderByPreferences
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersPreferencesPrependInput<TRes> {
  factory CopyWith_Input_UsersPreferencesPrependInput(
    Input_UsersPreferencesPrependInput instance,
    TRes Function(Input_UsersPreferencesPrependInput) then,
  ) = _CopyWithImpl_Input_UsersPreferencesPrependInput;

  factory CopyWith_Input_UsersPreferencesPrependInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesPrependInput;

  TRes call({Json? orderByPreferences});
}

class _CopyWithImpl_Input_UsersPreferencesPrependInput<TRes>
    implements CopyWith_Input_UsersPreferencesPrependInput<TRes> {
  _CopyWithImpl_Input_UsersPreferencesPrependInput(this._instance, this._then);

  final Input_UsersPreferencesPrependInput _instance;

  final TRes Function(Input_UsersPreferencesPrependInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderByPreferences = _undefined}) => _then(
    Input_UsersPreferencesPrependInput._({
      ..._instance._$data,
      if (orderByPreferences != _undefined)
        'orderByPreferences': (orderByPreferences as Json?),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersPreferencesPrependInput<TRes>
    implements CopyWith_Input_UsersPreferencesPrependInput<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesPrependInput(this._res);

  TRes _res;

  call({Json? orderByPreferences}) => _res;
}

class Input_UsersPreferencesSetInput {
  factory Input_UsersPreferencesSetInput({
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    Json? orderByPreferences,
  }) => Input_UsersPreferencesSetInput._({
    if (darkTheme != null) r'darkTheme': darkTheme,
    if (greatFeastTheme != null) r'greatFeastTheme': greatFeastTheme,
    if (lastHomeMode != null) r'lastHomeMode': lastHomeMode,
    if (orderByPreferences != null) r'orderByPreferences': orderByPreferences,
  });

  Input_UsersPreferencesSetInput._(this._$data);

  factory Input_UsersPreferencesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('darkTheme')) {
      final l$darkTheme = data['darkTheme'];
      result$data['darkTheme'] = (l$darkTheme as bool?);
    }
    if (data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = data['greatFeastTheme'];
      result$data['greatFeastTheme'] = (l$greatFeastTheme as bool?);
    }
    if (data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = data['lastHomeMode'];
      result$data['lastHomeMode'] = (l$lastHomeMode as String?);
    }
    if (data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = data['orderByPreferences'];
      result$data['orderByPreferences'] = (l$orderByPreferences as Json?);
    }
    return Input_UsersPreferencesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get darkTheme => (_$data['darkTheme'] as bool?);

  bool? get greatFeastTheme => (_$data['greatFeastTheme'] as bool?);

  String? get lastHomeMode => (_$data['lastHomeMode'] as String?);

  Json? get orderByPreferences => (_$data['orderByPreferences'] as Json?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('darkTheme')) {
      final l$darkTheme = darkTheme;
      result$data['darkTheme'] = l$darkTheme;
    }
    if (_$data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = greatFeastTheme;
      result$data['greatFeastTheme'] = l$greatFeastTheme;
    }
    if (_$data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = lastHomeMode;
      result$data['lastHomeMode'] = l$lastHomeMode;
    }
    if (_$data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = orderByPreferences;
      result$data['orderByPreferences'] = l$orderByPreferences;
    }
    return result$data;
  }

  CopyWith_Input_UsersPreferencesSetInput<Input_UsersPreferencesSetInput>
  get copyWith => CopyWith_Input_UsersPreferencesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesSetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$darkTheme = darkTheme;
    final lOther$darkTheme = other.darkTheme;
    if (_$data.containsKey('darkTheme') !=
        other._$data.containsKey('darkTheme')) {
      return false;
    }
    if (l$darkTheme != lOther$darkTheme) {
      return false;
    }
    final l$greatFeastTheme = greatFeastTheme;
    final lOther$greatFeastTheme = other.greatFeastTheme;
    if (_$data.containsKey('greatFeastTheme') !=
        other._$data.containsKey('greatFeastTheme')) {
      return false;
    }
    if (l$greatFeastTheme != lOther$greatFeastTheme) {
      return false;
    }
    final l$lastHomeMode = lastHomeMode;
    final lOther$lastHomeMode = other.lastHomeMode;
    if (_$data.containsKey('lastHomeMode') !=
        other._$data.containsKey('lastHomeMode')) {
      return false;
    }
    if (l$lastHomeMode != lOther$lastHomeMode) {
      return false;
    }
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (_$data.containsKey('orderByPreferences') !=
        other._$data.containsKey('orderByPreferences')) {
      return false;
    }
    if (l$orderByPreferences != lOther$orderByPreferences) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$darkTheme = darkTheme;
    final l$greatFeastTheme = greatFeastTheme;
    final l$lastHomeMode = lastHomeMode;
    final l$orderByPreferences = orderByPreferences;
    return Object.hashAll([
      _$data.containsKey('darkTheme') ? l$darkTheme : const {},
      _$data.containsKey('greatFeastTheme') ? l$greatFeastTheme : const {},
      _$data.containsKey('lastHomeMode') ? l$lastHomeMode : const {},
      _$data.containsKey('orderByPreferences')
          ? l$orderByPreferences
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersPreferencesSetInput<TRes> {
  factory CopyWith_Input_UsersPreferencesSetInput(
    Input_UsersPreferencesSetInput instance,
    TRes Function(Input_UsersPreferencesSetInput) then,
  ) = _CopyWithImpl_Input_UsersPreferencesSetInput;

  factory CopyWith_Input_UsersPreferencesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesSetInput;

  TRes call({
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    Json? orderByPreferences,
  });
}

class _CopyWithImpl_Input_UsersPreferencesSetInput<TRes>
    implements CopyWith_Input_UsersPreferencesSetInput<TRes> {
  _CopyWithImpl_Input_UsersPreferencesSetInput(this._instance, this._then);

  final Input_UsersPreferencesSetInput _instance;

  final TRes Function(Input_UsersPreferencesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? darkTheme = _undefined,
    Object? greatFeastTheme = _undefined,
    Object? lastHomeMode = _undefined,
    Object? orderByPreferences = _undefined,
  }) => _then(
    Input_UsersPreferencesSetInput._({
      ..._instance._$data,
      if (darkTheme != _undefined) 'darkTheme': (darkTheme as bool?),
      if (greatFeastTheme != _undefined)
        'greatFeastTheme': (greatFeastTheme as bool?),
      if (lastHomeMode != _undefined) 'lastHomeMode': (lastHomeMode as String?),
      if (orderByPreferences != _undefined)
        'orderByPreferences': (orderByPreferences as Json?),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersPreferencesSetInput<TRes>
    implements CopyWith_Input_UsersPreferencesSetInput<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesSetInput(this._res);

  TRes _res;

  call({
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    Json? orderByPreferences,
  }) => _res;
}

class Input_UsersPreferencesStreamCursorInput {
  factory Input_UsersPreferencesStreamCursorInput({
    required Input_UsersPreferencesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_UsersPreferencesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_UsersPreferencesStreamCursorInput._(this._$data);

  factory Input_UsersPreferencesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_UsersPreferencesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_UsersPreferencesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_UsersPreferencesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_UsersPreferencesStreamCursorValueInput);

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

  CopyWith_Input_UsersPreferencesStreamCursorInput<
    Input_UsersPreferencesStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_UsersPreferencesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesStreamCursorInput ||
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

abstract class CopyWith_Input_UsersPreferencesStreamCursorInput<TRes> {
  factory CopyWith_Input_UsersPreferencesStreamCursorInput(
    Input_UsersPreferencesStreamCursorInput instance,
    TRes Function(Input_UsersPreferencesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_UsersPreferencesStreamCursorInput;

  factory CopyWith_Input_UsersPreferencesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesStreamCursorInput;

  TRes call({
    Input_UsersPreferencesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_UsersPreferencesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_UsersPreferencesStreamCursorInput<TRes>
    implements CopyWith_Input_UsersPreferencesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_UsersPreferencesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_UsersPreferencesStreamCursorInput _instance;

  final TRes Function(Input_UsersPreferencesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_UsersPreferencesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_UsersPreferencesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_UsersPreferencesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_UsersPreferencesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_UsersPreferencesStreamCursorInput<TRes>
    implements CopyWith_Input_UsersPreferencesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_UsersPreferencesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_UsersPreferencesStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_UsersPreferencesStreamCursorValueInput.stub(_res);
}

class Input_UsersPreferencesStreamCursorValueInput {
  factory Input_UsersPreferencesStreamCursorValueInput({
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    Json? orderByPreferences,
    UuidValue? uid,
    DateTime? updatedAt,
  }) => Input_UsersPreferencesStreamCursorValueInput._({
    if (darkTheme != null) r'darkTheme': darkTheme,
    if (greatFeastTheme != null) r'greatFeastTheme': greatFeastTheme,
    if (lastHomeMode != null) r'lastHomeMode': lastHomeMode,
    if (orderByPreferences != null) r'orderByPreferences': orderByPreferences,
    if (uid != null) r'uid': uid,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input_UsersPreferencesStreamCursorValueInput._(this._$data);

  factory Input_UsersPreferencesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('darkTheme')) {
      final l$darkTheme = data['darkTheme'];
      result$data['darkTheme'] = (l$darkTheme as bool?);
    }
    if (data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = data['greatFeastTheme'];
      result$data['greatFeastTheme'] = (l$greatFeastTheme as bool?);
    }
    if (data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = data['lastHomeMode'];
      result$data['lastHomeMode'] = (l$lastHomeMode as String?);
    }
    if (data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = data['orderByPreferences'];
      result$data['orderByPreferences'] = (l$orderByPreferences as Json?);
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null ? null : stringToUuid(l$uid);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : tstzFromString(l$updatedAt);
    }
    return Input_UsersPreferencesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get darkTheme => (_$data['darkTheme'] as bool?);

  bool? get greatFeastTheme => (_$data['greatFeastTheme'] as bool?);

  String? get lastHomeMode => (_$data['lastHomeMode'] as String?);

  Json? get orderByPreferences => (_$data['orderByPreferences'] as Json?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('darkTheme')) {
      final l$darkTheme = darkTheme;
      result$data['darkTheme'] = l$darkTheme;
    }
    if (_$data.containsKey('greatFeastTheme')) {
      final l$greatFeastTheme = greatFeastTheme;
      result$data['greatFeastTheme'] = l$greatFeastTheme;
    }
    if (_$data.containsKey('lastHomeMode')) {
      final l$lastHomeMode = lastHomeMode;
      result$data['lastHomeMode'] = l$lastHomeMode;
    }
    if (_$data.containsKey('orderByPreferences')) {
      final l$orderByPreferences = orderByPreferences;
      result$data['orderByPreferences'] = l$orderByPreferences;
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid == null ? null : uuidToString(l$uid);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : tstzToString(l$updatedAt);
    }
    return result$data;
  }

  CopyWith_Input_UsersPreferencesStreamCursorValueInput<
    Input_UsersPreferencesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_UsersPreferencesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$darkTheme = darkTheme;
    final lOther$darkTheme = other.darkTheme;
    if (_$data.containsKey('darkTheme') !=
        other._$data.containsKey('darkTheme')) {
      return false;
    }
    if (l$darkTheme != lOther$darkTheme) {
      return false;
    }
    final l$greatFeastTheme = greatFeastTheme;
    final lOther$greatFeastTheme = other.greatFeastTheme;
    if (_$data.containsKey('greatFeastTheme') !=
        other._$data.containsKey('greatFeastTheme')) {
      return false;
    }
    if (l$greatFeastTheme != lOther$greatFeastTheme) {
      return false;
    }
    final l$lastHomeMode = lastHomeMode;
    final lOther$lastHomeMode = other.lastHomeMode;
    if (_$data.containsKey('lastHomeMode') !=
        other._$data.containsKey('lastHomeMode')) {
      return false;
    }
    if (l$lastHomeMode != lOther$lastHomeMode) {
      return false;
    }
    final l$orderByPreferences = orderByPreferences;
    final lOther$orderByPreferences = other.orderByPreferences;
    if (_$data.containsKey('orderByPreferences') !=
        other._$data.containsKey('orderByPreferences')) {
      return false;
    }
    if (l$orderByPreferences != lOther$orderByPreferences) {
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
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$darkTheme = darkTheme;
    final l$greatFeastTheme = greatFeastTheme;
    final l$lastHomeMode = lastHomeMode;
    final l$orderByPreferences = orderByPreferences;
    final l$uid = uid;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('darkTheme') ? l$darkTheme : const {},
      _$data.containsKey('greatFeastTheme') ? l$greatFeastTheme : const {},
      _$data.containsKey('lastHomeMode') ? l$lastHomeMode : const {},
      _$data.containsKey('orderByPreferences')
          ? l$orderByPreferences
          : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_UsersPreferencesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_UsersPreferencesStreamCursorValueInput(
    Input_UsersPreferencesStreamCursorValueInput instance,
    TRes Function(Input_UsersPreferencesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_UsersPreferencesStreamCursorValueInput;

  factory CopyWith_Input_UsersPreferencesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesStreamCursorValueInput;

  TRes call({
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    Json? orderByPreferences,
    UuidValue? uid,
    DateTime? updatedAt,
  });
}

class _CopyWithImpl_Input_UsersPreferencesStreamCursorValueInput<TRes>
    implements CopyWith_Input_UsersPreferencesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_UsersPreferencesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_UsersPreferencesStreamCursorValueInput _instance;

  final TRes Function(Input_UsersPreferencesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? darkTheme = _undefined,
    Object? greatFeastTheme = _undefined,
    Object? lastHomeMode = _undefined,
    Object? orderByPreferences = _undefined,
    Object? uid = _undefined,
    Object? updatedAt = _undefined,
  }) => _then(
    Input_UsersPreferencesStreamCursorValueInput._({
      ..._instance._$data,
      if (darkTheme != _undefined) 'darkTheme': (darkTheme as bool?),
      if (greatFeastTheme != _undefined)
        'greatFeastTheme': (greatFeastTheme as bool?),
      if (lastHomeMode != _undefined) 'lastHomeMode': (lastHomeMode as String?),
      if (orderByPreferences != _undefined)
        'orderByPreferences': (orderByPreferences as Json?),
      if (uid != _undefined) 'uid': (uid as UuidValue?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_UsersPreferencesStreamCursorValueInput<TRes>
    implements CopyWith_Input_UsersPreferencesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesStreamCursorValueInput(this._res);

  TRes _res;

  call({
    bool? darkTheme,
    bool? greatFeastTheme,
    String? lastHomeMode,
    Json? orderByPreferences,
    UuidValue? uid,
    DateTime? updatedAt,
  }) => _res;
}

class Input_UsersPreferencesUpdates {
  factory Input_UsersPreferencesUpdates({
    Input_UsersPreferencesAppendInput? $_append,
    Input_UsersPreferencesDeleteAtPathInput? $_deleteAtPath,
    Input_UsersPreferencesDeleteElemInput? $_deleteElem,
    Input_UsersPreferencesDeleteKeyInput? $_deleteKey,
    Input_UsersPreferencesPrependInput? $_prepend,
    Input_UsersPreferencesSetInput? $_set,
    required Input_UsersPreferencesBoolExp where,
  }) => Input_UsersPreferencesUpdates._({
    if ($_append != null) r'_append': $_append,
    if ($_deleteAtPath != null) r'_deleteAtPath': $_deleteAtPath,
    if ($_deleteElem != null) r'_deleteElem': $_deleteElem,
    if ($_deleteKey != null) r'_deleteKey': $_deleteKey,
    if ($_prepend != null) r'_prepend': $_prepend,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_UsersPreferencesUpdates._(this._$data);

  factory Input_UsersPreferencesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_append')) {
      final l$$_append = data['_append'];
      result$data['_append'] = l$$_append == null
          ? null
          : Input_UsersPreferencesAppendInput.fromJson(
              (l$$_append as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_deleteAtPath')) {
      final l$$_deleteAtPath = data['_deleteAtPath'];
      result$data['_deleteAtPath'] = l$$_deleteAtPath == null
          ? null
          : Input_UsersPreferencesDeleteAtPathInput.fromJson(
              (l$$_deleteAtPath as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_deleteElem')) {
      final l$$_deleteElem = data['_deleteElem'];
      result$data['_deleteElem'] = l$$_deleteElem == null
          ? null
          : Input_UsersPreferencesDeleteElemInput.fromJson(
              (l$$_deleteElem as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_deleteKey')) {
      final l$$_deleteKey = data['_deleteKey'];
      result$data['_deleteKey'] = l$$_deleteKey == null
          ? null
          : Input_UsersPreferencesDeleteKeyInput.fromJson(
              (l$$_deleteKey as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_prepend')) {
      final l$$_prepend = data['_prepend'];
      result$data['_prepend'] = l$$_prepend == null
          ? null
          : Input_UsersPreferencesPrependInput.fromJson(
              (l$$_prepend as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_UsersPreferencesSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_UsersPreferencesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_UsersPreferencesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_UsersPreferencesAppendInput? get $_append =>
      (_$data['_append'] as Input_UsersPreferencesAppendInput?);

  Input_UsersPreferencesDeleteAtPathInput? get $_deleteAtPath =>
      (_$data['_deleteAtPath'] as Input_UsersPreferencesDeleteAtPathInput?);

  Input_UsersPreferencesDeleteElemInput? get $_deleteElem =>
      (_$data['_deleteElem'] as Input_UsersPreferencesDeleteElemInput?);

  Input_UsersPreferencesDeleteKeyInput? get $_deleteKey =>
      (_$data['_deleteKey'] as Input_UsersPreferencesDeleteKeyInput?);

  Input_UsersPreferencesPrependInput? get $_prepend =>
      (_$data['_prepend'] as Input_UsersPreferencesPrependInput?);

  Input_UsersPreferencesSetInput? get $_set =>
      (_$data['_set'] as Input_UsersPreferencesSetInput?);

  Input_UsersPreferencesBoolExp get where =>
      (_$data['where'] as Input_UsersPreferencesBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_append')) {
      final l$$_append = $_append;
      result$data['_append'] = l$$_append?.toJson();
    }
    if (_$data.containsKey('_deleteAtPath')) {
      final l$$_deleteAtPath = $_deleteAtPath;
      result$data['_deleteAtPath'] = l$$_deleteAtPath?.toJson();
    }
    if (_$data.containsKey('_deleteElem')) {
      final l$$_deleteElem = $_deleteElem;
      result$data['_deleteElem'] = l$$_deleteElem?.toJson();
    }
    if (_$data.containsKey('_deleteKey')) {
      final l$$_deleteKey = $_deleteKey;
      result$data['_deleteKey'] = l$$_deleteKey?.toJson();
    }
    if (_$data.containsKey('_prepend')) {
      final l$$_prepend = $_prepend;
      result$data['_prepend'] = l$$_prepend?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_UsersPreferencesUpdates<Input_UsersPreferencesUpdates>
  get copyWith => CopyWith_Input_UsersPreferencesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UsersPreferencesUpdates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_append = $_append;
    final lOther$$_append = other.$_append;
    if (_$data.containsKey('_append') != other._$data.containsKey('_append')) {
      return false;
    }
    if (l$$_append != lOther$$_append) {
      return false;
    }
    final l$$_deleteAtPath = $_deleteAtPath;
    final lOther$$_deleteAtPath = other.$_deleteAtPath;
    if (_$data.containsKey('_deleteAtPath') !=
        other._$data.containsKey('_deleteAtPath')) {
      return false;
    }
    if (l$$_deleteAtPath != lOther$$_deleteAtPath) {
      return false;
    }
    final l$$_deleteElem = $_deleteElem;
    final lOther$$_deleteElem = other.$_deleteElem;
    if (_$data.containsKey('_deleteElem') !=
        other._$data.containsKey('_deleteElem')) {
      return false;
    }
    if (l$$_deleteElem != lOther$$_deleteElem) {
      return false;
    }
    final l$$_deleteKey = $_deleteKey;
    final lOther$$_deleteKey = other.$_deleteKey;
    if (_$data.containsKey('_deleteKey') !=
        other._$data.containsKey('_deleteKey')) {
      return false;
    }
    if (l$$_deleteKey != lOther$$_deleteKey) {
      return false;
    }
    final l$$_prepend = $_prepend;
    final lOther$$_prepend = other.$_prepend;
    if (_$data.containsKey('_prepend') !=
        other._$data.containsKey('_prepend')) {
      return false;
    }
    if (l$$_prepend != lOther$$_prepend) {
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
    final l$$_append = $_append;
    final l$$_deleteAtPath = $_deleteAtPath;
    final l$$_deleteElem = $_deleteElem;
    final l$$_deleteKey = $_deleteKey;
    final l$$_prepend = $_prepend;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_append') ? l$$_append : const {},
      _$data.containsKey('_deleteAtPath') ? l$$_deleteAtPath : const {},
      _$data.containsKey('_deleteElem') ? l$$_deleteElem : const {},
      _$data.containsKey('_deleteKey') ? l$$_deleteKey : const {},
      _$data.containsKey('_prepend') ? l$$_prepend : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}
