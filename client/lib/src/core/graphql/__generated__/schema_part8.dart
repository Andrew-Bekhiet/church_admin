// Part 8 of the schema
part of "schema.graphql.dart";

class _CopyWithImpl_Input_AuthUsersAdminOnStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnStreamCursorValueInput _instance;

  final TRes Function(Input_AuthUsersAdminOnStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOnArea = _undefined,
    Object? adminOnGroup = _undefined,
    Object? adminOnService = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAllowExport = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAllowExport = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? permissionId = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersAdminOnStreamCursorValueInput._({
      ..._instance._$data,
      if (adminOnArea != _undefined) 'adminOnArea': (adminOnArea as UuidValue?),
      if (adminOnGroup != _undefined)
        'adminOnGroup': (adminOnGroup as UuidValue?),
      if (adminOnService != _undefined)
        'adminOnService': (adminOnService as UuidValue?),
      if (areaAdminOnUsers != _undefined)
        'areaAdminOnUsers': (areaAdminOnUsers as bool?),
      if (areaAllowEdit != _undefined)
        'areaAllowEdit': (areaAllowEdit as bool?),
      if (areaAllowExport != _undefined)
        'areaAllowExport': (areaAllowExport as bool?),
      if (groupAdminOnUsers != _undefined)
        'groupAdminOnUsers': (groupAdminOnUsers as bool?),
      if (groupAllowEdit != _undefined)
        'groupAllowEdit': (groupAllowEdit as bool?),
      if (groupAllowExport != _undefined)
        'groupAllowExport': (groupAllowExport as bool?),
      if (groupWriteRelatedFamilies != _undefined)
        'groupWriteRelatedFamilies': (groupWriteRelatedFamilies as bool?),
      if (permissionId != _undefined)
        'permissionId': (permissionId as UuidValue?),
      if (serviceAdminOnUsers != _undefined)
        'serviceAdminOnUsers': (serviceAdminOnUsers as bool?),
      if (serviceAllowEdit != _undefined)
        'serviceAllowEdit': (serviceAllowEdit as bool?),
      if (serviceAllowExport != _undefined)
        'serviceAllowExport': (serviceAllowExport as bool?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
      if (serviceWriteRelatedFamilies != _undefined)
        'serviceWriteRelatedFamilies': (serviceWriteRelatedFamilies as bool?),
      if (uid != _undefined) 'uid': (uid as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthUsersAdminOnStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? adminOnArea,
    UuidValue? adminOnGroup,
    UuidValue? adminOnService,
    bool? areaAdminOnUsers,
    bool? areaAllowEdit,
    bool? areaAllowExport,
    bool? groupAdminOnUsers,
    bool? groupAllowEdit,
    bool? groupAllowExport,
    bool? groupWriteRelatedFamilies,
    UuidValue? permissionId,
    bool? serviceAdminOnUsers,
    bool? serviceAllowEdit,
    bool? serviceAllowExport,
    bool? serviceGender,
    int? serviceStudyYear,
    bool? serviceWriteRelatedFamilies,
    UuidValue? uid,
  }) => _res;
}

class Input_AuthUsersAdminOnSumOrderBy {
  factory Input_AuthUsersAdminOnSumOrderBy({Enum_OrderBy? serviceStudyYear}) =>
      Input_AuthUsersAdminOnSumOrderBy._({
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_AuthUsersAdminOnSumOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnSumOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnSumOrderBy._(result$data);
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

  CopyWith_Input_AuthUsersAdminOnSumOrderBy<Input_AuthUsersAdminOnSumOrderBy>
  get copyWith => CopyWith_Input_AuthUsersAdminOnSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnSumOrderBy ||
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

abstract class CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnSumOrderBy(
    Input_AuthUsersAdminOnSumOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnSumOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnSumOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnSumOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnSumOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnSumOrderBy(this._instance, this._then);

  final Input_AuthUsersAdminOnSumOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnSumOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnSumOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnVarPopOrderBy {
  factory Input_AuthUsersAdminOnVarPopOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_AuthUsersAdminOnVarPopOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_AuthUsersAdminOnVarPopOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnVarPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnVarPopOrderBy._(result$data);
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

  CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<
    Input_AuthUsersAdminOnVarPopOrderBy
  >
  get copyWith => CopyWith_Input_AuthUsersAdminOnVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnVarPopOrderBy ||
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

abstract class CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnVarPopOrderBy(
    Input_AuthUsersAdminOnVarPopOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnVarPopOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnVarPopOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnVarPopOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnVarPopOrderBy(this._instance, this._then);

  final Input_AuthUsersAdminOnVarPopOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnVarPopOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnVarPopOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnVarSampOrderBy {
  factory Input_AuthUsersAdminOnVarSampOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_AuthUsersAdminOnVarSampOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_AuthUsersAdminOnVarSampOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnVarSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnVarSampOrderBy._(result$data);
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

  CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<
    Input_AuthUsersAdminOnVarSampOrderBy
  >
  get copyWith => CopyWith_Input_AuthUsersAdminOnVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnVarSampOrderBy ||
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

abstract class CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnVarSampOrderBy(
    Input_AuthUsersAdminOnVarSampOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnVarSampOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnVarSampOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnVarSampOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnVarSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnVarSampOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnVarSampOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnVarSampOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersAdminOnVarianceOrderBy {
  factory Input_AuthUsersAdminOnVarianceOrderBy({
    Enum_OrderBy? serviceStudyYear,
  }) => Input_AuthUsersAdminOnVarianceOrderBy._({
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_AuthUsersAdminOnVarianceOrderBy._(this._$data);

  factory Input_AuthUsersAdminOnVarianceOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_AuthUsersAdminOnVarianceOrderBy._(result$data);
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

  CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<
    Input_AuthUsersAdminOnVarianceOrderBy
  >
  get copyWith =>
      CopyWith_Input_AuthUsersAdminOnVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersAdminOnVarianceOrderBy ||
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

abstract class CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> {
  factory CopyWith_Input_AuthUsersAdminOnVarianceOrderBy(
    Input_AuthUsersAdminOnVarianceOrderBy instance,
    TRes Function(Input_AuthUsersAdminOnVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_AuthUsersAdminOnVarianceOrderBy;

  factory CopyWith_Input_AuthUsersAdminOnVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersAdminOnVarianceOrderBy;

  TRes call({Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_AuthUsersAdminOnVarianceOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersAdminOnVarianceOrderBy(
    this._instance,
    this._then,
  );

  final Input_AuthUsersAdminOnVarianceOrderBy _instance;

  final TRes Function(Input_AuthUsersAdminOnVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? serviceStudyYear = _undefined}) => _then(
    Input_AuthUsersAdminOnVarianceOrderBy._({
      ..._instance._$data,
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AuthUsersAdminOnVarianceOrderBy<TRes>
    implements CopyWith_Input_AuthUsersAdminOnVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersAdminOnVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_AuthUsersDataBoolExp {
  factory Input_AuthUsersDataBoolExp({
    List<Input_AuthUsersDataBoolExp>? $_and,
    Input_AuthUsersDataBoolExp? $_not,
    List<Input_AuthUsersDataBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminOn,
    Input_StringComparisonExp? blurhash,
    Input_BooleanComparisonExp? currentUserCanManageThisUser,
    Input_StringComparisonExp? email,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_AuthUsersPermissionsBoolExp? permissions,
    Input_PersonsBoolExp? person,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_UuidComparisonExp? uid,
  }) => Input_AuthUsersDataBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminOn != null) r'adminOn': adminOn,
    if (blurhash != null) r'blurhash': blurhash,
    if (currentUserCanManageThisUser != null)
      r'currentUserCanManageThisUser': currentUserCanManageThisUser,
    if (email != null) r'email': email,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (permissions != null) r'permissions': permissions,
    if (person != null) r'person': person,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (uid != null) r'uid': uid,
  });

  Input_AuthUsersDataBoolExp._(this._$data);

  factory Input_AuthUsersDataBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_AuthUsersDataBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_AuthUsersDataBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('adminOn')) {
      final l$adminOn = data['adminOn'];
      result$data['adminOn'] = l$adminOn == null
          ? null
          : Input_AuthUsersAdminOnBoolExp.fromJson(
              (l$adminOn as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser =
          data['currentUserCanManageThisUser'];
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$currentUserCanManageThisUser as Map<String, dynamic>),
            );
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = l$email == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$email as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsBoolExp.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('permissions')) {
      final l$permissions = data['permissions'];
      result$data['permissions'] = l$permissions == null
          ? null
          : Input_AuthUsersPermissionsBoolExp.fromJson(
              (l$permissions as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$uid as Map<String, dynamic>));
    }
    return Input_AuthUsersDataBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AuthUsersDataBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_AuthUsersDataBoolExp>?);

  Input_AuthUsersDataBoolExp? get $_not =>
      (_$data['_not'] as Input_AuthUsersDataBoolExp?);

  List<Input_AuthUsersDataBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_AuthUsersDataBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get adminOn =>
      (_$data['adminOn'] as Input_AuthUsersAdminOnBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_BooleanComparisonExp? get currentUserCanManageThisUser =>
      (_$data['currentUserCanManageThisUser'] as Input_BooleanComparisonExp?);

  Input_StringComparisonExp? get email =>
      (_$data['email'] as Input_StringComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_AuthUsersPermissionsBoolExp? get permissions =>
      (_$data['permissions'] as Input_AuthUsersPermissionsBoolExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_UuidComparisonExp? get uid =>
      (_$data['uid'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('adminOn')) {
      final l$adminOn = adminOn;
      result$data['adminOn'] = l$adminOn?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('currentUserCanManageThisUser')) {
      final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
      result$data['currentUserCanManageThisUser'] =
          l$currentUserCanManageThisUser?.toJson();
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('permissions')) {
      final l$permissions = permissions;
      result$data['permissions'] = l$permissions?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
  get copyWith => CopyWith_Input_AuthUsersDataBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersDataBoolExp ||
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
    final l$adminOn = adminOn;
    final lOther$adminOn = other.adminOn;
    if (_$data.containsKey('adminOn') != other._$data.containsKey('adminOn')) {
      return false;
    }
    if (l$adminOn != lOther$adminOn) {
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
    final l$permissions = permissions;
    final lOther$permissions = other.permissions;
    if (_$data.containsKey('permissions') !=
        other._$data.containsKey('permissions')) {
      return false;
    }
    if (l$permissions != lOther$permissions) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$adminOn = adminOn;
    final l$blurhash = blurhash;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$email = email;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$permissions = permissions;
    final l$person = person;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$uid = uid;
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
      _$data.containsKey('adminOn') ? l$adminOn : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('currentUserCanManageThisUser')
          ? l$currentUserCanManageThisUser
          : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('permissions') ? l$permissions : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersDataBoolExp<TRes> {
  factory CopyWith_Input_AuthUsersDataBoolExp(
    Input_AuthUsersDataBoolExp instance,
    TRes Function(Input_AuthUsersDataBoolExp) then,
  ) = _CopyWithImpl_Input_AuthUsersDataBoolExp;

  factory CopyWith_Input_AuthUsersDataBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersDataBoolExp;

  TRes call({
    List<Input_AuthUsersDataBoolExp>? $_and,
    Input_AuthUsersDataBoolExp? $_not,
    List<Input_AuthUsersDataBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminOn,
    Input_StringComparisonExp? blurhash,
    Input_BooleanComparisonExp? currentUserCanManageThisUser,
    Input_StringComparisonExp? email,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_AuthUsersPermissionsBoolExp? permissions,
    Input_PersonsBoolExp? person,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_UuidComparisonExp? uid,
  });
  TRes $_and(
    Iterable<Input_AuthUsersDataBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_AuthUsersDataBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminOn;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_BooleanComparisonExp<TRes> get currentUserCanManageThisUser;
  CopyWith_Input_StringComparisonExp<TRes> get email;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> get permissions;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_UuidComparisonExp<TRes> get uid;
}

class _CopyWithImpl_Input_AuthUsersDataBoolExp<TRes>
    implements CopyWith_Input_AuthUsersDataBoolExp<TRes> {
  _CopyWithImpl_Input_AuthUsersDataBoolExp(this._instance, this._then);

  final Input_AuthUsersDataBoolExp _instance;

  final TRes Function(Input_AuthUsersDataBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? adminOn = _undefined,
    Object? blurhash = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? email = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? permissions = _undefined,
    Object? person = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersDataBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_AuthUsersDataBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_AuthUsersDataBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_AuthUsersDataBoolExp>?),
      if (adminOn != _undefined)
        'adminOn': (adminOn as Input_AuthUsersAdminOnBoolExp?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StringComparisonExp?),
      if (currentUserCanManageThisUser != _undefined)
        'currentUserCanManageThisUser':
            (currentUserCanManageThisUser as Input_BooleanComparisonExp?),
      if (email != _undefined) 'email': (email as Input_StringComparisonExp?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (permissions != _undefined)
        'permissions': (permissions as Input_AuthUsersPermissionsBoolExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
      if (uid != _undefined) 'uid': (uid as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_AuthUsersDataBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_AuthUsersDataBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_AuthUsersDataBoolExp>? Function(
      Iterable<
        CopyWith_Input_AuthUsersDataBoolExp<Input_AuthUsersDataBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_AuthUsersDataBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminOn {
    final local$adminOn = _instance.adminOn;
    return local$adminOn == null
        ? CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnBoolExp(
            local$adminOn,
            (e) => call(adminOn: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get currentUserCanManageThisUser {
    final local$currentUserCanManageThisUser =
        _instance.currentUserCanManageThisUser;
    return local$currentUserCanManageThisUser == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$currentUserCanManageThisUser,
            (e) => call(currentUserCanManageThisUser: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get email {
    final local$email = _instance.email;
    return local$email == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$email,
            (e) => call(email: e),
          );
  }

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsBoolExp(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> get permissions {
    final local$permissions = _instance.permissions;
    return local$permissions == null
        ? CopyWith_Input_AuthUsersPermissionsBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersPermissionsBoolExp(
            local$permissions,
            (e) => call(permissions: e),
          );
  }

  CopyWith_Input_PersonsBoolExp<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$person, (e) => call(person: e));
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$uid, (e) => call(uid: e));
  }
}

class _CopyWithStubImpl_Input_AuthUsersDataBoolExp<TRes>
    implements CopyWith_Input_AuthUsersDataBoolExp<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataBoolExp(this._res);

  TRes _res;

  call({
    List<Input_AuthUsersDataBoolExp>? $_and,
    Input_AuthUsersDataBoolExp? $_not,
    List<Input_AuthUsersDataBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminOn,
    Input_StringComparisonExp? blurhash,
    Input_BooleanComparisonExp? currentUserCanManageThisUser,
    Input_StringComparisonExp? email,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_AuthUsersPermissionsBoolExp? permissions,
    Input_PersonsBoolExp? person,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_UuidComparisonExp? uid,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get $_not =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminOn =>
      CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get currentUserCanManageThisUser =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get email =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersPermissionsBoolExp<TRes> get permissions =>
      CopyWith_Input_AuthUsersPermissionsBoolExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get uid =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_AuthUsersDataOrderBy {
  factory Input_AuthUsersDataOrderBy({
    Input_AuthUsersAdminOnAggregateOrderBy? adminOnAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? currentUserCanManageThisUser,
    Enum_OrderBy? email,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_AuthUsersPermissionsAggregateOrderBy? permissionsAggregate,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? uid,
  }) => Input_AuthUsersDataOrderBy._({
    if (adminOnAggregate != null) r'adminOnAggregate': adminOnAggregate,
    if (blurhash != null) r'blurhash': blurhash,
    if (currentUserCanManageThisUser != null)
      r'currentUserCanManageThisUser': currentUserCanManageThisUser,
    if (email != null) r'email': email,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (permissionsAggregate != null)
      r'permissionsAggregate': permissionsAggregate,
    if (person != null) r'person': person,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
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

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get currentUserCanManageThisUser =>
      (_$data['currentUserCanManageThisUser'] as Enum_OrderBy?);

  Enum_OrderBy? get email => (_$data['email'] as Enum_OrderBy?);

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

  Enum_OrderBy? get uid => (_$data['uid'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminOnAggregate')) {
      final l$adminOnAggregate = adminOnAggregate;
      result$data['adminOnAggregate'] = l$adminOnAggregate?.toJson();
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
    final l$blurhash = blurhash;
    final l$currentUserCanManageThisUser = currentUserCanManageThisUser;
    final l$email = email;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$permissionsAggregate = permissionsAggregate;
    final l$person = person;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('adminOnAggregate') ? l$adminOnAggregate : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('currentUserCanManageThisUser')
          ? l$currentUserCanManageThisUser
          : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('permissionsAggregate')
          ? l$permissionsAggregate
          : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
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
    Enum_OrderBy? blurhash,
    Enum_OrderBy? currentUserCanManageThisUser,
    Enum_OrderBy? email,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_AuthUsersPermissionsAggregateOrderBy? permissionsAggregate,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? uid,
  });
  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminOnAggregate;
  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit;
  CopyWith_Input_AuthUsersPermissionsAggregateOrderBy<TRes>
  get permissionsAggregate;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
}

class _CopyWithImpl_Input_AuthUsersDataOrderBy<TRes>
    implements CopyWith_Input_AuthUsersDataOrderBy<TRes> {
  _CopyWithImpl_Input_AuthUsersDataOrderBy(this._instance, this._then);

  final Input_AuthUsersDataOrderBy _instance;

  final TRes Function(Input_AuthUsersDataOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminOnAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? currentUserCanManageThisUser = _undefined,
    Object? email = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? permissionsAggregate = _undefined,
    Object? person = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersDataOrderBy._({
      ..._instance._$data,
      if (adminOnAggregate != _undefined)
        'adminOnAggregate':
            (adminOnAggregate as Input_AuthUsersAdminOnAggregateOrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (currentUserCanManageThisUser != _undefined)
        'currentUserCanManageThisUser':
            (currentUserCanManageThisUser as Enum_OrderBy?),
      if (email != _undefined) 'email': (email as Enum_OrderBy?),
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
}

class _CopyWithStubImpl_Input_AuthUsersDataOrderBy<TRes>
    implements CopyWith_Input_AuthUsersDataOrderBy<TRes> {
  _CopyWithStubImpl_Input_AuthUsersDataOrderBy(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnAggregateOrderBy? adminOnAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? currentUserCanManageThisUser,
    Enum_OrderBy? email,
    Input_HistoryLatestEditsOrderBy? lastEdit,
    Enum_OrderBy? name,
    Input_AuthUsersPermissionsAggregateOrderBy? permissionsAggregate,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? uid,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnAggregateOrderBy<TRes> get adminOnAggregate =>
      CopyWith_Input_AuthUsersAdminOnAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryLatestEditsOrderBy<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsOrderBy.stub(_res);

  CopyWith_Input_AuthUsersPermissionsAggregateOrderBy<TRes>
  get permissionsAggregate =>
      CopyWith_Input_AuthUsersPermissionsAggregateOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);
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
    String? blurhash,
    String? email,
    String? name,
    DateTime? photoUpdatedAt,
    UuidValue? uid,
  }) => Input_AuthUsersDataStreamCursorValueInput._({
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

  String? get blurhash => (_$data['blurhash'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get name => (_$data['name'] as String?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    final l$blurhash = blurhash;
    final l$email = email;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$uid = uid;
    return Object.hashAll([
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
    Object? blurhash = _undefined,
    Object? email = _undefined,
    Object? name = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? uid = _undefined,
  }) => _then(
    Input_AuthUsersDataStreamCursorValueInput._({
      ..._instance._$data,
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
    String? blurhash,
    String? email,
    String? name,
    DateTime? photoUpdatedAt,
    UuidValue? uid,
  }) => _res;
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
