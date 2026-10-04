// Part 64 of the schema
part of "schema.graphql.dart";

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

abstract class CopyWith_Input_UsersPreferencesUpdates<TRes> {
  factory CopyWith_Input_UsersPreferencesUpdates(
    Input_UsersPreferencesUpdates instance,
    TRes Function(Input_UsersPreferencesUpdates) then,
  ) = _CopyWithImpl_Input_UsersPreferencesUpdates;

  factory CopyWith_Input_UsersPreferencesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_UsersPreferencesUpdates;

  TRes call({
    Input_UsersPreferencesAppendInput? $_append,
    Input_UsersPreferencesDeleteAtPathInput? $_deleteAtPath,
    Input_UsersPreferencesDeleteElemInput? $_deleteElem,
    Input_UsersPreferencesDeleteKeyInput? $_deleteKey,
    Input_UsersPreferencesPrependInput? $_prepend,
    Input_UsersPreferencesSetInput? $_set,
    Input_UsersPreferencesBoolExp? where,
  });
  CopyWith_Input_UsersPreferencesAppendInput<TRes> get $_append;
  CopyWith_Input_UsersPreferencesDeleteAtPathInput<TRes> get $_deleteAtPath;
  CopyWith_Input_UsersPreferencesDeleteElemInput<TRes> get $_deleteElem;
  CopyWith_Input_UsersPreferencesDeleteKeyInput<TRes> get $_deleteKey;
  CopyWith_Input_UsersPreferencesPrependInput<TRes> get $_prepend;
  CopyWith_Input_UsersPreferencesSetInput<TRes> get $_set;
  CopyWith_Input_UsersPreferencesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_UsersPreferencesUpdates<TRes>
    implements CopyWith_Input_UsersPreferencesUpdates<TRes> {
  _CopyWithImpl_Input_UsersPreferencesUpdates(this._instance, this._then);

  final Input_UsersPreferencesUpdates _instance;

  final TRes Function(Input_UsersPreferencesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_append = _undefined,
    Object? $_deleteAtPath = _undefined,
    Object? $_deleteElem = _undefined,
    Object? $_deleteKey = _undefined,
    Object? $_prepend = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_UsersPreferencesUpdates._({
      ..._instance._$data,
      if ($_append != _undefined)
        '_append': ($_append as Input_UsersPreferencesAppendInput?),
      if ($_deleteAtPath != _undefined)
        '_deleteAtPath':
            ($_deleteAtPath as Input_UsersPreferencesDeleteAtPathInput?),
      if ($_deleteElem != _undefined)
        '_deleteElem': ($_deleteElem as Input_UsersPreferencesDeleteElemInput?),
      if ($_deleteKey != _undefined)
        '_deleteKey': ($_deleteKey as Input_UsersPreferencesDeleteKeyInput?),
      if ($_prepend != _undefined)
        '_prepend': ($_prepend as Input_UsersPreferencesPrependInput?),
      if ($_set != _undefined)
        '_set': ($_set as Input_UsersPreferencesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_UsersPreferencesBoolExp),
    }),
  );

  CopyWith_Input_UsersPreferencesAppendInput<TRes> get $_append {
    final local$$_append = _instance.$_append;
    return local$$_append == null
        ? CopyWith_Input_UsersPreferencesAppendInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesAppendInput(
            local$$_append,
            (e) => call($_append: e),
          );
  }

  CopyWith_Input_UsersPreferencesDeleteAtPathInput<TRes> get $_deleteAtPath {
    final local$$_deleteAtPath = _instance.$_deleteAtPath;
    return local$$_deleteAtPath == null
        ? CopyWith_Input_UsersPreferencesDeleteAtPathInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_UsersPreferencesDeleteAtPathInput(
            local$$_deleteAtPath,
            (e) => call($_deleteAtPath: e),
          );
  }

  CopyWith_Input_UsersPreferencesDeleteElemInput<TRes> get $_deleteElem {
    final local$$_deleteElem = _instance.$_deleteElem;
    return local$$_deleteElem == null
        ? CopyWith_Input_UsersPreferencesDeleteElemInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesDeleteElemInput(
            local$$_deleteElem,
            (e) => call($_deleteElem: e),
          );
  }

  CopyWith_Input_UsersPreferencesDeleteKeyInput<TRes> get $_deleteKey {
    final local$$_deleteKey = _instance.$_deleteKey;
    return local$$_deleteKey == null
        ? CopyWith_Input_UsersPreferencesDeleteKeyInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesDeleteKeyInput(
            local$$_deleteKey,
            (e) => call($_deleteKey: e),
          );
  }

  CopyWith_Input_UsersPreferencesPrependInput<TRes> get $_prepend {
    final local$$_prepend = _instance.$_prepend;
    return local$$_prepend == null
        ? CopyWith_Input_UsersPreferencesPrependInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesPrependInput(
            local$$_prepend,
            (e) => call($_prepend: e),
          );
  }

  CopyWith_Input_UsersPreferencesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_UsersPreferencesSetInput.stub(_then(_instance))
        : CopyWith_Input_UsersPreferencesSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_UsersPreferencesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_UsersPreferencesBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_UsersPreferencesUpdates<TRes>
    implements CopyWith_Input_UsersPreferencesUpdates<TRes> {
  _CopyWithStubImpl_Input_UsersPreferencesUpdates(this._res);

  TRes _res;

  call({
    Input_UsersPreferencesAppendInput? $_append,
    Input_UsersPreferencesDeleteAtPathInput? $_deleteAtPath,
    Input_UsersPreferencesDeleteElemInput? $_deleteElem,
    Input_UsersPreferencesDeleteKeyInput? $_deleteKey,
    Input_UsersPreferencesPrependInput? $_prepend,
    Input_UsersPreferencesSetInput? $_set,
    Input_UsersPreferencesBoolExp? where,
  }) => _res;

  CopyWith_Input_UsersPreferencesAppendInput<TRes> get $_append =>
      CopyWith_Input_UsersPreferencesAppendInput.stub(_res);

  CopyWith_Input_UsersPreferencesDeleteAtPathInput<TRes> get $_deleteAtPath =>
      CopyWith_Input_UsersPreferencesDeleteAtPathInput.stub(_res);

  CopyWith_Input_UsersPreferencesDeleteElemInput<TRes> get $_deleteElem =>
      CopyWith_Input_UsersPreferencesDeleteElemInput.stub(_res);

  CopyWith_Input_UsersPreferencesDeleteKeyInput<TRes> get $_deleteKey =>
      CopyWith_Input_UsersPreferencesDeleteKeyInput.stub(_res);

  CopyWith_Input_UsersPreferencesPrependInput<TRes> get $_prepend =>
      CopyWith_Input_UsersPreferencesPrependInput.stub(_res);

  CopyWith_Input_UsersPreferencesSetInput<TRes> get $_set =>
      CopyWith_Input_UsersPreferencesSetInput.stub(_res);

  CopyWith_Input_UsersPreferencesBoolExp<TRes> get where =>
      CopyWith_Input_UsersPreferencesBoolExp.stub(_res);
}

class Input_UuidComparisonExp {
  factory Input_UuidComparisonExp({
    UuidValue? $_eq,
    UuidValue? $_gt,
    UuidValue? $_gte,
    List<UuidValue>? $_in,
    bool? $_isNull,
    UuidValue? $_lt,
    UuidValue? $_lte,
    UuidValue? $_neq,
    List<UuidValue>? $_nin,
  }) => Input_UuidComparisonExp._({
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_in != null) r'_in': $_in,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nin != null) r'_nin': $_nin,
  });

