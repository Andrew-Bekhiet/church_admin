// Part 9 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_AuthUsersPermissionsStreamCursorInput<TRes> {
  factory CopyWith_Input_AuthUsersPermissionsStreamCursorInput(
    Input_AuthUsersPermissionsStreamCursorInput instance,
    TRes Function(Input_AuthUsersPermissionsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_AuthUsersPermissionsStreamCursorInput;

  factory CopyWith_Input_AuthUsersPermissionsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AuthUsersPermissionsStreamCursorInput;

  TRes call({
    Input_AuthUsersPermissionsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_AuthUsersPermissionsStreamCursorInput<TRes>
    implements CopyWith_Input_AuthUsersPermissionsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_AuthUsersPermissionsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersPermissionsStreamCursorInput _instance;

  final TRes Function(Input_AuthUsersPermissionsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_AuthUsersPermissionsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_AuthUsersPermissionsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_AuthUsersPermissionsStreamCursorInput<TRes>
    implements CopyWith_Input_AuthUsersPermissionsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersPermissionsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_AuthUsersPermissionsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput.stub(_res);
}

class Input_AuthUsersPermissionsStreamCursorValueInput {
  factory Input_AuthUsersPermissionsStreamCursorValueInput({
    String? permission,
    UuidValue? uid,
  }) => Input_AuthUsersPermissionsStreamCursorValueInput._({
    if (permission != null) r'permission': permission,
    if (uid != null) r'uid': uid,
  });

  Input_AuthUsersPermissionsStreamCursorValueInput._(this._$data);

  factory Input_AuthUsersPermissionsStreamCursorValueInput.fromJson(
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
    return Input_AuthUsersPermissionsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get permission => (_$data['permission'] as String?);

  UuidValue? get uid => (_$data['uid'] as UuidValue?);

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
    return result$data;
  }

  CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput<
    Input_AuthUsersPermissionsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AuthUsersPermissionsStreamCursorValueInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$permission = permission;
    final l$uid = uid;
    return Object.hashAll([
      _$data.containsKey('permission') ? l$permission : const {},
      _$data.containsKey('uid') ? l$uid : const {},
    ]);
  }
}

abstract class CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput(
    Input_AuthUsersPermissionsStreamCursorValueInput instance,
    TRes Function(Input_AuthUsersPermissionsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_AuthUsersPermissionsStreamCursorValueInput;

  factory CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_AuthUsersPermissionsStreamCursorValueInput;

  TRes call({String? permission, UuidValue? uid});
}

class _CopyWithImpl_Input_AuthUsersPermissionsStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_AuthUsersPermissionsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_AuthUsersPermissionsStreamCursorValueInput _instance;

  final TRes Function(Input_AuthUsersPermissionsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? permission = _undefined, Object? uid = _undefined}) =>
      _then(
        Input_AuthUsersPermissionsStreamCursorValueInput._({
          ..._instance._$data,
          if (permission != _undefined) 'permission': (permission as String?),
          if (uid != _undefined) 'uid': (uid as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_AuthUsersPermissionsStreamCursorValueInput<TRes>
    implements CopyWith_Input_AuthUsersPermissionsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_AuthUsersPermissionsStreamCursorValueInput(this._res);

  TRes _res;

  call({String? permission, UuidValue? uid}) => _res;
}

class Input_BigintComparisonExp {
  factory Input_BigintComparisonExp({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_isNull,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  }) => Input_BigintComparisonExp._({
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

  Input_BigintComparisonExp._(this._$data);

  factory Input_BigintComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as int?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as int?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as int?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as int?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as int?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as int?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as int))
          .toList();
    }
    return Input_BigintComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get $_eq => (_$data['_eq'] as int?);

  int? get $_gt => (_$data['_gt'] as int?);

  int? get $_gte => (_$data['_gte'] as int?);

  List<int>? get $_in => (_$data['_in'] as List<int>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  int? get $_lt => (_$data['_lt'] as int?);

  int? get $_lte => (_$data['_lte'] as int?);

  int? get $_neq => (_$data['_neq'] as int?);

  List<int>? get $_nin => (_$data['_nin'] as List<int>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith_Input_BigintComparisonExp<Input_BigintComparisonExp> get copyWith =>
      CopyWith_Input_BigintComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_BigintComparisonExp ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_BigintComparisonExp<TRes> {
  factory CopyWith_Input_BigintComparisonExp(
    Input_BigintComparisonExp instance,
    TRes Function(Input_BigintComparisonExp) then,
  ) = _CopyWithImpl_Input_BigintComparisonExp;

  factory CopyWith_Input_BigintComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_BigintComparisonExp;

  TRes call({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_isNull,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  });
}

class _CopyWithImpl_Input_BigintComparisonExp<TRes>
    implements CopyWith_Input_BigintComparisonExp<TRes> {
  _CopyWithImpl_Input_BigintComparisonExp(this._instance, this._then);

  final Input_BigintComparisonExp _instance;

  final TRes Function(Input_BigintComparisonExp) _then;

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
    Input_BigintComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as int?),
      if ($_gt != _undefined) '_gt': ($_gt as int?),
      if ($_gte != _undefined) '_gte': ($_gte as int?),
      if ($_in != _undefined) '_in': ($_in as List<int>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as int?),
      if ($_lte != _undefined) '_lte': ($_lte as int?),
      if ($_neq != _undefined) '_neq': ($_neq as int?),
      if ($_nin != _undefined) '_nin': ($_nin as List<int>?),
    }),
  );
}

class _CopyWithStubImpl_Input_BigintComparisonExp<TRes>
    implements CopyWith_Input_BigintComparisonExp<TRes> {
  _CopyWithStubImpl_Input_BigintComparisonExp(this._res);

  TRes _res;

  call({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_isNull,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  }) => _res;
}

class Input_BooleanComparisonExp {
  factory Input_BooleanComparisonExp({
    bool? $_eq,
    bool? $_gt,
    bool? $_gte,
    List<bool>? $_in,
    bool? $_isNull,
    bool? $_lt,
    bool? $_lte,
    bool? $_neq,
    List<bool>? $_nin,
  }) => Input_BooleanComparisonExp._({
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

  Input_BooleanComparisonExp._(this._$data);

  factory Input_BooleanComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as bool?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as bool?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as bool?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as bool))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as bool?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as bool?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as bool?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as bool))
          .toList();
    }
    return Input_BooleanComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $_eq => (_$data['_eq'] as bool?);

  bool? get $_gt => (_$data['_gt'] as bool?);

  bool? get $_gte => (_$data['_gte'] as bool?);

  List<bool>? get $_in => (_$data['_in'] as List<bool>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  bool? get $_lt => (_$data['_lt'] as bool?);

  bool? get $_lte => (_$data['_lte'] as bool?);

  bool? get $_neq => (_$data['_neq'] as bool?);

  List<bool>? get $_nin => (_$data['_nin'] as List<bool>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith_Input_BooleanComparisonExp<Input_BooleanComparisonExp>
  get copyWith => CopyWith_Input_BooleanComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_BooleanComparisonExp ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_BooleanComparisonExp<TRes> {
  factory CopyWith_Input_BooleanComparisonExp(
    Input_BooleanComparisonExp instance,
    TRes Function(Input_BooleanComparisonExp) then,
  ) = _CopyWithImpl_Input_BooleanComparisonExp;

  factory CopyWith_Input_BooleanComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_BooleanComparisonExp;

  TRes call({
    bool? $_eq,
    bool? $_gt,
    bool? $_gte,
    List<bool>? $_in,
    bool? $_isNull,
    bool? $_lt,
    bool? $_lte,
    bool? $_neq,
    List<bool>? $_nin,
  });
}

class _CopyWithImpl_Input_BooleanComparisonExp<TRes>
    implements CopyWith_Input_BooleanComparisonExp<TRes> {
  _CopyWithImpl_Input_BooleanComparisonExp(this._instance, this._then);

  final Input_BooleanComparisonExp _instance;

  final TRes Function(Input_BooleanComparisonExp) _then;

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
    Input_BooleanComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as bool?),
      if ($_gt != _undefined) '_gt': ($_gt as bool?),
      if ($_gte != _undefined) '_gte': ($_gte as bool?),
      if ($_in != _undefined) '_in': ($_in as List<bool>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as bool?),
      if ($_lte != _undefined) '_lte': ($_lte as bool?),
      if ($_neq != _undefined) '_neq': ($_neq as bool?),
      if ($_nin != _undefined) '_nin': ($_nin as List<bool>?),
    }),
  );
}

