// Part 74 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ScopeGrantFilterAdminOnService<TRes> {
  factory CopyWith_Input_ScopeGrantFilterAdminOnService(
    Input_ScopeGrantFilterAdminOnService instance,
    TRes Function(Input_ScopeGrantFilterAdminOnService) then,
  ) = _CopyWithImpl_Input_ScopeGrantFilterAdminOnService;

  factory CopyWith_Input_ScopeGrantFilterAdminOnService.stub(TRes res) =
      _CopyWithStubImpl_Input_ScopeGrantFilterAdminOnService;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_ScopeGrantFilterAdminOnService<TRes>
    implements CopyWith_Input_ScopeGrantFilterAdminOnService<TRes> {
  _CopyWithImpl_Input_ScopeGrantFilterAdminOnService(
    this._instance,
    this._then,
  );

  final Input_ScopeGrantFilterAdminOnService _instance;

  final TRes Function(Input_ScopeGrantFilterAdminOnService) _then;

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
    Input_ScopeGrantFilterAdminOnService._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
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

class _CopyWithStubImpl_Input_ScopeGrantFilterAdminOnService<TRes>
    implements CopyWith_Input_ScopeGrantFilterAdminOnService<TRes> {
  _CopyWithStubImpl_Input_ScopeGrantFilterAdminOnService(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_ScopeGrantFilterUid {
  factory Input_ScopeGrantFilterUid({
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
  }) => Input_ScopeGrantFilterUid._({
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

  Input_ScopeGrantFilterUid._(this._$data);

  factory Input_ScopeGrantFilterUid.fromJson(Map<String, dynamic> data) {
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
    return Input_ScopeGrantFilterUid._(result$data);
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

  CopyWith_Input_ScopeGrantFilterUid<Input_ScopeGrantFilterUid> get copyWith =>
      CopyWith_Input_ScopeGrantFilterUid(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ScopeGrantFilterUid ||
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

abstract class CopyWith_Input_ScopeGrantFilterUid<TRes> {
  factory CopyWith_Input_ScopeGrantFilterUid(
    Input_ScopeGrantFilterUid instance,
    TRes Function(Input_ScopeGrantFilterUid) then,
  ) = _CopyWithImpl_Input_ScopeGrantFilterUid;

  factory CopyWith_Input_ScopeGrantFilterUid.stub(TRes res) =
      _CopyWithStubImpl_Input_ScopeGrantFilterUid;

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

class _CopyWithImpl_Input_ScopeGrantFilterUid<TRes>
    implements CopyWith_Input_ScopeGrantFilterUid<TRes> {
  _CopyWithImpl_Input_ScopeGrantFilterUid(this._instance, this._then);

  final Input_ScopeGrantFilterUid _instance;

  final TRes Function(Input_ScopeGrantFilterUid) _then;

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
    Input_ScopeGrantFilterUid._({
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

class _CopyWithStubImpl_Input_ScopeGrantFilterUid<TRes>
    implements CopyWith_Input_ScopeGrantFilterUid<TRes> {
  _CopyWithStubImpl_Input_ScopeGrantFilterUid(this._res);

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

class Input_ScopeGrantFilterPermissionId {
  factory Input_ScopeGrantFilterPermissionId({
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
  }) => Input_ScopeGrantFilterPermissionId._({
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

  Input_ScopeGrantFilterPermissionId._(this._$data);

  factory Input_ScopeGrantFilterPermissionId.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Input_ScopeGrantFilterPermissionId._(result$data);
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

  CopyWith_Input_ScopeGrantFilterPermissionId<
    Input_ScopeGrantFilterPermissionId
  >
  get copyWith => CopyWith_Input_ScopeGrantFilterPermissionId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ScopeGrantFilterPermissionId ||
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

abstract class CopyWith_Input_ScopeGrantFilterPermissionId<TRes> {
  factory CopyWith_Input_ScopeGrantFilterPermissionId(
    Input_ScopeGrantFilterPermissionId instance,
    TRes Function(Input_ScopeGrantFilterPermissionId) then,
  ) = _CopyWithImpl_Input_ScopeGrantFilterPermissionId;

  factory CopyWith_Input_ScopeGrantFilterPermissionId.stub(TRes res) =
      _CopyWithStubImpl_Input_ScopeGrantFilterPermissionId;

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

class _CopyWithImpl_Input_ScopeGrantFilterPermissionId<TRes>
    implements CopyWith_Input_ScopeGrantFilterPermissionId<TRes> {
  _CopyWithImpl_Input_ScopeGrantFilterPermissionId(this._instance, this._then);

  final Input_ScopeGrantFilterPermissionId _instance;

  final TRes Function(Input_ScopeGrantFilterPermissionId) _then;

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
    Input_ScopeGrantFilterPermissionId._({
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

class _CopyWithStubImpl_Input_ScopeGrantFilterPermissionId<TRes>
    implements CopyWith_Input_ScopeGrantFilterPermissionId<TRes> {
  _CopyWithStubImpl_Input_ScopeGrantFilterPermissionId(this._res);

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

class Input_ScopeGrantFilterInput {
  factory Input_ScopeGrantFilterInput({
    List<Input_ScopeGrantFilterInput>? and,
    List<Input_ScopeGrantFilterInput>? or,
    List<Input_ScopeGrantFilterInput>? not,
    Input_ScopeGrantFilterPermissionId? permissionId,
    Input_ScopeGrantFilterUid? uid,
    Input_ScopeGrantFilterAdminOnService? adminOnService,
    Input_ScopeGrantFilterServiceGender? serviceGender,
    Input_ScopeGrantFilterServiceStudyYear? serviceStudyYear,
    Input_ScopeGrantFilterServiceAllowEdit? serviceAllowEdit,
    Input_ScopeGrantFilterServiceAdminOnUsers? serviceAdminOnUsers,
    Input_ScopeGrantFilterAdminOnGroup? adminOnGroup,
    Input_ScopeGrantFilterGroupAllowEdit? groupAllowEdit,
    Input_ScopeGrantFilterGroupAdminOnUsers? groupAdminOnUsers,
    Input_ScopeGrantFilterAdminOnArea? adminOnArea,
    Input_ScopeGrantFilterAreaAllowEdit? areaAllowEdit,
    Input_ScopeGrantFilterAreaAdminOnUsers? areaAdminOnUsers,
    Input_ScopeGrantFilterServiceWriteRelatedFamilies?
    serviceWriteRelatedFamilies,
    Input_ScopeGrantFilterGroupWriteRelatedFamilies? groupWriteRelatedFamilies,
    Input_ScopeGrantFilterAreaAllowExport? areaAllowExport,
    Input_ScopeGrantFilterServiceAllowExport? serviceAllowExport,
    Input_ScopeGrantFilterGroupAllowExport? groupAllowExport,
    Input_ScopeGrantFilterServiceAllowRecordAttendance?
    serviceAllowRecordAttendance,
    Input_ScopeGrantFilterServiceAllowRecordServantsAttendance?
    serviceAllowRecordServantsAttendance,
    Input_ScopeGrantFilterGroupAllowRecordAttendance?
    groupAllowRecordAttendance,
    Input_ScopeGrantFilterGroupAllowRecordServantsAttendance?
    groupAllowRecordServantsAttendance,
    Input_AreaFilterInput? area,
    Input_GroupFilterInput? group,
    Input_ServiceFilterInput? service,
    Input_UserFilterInput? user,
    Input_StudyYearFilterInput? studyYear,
    Input_ClassFilterInput? classes,
  }) => Input_ScopeGrantFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (permissionId != null) r'permissionId': permissionId,
    if (uid != null) r'uid': uid,
    if (adminOnService != null) r'adminOnService': adminOnService,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceAllowEdit != null) r'serviceAllowEdit': serviceAllowEdit,
    if (serviceAdminOnUsers != null)
      r'serviceAdminOnUsers': serviceAdminOnUsers,
    if (adminOnGroup != null) r'adminOnGroup': adminOnGroup,
    if (groupAllowEdit != null) r'groupAllowEdit': groupAllowEdit,
    if (groupAdminOnUsers != null) r'groupAdminOnUsers': groupAdminOnUsers,
    if (adminOnArea != null) r'adminOnArea': adminOnArea,
    if (areaAllowEdit != null) r'areaAllowEdit': areaAllowEdit,
    if (areaAdminOnUsers != null) r'areaAdminOnUsers': areaAdminOnUsers,
    if (serviceWriteRelatedFamilies != null)
      r'serviceWriteRelatedFamilies': serviceWriteRelatedFamilies,
    if (groupWriteRelatedFamilies != null)
      r'groupWriteRelatedFamilies': groupWriteRelatedFamilies,
    if (areaAllowExport != null) r'areaAllowExport': areaAllowExport,
    if (serviceAllowExport != null) r'serviceAllowExport': serviceAllowExport,
    if (groupAllowExport != null) r'groupAllowExport': groupAllowExport,
    if (serviceAllowRecordAttendance != null)
      r'serviceAllowRecordAttendance': serviceAllowRecordAttendance,
    if (serviceAllowRecordServantsAttendance != null)
      r'serviceAllowRecordServantsAttendance':
          serviceAllowRecordServantsAttendance,
    if (groupAllowRecordAttendance != null)
      r'groupAllowRecordAttendance': groupAllowRecordAttendance,
    if (groupAllowRecordServantsAttendance != null)
      r'groupAllowRecordServantsAttendance': groupAllowRecordServantsAttendance,
    if (area != null) r'area': area,
    if (group != null) r'group': group,
    if (service != null) r'service': service,
    if (user != null) r'user': user,
    if (studyYear != null) r'studyYear': studyYear,
    if (classes != null) r'classes': classes,
  });

  Input_ScopeGrantFilterInput._(this._$data);

  factory Input_ScopeGrantFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_ScopeGrantFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_ScopeGrantFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_ScopeGrantFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('permissionId')) {
      final l$permissionId = data['permissionId'];
      result$data['permissionId'] = l$permissionId == null
          ? null
          : Input_ScopeGrantFilterPermissionId.fromJson(
              (l$permissionId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('uid')) {
      final l$uid = data['uid'];
      result$data['uid'] = l$uid == null
          ? null
          : Input_ScopeGrantFilterUid.fromJson((l$uid as Map<String, dynamic>));
    }
    if (data.containsKey('adminOnService')) {
      final l$adminOnService = data['adminOnService'];
      result$data['adminOnService'] = l$adminOnService == null
          ? null
          : Input_ScopeGrantFilterAdminOnService.fromJson(
              (l$adminOnService as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : Input_ScopeGrantFilterServiceGender.fromJson(
              (l$serviceGender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : Input_ScopeGrantFilterServiceStudyYear.fromJson(
              (l$serviceStudyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = data['serviceAllowEdit'];
      result$data['serviceAllowEdit'] = l$serviceAllowEdit == null
          ? null
          : Input_ScopeGrantFilterServiceAllowEdit.fromJson(
              (l$serviceAllowEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = data['serviceAdminOnUsers'];
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers == null
          ? null
          : Input_ScopeGrantFilterServiceAdminOnUsers.fromJson(
              (l$serviceAdminOnUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = data['adminOnGroup'];
      result$data['adminOnGroup'] = l$adminOnGroup == null
          ? null
          : Input_ScopeGrantFilterAdminOnGroup.fromJson(
              (l$adminOnGroup as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = data['groupAllowEdit'];
      result$data['groupAllowEdit'] = l$groupAllowEdit == null
          ? null
          : Input_ScopeGrantFilterGroupAllowEdit.fromJson(
              (l$groupAllowEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = data['groupAdminOnUsers'];
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers == null
          ? null
          : Input_ScopeGrantFilterGroupAdminOnUsers.fromJson(
              (l$groupAdminOnUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('adminOnArea')) {
      final l$adminOnArea = data['adminOnArea'];
      result$data['adminOnArea'] = l$adminOnArea == null
          ? null
          : Input_ScopeGrantFilterAdminOnArea.fromJson(
              (l$adminOnArea as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = data['areaAllowEdit'];
      result$data['areaAllowEdit'] = l$areaAllowEdit == null
          ? null
          : Input_ScopeGrantFilterAreaAllowEdit.fromJson(
              (l$areaAllowEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = data['areaAdminOnUsers'];
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers == null
          ? null
          : Input_ScopeGrantFilterAreaAdminOnUsers.fromJson(
              (l$areaAdminOnUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = data['serviceWriteRelatedFamilies'];
      result$data['serviceWriteRelatedFamilies'] =
          l$serviceWriteRelatedFamilies == null
          ? null
          : Input_ScopeGrantFilterServiceWriteRelatedFamilies.fromJson(
              (l$serviceWriteRelatedFamilies as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = data['groupWriteRelatedFamilies'];
      result$data['groupWriteRelatedFamilies'] =
          l$groupWriteRelatedFamilies == null
          ? null
          : Input_ScopeGrantFilterGroupWriteRelatedFamilies.fromJson(
              (l$groupWriteRelatedFamilies as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = data['areaAllowExport'];
      result$data['areaAllowExport'] = l$areaAllowExport == null
          ? null
          : Input_ScopeGrantFilterAreaAllowExport.fromJson(
              (l$areaAllowExport as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = data['serviceAllowExport'];
      result$data['serviceAllowExport'] = l$serviceAllowExport == null
          ? null
          : Input_ScopeGrantFilterServiceAllowExport.fromJson(
              (l$serviceAllowExport as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = data['groupAllowExport'];
      result$data['groupAllowExport'] = l$groupAllowExport == null
          ? null
          : Input_ScopeGrantFilterGroupAllowExport.fromJson(
              (l$groupAllowExport as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceAllowRecordAttendance')) {
      final l$serviceAllowRecordAttendance =
          data['serviceAllowRecordAttendance'];
      result$data['serviceAllowRecordAttendance'] =
          l$serviceAllowRecordAttendance == null
          ? null
          : Input_ScopeGrantFilterServiceAllowRecordAttendance.fromJson(
              (l$serviceAllowRecordAttendance as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceAllowRecordServantsAttendance')) {
      final l$serviceAllowRecordServantsAttendance =
          data['serviceAllowRecordServantsAttendance'];
      result$data['serviceAllowRecordServantsAttendance'] =
          l$serviceAllowRecordServantsAttendance == null
          ? null
          : Input_ScopeGrantFilterServiceAllowRecordServantsAttendance.fromJson(
              (l$serviceAllowRecordServantsAttendance as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupAllowRecordAttendance')) {
      final l$groupAllowRecordAttendance = data['groupAllowRecordAttendance'];
      result$data['groupAllowRecordAttendance'] =
          l$groupAllowRecordAttendance == null
          ? null
          : Input_ScopeGrantFilterGroupAllowRecordAttendance.fromJson(
              (l$groupAllowRecordAttendance as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupAllowRecordServantsAttendance')) {
      final l$groupAllowRecordServantsAttendance =
          data['groupAllowRecordServantsAttendance'];
      result$data['groupAllowRecordServantsAttendance'] =
          l$groupAllowRecordServantsAttendance == null
          ? null
          : Input_ScopeGrantFilterGroupAllowRecordServantsAttendance.fromJson(
              (l$groupAllowRecordServantsAttendance as Map<String, dynamic>),
            );
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreaFilterInput.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupFilterInput.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServiceFilterInput.fromJson(
              (l$service as Map<String, dynamic>),
            );
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_UserFilterInput.fromJson((l$user as Map<String, dynamic>));
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearFilterInput.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassFilterInput.fromJson(
              (l$classes as Map<String, dynamic>),
            );
    }
    return Input_ScopeGrantFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ScopeGrantFilterInput>? get and =>
      (_$data['and'] as List<Input_ScopeGrantFilterInput>?);

  List<Input_ScopeGrantFilterInput>? get or =>
      (_$data['or'] as List<Input_ScopeGrantFilterInput>?);

  List<Input_ScopeGrantFilterInput>? get not =>
      (_$data['not'] as List<Input_ScopeGrantFilterInput>?);

  Input_ScopeGrantFilterPermissionId? get permissionId =>
      (_$data['permissionId'] as Input_ScopeGrantFilterPermissionId?);

  Input_ScopeGrantFilterUid? get uid =>
      (_$data['uid'] as Input_ScopeGrantFilterUid?);

  Input_ScopeGrantFilterAdminOnService? get adminOnService =>
      (_$data['adminOnService'] as Input_ScopeGrantFilterAdminOnService?);

  Input_ScopeGrantFilterServiceGender? get serviceGender =>
      (_$data['serviceGender'] as Input_ScopeGrantFilterServiceGender?);

  Input_ScopeGrantFilterServiceStudyYear? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Input_ScopeGrantFilterServiceStudyYear?);

  Input_ScopeGrantFilterServiceAllowEdit? get serviceAllowEdit =>
      (_$data['serviceAllowEdit'] as Input_ScopeGrantFilterServiceAllowEdit?);

  Input_ScopeGrantFilterServiceAdminOnUsers? get serviceAdminOnUsers =>
      (_$data['serviceAdminOnUsers']
          as Input_ScopeGrantFilterServiceAdminOnUsers?);

  Input_ScopeGrantFilterAdminOnGroup? get adminOnGroup =>
      (_$data['adminOnGroup'] as Input_ScopeGrantFilterAdminOnGroup?);

  Input_ScopeGrantFilterGroupAllowEdit? get groupAllowEdit =>
      (_$data['groupAllowEdit'] as Input_ScopeGrantFilterGroupAllowEdit?);

  Input_ScopeGrantFilterGroupAdminOnUsers? get groupAdminOnUsers =>
      (_$data['groupAdminOnUsers'] as Input_ScopeGrantFilterGroupAdminOnUsers?);

  Input_ScopeGrantFilterAdminOnArea? get adminOnArea =>
      (_$data['adminOnArea'] as Input_ScopeGrantFilterAdminOnArea?);

  Input_ScopeGrantFilterAreaAllowEdit? get areaAllowEdit =>
      (_$data['areaAllowEdit'] as Input_ScopeGrantFilterAreaAllowEdit?);

  Input_ScopeGrantFilterAreaAdminOnUsers? get areaAdminOnUsers =>
      (_$data['areaAdminOnUsers'] as Input_ScopeGrantFilterAreaAdminOnUsers?);

  Input_ScopeGrantFilterServiceWriteRelatedFamilies?
  get serviceWriteRelatedFamilies =>
      (_$data['serviceWriteRelatedFamilies']
          as Input_ScopeGrantFilterServiceWriteRelatedFamilies?);

  Input_ScopeGrantFilterGroupWriteRelatedFamilies?
  get groupWriteRelatedFamilies =>
      (_$data['groupWriteRelatedFamilies']
          as Input_ScopeGrantFilterGroupWriteRelatedFamilies?);

  Input_ScopeGrantFilterAreaAllowExport? get areaAllowExport =>
      (_$data['areaAllowExport'] as Input_ScopeGrantFilterAreaAllowExport?);

  Input_ScopeGrantFilterServiceAllowExport? get serviceAllowExport =>
      (_$data['serviceAllowExport']
          as Input_ScopeGrantFilterServiceAllowExport?);

  Input_ScopeGrantFilterGroupAllowExport? get groupAllowExport =>
      (_$data['groupAllowExport'] as Input_ScopeGrantFilterGroupAllowExport?);

  Input_ScopeGrantFilterServiceAllowRecordAttendance?
  get serviceAllowRecordAttendance =>
      (_$data['serviceAllowRecordAttendance']
          as Input_ScopeGrantFilterServiceAllowRecordAttendance?);

  Input_ScopeGrantFilterServiceAllowRecordServantsAttendance?
  get serviceAllowRecordServantsAttendance =>
      (_$data['serviceAllowRecordServantsAttendance']
          as Input_ScopeGrantFilterServiceAllowRecordServantsAttendance?);

  Input_ScopeGrantFilterGroupAllowRecordAttendance?
  get groupAllowRecordAttendance =>
      (_$data['groupAllowRecordAttendance']
          as Input_ScopeGrantFilterGroupAllowRecordAttendance?);

  Input_ScopeGrantFilterGroupAllowRecordServantsAttendance?
  get groupAllowRecordServantsAttendance =>
      (_$data['groupAllowRecordServantsAttendance']
          as Input_ScopeGrantFilterGroupAllowRecordServantsAttendance?);

  Input_AreaFilterInput? get area => (_$data['area'] as Input_AreaFilterInput?);

  Input_GroupFilterInput? get group =>
      (_$data['group'] as Input_GroupFilterInput?);

  Input_ServiceFilterInput? get service =>
      (_$data['service'] as Input_ServiceFilterInput?);

  Input_UserFilterInput? get user => (_$data['user'] as Input_UserFilterInput?);

  Input_StudyYearFilterInput? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearFilterInput?);

  Input_ClassFilterInput? get classes =>
      (_$data['classes'] as Input_ClassFilterInput?);

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
    if (_$data.containsKey('permissionId')) {
      final l$permissionId = permissionId;
      result$data['permissionId'] = l$permissionId?.toJson();
    }
    if (_$data.containsKey('uid')) {
      final l$uid = uid;
      result$data['uid'] = l$uid?.toJson();
    }
    if (_$data.containsKey('adminOnService')) {
      final l$adminOnService = adminOnService;
      result$data['adminOnService'] = l$adminOnService?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender?.toJson();
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear?.toJson();
    }
    if (_$data.containsKey('serviceAllowEdit')) {
      final l$serviceAllowEdit = serviceAllowEdit;
      result$data['serviceAllowEdit'] = l$serviceAllowEdit?.toJson();
    }
    if (_$data.containsKey('serviceAdminOnUsers')) {
      final l$serviceAdminOnUsers = serviceAdminOnUsers;
      result$data['serviceAdminOnUsers'] = l$serviceAdminOnUsers?.toJson();
    }
    if (_$data.containsKey('adminOnGroup')) {
      final l$adminOnGroup = adminOnGroup;
      result$data['adminOnGroup'] = l$adminOnGroup?.toJson();
    }
    if (_$data.containsKey('groupAllowEdit')) {
      final l$groupAllowEdit = groupAllowEdit;
      result$data['groupAllowEdit'] = l$groupAllowEdit?.toJson();
    }
    if (_$data.containsKey('groupAdminOnUsers')) {
      final l$groupAdminOnUsers = groupAdminOnUsers;
      result$data['groupAdminOnUsers'] = l$groupAdminOnUsers?.toJson();
    }
    if (_$data.containsKey('adminOnArea')) {
      final l$adminOnArea = adminOnArea;
      result$data['adminOnArea'] = l$adminOnArea?.toJson();
    }
    if (_$data.containsKey('areaAllowEdit')) {
      final l$areaAllowEdit = areaAllowEdit;
      result$data['areaAllowEdit'] = l$areaAllowEdit?.toJson();
    }
    if (_$data.containsKey('areaAdminOnUsers')) {
      final l$areaAdminOnUsers = areaAdminOnUsers;
      result$data['areaAdminOnUsers'] = l$areaAdminOnUsers?.toJson();
    }
    if (_$data.containsKey('serviceWriteRelatedFamilies')) {
      final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
      result$data['serviceWriteRelatedFamilies'] = l$serviceWriteRelatedFamilies
          ?.toJson();
    }
    if (_$data.containsKey('groupWriteRelatedFamilies')) {
      final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
      result$data['groupWriteRelatedFamilies'] = l$groupWriteRelatedFamilies
          ?.toJson();
    }
    if (_$data.containsKey('areaAllowExport')) {
      final l$areaAllowExport = areaAllowExport;
      result$data['areaAllowExport'] = l$areaAllowExport?.toJson();
    }
    if (_$data.containsKey('serviceAllowExport')) {
      final l$serviceAllowExport = serviceAllowExport;
      result$data['serviceAllowExport'] = l$serviceAllowExport?.toJson();
    }
    if (_$data.containsKey('groupAllowExport')) {
      final l$groupAllowExport = groupAllowExport;
      result$data['groupAllowExport'] = l$groupAllowExport?.toJson();
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
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
  get copyWith => CopyWith_Input_ScopeGrantFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ScopeGrantFilterInput ||
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
    final l$permissionId = permissionId;
    final lOther$permissionId = other.permissionId;
    if (_$data.containsKey('permissionId') !=
        other._$data.containsKey('permissionId')) {
      return false;
    }
    if (l$permissionId != lOther$permissionId) {
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
    final l$adminOnService = adminOnService;
    final lOther$adminOnService = other.adminOnService;
    if (_$data.containsKey('adminOnService') !=
        other._$data.containsKey('adminOnService')) {
      return false;
    }
    if (l$adminOnService != lOther$adminOnService) {
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
    final l$serviceAllowEdit = serviceAllowEdit;
    final lOther$serviceAllowEdit = other.serviceAllowEdit;
    if (_$data.containsKey('serviceAllowEdit') !=
        other._$data.containsKey('serviceAllowEdit')) {
      return false;
    }
    if (l$serviceAllowEdit != lOther$serviceAllowEdit) {
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
    final l$adminOnGroup = adminOnGroup;
    final lOther$adminOnGroup = other.adminOnGroup;
    if (_$data.containsKey('adminOnGroup') !=
        other._$data.containsKey('adminOnGroup')) {
      return false;
    }
    if (l$adminOnGroup != lOther$adminOnGroup) {
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
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final lOther$groupAdminOnUsers = other.groupAdminOnUsers;
    if (_$data.containsKey('groupAdminOnUsers') !=
        other._$data.containsKey('groupAdminOnUsers')) {
      return false;
    }
    if (l$groupAdminOnUsers != lOther$groupAdminOnUsers) {
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
    final l$areaAllowEdit = areaAllowEdit;
    final lOther$areaAllowEdit = other.areaAllowEdit;
    if (_$data.containsKey('areaAllowEdit') !=
        other._$data.containsKey('areaAllowEdit')) {
      return false;
    }
    if (l$areaAllowEdit != lOther$areaAllowEdit) {
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
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final lOther$groupWriteRelatedFamilies = other.groupWriteRelatedFamilies;
    if (_$data.containsKey('groupWriteRelatedFamilies') !=
        other._$data.containsKey('groupWriteRelatedFamilies')) {
      return false;
    }
    if (l$groupWriteRelatedFamilies != lOther$groupWriteRelatedFamilies) {
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
    final l$serviceAllowExport = serviceAllowExport;
    final lOther$serviceAllowExport = other.serviceAllowExport;
    if (_$data.containsKey('serviceAllowExport') !=
        other._$data.containsKey('serviceAllowExport')) {
      return false;
    }
    if (l$serviceAllowExport != lOther$serviceAllowExport) {
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
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$permissionId = permissionId;
    final l$uid = uid;
    final l$adminOnService = adminOnService;
    final l$serviceGender = serviceGender;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceAllowEdit = serviceAllowEdit;
    final l$serviceAdminOnUsers = serviceAdminOnUsers;
    final l$adminOnGroup = adminOnGroup;
    final l$groupAllowEdit = groupAllowEdit;
    final l$groupAdminOnUsers = groupAdminOnUsers;
    final l$adminOnArea = adminOnArea;
    final l$areaAllowEdit = areaAllowEdit;
    final l$areaAdminOnUsers = areaAdminOnUsers;
    final l$serviceWriteRelatedFamilies = serviceWriteRelatedFamilies;
    final l$groupWriteRelatedFamilies = groupWriteRelatedFamilies;
    final l$areaAllowExport = areaAllowExport;
    final l$serviceAllowExport = serviceAllowExport;
    final l$groupAllowExport = groupAllowExport;
    final l$serviceAllowRecordAttendance = serviceAllowRecordAttendance;
    final l$serviceAllowRecordServantsAttendance =
        serviceAllowRecordServantsAttendance;
    final l$groupAllowRecordAttendance = groupAllowRecordAttendance;
    final l$groupAllowRecordServantsAttendance =
        groupAllowRecordServantsAttendance;
    final l$area = area;
    final l$group = group;
    final l$service = service;
    final l$user = user;
    final l$studyYear = studyYear;
    final l$classes = classes;
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
      _$data.containsKey('permissionId') ? l$permissionId : const {},
      _$data.containsKey('uid') ? l$uid : const {},
      _$data.containsKey('adminOnService') ? l$adminOnService : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceAllowEdit') ? l$serviceAllowEdit : const {},
      _$data.containsKey('serviceAdminOnUsers')
          ? l$serviceAdminOnUsers
          : const {},
      _$data.containsKey('adminOnGroup') ? l$adminOnGroup : const {},
      _$data.containsKey('groupAllowEdit') ? l$groupAllowEdit : const {},
      _$data.containsKey('groupAdminOnUsers') ? l$groupAdminOnUsers : const {},
      _$data.containsKey('adminOnArea') ? l$adminOnArea : const {},
      _$data.containsKey('areaAllowEdit') ? l$areaAllowEdit : const {},
      _$data.containsKey('areaAdminOnUsers') ? l$areaAdminOnUsers : const {},
      _$data.containsKey('serviceWriteRelatedFamilies')
          ? l$serviceWriteRelatedFamilies
          : const {},
      _$data.containsKey('groupWriteRelatedFamilies')
          ? l$groupWriteRelatedFamilies
          : const {},
      _$data.containsKey('areaAllowExport') ? l$areaAllowExport : const {},
      _$data.containsKey('serviceAllowExport')
          ? l$serviceAllowExport
          : const {},
      _$data.containsKey('groupAllowExport') ? l$groupAllowExport : const {},
      _$data.containsKey('serviceAllowRecordAttendance')
          ? l$serviceAllowRecordAttendance
          : const {},
      _$data.containsKey('serviceAllowRecordServantsAttendance')
          ? l$serviceAllowRecordServantsAttendance
          : const {},
      _$data.containsKey('groupAllowRecordAttendance')
          ? l$groupAllowRecordAttendance
          : const {},
      _$data.containsKey('groupAllowRecordServantsAttendance')
          ? l$groupAllowRecordServantsAttendance
          : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('classes') ? l$classes : const {},
    ]);
  }
}

abstract class CopyWith_Input_ScopeGrantFilterInput<TRes> {
  factory CopyWith_Input_ScopeGrantFilterInput(
    Input_ScopeGrantFilterInput instance,
    TRes Function(Input_ScopeGrantFilterInput) then,
  ) = _CopyWithImpl_Input_ScopeGrantFilterInput;

  factory CopyWith_Input_ScopeGrantFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ScopeGrantFilterInput;

  TRes call({
    List<Input_ScopeGrantFilterInput>? and,
    List<Input_ScopeGrantFilterInput>? or,
    List<Input_ScopeGrantFilterInput>? not,
    Input_ScopeGrantFilterPermissionId? permissionId,
    Input_ScopeGrantFilterUid? uid,
    Input_ScopeGrantFilterAdminOnService? adminOnService,
    Input_ScopeGrantFilterServiceGender? serviceGender,
    Input_ScopeGrantFilterServiceStudyYear? serviceStudyYear,
    Input_ScopeGrantFilterServiceAllowEdit? serviceAllowEdit,
    Input_ScopeGrantFilterServiceAdminOnUsers? serviceAdminOnUsers,
    Input_ScopeGrantFilterAdminOnGroup? adminOnGroup,
    Input_ScopeGrantFilterGroupAllowEdit? groupAllowEdit,
    Input_ScopeGrantFilterGroupAdminOnUsers? groupAdminOnUsers,
    Input_ScopeGrantFilterAdminOnArea? adminOnArea,
    Input_ScopeGrantFilterAreaAllowEdit? areaAllowEdit,
    Input_ScopeGrantFilterAreaAdminOnUsers? areaAdminOnUsers,
    Input_ScopeGrantFilterServiceWriteRelatedFamilies?
    serviceWriteRelatedFamilies,
    Input_ScopeGrantFilterGroupWriteRelatedFamilies? groupWriteRelatedFamilies,
    Input_ScopeGrantFilterAreaAllowExport? areaAllowExport,
    Input_ScopeGrantFilterServiceAllowExport? serviceAllowExport,
    Input_ScopeGrantFilterGroupAllowExport? groupAllowExport,
    Input_ScopeGrantFilterServiceAllowRecordAttendance?
    serviceAllowRecordAttendance,
    Input_ScopeGrantFilterServiceAllowRecordServantsAttendance?
    serviceAllowRecordServantsAttendance,
    Input_ScopeGrantFilterGroupAllowRecordAttendance?
    groupAllowRecordAttendance,
    Input_ScopeGrantFilterGroupAllowRecordServantsAttendance?
    groupAllowRecordServantsAttendance,
    Input_AreaFilterInput? area,
    Input_GroupFilterInput? group,
    Input_ServiceFilterInput? service,
    Input_UserFilterInput? user,
    Input_StudyYearFilterInput? studyYear,
    Input_ClassFilterInput? classes,
  });
  TRes and(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith_Input_ScopeGrantFilterPermissionId<TRes> get permissionId;
  CopyWith_Input_ScopeGrantFilterUid<TRes> get uid;
  CopyWith_Input_ScopeGrantFilterAdminOnService<TRes> get adminOnService;
  CopyWith_Input_ScopeGrantFilterServiceGender<TRes> get serviceGender;
  CopyWith_Input_ScopeGrantFilterServiceStudyYear<TRes> get serviceStudyYear;
  CopyWith_Input_ScopeGrantFilterServiceAllowEdit<TRes> get serviceAllowEdit;
  CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers<TRes>
  get serviceAdminOnUsers;
  CopyWith_Input_ScopeGrantFilterAdminOnGroup<TRes> get adminOnGroup;
  CopyWith_Input_ScopeGrantFilterGroupAllowEdit<TRes> get groupAllowEdit;
  CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers<TRes> get groupAdminOnUsers;
  CopyWith_Input_ScopeGrantFilterAdminOnArea<TRes> get adminOnArea;
  CopyWith_Input_ScopeGrantFilterAreaAllowEdit<TRes> get areaAllowEdit;
  CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers<TRes> get areaAdminOnUsers;
  CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies<TRes>
  get serviceWriteRelatedFamilies;
  CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies<TRes>
  get groupWriteRelatedFamilies;
  CopyWith_Input_ScopeGrantFilterAreaAllowExport<TRes> get areaAllowExport;
  CopyWith_Input_ScopeGrantFilterServiceAllowExport<TRes>
  get serviceAllowExport;
  CopyWith_Input_ScopeGrantFilterGroupAllowExport<TRes> get groupAllowExport;
  CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance<TRes>
  get serviceAllowRecordAttendance;
  CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance<TRes>
  get serviceAllowRecordServantsAttendance;
  CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes>
  get groupAllowRecordAttendance;
  CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<TRes>
  get groupAllowRecordServantsAttendance;
  CopyWith_Input_AreaFilterInput<TRes> get area;
  CopyWith_Input_GroupFilterInput<TRes> get group;
  CopyWith_Input_ServiceFilterInput<TRes> get service;
  CopyWith_Input_UserFilterInput<TRes> get user;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear;
  CopyWith_Input_ClassFilterInput<TRes> get classes;
}

class _CopyWithImpl_Input_ScopeGrantFilterInput<TRes>
    implements CopyWith_Input_ScopeGrantFilterInput<TRes> {
  _CopyWithImpl_Input_ScopeGrantFilterInput(this._instance, this._then);

  final Input_ScopeGrantFilterInput _instance;

  final TRes Function(Input_ScopeGrantFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? permissionId = _undefined,
    Object? uid = _undefined,
    Object? adminOnService = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceAllowEdit = _undefined,
    Object? serviceAdminOnUsers = _undefined,
    Object? adminOnGroup = _undefined,
    Object? groupAllowEdit = _undefined,
    Object? groupAdminOnUsers = _undefined,
    Object? adminOnArea = _undefined,
    Object? areaAllowEdit = _undefined,
    Object? areaAdminOnUsers = _undefined,
    Object? serviceWriteRelatedFamilies = _undefined,
    Object? groupWriteRelatedFamilies = _undefined,
    Object? areaAllowExport = _undefined,
    Object? serviceAllowExport = _undefined,
    Object? groupAllowExport = _undefined,
    Object? serviceAllowRecordAttendance = _undefined,
    Object? serviceAllowRecordServantsAttendance = _undefined,
    Object? groupAllowRecordAttendance = _undefined,
    Object? groupAllowRecordServantsAttendance = _undefined,
    Object? area = _undefined,
    Object? group = _undefined,
    Object? service = _undefined,
    Object? user = _undefined,
    Object? studyYear = _undefined,
    Object? classes = _undefined,
  }) => _then(
    Input_ScopeGrantFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_ScopeGrantFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_ScopeGrantFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_ScopeGrantFilterInput>?),
      if (permissionId != _undefined)
        'permissionId': (permissionId as Input_ScopeGrantFilterPermissionId?),
      if (uid != _undefined) 'uid': (uid as Input_ScopeGrantFilterUid?),
      if (adminOnService != _undefined)
        'adminOnService':
            (adminOnService as Input_ScopeGrantFilterAdminOnService?),
      if (serviceGender != _undefined)
        'serviceGender':
            (serviceGender as Input_ScopeGrantFilterServiceGender?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear':
            (serviceStudyYear as Input_ScopeGrantFilterServiceStudyYear?),
      if (serviceAllowEdit != _undefined)
        'serviceAllowEdit':
            (serviceAllowEdit as Input_ScopeGrantFilterServiceAllowEdit?),
      if (serviceAdminOnUsers != _undefined)
        'serviceAdminOnUsers':
            (serviceAdminOnUsers as Input_ScopeGrantFilterServiceAdminOnUsers?),
      if (adminOnGroup != _undefined)
        'adminOnGroup': (adminOnGroup as Input_ScopeGrantFilterAdminOnGroup?),
      if (groupAllowEdit != _undefined)
        'groupAllowEdit':
            (groupAllowEdit as Input_ScopeGrantFilterGroupAllowEdit?),
      if (groupAdminOnUsers != _undefined)
        'groupAdminOnUsers':
            (groupAdminOnUsers as Input_ScopeGrantFilterGroupAdminOnUsers?),
      if (adminOnArea != _undefined)
        'adminOnArea': (adminOnArea as Input_ScopeGrantFilterAdminOnArea?),
      if (areaAllowEdit != _undefined)
        'areaAllowEdit':
            (areaAllowEdit as Input_ScopeGrantFilterAreaAllowEdit?),
      if (areaAdminOnUsers != _undefined)
        'areaAdminOnUsers':
            (areaAdminOnUsers as Input_ScopeGrantFilterAreaAdminOnUsers?),
      if (serviceWriteRelatedFamilies != _undefined)
        'serviceWriteRelatedFamilies':
            (serviceWriteRelatedFamilies
                as Input_ScopeGrantFilterServiceWriteRelatedFamilies?),
      if (groupWriteRelatedFamilies != _undefined)
        'groupWriteRelatedFamilies':
            (groupWriteRelatedFamilies
                as Input_ScopeGrantFilterGroupWriteRelatedFamilies?),
      if (areaAllowExport != _undefined)
        'areaAllowExport':
            (areaAllowExport as Input_ScopeGrantFilterAreaAllowExport?),
      if (serviceAllowExport != _undefined)
        'serviceAllowExport':
            (serviceAllowExport as Input_ScopeGrantFilterServiceAllowExport?),
      if (groupAllowExport != _undefined)
        'groupAllowExport':
            (groupAllowExport as Input_ScopeGrantFilterGroupAllowExport?),
      if (serviceAllowRecordAttendance != _undefined)
        'serviceAllowRecordAttendance':
            (serviceAllowRecordAttendance
                as Input_ScopeGrantFilterServiceAllowRecordAttendance?),
      if (serviceAllowRecordServantsAttendance != _undefined)
        'serviceAllowRecordServantsAttendance':
            (serviceAllowRecordServantsAttendance
                as Input_ScopeGrantFilterServiceAllowRecordServantsAttendance?),
      if (groupAllowRecordAttendance != _undefined)
        'groupAllowRecordAttendance':
            (groupAllowRecordAttendance
                as Input_ScopeGrantFilterGroupAllowRecordAttendance?),
      if (groupAllowRecordServantsAttendance != _undefined)
        'groupAllowRecordServantsAttendance':
            (groupAllowRecordServantsAttendance
                as Input_ScopeGrantFilterGroupAllowRecordServantsAttendance?),
      if (area != _undefined) 'area': (area as Input_AreaFilterInput?),
      if (group != _undefined) 'group': (group as Input_GroupFilterInput?),
      if (service != _undefined)
        'service': (service as Input_ServiceFilterInput?),
      if (user != _undefined) 'user': (user as Input_UserFilterInput?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearFilterInput?),
      if (classes != _undefined)
        'classes': (classes as Input_ClassFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_ScopeGrantFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_ScopeGrantFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_ScopeGrantFilterInput>? Function(
      Iterable<
        CopyWith_Input_ScopeGrantFilterInput<Input_ScopeGrantFilterInput>
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_ScopeGrantFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_ScopeGrantFilterPermissionId<TRes> get permissionId {
    final local$permissionId = _instance.permissionId;
    return local$permissionId == null
        ? CopyWith_Input_ScopeGrantFilterPermissionId.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterPermissionId(
            local$permissionId,
            (e) => call(permissionId: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterUid<TRes> get uid {
    final local$uid = _instance.uid;
    return local$uid == null
        ? CopyWith_Input_ScopeGrantFilterUid.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterUid(local$uid, (e) => call(uid: e));
  }

  CopyWith_Input_ScopeGrantFilterAdminOnService<TRes> get adminOnService {
    final local$adminOnService = _instance.adminOnService;
    return local$adminOnService == null
        ? CopyWith_Input_ScopeGrantFilterAdminOnService.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAdminOnService(
            local$adminOnService,
            (e) => call(adminOnService: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceGender<TRes> get serviceGender {
    final local$serviceGender = _instance.serviceGender;
    return local$serviceGender == null
        ? CopyWith_Input_ScopeGrantFilterServiceGender.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterServiceGender(
            local$serviceGender,
            (e) => call(serviceGender: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceStudyYear<TRes> get serviceStudyYear {
    final local$serviceStudyYear = _instance.serviceStudyYear;
    return local$serviceStudyYear == null
        ? CopyWith_Input_ScopeGrantFilterServiceStudyYear.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterServiceStudyYear(
            local$serviceStudyYear,
            (e) => call(serviceStudyYear: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAllowEdit<TRes> get serviceAllowEdit {
    final local$serviceAllowEdit = _instance.serviceAllowEdit;
    return local$serviceAllowEdit == null
        ? CopyWith_Input_ScopeGrantFilterServiceAllowEdit.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterServiceAllowEdit(
            local$serviceAllowEdit,
            (e) => call(serviceAllowEdit: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers<TRes>
  get serviceAdminOnUsers {
    final local$serviceAdminOnUsers = _instance.serviceAdminOnUsers;
    return local$serviceAdminOnUsers == null
        ? CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers(
            local$serviceAdminOnUsers,
            (e) => call(serviceAdminOnUsers: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAdminOnGroup<TRes> get adminOnGroup {
    final local$adminOnGroup = _instance.adminOnGroup;
    return local$adminOnGroup == null
        ? CopyWith_Input_ScopeGrantFilterAdminOnGroup.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAdminOnGroup(
            local$adminOnGroup,
            (e) => call(adminOnGroup: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowEdit<TRes> get groupAllowEdit {
    final local$groupAllowEdit = _instance.groupAllowEdit;
    return local$groupAllowEdit == null
        ? CopyWith_Input_ScopeGrantFilterGroupAllowEdit.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterGroupAllowEdit(
            local$groupAllowEdit,
            (e) => call(groupAllowEdit: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers<TRes> get groupAdminOnUsers {
    final local$groupAdminOnUsers = _instance.groupAdminOnUsers;
    return local$groupAdminOnUsers == null
        ? CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers(
            local$groupAdminOnUsers,
            (e) => call(groupAdminOnUsers: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAdminOnArea<TRes> get adminOnArea {
    final local$adminOnArea = _instance.adminOnArea;
    return local$adminOnArea == null
        ? CopyWith_Input_ScopeGrantFilterAdminOnArea.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAdminOnArea(
            local$adminOnArea,
            (e) => call(adminOnArea: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAreaAllowEdit<TRes> get areaAllowEdit {
    final local$areaAllowEdit = _instance.areaAllowEdit;
    return local$areaAllowEdit == null
        ? CopyWith_Input_ScopeGrantFilterAreaAllowEdit.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAreaAllowEdit(
            local$areaAllowEdit,
            (e) => call(areaAllowEdit: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers<TRes> get areaAdminOnUsers {
    final local$areaAdminOnUsers = _instance.areaAdminOnUsers;
    return local$areaAdminOnUsers == null
        ? CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers(
            local$areaAdminOnUsers,
            (e) => call(areaAdminOnUsers: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies<TRes>
  get serviceWriteRelatedFamilies {
    final local$serviceWriteRelatedFamilies =
        _instance.serviceWriteRelatedFamilies;
    return local$serviceWriteRelatedFamilies == null
        ? CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies(
            local$serviceWriteRelatedFamilies,
            (e) => call(serviceWriteRelatedFamilies: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies<TRes>
  get groupWriteRelatedFamilies {
    final local$groupWriteRelatedFamilies = _instance.groupWriteRelatedFamilies;
    return local$groupWriteRelatedFamilies == null
        ? CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies(
            local$groupWriteRelatedFamilies,
            (e) => call(groupWriteRelatedFamilies: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterAreaAllowExport<TRes> get areaAllowExport {
    final local$areaAllowExport = _instance.areaAllowExport;
    return local$areaAllowExport == null
        ? CopyWith_Input_ScopeGrantFilterAreaAllowExport.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterAreaAllowExport(
            local$areaAllowExport,
            (e) => call(areaAllowExport: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAllowExport<TRes>
  get serviceAllowExport {
    final local$serviceAllowExport = _instance.serviceAllowExport;
    return local$serviceAllowExport == null
        ? CopyWith_Input_ScopeGrantFilterServiceAllowExport.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceAllowExport(
            local$serviceAllowExport,
            (e) => call(serviceAllowExport: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowExport<TRes> get groupAllowExport {
    final local$groupAllowExport = _instance.groupAllowExport;
    return local$groupAllowExport == null
        ? CopyWith_Input_ScopeGrantFilterGroupAllowExport.stub(_then(_instance))
        : CopyWith_Input_ScopeGrantFilterGroupAllowExport(
            local$groupAllowExport,
            (e) => call(groupAllowExport: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance<TRes>
  get serviceAllowRecordAttendance {
    final local$serviceAllowRecordAttendance =
        _instance.serviceAllowRecordAttendance;
    return local$serviceAllowRecordAttendance == null
        ? CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance(
            local$serviceAllowRecordAttendance,
            (e) => call(serviceAllowRecordAttendance: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance<TRes>
  get serviceAllowRecordServantsAttendance {
    final local$serviceAllowRecordServantsAttendance =
        _instance.serviceAllowRecordServantsAttendance;
    return local$serviceAllowRecordServantsAttendance == null
        ? CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance(
            local$serviceAllowRecordServantsAttendance,
            (e) => call(serviceAllowRecordServantsAttendance: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes>
  get groupAllowRecordAttendance {
    final local$groupAllowRecordAttendance =
        _instance.groupAllowRecordAttendance;
    return local$groupAllowRecordAttendance == null
        ? CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance(
            local$groupAllowRecordAttendance,
            (e) => call(groupAllowRecordAttendance: e),
          );
  }

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<TRes>
  get groupAllowRecordServantsAttendance {
    final local$groupAllowRecordServantsAttendance =
        _instance.groupAllowRecordServantsAttendance;
    return local$groupAllowRecordServantsAttendance == null
        ? CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance.stub(
            _then(_instance),
          )
        : CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance(
            local$groupAllowRecordServantsAttendance,
            (e) => call(groupAllowRecordServantsAttendance: e),
          );
  }

  CopyWith_Input_AreaFilterInput<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreaFilterInput.stub(_then(_instance))
        : CopyWith_Input_AreaFilterInput(local$area, (e) => call(area: e));
  }

  CopyWith_Input_GroupFilterInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupFilterInput.stub(_then(_instance))
        : CopyWith_Input_GroupFilterInput(local$group, (e) => call(group: e));
  }

  CopyWith_Input_ServiceFilterInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServiceFilterInput.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterInput(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$user, (e) => call(user: e));
  }

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Input_ClassFilterInput<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassFilterInput.stub(_then(_instance))
        : CopyWith_Input_ClassFilterInput(
            local$classes,
            (e) => call(classes: e),
          );
  }
}

class _CopyWithStubImpl_Input_ScopeGrantFilterInput<TRes>
    implements CopyWith_Input_ScopeGrantFilterInput<TRes> {
  _CopyWithStubImpl_Input_ScopeGrantFilterInput(this._res);

  TRes _res;

  call({
    List<Input_ScopeGrantFilterInput>? and,
    List<Input_ScopeGrantFilterInput>? or,
    List<Input_ScopeGrantFilterInput>? not,
    Input_ScopeGrantFilterPermissionId? permissionId,
    Input_ScopeGrantFilterUid? uid,
    Input_ScopeGrantFilterAdminOnService? adminOnService,
    Input_ScopeGrantFilterServiceGender? serviceGender,
    Input_ScopeGrantFilterServiceStudyYear? serviceStudyYear,
    Input_ScopeGrantFilterServiceAllowEdit? serviceAllowEdit,
    Input_ScopeGrantFilterServiceAdminOnUsers? serviceAdminOnUsers,
    Input_ScopeGrantFilterAdminOnGroup? adminOnGroup,
    Input_ScopeGrantFilterGroupAllowEdit? groupAllowEdit,
    Input_ScopeGrantFilterGroupAdminOnUsers? groupAdminOnUsers,
    Input_ScopeGrantFilterAdminOnArea? adminOnArea,
    Input_ScopeGrantFilterAreaAllowEdit? areaAllowEdit,
    Input_ScopeGrantFilterAreaAdminOnUsers? areaAdminOnUsers,
    Input_ScopeGrantFilterServiceWriteRelatedFamilies?
    serviceWriteRelatedFamilies,
    Input_ScopeGrantFilterGroupWriteRelatedFamilies? groupWriteRelatedFamilies,
    Input_ScopeGrantFilterAreaAllowExport? areaAllowExport,
    Input_ScopeGrantFilterServiceAllowExport? serviceAllowExport,
    Input_ScopeGrantFilterGroupAllowExport? groupAllowExport,
    Input_ScopeGrantFilterServiceAllowRecordAttendance?
    serviceAllowRecordAttendance,
    Input_ScopeGrantFilterServiceAllowRecordServantsAttendance?
    serviceAllowRecordServantsAttendance,
    Input_ScopeGrantFilterGroupAllowRecordAttendance?
    groupAllowRecordAttendance,
    Input_ScopeGrantFilterGroupAllowRecordServantsAttendance?
    groupAllowRecordServantsAttendance,
    Input_AreaFilterInput? area,
    Input_GroupFilterInput? group,
    Input_ServiceFilterInput? service,
    Input_UserFilterInput? user,
    Input_StudyYearFilterInput? studyYear,
    Input_ClassFilterInput? classes,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_ScopeGrantFilterPermissionId<TRes> get permissionId =>
      CopyWith_Input_ScopeGrantFilterPermissionId.stub(_res);

  CopyWith_Input_ScopeGrantFilterUid<TRes> get uid =>
      CopyWith_Input_ScopeGrantFilterUid.stub(_res);

  CopyWith_Input_ScopeGrantFilterAdminOnService<TRes> get adminOnService =>
      CopyWith_Input_ScopeGrantFilterAdminOnService.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceGender<TRes> get serviceGender =>
      CopyWith_Input_ScopeGrantFilterServiceGender.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceStudyYear<TRes> get serviceStudyYear =>
      CopyWith_Input_ScopeGrantFilterServiceStudyYear.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAllowEdit<TRes> get serviceAllowEdit =>
      CopyWith_Input_ScopeGrantFilterServiceAllowEdit.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers<TRes>
  get serviceAdminOnUsers =>
      CopyWith_Input_ScopeGrantFilterServiceAdminOnUsers.stub(_res);

  CopyWith_Input_ScopeGrantFilterAdminOnGroup<TRes> get adminOnGroup =>
      CopyWith_Input_ScopeGrantFilterAdminOnGroup.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupAllowEdit<TRes> get groupAllowEdit =>
      CopyWith_Input_ScopeGrantFilterGroupAllowEdit.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers<TRes>
  get groupAdminOnUsers =>
      CopyWith_Input_ScopeGrantFilterGroupAdminOnUsers.stub(_res);

  CopyWith_Input_ScopeGrantFilterAdminOnArea<TRes> get adminOnArea =>
      CopyWith_Input_ScopeGrantFilterAdminOnArea.stub(_res);

  CopyWith_Input_ScopeGrantFilterAreaAllowEdit<TRes> get areaAllowEdit =>
      CopyWith_Input_ScopeGrantFilterAreaAllowEdit.stub(_res);

  CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers<TRes> get areaAdminOnUsers =>
      CopyWith_Input_ScopeGrantFilterAreaAdminOnUsers.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies<TRes>
  get serviceWriteRelatedFamilies =>
      CopyWith_Input_ScopeGrantFilterServiceWriteRelatedFamilies.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies<TRes>
  get groupWriteRelatedFamilies =>
      CopyWith_Input_ScopeGrantFilterGroupWriteRelatedFamilies.stub(_res);

  CopyWith_Input_ScopeGrantFilterAreaAllowExport<TRes> get areaAllowExport =>
      CopyWith_Input_ScopeGrantFilterAreaAllowExport.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAllowExport<TRes>
  get serviceAllowExport =>
      CopyWith_Input_ScopeGrantFilterServiceAllowExport.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupAllowExport<TRes> get groupAllowExport =>
      CopyWith_Input_ScopeGrantFilterGroupAllowExport.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance<TRes>
  get serviceAllowRecordAttendance =>
      CopyWith_Input_ScopeGrantFilterServiceAllowRecordAttendance.stub(_res);

  CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance<TRes>
  get serviceAllowRecordServantsAttendance =>
      CopyWith_Input_ScopeGrantFilterServiceAllowRecordServantsAttendance.stub(
        _res,
      );

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance<TRes>
  get groupAllowRecordAttendance =>
      CopyWith_Input_ScopeGrantFilterGroupAllowRecordAttendance.stub(_res);

  CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance<TRes>
  get groupAllowRecordServantsAttendance =>
      CopyWith_Input_ScopeGrantFilterGroupAllowRecordServantsAttendance.stub(
        _res,
      );

  CopyWith_Input_AreaFilterInput<TRes> get area =>
      CopyWith_Input_AreaFilterInput.stub(_res);

  CopyWith_Input_GroupFilterInput<TRes> get group =>
      CopyWith_Input_GroupFilterInput.stub(_res);

  CopyWith_Input_ServiceFilterInput<TRes> get service =>
      CopyWith_Input_ServiceFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get user =>
      CopyWith_Input_UserFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_ClassFilterInput<TRes> get classes =>
      CopyWith_Input_ClassFilterInput.stub(_res);
}

class Input_ScopeGrantSortInput {
  factory Input_ScopeGrantSortInput({
    Enum_SortOrder? order,
    required Enum_ScopeGrantSortField field,
  }) => Input_ScopeGrantSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_ScopeGrantSortInput._(this._$data);

  factory Input_ScopeGrantSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_ScopeGrantSortField(
      (l$field as String),
    );
    return Input_ScopeGrantSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_ScopeGrantSortField get field =>
      (_$data['field'] as Enum_ScopeGrantSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_ScopeGrantSortField(l$field);
    return result$data;
  }

  CopyWith_Input_ScopeGrantSortInput<Input_ScopeGrantSortInput> get copyWith =>
      CopyWith_Input_ScopeGrantSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ScopeGrantSortInput ||
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