  Input_UuidComparisonExp._(this._$data);

  factory Input_UuidComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = l$$_eq == null ? null : stringToUuid(l$$_eq);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = l$$_gt == null ? null : stringToUuid(l$$_gt);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = l$$_gte == null ? null : stringToUuid(l$$_gte);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = l$$_lt == null ? null : stringToUuid(l$$_lt);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = l$$_lte == null ? null : stringToUuid(l$$_lte);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = l$$_neq == null ? null : stringToUuid(l$$_neq);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => stringToUuid(e))
          .toList();
    }
    return Input_UuidComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get $_eq => (_$data['_eq'] as UuidValue?);

  UuidValue? get $_gt => (_$data['_gt'] as UuidValue?);

  UuidValue? get $_gte => (_$data['_gte'] as UuidValue?);

  List<UuidValue>? get $_in => (_$data['_in'] as List<UuidValue>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  UuidValue? get $_lt => (_$data['_lt'] as UuidValue?);

  UuidValue? get $_lte => (_$data['_lte'] as UuidValue?);

  UuidValue? get $_neq => (_$data['_neq'] as UuidValue?);

  List<UuidValue>? get $_nin => (_$data['_nin'] as List<UuidValue>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq == null ? null : uuidToString(l$$_eq);
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt == null ? null : uuidToString(l$$_gt);
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte == null ? null : uuidToString(l$$_gte);
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => uuidToString(e)).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt == null ? null : uuidToString(l$$_lt);
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte == null ? null : uuidToString(l$$_lte);
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq == null ? null : uuidToString(l$$_neq);
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => uuidToString(e)).toList();
    }
    return result$data;
  }

  CopyWith_Input_UuidComparisonExp<Input_UuidComparisonExp> get copyWith =>
      CopyWith_Input_UuidComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UuidComparisonExp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_isNull = $_isNull;
    final lOther$$_isNull = other.$_isNull;
    if (_$data.containsKey('_isNull') != other._$data.containsKey('_isNull')) {
      return false;
    }
    if (l$$_isNull != lOther$$_isNull) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_isNull = $_isNull;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
                ? null
                : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_isNull') ? l$$_isNull : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
                ? null
                : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_UuidComparisonExp<TRes> {
  factory CopyWith_Input_UuidComparisonExp(
    Input_UuidComparisonExp instance,
    TRes Function(Input_UuidComparisonExp) then,
  ) = _CopyWithImpl_Input_UuidComparisonExp;

  factory CopyWith_Input_UuidComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_UuidComparisonExp;

  TRes call({
    UuidValue? $_eq,
    UuidValue? $_gt,
    UuidValue? $_gte,
    List<UuidValue>? $_in,
    bool? $_isNull,
    UuidValue? $_lt,
    UuidValue? $_lte,
    UuidValue? $_neq,
    List<UuidValue>? $_nin,
  });
}