class _CopyWithStubImpl_Input_BooleanComparisonExp<TRes>
    implements CopyWith_Input_BooleanComparisonExp<TRes> {
  _CopyWithStubImpl_Input_BooleanComparisonExp(this._res);

  TRes _res;

  call({
    bool? $_eq,
    bool? $_gt,
    bool? $_gte,
    List<bool>? $_in,
    bool? $_isNull,
    bool? $_lt,
    bool? $_lte,
    bool? $_neq,
    List<bool>? $_nin,
  }) => _res;
}

class Input_ChurchesBoolExp {
  factory Input_ChurchesBoolExp({
    List<Input_ChurchesBoolExp>? $_and,
    Input_ChurchesBoolExp? $_not,
    List<Input_ChurchesBoolExp>? $_or,
    Input_FathersBoolExp? fathers,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => Input_ChurchesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (fathers != null) r'fathers': fathers,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_ChurchesBoolExp._(this._$data);

  factory Input_ChurchesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_ChurchesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_ChurchesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_ChurchesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('fathers')) {
      final l$fathers = data['fathers'];
      result$data['fathers'] = l$fathers == null
          ? null
          : Input_FathersBoolExp.fromJson((l$fathers as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$name as Map<String, dynamic>),
            );
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$persons as Map<String, dynamic>));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateBoolExp.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_ChurchesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ChurchesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_ChurchesBoolExp>?);

  Input_ChurchesBoolExp? get $_not =>
      (_$data['_not'] as Input_ChurchesBoolExp?);

  List<Input_ChurchesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_ChurchesBoolExp>?);

  Input_FathersBoolExp? get fathers =>
      (_$data['fathers'] as Input_FathersBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_PersonsAggregateBoolExp? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateBoolExp?);

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
    if (_$data.containsKey('fathers')) {
      final l$fathers = fathers;
      result$data['fathers'] = l$fathers?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ChurchesBoolExp<Input_ChurchesBoolExp> get copyWith =>
      CopyWith_Input_ChurchesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesBoolExp || runtimeType != other.runtimeType) {
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
    final l$fathers = fathers;
    final lOther$fathers = other.fathers;
    if (_$data.containsKey('fathers') != other._$data.containsKey('fathers')) {
      return false;
    }
    if (l$fathers != lOther$fathers) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$fathers = fathers;
    final l$id = id;
    final l$name = name;
    final l$persons = persons;
    final l$personsAggregate = personsAggregate;
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
      _$data.containsKey('fathers') ? l$fathers : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_ChurchesBoolExp<TRes> {
  factory CopyWith_Input_ChurchesBoolExp(
    Input_ChurchesBoolExp instance,
    TRes Function(Input_ChurchesBoolExp) then,
  ) = _CopyWithImpl_Input_ChurchesBoolExp;

  factory CopyWith_Input_ChurchesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesBoolExp;

  TRes call({
    List<Input_ChurchesBoolExp>? $_and,
    Input_ChurchesBoolExp? $_not,
    List<Input_ChurchesBoolExp>? $_or,
    Input_FathersBoolExp? fathers,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_ChurchesBoolExp>? Function(
      Iterable<CopyWith_Input_ChurchesBoolExp<Input_ChurchesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_ChurchesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_ChurchesBoolExp>? Function(
      Iterable<CopyWith_Input_ChurchesBoolExp<Input_ChurchesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_FathersBoolExp<TRes> get fathers;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_ChurchesBoolExp<TRes>
    implements CopyWith_Input_ChurchesBoolExp<TRes> {
  _CopyWithImpl_Input_ChurchesBoolExp(this._instance, this._then);

  final Input_ChurchesBoolExp _instance;

  final TRes Function(Input_ChurchesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? fathers = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_ChurchesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_ChurchesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_ChurchesBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_ChurchesBoolExp>?),
      if (fathers != _undefined) 'fathers': (fathers as Input_FathersBoolExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_ChurchesBoolExp>? Function(
      Iterable<CopyWith_Input_ChurchesBoolExp<Input_ChurchesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_ChurchesBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_ChurchesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_ChurchesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ChurchesBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_ChurchesBoolExp>? Function(
      Iterable<CopyWith_Input_ChurchesBoolExp<Input_ChurchesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_ChurchesBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_FathersBoolExp<TRes> get fathers {
    final local$fathers = _instance.fathers;
    return local$fathers == null
        ? CopyWith_Input_FathersBoolExp.stub(_then(_instance))
        : CopyWith_Input_FathersBoolExp(local$fathers, (e) => call(fathers: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_PersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateBoolExp(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_ChurchesBoolExp<TRes>
    implements CopyWith_Input_ChurchesBoolExp<TRes> {
  _CopyWithStubImpl_Input_ChurchesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_ChurchesBoolExp>? $_and,
    Input_ChurchesBoolExp? $_not,
    List<Input_ChurchesBoolExp>? $_or,
    Input_FathersBoolExp? fathers,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_ChurchesBoolExp<TRes> get $_not =>
      CopyWith_Input_ChurchesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_FathersBoolExp<TRes> get fathers =>
      CopyWith_Input_FathersBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_ChurchesInsertInput {
  factory Input_ChurchesInsertInput({
    Input_FathersArrRelInsertInput? fathers,
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) => Input_ChurchesInsertInput._({
    if (fathers != null) r'fathers': fathers,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_ChurchesInsertInput._(this._$data);

  factory Input_ChurchesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fathers')) {
      final l$fathers = data['fathers'];
      result$data['fathers'] = l$fathers == null
          ? null
          : Input_FathersArrRelInsertInput.fromJson(
              (l$fathers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_ChurchesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FathersArrRelInsertInput? get fathers =>
      (_$data['fathers'] as Input_FathersArrRelInsertInput?);

  String? get name => (_$data['name'] as String?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fathers')) {
      final l$fathers = fathers;
      result$data['fathers'] = l$fathers?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ChurchesInsertInput<Input_ChurchesInsertInput> get copyWith =>
      CopyWith_Input_ChurchesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fathers = fathers;
    final lOther$fathers = other.fathers;
    if (_$data.containsKey('fathers') != other._$data.containsKey('fathers')) {
      return false;
    }
    if (l$fathers != lOther$fathers) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fathers = fathers;
    final l$name = name;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('fathers') ? l$fathers : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_ChurchesInsertInput<TRes> {
  factory CopyWith_Input_ChurchesInsertInput(
    Input_ChurchesInsertInput instance,
    TRes Function(Input_ChurchesInsertInput) then,
  ) = _CopyWithImpl_Input_ChurchesInsertInput;

  factory CopyWith_Input_ChurchesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesInsertInput;

  TRes call({
    Input_FathersArrRelInsertInput? fathers,
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  });
  CopyWith_Input_FathersArrRelInsertInput<TRes> get fathers;
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_ChurchesInsertInput<TRes>
    implements CopyWith_Input_ChurchesInsertInput<TRes> {
  _CopyWithImpl_Input_ChurchesInsertInput(this._instance, this._then);

  final Input_ChurchesInsertInput _instance;

  final TRes Function(Input_ChurchesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fathers = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
  }) => _then(
    Input_ChurchesInsertInput._({
      ..._instance._$data,
      if (fathers != _undefined)
        'fathers': (fathers as Input_FathersArrRelInsertInput?),
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsArrRelInsertInput?),
    }),
  );

  CopyWith_Input_FathersArrRelInsertInput<TRes> get fathers {
    final local$fathers = _instance.fathers;
    return local$fathers == null
        ? CopyWith_Input_FathersArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_FathersArrRelInsertInput(
            local$fathers,
            (e) => call(fathers: e),
          );
  }

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_ChurchesInsertInput<TRes>
    implements CopyWith_Input_ChurchesInsertInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesInsertInput(this._res);

  TRes _res;

  call({
    Input_FathersArrRelInsertInput? fathers,
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) => _res;

  CopyWith_Input_FathersArrRelInsertInput<TRes> get fathers =>
      CopyWith_Input_FathersArrRelInsertInput.stub(_res);

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_ChurchesObjRelInsertInput {
  factory Input_ChurchesObjRelInsertInput({
    required Input_ChurchesInsertInput data,
    Input_ChurchesOnConflict? onConflict,
  }) => Input_ChurchesObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_ChurchesObjRelInsertInput._(this._$data);

  factory Input_ChurchesObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_ChurchesInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_ChurchesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_ChurchesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ChurchesInsertInput get data =>
      (_$data['data'] as Input_ChurchesInsertInput);

  Input_ChurchesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_ChurchesOnConflict?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('onConflict')) {
      final l$onConflict = onConflict;
      result$data['onConflict'] = l$onConflict?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ChurchesObjRelInsertInput<Input_ChurchesObjRelInsertInput>
  get copyWith => CopyWith_Input_ChurchesObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesObjRelInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
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
      l$data,
      _$data.containsKey('onConflict') ? l$onConflict : const {},
    ]);
  }
}

abstract class CopyWith_Input_ChurchesObjRelInsertInput<TRes> {
  factory CopyWith_Input_ChurchesObjRelInsertInput(
    Input_ChurchesObjRelInsertInput instance,
    TRes Function(Input_ChurchesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_ChurchesObjRelInsertInput;

  factory CopyWith_Input_ChurchesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesObjRelInsertInput;

  TRes call({
    Input_ChurchesInsertInput? data,
    Input_ChurchesOnConflict? onConflict,
  });
  CopyWith_Input_ChurchesInsertInput<TRes> get data;
  CopyWith_Input_ChurchesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_ChurchesObjRelInsertInput<TRes>
    implements CopyWith_Input_ChurchesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_ChurchesObjRelInsertInput(this._instance, this._then);

  final Input_ChurchesObjRelInsertInput _instance;

  final TRes Function(Input_ChurchesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_ChurchesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_ChurchesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_ChurchesOnConflict?),
        }),
      );

  CopyWith_Input_ChurchesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_ChurchesInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_ChurchesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_ChurchesOnConflict.stub(_then(_instance))
        : CopyWith_Input_ChurchesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_ChurchesObjRelInsertInput<TRes>
    implements CopyWith_Input_ChurchesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_ChurchesInsertInput? data,
    Input_ChurchesOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_ChurchesInsertInput<TRes> get data =>
      CopyWith_Input_ChurchesInsertInput.stub(_res);

  CopyWith_Input_ChurchesOnConflict<TRes> get onConflict =>
      CopyWith_Input_ChurchesOnConflict.stub(_res);
}

class Input_ChurchesOnConflict {
  factory Input_ChurchesOnConflict({
    required Enum_ChurchesConstraint constraint,
    List<Enum_ChurchesUpdateColumn>? updateColumns,
    Input_ChurchesBoolExp? where,
  }) => Input_ChurchesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_ChurchesOnConflict._(this._$data);

  factory Input_ChurchesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_ChurchesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_ChurchesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_ChurchesBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_ChurchesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_ChurchesConstraint get constraint =>
      (_$data['constraint'] as Enum_ChurchesConstraint);

  List<Enum_ChurchesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_ChurchesUpdateColumn>?);

  Input_ChurchesBoolExp? get where =>
      (_$data['where'] as Input_ChurchesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_ChurchesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_ChurchesUpdateColumn>)
              .map((e) => toJson_Enum_ChurchesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ChurchesOnConflict<Input_ChurchesOnConflict> get copyWith =>
      CopyWith_Input_ChurchesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesOnConflict ||
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

abstract class CopyWith_Input_ChurchesOnConflict<TRes> {
  factory CopyWith_Input_ChurchesOnConflict(
    Input_ChurchesOnConflict instance,
    TRes Function(Input_ChurchesOnConflict) then,
  ) = _CopyWithImpl_Input_ChurchesOnConflict;

  factory CopyWith_Input_ChurchesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesOnConflict;

  TRes call({
    Enum_ChurchesConstraint? constraint,
    List<Enum_ChurchesUpdateColumn>? updateColumns,
    Input_ChurchesBoolExp? where,
  });
  CopyWith_Input_ChurchesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ChurchesOnConflict<TRes>
    implements CopyWith_Input_ChurchesOnConflict<TRes> {
  _CopyWithImpl_Input_ChurchesOnConflict(this._instance, this._then);

  final Input_ChurchesOnConflict _instance;

  final TRes Function(Input_ChurchesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_ChurchesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_ChurchesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_ChurchesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_ChurchesBoolExp?),
    }),
  );

  CopyWith_Input_ChurchesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_ChurchesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ChurchesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_ChurchesOnConflict<TRes>
    implements CopyWith_Input_ChurchesOnConflict<TRes> {
  _CopyWithStubImpl_Input_ChurchesOnConflict(this._res);

  TRes _res;

  call({
    Enum_ChurchesConstraint? constraint,
    List<Enum_ChurchesUpdateColumn>? updateColumns,
    Input_ChurchesBoolExp? where,
  }) => _res;

  CopyWith_Input_ChurchesBoolExp<TRes> get where =>
      CopyWith_Input_ChurchesBoolExp.stub(_res);
}

class Input_ChurchesOrderBy {
  factory Input_ChurchesOrderBy({
    Input_FathersAggregateOrderBy? fathersAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_ChurchesOrderBy._({
    if (fathersAggregate != null) r'fathersAggregate': fathersAggregate,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_ChurchesOrderBy._(this._$data);

  factory Input_ChurchesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fathersAggregate')) {
      final l$fathersAggregate = data['fathersAggregate'];
      result$data['fathersAggregate'] = l$fathersAggregate == null
          ? null
          : Input_FathersAggregateOrderBy.fromJson(
              (l$fathersAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_ChurchesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FathersAggregateOrderBy? get fathersAggregate =>
      (_$data['fathersAggregate'] as Input_FathersAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fathersAggregate')) {
      final l$fathersAggregate = fathersAggregate;
      result$data['fathersAggregate'] = l$fathersAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ChurchesOrderBy<Input_ChurchesOrderBy> get copyWith =>
      CopyWith_Input_ChurchesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$fathersAggregate = fathersAggregate;
    final lOther$fathersAggregate = other.fathersAggregate;
    if (_$data.containsKey('fathersAggregate') !=
        other._$data.containsKey('fathersAggregate')) {
      return false;
    }
    if (l$fathersAggregate != lOther$fathersAggregate) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fathersAggregate = fathersAggregate;
    final l$id = id;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('fathersAggregate') ? l$fathersAggregate : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_ChurchesOrderBy<TRes> {
  factory CopyWith_Input_ChurchesOrderBy(
    Input_ChurchesOrderBy instance,
    TRes Function(Input_ChurchesOrderBy) then,
  ) = _CopyWithImpl_Input_ChurchesOrderBy;

  factory CopyWith_Input_ChurchesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesOrderBy;

  TRes call({
    Input_FathersAggregateOrderBy? fathersAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_FathersAggregateOrderBy<TRes> get fathersAggregate;
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_ChurchesOrderBy<TRes>
    implements CopyWith_Input_ChurchesOrderBy<TRes> {
  _CopyWithImpl_Input_ChurchesOrderBy(this._instance, this._then);

  final Input_ChurchesOrderBy _instance;

  final TRes Function(Input_ChurchesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fathersAggregate = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_ChurchesOrderBy._({
      ..._instance._$data,
      if (fathersAggregate != _undefined)
        'fathersAggregate':
            (fathersAggregate as Input_FathersAggregateOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateOrderBy?),
    }),
  );

  CopyWith_Input_FathersAggregateOrderBy<TRes> get fathersAggregate {
    final local$fathersAggregate = _instance.fathersAggregate;
    return local$fathersAggregate == null
        ? CopyWith_Input_FathersAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_FathersAggregateOrderBy(
            local$fathersAggregate,
            (e) => call(fathersAggregate: e),
          );
  }

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_ChurchesOrderBy<TRes>
    implements CopyWith_Input_ChurchesOrderBy<TRes> {
  _CopyWithStubImpl_Input_ChurchesOrderBy(this._res);

  TRes _res;

  call({
    Input_FathersAggregateOrderBy? fathersAggregate,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_FathersAggregateOrderBy<TRes> get fathersAggregate =>
      CopyWith_Input_FathersAggregateOrderBy.stub(_res);

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_ChurchesPkColumnsInput {
  factory Input_ChurchesPkColumnsInput({required UuidValue id}) =>
      Input_ChurchesPkColumnsInput._({r'id': id});

  Input_ChurchesPkColumnsInput._(this._$data);

  factory Input_ChurchesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_ChurchesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_ChurchesPkColumnsInput<Input_ChurchesPkColumnsInput>
  get copyWith => CopyWith_Input_ChurchesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesPkColumnsInput ||
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

abstract class CopyWith_Input_ChurchesPkColumnsInput<TRes> {
  factory CopyWith_Input_ChurchesPkColumnsInput(
    Input_ChurchesPkColumnsInput instance,
    TRes Function(Input_ChurchesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_ChurchesPkColumnsInput;

  factory CopyWith_Input_ChurchesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_ChurchesPkColumnsInput<TRes>
    implements CopyWith_Input_ChurchesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_ChurchesPkColumnsInput(this._instance, this._then);

  final Input_ChurchesPkColumnsInput _instance;

  final TRes Function(Input_ChurchesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_ChurchesPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_ChurchesPkColumnsInput<TRes>
    implements CopyWith_Input_ChurchesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_ChurchesSetInput {
  factory Input_ChurchesSetInput({String? name}) =>
      Input_ChurchesSetInput._({if (name != null) r'name': name});

  Input_ChurchesSetInput._(this._$data);

  factory Input_ChurchesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_ChurchesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_ChurchesSetInput<Input_ChurchesSetInput> get copyWith =>
      CopyWith_Input_ChurchesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesSetInput || runtimeType != other.runtimeType) {
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
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith_Input_ChurchesSetInput<TRes> {
  factory CopyWith_Input_ChurchesSetInput(
    Input_ChurchesSetInput instance,
    TRes Function(Input_ChurchesSetInput) then,
  ) = _CopyWithImpl_Input_ChurchesSetInput;

  factory CopyWith_Input_ChurchesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_ChurchesSetInput<TRes>
    implements CopyWith_Input_ChurchesSetInput<TRes> {
  _CopyWithImpl_Input_ChurchesSetInput(this._instance, this._then);

  final Input_ChurchesSetInput _instance;

  final TRes Function(Input_ChurchesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_ChurchesSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_ChurchesSetInput<TRes>
    implements CopyWith_Input_ChurchesSetInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_ChurchesStreamCursorInput {
  factory Input_ChurchesStreamCursorInput({
    required Input_ChurchesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_ChurchesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_ChurchesStreamCursorInput._(this._$data);

  factory Input_ChurchesStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_ChurchesStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_ChurchesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ChurchesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_ChurchesStreamCursorValueInput);

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

  CopyWith_Input_ChurchesStreamCursorInput<Input_ChurchesStreamCursorInput>
  get copyWith => CopyWith_Input_ChurchesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesStreamCursorInput ||
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

abstract class CopyWith_Input_ChurchesStreamCursorInput<TRes> {
  factory CopyWith_Input_ChurchesStreamCursorInput(
    Input_ChurchesStreamCursorInput instance,
    TRes Function(Input_ChurchesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_ChurchesStreamCursorInput;

  factory CopyWith_Input_ChurchesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesStreamCursorInput;

  TRes call({
    Input_ChurchesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_ChurchesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_ChurchesStreamCursorInput<TRes>
    implements CopyWith_Input_ChurchesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_ChurchesStreamCursorInput(this._instance, this._then);

  final Input_ChurchesStreamCursorInput _instance;

  final TRes Function(Input_ChurchesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_ChurchesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_ChurchesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_ChurchesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ChurchesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_ChurchesStreamCursorInput<TRes>
    implements CopyWith_Input_ChurchesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ChurchesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_ChurchesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_ChurchesStreamCursorValueInput.stub(_res);
}

class Input_ChurchesStreamCursorValueInput {
  factory Input_ChurchesStreamCursorValueInput({UuidValue? id, String? name}) =>
      Input_ChurchesStreamCursorValueInput._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input_ChurchesStreamCursorValueInput._(this._$data);

  factory Input_ChurchesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_ChurchesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_ChurchesStreamCursorValueInput<
    Input_ChurchesStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_ChurchesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}