class _CopyWithImpl_Input_UuidComparisonExp<TRes>
    implements CopyWith_Input_UuidComparisonExp<TRes> {
  _CopyWithImpl_Input_UuidComparisonExp(this._instance, this._then);

  final Input_UuidComparisonExp _instance;

  final TRes Function(Input_UuidComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_isNull = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) => _then(
    Input_UuidComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as UuidValue?),
      if ($_gt != _undefined) '_gt': ($_gt as UuidValue?),
      if ($_gte != _undefined) '_gte': ($_gte as UuidValue?),
      if ($_in != _undefined) '_in': ($_in as List<UuidValue>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as UuidValue?),
      if ($_lte != _undefined) '_lte': ($_lte as UuidValue?),
      if ($_neq != _undefined) '_neq': ($_neq as UuidValue?),
      if ($_nin != _undefined) '_nin': ($_nin as List<UuidValue>?),
    }),
  );
}

class _CopyWithStubImpl_Input_UuidComparisonExp<TRes>
    implements CopyWith_Input_UuidComparisonExp<TRes> {
  _CopyWithStubImpl_Input_UuidComparisonExp(this._res);

  TRes _res;

  call({
    UuidValue? $_eq,
    UuidValue? $_gt,
    UuidValue? $_gte,
    List<UuidValue>? $_in,
    bool? $_isNull,
    UuidValue? $_lt,
    UuidValue? $_lte,
    UuidValue? $_neq,
    List<UuidValue>? $_nin,
  }) => _res;
}

class Input_classesAggregateBoolExpBool_and {
  factory Input_classesAggregateBoolExpBool_and({
    required Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_classesAggregateBoolExpBool_and._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_classesAggregateBoolExpBool_and._(this._$data);

  factory Input_classesAggregateBoolExpBool_and.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_classesAggregateBoolExpBool_and._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_ClassesBoolExp? get filter =>
      (_$data['filter'] as Input_ClassesBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_classesAggregateBoolExpBool_and<
    Input_classesAggregateBoolExpBool_and
  >
  get copyWith =>
      CopyWith_Input_classesAggregateBoolExpBool_and(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_classesAggregateBoolExpBool_and ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_classesAggregateBoolExpBool_and<TRes> {
  factory CopyWith_Input_classesAggregateBoolExpBool_and(
    Input_classesAggregateBoolExpBool_and instance,
    TRes Function(Input_classesAggregateBoolExpBool_and) then,
  ) = _CopyWithImpl_Input_classesAggregateBoolExpBool_and;

  factory CopyWith_Input_classesAggregateBoolExpBool_and.stub(TRes res) =
      _CopyWithStubImpl_Input_classesAggregateBoolExpBool_and;

  TRes call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_ClassesBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_classesAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_and<TRes> {
  _CopyWithImpl_Input_classesAggregateBoolExpBool_and(
    this._instance,
    this._then,
  );

  final Input_classesAggregateBoolExpBool_and _instance;

  final TRes Function(Input_classesAggregateBoolExpBool_and) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_classesAggregateBoolExpBool_and._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_ClassesBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_classesAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_and<TRes> {
  _CopyWithStubImpl_Input_classesAggregateBoolExpBool_and(this._res);

  TRes _res;

  call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get filter =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_classesAggregateBoolExpBool_or {
  factory Input_classesAggregateBoolExpBool_or({
    required Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_classesAggregateBoolExpBool_or._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_classesAggregateBoolExpBool_or._(this._$data);

  factory Input_classesAggregateBoolExpBool_or.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_classesAggregateBoolExpBool_or._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_ClassesBoolExp? get filter =>
      (_$data['filter'] as Input_ClassesBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_classesAggregateBoolExpBool_or<
    Input_classesAggregateBoolExpBool_or
  >
  get copyWith => CopyWith_Input_classesAggregateBoolExpBool_or(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_classesAggregateBoolExpBool_or ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_classesAggregateBoolExpBool_or<TRes> {
  factory CopyWith_Input_classesAggregateBoolExpBool_or(
    Input_classesAggregateBoolExpBool_or instance,
    TRes Function(Input_classesAggregateBoolExpBool_or) then,
  ) = _CopyWithImpl_Input_classesAggregateBoolExpBool_or;

  factory CopyWith_Input_classesAggregateBoolExpBool_or.stub(TRes res) =
      _CopyWithStubImpl_Input_classesAggregateBoolExpBool_or;

  TRes call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_ClassesBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_classesAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_or<TRes> {
  _CopyWithImpl_Input_classesAggregateBoolExpBool_or(
    this._instance,
    this._then,
  );

  final Input_classesAggregateBoolExpBool_or _instance;

  final TRes Function(Input_classesAggregateBoolExpBool_or) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_classesAggregateBoolExpBool_or._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_ClassesBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_classesAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_classesAggregateBoolExpBool_or<TRes> {
  _CopyWithStubImpl_Input_classesAggregateBoolExpBool_or(this._res);

  TRes _res;

  call({
    Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get filter =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_classesAggregateBoolExpCount {
  factory Input_classesAggregateBoolExpCount({
    List<Enum_ClassesSelectColumn>? arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_classesAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_classesAggregateBoolExpCount._(this._$data);

  factory Input_classesAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson_Enum_ClassesSelectColumn((e as String)))
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_classesAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_ClassesSelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_ClassesSelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_ClassesBoolExp? get filter =>
      (_$data['filter'] as Input_ClassesBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_ClassesSelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_classesAggregateBoolExpCount<
    Input_classesAggregateBoolExpCount
  >
  get copyWith => CopyWith_Input_classesAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_classesAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_classesAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_classesAggregateBoolExpCount(
    Input_classesAggregateBoolExpCount instance,
    TRes Function(Input_classesAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_classesAggregateBoolExpCount;

  factory CopyWith_Input_classesAggregateBoolExpCount.stub(TRes res) =
      _CopyWithStubImpl_Input_classesAggregateBoolExpCount;

  TRes call({
    List<Enum_ClassesSelectColumn>? arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_ClassesBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_classesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_classesAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_classesAggregateBoolExpCount(this._instance, this._then);

  final Input_classesAggregateBoolExpCount _instance;

  final TRes Function(Input_classesAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_classesAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_ClassesSelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_ClassesBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_classesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_classesAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_classesAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_ClassesSelectColumn>? arguments,
    bool? distinct,
    Input_ClassesBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get filter =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_groupsAggregateBoolExpCount {
  factory Input_groupsAggregateBoolExpCount({
    List<Enum_GroupsSelectColumn>? arguments,
    bool? distinct,
    Input_GroupsBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_groupsAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_groupsAggregateBoolExpCount._(this._$data);

  factory Input_groupsAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson_Enum_GroupsSelectColumn((e as String)))
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_groupsAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_GroupsSelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_GroupsSelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_GroupsBoolExp? get filter => (_$data['filter'] as Input_GroupsBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_GroupsSelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_groupsAggregateBoolExpCount<Input_groupsAggregateBoolExpCount>
  get copyWith => CopyWith_Input_groupsAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_groupsAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_groupsAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_groupsAggregateBoolExpCount(
    Input_groupsAggregateBoolExpCount instance,
    TRes Function(Input_groupsAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_groupsAggregateBoolExpCount;

  factory CopyWith_Input_groupsAggregateBoolExpCount.stub(TRes res) =
      _CopyWithStubImpl_Input_groupsAggregateBoolExpCount;

  TRes call({
    List<Enum_GroupsSelectColumn>? arguments,
    bool? distinct,
    Input_GroupsBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_GroupsBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}
