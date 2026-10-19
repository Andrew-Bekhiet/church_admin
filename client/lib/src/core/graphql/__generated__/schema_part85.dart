// Part 85 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_DataCheckFilterFamilyCheck<TRes> {
  factory CopyWith_Input_DataCheckFilterFamilyCheck(
    Input_DataCheckFilterFamilyCheck instance,
    TRes Function(Input_DataCheckFilterFamilyCheck) then,
  ) = _CopyWithImpl_Input_DataCheckFilterFamilyCheck;

  factory CopyWith_Input_DataCheckFilterFamilyCheck.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckFilterFamilyCheck;

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

class _CopyWithImpl_Input_DataCheckFilterFamilyCheck<TRes>
    implements CopyWith_Input_DataCheckFilterFamilyCheck<TRes> {
  _CopyWithImpl_Input_DataCheckFilterFamilyCheck(this._instance, this._then);

  final Input_DataCheckFilterFamilyCheck _instance;

  final TRes Function(Input_DataCheckFilterFamilyCheck) _then;

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
    Input_DataCheckFilterFamilyCheck._({
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

class _CopyWithStubImpl_Input_DataCheckFilterFamilyCheck<TRes>
    implements CopyWith_Input_DataCheckFilterFamilyCheck<TRes> {
  _CopyWithStubImpl_Input_DataCheckFilterFamilyCheck(this._res);

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

class Input_DataCheckFilterUserOverride {
  factory Input_DataCheckFilterUserOverride({
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
  }) => Input_DataCheckFilterUserOverride._({
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

  Input_DataCheckFilterUserOverride._(this._$data);

  factory Input_DataCheckFilterUserOverride.fromJson(
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
    return Input_DataCheckFilterUserOverride._(result$data);
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

  CopyWith_Input_DataCheckFilterUserOverride<Input_DataCheckFilterUserOverride>
  get copyWith => CopyWith_Input_DataCheckFilterUserOverride(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckFilterUserOverride ||
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

abstract class CopyWith_Input_DataCheckFilterUserOverride<TRes> {
  factory CopyWith_Input_DataCheckFilterUserOverride(
    Input_DataCheckFilterUserOverride instance,
    TRes Function(Input_DataCheckFilterUserOverride) then,
  ) = _CopyWithImpl_Input_DataCheckFilterUserOverride;

  factory CopyWith_Input_DataCheckFilterUserOverride.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckFilterUserOverride;

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

class _CopyWithImpl_Input_DataCheckFilterUserOverride<TRes>
    implements CopyWith_Input_DataCheckFilterUserOverride<TRes> {
  _CopyWithImpl_Input_DataCheckFilterUserOverride(this._instance, this._then);

  final Input_DataCheckFilterUserOverride _instance;

  final TRes Function(Input_DataCheckFilterUserOverride) _then;

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
    Input_DataCheckFilterUserOverride._({
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

class _CopyWithStubImpl_Input_DataCheckFilterUserOverride<TRes>
    implements CopyWith_Input_DataCheckFilterUserOverride<TRes> {
  _CopyWithStubImpl_Input_DataCheckFilterUserOverride(this._res);

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

class Input_DataCheckFilterFamilyId {
  factory Input_DataCheckFilterFamilyId({
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
  }) => Input_DataCheckFilterFamilyId._({
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

  Input_DataCheckFilterFamilyId._(this._$data);

  factory Input_DataCheckFilterFamilyId.fromJson(Map<String, dynamic> data) {
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
    return Input_DataCheckFilterFamilyId._(result$data);
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

  CopyWith_Input_DataCheckFilterFamilyId<Input_DataCheckFilterFamilyId>
  get copyWith => CopyWith_Input_DataCheckFilterFamilyId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckFilterFamilyId ||
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

abstract class CopyWith_Input_DataCheckFilterFamilyId<TRes> {
  factory CopyWith_Input_DataCheckFilterFamilyId(
    Input_DataCheckFilterFamilyId instance,
    TRes Function(Input_DataCheckFilterFamilyId) then,
  ) = _CopyWithImpl_Input_DataCheckFilterFamilyId;

  factory CopyWith_Input_DataCheckFilterFamilyId.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckFilterFamilyId;

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

class _CopyWithImpl_Input_DataCheckFilterFamilyId<TRes>
    implements CopyWith_Input_DataCheckFilterFamilyId<TRes> {
  _CopyWithImpl_Input_DataCheckFilterFamilyId(this._instance, this._then);

  final Input_DataCheckFilterFamilyId _instance;

  final TRes Function(Input_DataCheckFilterFamilyId) _then;

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
    Input_DataCheckFilterFamilyId._({
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

class _CopyWithStubImpl_Input_DataCheckFilterFamilyId<TRes>
    implements CopyWith_Input_DataCheckFilterFamilyId<TRes> {
  _CopyWithStubImpl_Input_DataCheckFilterFamilyId(this._res);

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

class Input_DataCheckFilterInput {
  factory Input_DataCheckFilterInput({
    List<Input_DataCheckFilterInput>? and,
    List<Input_DataCheckFilterInput>? or,
    List<Input_DataCheckFilterInput>? not,
    Input_DataCheckFilterFamilyId? familyId,
    Input_DataCheckFilterUserOverride? userOverride,
    Input_DataCheckFilterFamilyCheck? familyCheck,
    Input_DataCheckFilterAddressCheck? addressCheck,
    Input_DataCheckFilterCompletenessPercent? completenessPercent,
    Input_DataCheckFilterIsComplete? isComplete,
    Input_FamilyFilterInput? family,
  }) => Input_DataCheckFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (familyId != null) r'familyId': familyId,
    if (userOverride != null) r'userOverride': userOverride,
    if (familyCheck != null) r'familyCheck': familyCheck,
    if (addressCheck != null) r'addressCheck': addressCheck,
    if (completenessPercent != null)
      r'completenessPercent': completenessPercent,
    if (isComplete != null) r'isComplete': isComplete,
    if (family != null) r'family': family,
  });

  Input_DataCheckFilterInput._(this._$data);

  factory Input_DataCheckFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_DataCheckFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_DataCheckFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_DataCheckFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_DataCheckFilterFamilyId.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userOverride')) {
      final l$userOverride = data['userOverride'];
      result$data['userOverride'] = l$userOverride == null
          ? null
          : Input_DataCheckFilterUserOverride.fromJson(
              (l$userOverride as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyCheck')) {
      final l$familyCheck = data['familyCheck'];
      result$data['familyCheck'] = l$familyCheck == null
          ? null
          : Input_DataCheckFilterFamilyCheck.fromJson(
              (l$familyCheck as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addressCheck')) {
      final l$addressCheck = data['addressCheck'];
      result$data['addressCheck'] = l$addressCheck == null
          ? null
          : Input_DataCheckFilterAddressCheck.fromJson(
              (l$addressCheck as Map<String, dynamic>),
            );
    }
    if (data.containsKey('completenessPercent')) {
      final l$completenessPercent = data['completenessPercent'];
      result$data['completenessPercent'] = l$completenessPercent == null
          ? null
          : Input_DataCheckFilterCompletenessPercent.fromJson(
              (l$completenessPercent as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = l$isComplete == null
          ? null
          : Input_DataCheckFilterIsComplete.fromJson(
              (l$isComplete as Map<String, dynamic>),
            );
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamilyFilterInput.fromJson(
              (l$family as Map<String, dynamic>),
            );
    }
    return Input_DataCheckFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_DataCheckFilterInput>? get and =>
      (_$data['and'] as List<Input_DataCheckFilterInput>?);

  List<Input_DataCheckFilterInput>? get or =>
      (_$data['or'] as List<Input_DataCheckFilterInput>?);

  List<Input_DataCheckFilterInput>? get not =>
      (_$data['not'] as List<Input_DataCheckFilterInput>?);

  Input_DataCheckFilterFamilyId? get familyId =>
      (_$data['familyId'] as Input_DataCheckFilterFamilyId?);

  Input_DataCheckFilterUserOverride? get userOverride =>
      (_$data['userOverride'] as Input_DataCheckFilterUserOverride?);

  Input_DataCheckFilterFamilyCheck? get familyCheck =>
      (_$data['familyCheck'] as Input_DataCheckFilterFamilyCheck?);

  Input_DataCheckFilterAddressCheck? get addressCheck =>
      (_$data['addressCheck'] as Input_DataCheckFilterAddressCheck?);

  Input_DataCheckFilterCompletenessPercent? get completenessPercent =>
      (_$data['completenessPercent']
          as Input_DataCheckFilterCompletenessPercent?);

  Input_DataCheckFilterIsComplete? get isComplete =>
      (_$data['isComplete'] as Input_DataCheckFilterIsComplete?);

  Input_FamilyFilterInput? get family =>
      (_$data['family'] as Input_FamilyFilterInput?);

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
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('userOverride')) {
      final l$userOverride = userOverride;
      result$data['userOverride'] = l$userOverride?.toJson();
    }
    if (_$data.containsKey('familyCheck')) {
      final l$familyCheck = familyCheck;
      result$data['familyCheck'] = l$familyCheck?.toJson();
    }
    if (_$data.containsKey('addressCheck')) {
      final l$addressCheck = addressCheck;
      result$data['addressCheck'] = l$addressCheck?.toJson();
    }
    if (_$data.containsKey('completenessPercent')) {
      final l$completenessPercent = completenessPercent;
      result$data['completenessPercent'] = l$completenessPercent?.toJson();
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DataCheckFilterInput<Input_DataCheckFilterInput>
  get copyWith => CopyWith_Input_DataCheckFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckFilterInput ||
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$userOverride = userOverride;
    final lOther$userOverride = other.userOverride;
    if (_$data.containsKey('userOverride') !=
        other._$data.containsKey('userOverride')) {
      return false;
    }
    if (l$userOverride != lOther$userOverride) {
      return false;
    }
    final l$familyCheck = familyCheck;
    final lOther$familyCheck = other.familyCheck;
    if (_$data.containsKey('familyCheck') !=
        other._$data.containsKey('familyCheck')) {
      return false;
    }
    if (l$familyCheck != lOther$familyCheck) {
      return false;
    }
    final l$addressCheck = addressCheck;
    final lOther$addressCheck = other.addressCheck;
    if (_$data.containsKey('addressCheck') !=
        other._$data.containsKey('addressCheck')) {
      return false;
    }
    if (l$addressCheck != lOther$addressCheck) {
      return false;
    }
    final l$completenessPercent = completenessPercent;
    final lOther$completenessPercent = other.completenessPercent;
    if (_$data.containsKey('completenessPercent') !=
        other._$data.containsKey('completenessPercent')) {
      return false;
    }
    if (l$completenessPercent != lOther$completenessPercent) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$familyId = familyId;
    final l$userOverride = userOverride;
    final l$familyCheck = familyCheck;
    final l$addressCheck = addressCheck;
    final l$completenessPercent = completenessPercent;
    final l$isComplete = isComplete;
    final l$family = family;
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
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('userOverride') ? l$userOverride : const {},
      _$data.containsKey('familyCheck') ? l$familyCheck : const {},
      _$data.containsKey('addressCheck') ? l$addressCheck : const {},
      _$data.containsKey('completenessPercent')
          ? l$completenessPercent
          : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('family') ? l$family : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckFilterInput<TRes> {
  factory CopyWith_Input_DataCheckFilterInput(
    Input_DataCheckFilterInput instance,
    TRes Function(Input_DataCheckFilterInput) then,
  ) = _CopyWithImpl_Input_DataCheckFilterInput;

  factory CopyWith_Input_DataCheckFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckFilterInput;

  TRes call({
    List<Input_DataCheckFilterInput>? and,
    List<Input_DataCheckFilterInput>? or,
    List<Input_DataCheckFilterInput>? not,
    Input_DataCheckFilterFamilyId? familyId,
    Input_DataCheckFilterUserOverride? userOverride,
    Input_DataCheckFilterFamilyCheck? familyCheck,
    Input_DataCheckFilterAddressCheck? addressCheck,
    Input_DataCheckFilterCompletenessPercent? completenessPercent,
    Input_DataCheckFilterIsComplete? isComplete,
    Input_FamilyFilterInput? family,
  });
  TRes and(
    Iterable<Input_DataCheckFilterInput>? Function(
      Iterable<
        CopyWith_Input_DataCheckFilterInput<Input_DataCheckFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_DataCheckFilterInput>? Function(
      Iterable<
        CopyWith_Input_DataCheckFilterInput<Input_DataCheckFilterInput>
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_DataCheckFilterInput>? Function(
      Iterable<
        CopyWith_Input_DataCheckFilterInput<Input_DataCheckFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith_Input_DataCheckFilterFamilyId<TRes> get familyId;
  CopyWith_Input_DataCheckFilterUserOverride<TRes> get userOverride;
  CopyWith_Input_DataCheckFilterFamilyCheck<TRes> get familyCheck;
  CopyWith_Input_DataCheckFilterAddressCheck<TRes> get addressCheck;
  CopyWith_Input_DataCheckFilterCompletenessPercent<TRes>
  get completenessPercent;
  CopyWith_Input_DataCheckFilterIsComplete<TRes> get isComplete;
  CopyWith_Input_FamilyFilterInput<TRes> get family;
}

class _CopyWithImpl_Input_DataCheckFilterInput<TRes>
    implements CopyWith_Input_DataCheckFilterInput<TRes> {
  _CopyWithImpl_Input_DataCheckFilterInput(this._instance, this._then);

  final Input_DataCheckFilterInput _instance;

  final TRes Function(Input_DataCheckFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? familyId = _undefined,
    Object? userOverride = _undefined,
    Object? familyCheck = _undefined,
    Object? addressCheck = _undefined,
    Object? completenessPercent = _undefined,
    Object? isComplete = _undefined,
    Object? family = _undefined,
  }) => _then(
    Input_DataCheckFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_DataCheckFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_DataCheckFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_DataCheckFilterInput>?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_DataCheckFilterFamilyId?),
      if (userOverride != _undefined)
        'userOverride': (userOverride as Input_DataCheckFilterUserOverride?),
      if (familyCheck != _undefined)
        'familyCheck': (familyCheck as Input_DataCheckFilterFamilyCheck?),
      if (addressCheck != _undefined)
        'addressCheck': (addressCheck as Input_DataCheckFilterAddressCheck?),
      if (completenessPercent != _undefined)
        'completenessPercent':
            (completenessPercent as Input_DataCheckFilterCompletenessPercent?),
      if (isComplete != _undefined)
        'isComplete': (isComplete as Input_DataCheckFilterIsComplete?),
      if (family != _undefined) 'family': (family as Input_FamilyFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input_DataCheckFilterInput>? Function(
      Iterable<
        CopyWith_Input_DataCheckFilterInput<Input_DataCheckFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_DataCheckFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_DataCheckFilterInput>? Function(
      Iterable<
        CopyWith_Input_DataCheckFilterInput<Input_DataCheckFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_DataCheckFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_DataCheckFilterInput>? Function(
      Iterable<
        CopyWith_Input_DataCheckFilterInput<Input_DataCheckFilterInput>
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_DataCheckFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_DataCheckFilterFamilyId<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_DataCheckFilterFamilyId.stub(_then(_instance))
        : CopyWith_Input_DataCheckFilterFamilyId(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_DataCheckFilterUserOverride<TRes> get userOverride {
    final local$userOverride = _instance.userOverride;
    return local$userOverride == null
        ? CopyWith_Input_DataCheckFilterUserOverride.stub(_then(_instance))
        : CopyWith_Input_DataCheckFilterUserOverride(
            local$userOverride,
            (e) => call(userOverride: e),
          );
  }

  CopyWith_Input_DataCheckFilterFamilyCheck<TRes> get familyCheck {
    final local$familyCheck = _instance.familyCheck;
    return local$familyCheck == null
        ? CopyWith_Input_DataCheckFilterFamilyCheck.stub(_then(_instance))
        : CopyWith_Input_DataCheckFilterFamilyCheck(
            local$familyCheck,
            (e) => call(familyCheck: e),
          );
  }

  CopyWith_Input_DataCheckFilterAddressCheck<TRes> get addressCheck {
    final local$addressCheck = _instance.addressCheck;
    return local$addressCheck == null
        ? CopyWith_Input_DataCheckFilterAddressCheck.stub(_then(_instance))
        : CopyWith_Input_DataCheckFilterAddressCheck(
            local$addressCheck,
            (e) => call(addressCheck: e),
          );
  }

  CopyWith_Input_DataCheckFilterCompletenessPercent<TRes>
  get completenessPercent {
    final local$completenessPercent = _instance.completenessPercent;
    return local$completenessPercent == null
        ? CopyWith_Input_DataCheckFilterCompletenessPercent.stub(
            _then(_instance),
          )
        : CopyWith_Input_DataCheckFilterCompletenessPercent(
            local$completenessPercent,
            (e) => call(completenessPercent: e),
          );
  }

  CopyWith_Input_DataCheckFilterIsComplete<TRes> get isComplete {
    final local$isComplete = _instance.isComplete;
    return local$isComplete == null
        ? CopyWith_Input_DataCheckFilterIsComplete.stub(_then(_instance))
        : CopyWith_Input_DataCheckFilterIsComplete(
            local$isComplete,
            (e) => call(isComplete: e),
          );
  }

  CopyWith_Input_FamilyFilterInput<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamilyFilterInput.stub(_then(_instance))
        : CopyWith_Input_FamilyFilterInput(
            local$family,
            (e) => call(family: e),
          );
  }
}

class _CopyWithStubImpl_Input_DataCheckFilterInput<TRes>
    implements CopyWith_Input_DataCheckFilterInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckFilterInput(this._res);

  TRes _res;

  call({
    List<Input_DataCheckFilterInput>? and,
    List<Input_DataCheckFilterInput>? or,
    List<Input_DataCheckFilterInput>? not,
    Input_DataCheckFilterFamilyId? familyId,
    Input_DataCheckFilterUserOverride? userOverride,
    Input_DataCheckFilterFamilyCheck? familyCheck,
    Input_DataCheckFilterAddressCheck? addressCheck,
    Input_DataCheckFilterCompletenessPercent? completenessPercent,
    Input_DataCheckFilterIsComplete? isComplete,
    Input_FamilyFilterInput? family,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_DataCheckFilterFamilyId<TRes> get familyId =>
      CopyWith_Input_DataCheckFilterFamilyId.stub(_res);

  CopyWith_Input_DataCheckFilterUserOverride<TRes> get userOverride =>
      CopyWith_Input_DataCheckFilterUserOverride.stub(_res);

  CopyWith_Input_DataCheckFilterFamilyCheck<TRes> get familyCheck =>
      CopyWith_Input_DataCheckFilterFamilyCheck.stub(_res);

  CopyWith_Input_DataCheckFilterAddressCheck<TRes> get addressCheck =>
      CopyWith_Input_DataCheckFilterAddressCheck.stub(_res);

  CopyWith_Input_DataCheckFilterCompletenessPercent<TRes>
  get completenessPercent =>
      CopyWith_Input_DataCheckFilterCompletenessPercent.stub(_res);

  CopyWith_Input_DataCheckFilterIsComplete<TRes> get isComplete =>
      CopyWith_Input_DataCheckFilterIsComplete.stub(_res);

  CopyWith_Input_FamilyFilterInput<TRes> get family =>
      CopyWith_Input_FamilyFilterInput.stub(_res);
}

class Input_DataCheckSortInput {
  factory Input_DataCheckSortInput({
    Enum_SortOrder? order,
    required Enum_DataCheckSortField field,
  }) => Input_DataCheckSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_DataCheckSortInput._(this._$data);

  factory Input_DataCheckSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_DataCheckSortField(
      (l$field as String),
    );
    return Input_DataCheckSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_DataCheckSortField get field =>
      (_$data['field'] as Enum_DataCheckSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_DataCheckSortField(l$field);
    return result$data;
  }

  CopyWith_Input_DataCheckSortInput<Input_DataCheckSortInput> get copyWith =>
      CopyWith_Input_DataCheckSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckSortInput ||
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

abstract class CopyWith_Input_DataCheckSortInput<TRes> {
  factory CopyWith_Input_DataCheckSortInput(
    Input_DataCheckSortInput instance,
    TRes Function(Input_DataCheckSortInput) then,
  ) = _CopyWithImpl_Input_DataCheckSortInput;

  factory CopyWith_Input_DataCheckSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckSortInput;

  TRes call({Enum_SortOrder? order, Enum_DataCheckSortField? field});
}

class _CopyWithImpl_Input_DataCheckSortInput<TRes>
    implements CopyWith_Input_DataCheckSortInput<TRes> {
  _CopyWithImpl_Input_DataCheckSortInput(this._instance, this._then);

  final Input_DataCheckSortInput _instance;

  final TRes Function(Input_DataCheckSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_DataCheckSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_DataCheckSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_DataCheckSortInput<TRes>
    implements CopyWith_Input_DataCheckSortInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_DataCheckSortField? field}) => _res;
}

enum Enum_AppPlatform {
  ANDROID,
  IOS,
  $unknown;

  factory Enum_AppPlatform.fromJson(String value) =>
      fromJson_Enum_AppPlatform(value);

  String toJson() => toJson_Enum_AppPlatform(this);
}

String toJson_Enum_AppPlatform(Enum_AppPlatform e) {
  switch (e) {
    case Enum_AppPlatform.ANDROID:
      return r'ANDROID';
    case Enum_AppPlatform.IOS:
      return r'IOS';
    case Enum_AppPlatform.$unknown:
      return r'$unknown';
  }
}

Enum_AppPlatform fromJson_Enum_AppPlatform(String value) {
  switch (value) {
    case r'ANDROID':
      return Enum_AppPlatform.ANDROID;
    case r'IOS':
      return Enum_AppPlatform.IOS;
    default:
      return Enum_AppPlatform.$unknown;
  }
}

enum Enum_PhotoSubject {
  AREAS,
  CLASSES,
  FAMILIES,
  GROUPS,
  PERSONS,
  SERVICES,
  STORES,
  STREETS,
  USERS,
  $unknown;

  factory Enum_PhotoSubject.fromJson(String value) =>
      fromJson_Enum_PhotoSubject(value);

  String toJson() => toJson_Enum_PhotoSubject(this);
}

String toJson_Enum_PhotoSubject(Enum_PhotoSubject e) {
  switch (e) {
    case Enum_PhotoSubject.AREAS:
      return r'AREAS';
    case Enum_PhotoSubject.CLASSES:
      return r'CLASSES';
    case Enum_PhotoSubject.FAMILIES:
      return r'FAMILIES';
    case Enum_PhotoSubject.GROUPS:
      return r'GROUPS';
    case Enum_PhotoSubject.PERSONS:
      return r'PERSONS';
    case Enum_PhotoSubject.SERVICES:
      return r'SERVICES';
    case Enum_PhotoSubject.STORES:
      return r'STORES';
    case Enum_PhotoSubject.STREETS:
      return r'STREETS';
    case Enum_PhotoSubject.USERS:
      return r'USERS';
    case Enum_PhotoSubject.$unknown:
      return r'$unknown';
  }
}

Enum_PhotoSubject fromJson_Enum_PhotoSubject(String value) {
  switch (value) {
    case r'AREAS':
      return Enum_PhotoSubject.AREAS;
    case r'CLASSES':
      return Enum_PhotoSubject.CLASSES;
    case r'FAMILIES':
      return Enum_PhotoSubject.FAMILIES;
    case r'GROUPS':
      return Enum_PhotoSubject.GROUPS;
    case r'PERSONS':
      return Enum_PhotoSubject.PERSONS;
    case r'SERVICES':
      return Enum_PhotoSubject.SERVICES;
    case r'STORES':
      return Enum_PhotoSubject.STORES;
    case r'STREETS':
      return Enum_PhotoSubject.STREETS;
    case r'USERS':
      return Enum_PhotoSubject.USERS;
    default:
      return Enum_PhotoSubject.$unknown;
  }
}

enum Enum_VisitSubject {
  AREAS,
  FAMILIES,
  PERSONS,
  STREETS,
  $unknown;

  factory Enum_VisitSubject.fromJson(String value) =>
      fromJson_Enum_VisitSubject(value);

  String toJson() => toJson_Enum_VisitSubject(this);
}

String toJson_Enum_VisitSubject(Enum_VisitSubject e) {
  switch (e) {
    case Enum_VisitSubject.AREAS:
      return r'AREAS';
    case Enum_VisitSubject.FAMILIES:
      return r'FAMILIES';
    case Enum_VisitSubject.PERSONS:
      return r'PERSONS';
    case Enum_VisitSubject.STREETS:
      return r'STREETS';
    case Enum_VisitSubject.$unknown:
      return r'$unknown';
  }
}

Enum_VisitSubject fromJson_Enum_VisitSubject(String value) {
  switch (value) {
    case r'AREAS':
      return Enum_VisitSubject.AREAS;
    case r'FAMILIES':
      return Enum_VisitSubject.FAMILIES;
    case r'PERSONS':
      return Enum_VisitSubject.PERSONS;
    case r'STREETS':
      return Enum_VisitSubject.STREETS;
    default:
      return Enum_VisitSubject.$unknown;
  }
}

enum Enum_MeetingAudience {
  ONLY_PERSONS,
  ONLY_SERVANTS,
  PERSONS_AND_SERVANTS,
  $unknown;

  factory Enum_MeetingAudience.fromJson(String value) =>
      fromJson_Enum_MeetingAudience(value);

  String toJson() => toJson_Enum_MeetingAudience(this);
}

String toJson_Enum_MeetingAudience(Enum_MeetingAudience e) {
  switch (e) {
    case Enum_MeetingAudience.ONLY_PERSONS:
      return r'ONLY_PERSONS';
    case Enum_MeetingAudience.ONLY_SERVANTS:
      return r'ONLY_SERVANTS';
    case Enum_MeetingAudience.PERSONS_AND_SERVANTS:
      return r'PERSONS_AND_SERVANTS';
    case Enum_MeetingAudience.$unknown:
      return r'$unknown';
  }
}

Enum_MeetingAudience fromJson_Enum_MeetingAudience(String value) {
  switch (value) {
    case r'ONLY_PERSONS':
      return Enum_MeetingAudience.ONLY_PERSONS;
    case r'ONLY_SERVANTS':
      return Enum_MeetingAudience.ONLY_SERVANTS;
    case r'PERSONS_AND_SERVANTS':
      return Enum_MeetingAudience.PERSONS_AND_SERVANTS;
    default:
      return Enum_MeetingAudience.$unknown;
  }
}

enum Enum_ServiceMembershipSortField {
  PERSON_ID,
  SERVICE_ID,
  IS_OUTSIDE_SERVICE_STUDY_YEARS,
  SERVICE_NAME,
  $unknown;

  factory Enum_ServiceMembershipSortField.fromJson(String value) =>
      fromJson_Enum_ServiceMembershipSortField(value);

  String toJson() => toJson_Enum_ServiceMembershipSortField(this);
}

String toJson_Enum_ServiceMembershipSortField(
  Enum_ServiceMembershipSortField e,
) {
  switch (e) {
    case Enum_ServiceMembershipSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_ServiceMembershipSortField.SERVICE_ID:
      return r'SERVICE_ID';
    case Enum_ServiceMembershipSortField.IS_OUTSIDE_SERVICE_STUDY_YEARS:
      return r'IS_OUTSIDE_SERVICE_STUDY_YEARS';
    case Enum_ServiceMembershipSortField.SERVICE_NAME:
      return r'SERVICE_NAME';
    case Enum_ServiceMembershipSortField.$unknown:
      return r'$unknown';
  }
}

Enum_ServiceMembershipSortField fromJson_Enum_ServiceMembershipSortField(
  String value,
) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_ServiceMembershipSortField.PERSON_ID;
    case r'SERVICE_ID':
      return Enum_ServiceMembershipSortField.SERVICE_ID;
    case r'IS_OUTSIDE_SERVICE_STUDY_YEARS':
      return Enum_ServiceMembershipSortField.IS_OUTSIDE_SERVICE_STUDY_YEARS;
    case r'SERVICE_NAME':
      return Enum_ServiceMembershipSortField.SERVICE_NAME;
    default:
      return Enum_ServiceMembershipSortField.$unknown;
  }
}

enum Enum_FamilyContactSortField {
  ID,
  PERSON_ID,
  FAMILY_ID,
  PERSON_TYPE_ID,
  LABEL,
  PHONE,
  IS_MAIN_PHONE,
  CREATED_AT,
  UPDATED_AT,
  EFFECTIVE_FAMILY_ID,
  EFFECTIVE_PERSON_TYPE_ID,
  PERSON_TYPE_ORDER,
  $unknown;

  factory Enum_FamilyContactSortField.fromJson(String value) =>
      fromJson_Enum_FamilyContactSortField(value);

  String toJson() => toJson_Enum_FamilyContactSortField(this);
}

String toJson_Enum_FamilyContactSortField(Enum_FamilyContactSortField e) {
  switch (e) {
    case Enum_FamilyContactSortField.ID:
      return r'ID';
    case Enum_FamilyContactSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_FamilyContactSortField.FAMILY_ID:
      return r'FAMILY_ID';
    case Enum_FamilyContactSortField.PERSON_TYPE_ID:
      return r'PERSON_TYPE_ID';
    case Enum_FamilyContactSortField.LABEL:
      return r'LABEL';
    case Enum_FamilyContactSortField.PHONE:
      return r'PHONE';
    case Enum_FamilyContactSortField.IS_MAIN_PHONE:
      return r'IS_MAIN_PHONE';
    case Enum_FamilyContactSortField.CREATED_AT:
      return r'CREATED_AT';
    case Enum_FamilyContactSortField.UPDATED_AT:
      return r'UPDATED_AT';
    case Enum_FamilyContactSortField.EFFECTIVE_FAMILY_ID:
      return r'EFFECTIVE_FAMILY_ID';
    case Enum_FamilyContactSortField.EFFECTIVE_PERSON_TYPE_ID:
      return r'EFFECTIVE_PERSON_TYPE_ID';
    case Enum_FamilyContactSortField.PERSON_TYPE_ORDER:
      return r'PERSON_TYPE_ORDER';
    case Enum_FamilyContactSortField.$unknown:
      return r'$unknown';
  }
}

Enum_FamilyContactSortField fromJson_Enum_FamilyContactSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_FamilyContactSortField.ID;
    case r'PERSON_ID':
      return Enum_FamilyContactSortField.PERSON_ID;
    case r'FAMILY_ID':
      return Enum_FamilyContactSortField.FAMILY_ID;
    case r'PERSON_TYPE_ID':
      return Enum_FamilyContactSortField.PERSON_TYPE_ID;
    case r'LABEL':
      return Enum_FamilyContactSortField.LABEL;
    case r'PHONE':
      return Enum_FamilyContactSortField.PHONE;
    case r'IS_MAIN_PHONE':
      return Enum_FamilyContactSortField.IS_MAIN_PHONE;
    case r'CREATED_AT':
      return Enum_FamilyContactSortField.CREATED_AT;
    case r'UPDATED_AT':
      return Enum_FamilyContactSortField.UPDATED_AT;
    case r'EFFECTIVE_FAMILY_ID':
      return Enum_FamilyContactSortField.EFFECTIVE_FAMILY_ID;
    case r'EFFECTIVE_PERSON_TYPE_ID':
      return Enum_FamilyContactSortField.EFFECTIVE_PERSON_TYPE_ID;
    case r'PERSON_TYPE_ORDER':
      return Enum_FamilyContactSortField.PERSON_TYPE_ORDER;
    default:
      return Enum_FamilyContactSortField.$unknown;
  }
}

enum Enum_PersonTagSortField {
  PERSON_ID,
  TAG_ID,
  TAG_NAME,
  $unknown;

  factory Enum_PersonTagSortField.fromJson(String value) =>
      fromJson_Enum_PersonTagSortField(value);

  String toJson() => toJson_Enum_PersonTagSortField(this);
}

String toJson_Enum_PersonTagSortField(Enum_PersonTagSortField e) {
  switch (e) {
    case Enum_PersonTagSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_PersonTagSortField.TAG_ID:
      return r'TAG_ID';
    case Enum_PersonTagSortField.TAG_NAME:
      return r'TAG_NAME';
    case Enum_PersonTagSortField.$unknown:
      return r'$unknown';
  }
}

Enum_PersonTagSortField fromJson_Enum_PersonTagSortField(String value) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_PersonTagSortField.PERSON_ID;
    case r'TAG_ID':
      return Enum_PersonTagSortField.TAG_ID;
    case r'TAG_NAME':
      return Enum_PersonTagSortField.TAG_NAME;
    default:
      return Enum_PersonTagSortField.$unknown;
  }
}

enum Enum_PersonHobbySortField {
  PERSON_ID,
  HOBBY_ID,
  HOBBY_NAME,
  $unknown;

  factory Enum_PersonHobbySortField.fromJson(String value) =>
      fromJson_Enum_PersonHobbySortField(value);

  String toJson() => toJson_Enum_PersonHobbySortField(this);
}

String toJson_Enum_PersonHobbySortField(Enum_PersonHobbySortField e) {
  switch (e) {
    case Enum_PersonHobbySortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_PersonHobbySortField.HOBBY_ID:
      return r'HOBBY_ID';
    case Enum_PersonHobbySortField.HOBBY_NAME:
      return r'HOBBY_NAME';
    case Enum_PersonHobbySortField.$unknown:
      return r'$unknown';
  }
}

Enum_PersonHobbySortField fromJson_Enum_PersonHobbySortField(String value) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_PersonHobbySortField.PERSON_ID;
    case r'HOBBY_ID':
      return Enum_PersonHobbySortField.HOBBY_ID;
    case r'HOBBY_NAME':
      return Enum_PersonHobbySortField.HOBBY_NAME;
    default:
      return Enum_PersonHobbySortField.$unknown;
  }
}

enum Enum_PersonSortField {
  ID,
  NAME,
  BIRTHDATE,
  GENDER,
  IS_SHAMMAS,
  SHAMMAS_LEVEL_ID,
  SCHOOL_ID,
  COLLEGE_ID,
  CHURCH_ID,
  FATHER_ID,
  IS_STUDENT,
  JOB_ID,
  JOB_DESCRIPTION,
  QUALIFICATION_ID,
  PERSON_TYPE_ID,
  STATE_ID,
  IS_SERVANT,
  NOTES,
  UID,
  FAMILY_ID,
  STORE_ID,
  STUDY_YEAR_ID,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  WORK_STATUS,
  MARTIAL_STATUS,
  SERVING_CHURCH_ID,
  SERVICE_TYPE,
  BIRTHDAY,
  USER_CAN_EDIT,
  LAST_CONFESSION_DAY,
  LAST_KODAS_DAY,
  LAST_ATTENDED_AT,
  LAST_VISIT_AT,
  MAIN_PHONE,
  LAST_EDIT,
  LAST_CALL,
  FAMILY_NAME,
  USER_NAME,
  STORE_NAME,
  CHURCH_NAME,
  SERVING_CHURCH_NAME,
  COLLEGE_NAME,
  SCHOOL_NAME,
  FATHER_NAME,
  JOB_NAME,
  QUALIFICATION_NAME,
  STATE_NAME,
  PERSON_TYPE_ORDER,
  SHAMMAS_LEVEL_ORDER,
  STUDY_YEAR_ORDER,
  ADDRESS_AREA_NAME,
  ADDRESS_STREET_NAME,
  ADDRESS_DISTRICT_NAME,
  ADDRESS_FULL_ADDRESS_TEXT,
  $unknown;

  factory Enum_PersonSortField.fromJson(String value) =>
      fromJson_Enum_PersonSortField(value);

  String toJson() => toJson_Enum_PersonSortField(this);
}

String toJson_Enum_PersonSortField(Enum_PersonSortField e) {
  switch (e) {
    case Enum_PersonSortField.ID:
      return r'ID';
    case Enum_PersonSortField.NAME:
      return r'NAME';
    case Enum_PersonSortField.BIRTHDATE:
      return r'BIRTHDATE';
    case Enum_PersonSortField.GENDER:
      return r'GENDER';
    case Enum_PersonSortField.IS_SHAMMAS:
      return r'IS_SHAMMAS';
    case Enum_PersonSortField.SHAMMAS_LEVEL_ID:
      return r'SHAMMAS_LEVEL_ID';
    case Enum_PersonSortField.SCHOOL_ID:
      return r'SCHOOL_ID';
    case Enum_PersonSortField.COLLEGE_ID:
      return r'COLLEGE_ID';
    case Enum_PersonSortField.CHURCH_ID:
      return r'CHURCH_ID';
    case Enum_PersonSortField.FATHER_ID:
      return r'FATHER_ID';
    case Enum_PersonSortField.IS_STUDENT:
      return r'IS_STUDENT';
    case Enum_PersonSortField.JOB_ID:
      return r'JOB_ID';
    case Enum_PersonSortField.JOB_DESCRIPTION:
      return r'JOB_DESCRIPTION';
    case Enum_PersonSortField.QUALIFICATION_ID:
      return r'QUALIFICATION_ID';
    case Enum_PersonSortField.PERSON_TYPE_ID:
      return r'PERSON_TYPE_ID';
    case Enum_PersonSortField.STATE_ID:
      return r'STATE_ID';
    case Enum_PersonSortField.IS_SERVANT:
      return r'IS_SERVANT';
    case Enum_PersonSortField.NOTES:
      return r'NOTES';
    case Enum_PersonSortField.UID:
      return r'UID';
    case Enum_PersonSortField.FAMILY_ID:
      return r'FAMILY_ID';
    case Enum_PersonSortField.STORE_ID:
      return r'STORE_ID';
    case Enum_PersonSortField.STUDY_YEAR_ID:
      return r'STUDY_YEAR_ID';
    case Enum_PersonSortField.COLOR:
      return r'COLOR';
    case Enum_PersonSortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_PersonSortField.BLURHASH:
      return r'BLURHASH';
    case Enum_PersonSortField.WORK_STATUS:
      return r'WORK_STATUS';
    case Enum_PersonSortField.MARTIAL_STATUS:
      return r'MARTIAL_STATUS';
    case Enum_PersonSortField.SERVING_CHURCH_ID:
      return r'SERVING_CHURCH_ID';
    case Enum_PersonSortField.SERVICE_TYPE:
      return r'SERVICE_TYPE';
    case Enum_PersonSortField.BIRTHDAY:
      return r'BIRTHDAY';
    case Enum_PersonSortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_PersonSortField.LAST_CONFESSION_DAY:
      return r'LAST_CONFESSION_DAY';
    case Enum_PersonSortField.LAST_KODAS_DAY:
      return r'LAST_KODAS_DAY';
    case Enum_PersonSortField.LAST_ATTENDED_AT:
      return r'LAST_ATTENDED_AT';
    case Enum_PersonSortField.LAST_VISIT_AT:
      return r'LAST_VISIT_AT';
    case Enum_PersonSortField.MAIN_PHONE:
      return r'MAIN_PHONE';
    case Enum_PersonSortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_PersonSortField.LAST_CALL:
      return r'LAST_CALL';
    case Enum_PersonSortField.FAMILY_NAME:
      return r'FAMILY_NAME';
    case Enum_PersonSortField.USER_NAME:
      return r'USER_NAME';
    case Enum_PersonSortField.STORE_NAME:
      return r'STORE_NAME';
    case Enum_PersonSortField.CHURCH_NAME:
      return r'CHURCH_NAME';
    case Enum_PersonSortField.SERVING_CHURCH_NAME:
      return r'SERVING_CHURCH_NAME';
    case Enum_PersonSortField.COLLEGE_NAME:
      return r'COLLEGE_NAME';
    case Enum_PersonSortField.SCHOOL_NAME:
      return r'SCHOOL_NAME';
    case Enum_PersonSortField.FATHER_NAME:
      return r'FATHER_NAME';
    case Enum_PersonSortField.JOB_NAME:
      return r'JOB_NAME';
    case Enum_PersonSortField.QUALIFICATION_NAME:
      return r'QUALIFICATION_NAME';
    case Enum_PersonSortField.STATE_NAME:
      return r'STATE_NAME';
    case Enum_PersonSortField.PERSON_TYPE_ORDER:
      return r'PERSON_TYPE_ORDER';
    case Enum_PersonSortField.SHAMMAS_LEVEL_ORDER:
      return r'SHAMMAS_LEVEL_ORDER';
    case Enum_PersonSortField.STUDY_YEAR_ORDER:
      return r'STUDY_YEAR_ORDER';
    case Enum_PersonSortField.ADDRESS_AREA_NAME:
      return r'ADDRESS_AREA_NAME';
    case Enum_PersonSortField.ADDRESS_STREET_NAME:
      return r'ADDRESS_STREET_NAME';
    case Enum_PersonSortField.ADDRESS_DISTRICT_NAME:
      return r'ADDRESS_DISTRICT_NAME';
    case Enum_PersonSortField.ADDRESS_FULL_ADDRESS_TEXT:
      return r'ADDRESS_FULL_ADDRESS_TEXT';
    case Enum_PersonSortField.$unknown:
      return r'$unknown';
  }
}

Enum_PersonSortField fromJson_Enum_PersonSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_PersonSortField.ID;
    case r'NAME':
      return Enum_PersonSortField.NAME;
    case r'BIRTHDATE':
      return Enum_PersonSortField.BIRTHDATE;
    case r'GENDER':
      return Enum_PersonSortField.GENDER;
    case r'IS_SHAMMAS':
      return Enum_PersonSortField.IS_SHAMMAS;
    case r'SHAMMAS_LEVEL_ID':
      return Enum_PersonSortField.SHAMMAS_LEVEL_ID;
    case r'SCHOOL_ID':
      return Enum_PersonSortField.SCHOOL_ID;
    case r'COLLEGE_ID':
      return Enum_PersonSortField.COLLEGE_ID;
    case r'CHURCH_ID':
      return Enum_PersonSortField.CHURCH_ID;
    case r'FATHER_ID':
      return Enum_PersonSortField.FATHER_ID;
    case r'IS_STUDENT':
      return Enum_PersonSortField.IS_STUDENT;
    case r'JOB_ID':
      return Enum_PersonSortField.JOB_ID;
    case r'JOB_DESCRIPTION':
      return Enum_PersonSortField.JOB_DESCRIPTION;
    case r'QUALIFICATION_ID':
      return Enum_PersonSortField.QUALIFICATION_ID;
    case r'PERSON_TYPE_ID':
      return Enum_PersonSortField.PERSON_TYPE_ID;
    case r'STATE_ID':
      return Enum_PersonSortField.STATE_ID;
    case r'IS_SERVANT':
      return Enum_PersonSortField.IS_SERVANT;
    case r'NOTES':
      return Enum_PersonSortField.NOTES;
    case r'UID':
      return Enum_PersonSortField.UID;
    case r'FAMILY_ID':
      return Enum_PersonSortField.FAMILY_ID;
    case r'STORE_ID':
      return Enum_PersonSortField.STORE_ID;
    case r'STUDY_YEAR_ID':
      return Enum_PersonSortField.STUDY_YEAR_ID;
    case r'COLOR':
      return Enum_PersonSortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_PersonSortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_PersonSortField.BLURHASH;
    case r'WORK_STATUS':
      return Enum_PersonSortField.WORK_STATUS;
    case r'MARTIAL_STATUS':
      return Enum_PersonSortField.MARTIAL_STATUS;
    case r'SERVING_CHURCH_ID':
      return Enum_PersonSortField.SERVING_CHURCH_ID;
    case r'SERVICE_TYPE':
      return Enum_PersonSortField.SERVICE_TYPE;
    case r'BIRTHDAY':
      return Enum_PersonSortField.BIRTHDAY;
    case r'USER_CAN_EDIT':
      return Enum_PersonSortField.USER_CAN_EDIT;
    case r'LAST_CONFESSION_DAY':
      return Enum_PersonSortField.LAST_CONFESSION_DAY;
    case r'LAST_KODAS_DAY':
      return Enum_PersonSortField.LAST_KODAS_DAY;
    case r'LAST_ATTENDED_AT':
      return Enum_PersonSortField.LAST_ATTENDED_AT;
    case r'LAST_VISIT_AT':
      return Enum_PersonSortField.LAST_VISIT_AT;
    case r'MAIN_PHONE':
      return Enum_PersonSortField.MAIN_PHONE;
    case r'LAST_EDIT':
      return Enum_PersonSortField.LAST_EDIT;
    case r'LAST_CALL':
      return Enum_PersonSortField.LAST_CALL;
    case r'FAMILY_NAME':
      return Enum_PersonSortField.FAMILY_NAME;
    case r'USER_NAME':
      return Enum_PersonSortField.USER_NAME;
    case r'STORE_NAME':
      return Enum_PersonSortField.STORE_NAME;
    case r'CHURCH_NAME':
      return Enum_PersonSortField.CHURCH_NAME;
    case r'SERVING_CHURCH_NAME':
      return Enum_PersonSortField.SERVING_CHURCH_NAME;
    case r'COLLEGE_NAME':
      return Enum_PersonSortField.COLLEGE_NAME;
    case r'SCHOOL_NAME':
      return Enum_PersonSortField.SCHOOL_NAME;
    case r'FATHER_NAME':
      return Enum_PersonSortField.FATHER_NAME;
    case r'JOB_NAME':
      return Enum_PersonSortField.JOB_NAME;
    case r'QUALIFICATION_NAME':
      return Enum_PersonSortField.QUALIFICATION_NAME;
    case r'STATE_NAME':
      return Enum_PersonSortField.STATE_NAME;
    case r'PERSON_TYPE_ORDER':
      return Enum_PersonSortField.PERSON_TYPE_ORDER;
    case r'SHAMMAS_LEVEL_ORDER':
      return Enum_PersonSortField.SHAMMAS_LEVEL_ORDER;
    case r'STUDY_YEAR_ORDER':
      return Enum_PersonSortField.STUDY_YEAR_ORDER;
    case r'ADDRESS_AREA_NAME':
      return Enum_PersonSortField.ADDRESS_AREA_NAME;
    case r'ADDRESS_STREET_NAME':
      return Enum_PersonSortField.ADDRESS_STREET_NAME;
    case r'ADDRESS_DISTRICT_NAME':
      return Enum_PersonSortField.ADDRESS_DISTRICT_NAME;
    case r'ADDRESS_FULL_ADDRESS_TEXT':
      return Enum_PersonSortField.ADDRESS_FULL_ADDRESS_TEXT;
    default:
      return Enum_PersonSortField.$unknown;
  }
}

enum Enum_MainContactSortField {
  ID,
  PERSON_ID,
  LABEL,
  PHONE,
  $unknown;

  factory Enum_MainContactSortField.fromJson(String value) =>
      fromJson_Enum_MainContactSortField(value);

  String toJson() => toJson_Enum_MainContactSortField(this);
}

String toJson_Enum_MainContactSortField(Enum_MainContactSortField e) {
  switch (e) {
    case Enum_MainContactSortField.ID:
      return r'ID';
    case Enum_MainContactSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_MainContactSortField.LABEL:
      return r'LABEL';
    case Enum_MainContactSortField.PHONE:
      return r'PHONE';
    case Enum_MainContactSortField.$unknown:
      return r'$unknown';
  }
}

Enum_MainContactSortField fromJson_Enum_MainContactSortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_MainContactSortField.ID;
    case r'PERSON_ID':
      return Enum_MainContactSortField.PERSON_ID;
    case r'LABEL':
      return Enum_MainContactSortField.LABEL;
    case r'PHONE':
      return Enum_MainContactSortField.PHONE;
    default:
      return Enum_MainContactSortField.$unknown;
  }
}

enum Enum_GroupMembershipSortField {
  PERSON_ID,
  GROUP_ID,
  GROUP_NAME,
  $unknown;

  factory Enum_GroupMembershipSortField.fromJson(String value) =>
      fromJson_Enum_GroupMembershipSortField(value);

  String toJson() => toJson_Enum_GroupMembershipSortField(this);
}

String toJson_Enum_GroupMembershipSortField(Enum_GroupMembershipSortField e) {
  switch (e) {
    case Enum_GroupMembershipSortField.PERSON_ID:
      return r'PERSON_ID';
    case Enum_GroupMembershipSortField.GROUP_ID:
      return r'GROUP_ID';
    case Enum_GroupMembershipSortField.GROUP_NAME:
      return r'GROUP_NAME';
    case Enum_GroupMembershipSortField.$unknown:
      return r'$unknown';
  }
}

Enum_GroupMembershipSortField fromJson_Enum_GroupMembershipSortField(
  String value,
) {
  switch (value) {
    case r'PERSON_ID':
      return Enum_GroupMembershipSortField.PERSON_ID;
    case r'GROUP_ID':
      return Enum_GroupMembershipSortField.GROUP_ID;
    case r'GROUP_NAME':
      return Enum_GroupMembershipSortField.GROUP_NAME;
    default:
      return Enum_GroupMembershipSortField.$unknown;
  }
}

enum Enum_FamilyRelationSortField {
  PARENT_FAMILY_ID,
  CHILD_FAMILY_ID,
  CHILD_NAME,
  PARENT_NAME,
  $unknown;

  factory Enum_FamilyRelationSortField.fromJson(String value) =>
      fromJson_Enum_FamilyRelationSortField(value);

  String toJson() => toJson_Enum_FamilyRelationSortField(this);
}

String toJson_Enum_FamilyRelationSortField(Enum_FamilyRelationSortField e) {
  switch (e) {
    case Enum_FamilyRelationSortField.PARENT_FAMILY_ID:
      return r'PARENT_FAMILY_ID';
    case Enum_FamilyRelationSortField.CHILD_FAMILY_ID:
      return r'CHILD_FAMILY_ID';
    case Enum_FamilyRelationSortField.CHILD_NAME:
      return r'CHILD_NAME';
    case Enum_FamilyRelationSortField.PARENT_NAME:
      return r'PARENT_NAME';
    case Enum_FamilyRelationSortField.$unknown:
      return r'$unknown';
  }
}

Enum_FamilyRelationSortField fromJson_Enum_FamilyRelationSortField(
  String value,
) {
  switch (value) {
    case r'PARENT_FAMILY_ID':
      return Enum_FamilyRelationSortField.PARENT_FAMILY_ID;
    case r'CHILD_FAMILY_ID':
      return Enum_FamilyRelationSortField.CHILD_FAMILY_ID;
    case r'CHILD_NAME':
      return Enum_FamilyRelationSortField.CHILD_NAME;
    case r'PARENT_NAME':
      return Enum_FamilyRelationSortField.PARENT_NAME;
    default:
      return Enum_FamilyRelationSortField.$unknown;
  }
}

enum Enum_FamilySortField {
  ID,
  NAME,
  NOTES,
  COLOR,
  PHOTO_UPDATED_AT,
  BLURHASH,
  STATUS,
  DECEASED_SPOUSE_NAME,
  MARRIAGE_DATE,
  CHURCH_ID,
  USER_CAN_EDIT,
  LAST_EDIT,
  LAST_VISIT,
  LAST_FATHER_VISIT,
  CHURCH_NAME,
  ADDRESS_AREA_NAME,
  ADDRESS_STREET_NAME,
  ADDRESS_DISTRICT_NAME,
  ADDRESS_FULL_ADDRESS_TEXT,
  $unknown;

  factory Enum_FamilySortField.fromJson(String value) =>
      fromJson_Enum_FamilySortField(value);

  String toJson() => toJson_Enum_FamilySortField(this);
}

String toJson_Enum_FamilySortField(Enum_FamilySortField e) {
  switch (e) {
    case Enum_FamilySortField.ID:
      return r'ID';
    case Enum_FamilySortField.NAME:
      return r'NAME';
    case Enum_FamilySortField.NOTES:
      return r'NOTES';
    case Enum_FamilySortField.COLOR:
      return r'COLOR';
    case Enum_FamilySortField.PHOTO_UPDATED_AT:
      return r'PHOTO_UPDATED_AT';
    case Enum_FamilySortField.BLURHASH:
      return r'BLURHASH';
    case Enum_FamilySortField.STATUS:
      return r'STATUS';
    case Enum_FamilySortField.DECEASED_SPOUSE_NAME:
      return r'DECEASED_SPOUSE_NAME';
    case Enum_FamilySortField.MARRIAGE_DATE:
      return r'MARRIAGE_DATE';
    case Enum_FamilySortField.CHURCH_ID:
      return r'CHURCH_ID';
    case Enum_FamilySortField.USER_CAN_EDIT:
      return r'USER_CAN_EDIT';
    case Enum_FamilySortField.LAST_EDIT:
      return r'LAST_EDIT';
    case Enum_FamilySortField.LAST_VISIT:
      return r'LAST_VISIT';
    case Enum_FamilySortField.LAST_FATHER_VISIT:
      return r'LAST_FATHER_VISIT';
    case Enum_FamilySortField.CHURCH_NAME:
      return r'CHURCH_NAME';
    case Enum_FamilySortField.ADDRESS_AREA_NAME:
      return r'ADDRESS_AREA_NAME';
    case Enum_FamilySortField.ADDRESS_STREET_NAME:
      return r'ADDRESS_STREET_NAME';
    case Enum_FamilySortField.ADDRESS_DISTRICT_NAME:
      return r'ADDRESS_DISTRICT_NAME';
    case Enum_FamilySortField.ADDRESS_FULL_ADDRESS_TEXT:
      return r'ADDRESS_FULL_ADDRESS_TEXT';
    case Enum_FamilySortField.$unknown:
      return r'$unknown';
  }
}

Enum_FamilySortField fromJson_Enum_FamilySortField(String value) {
  switch (value) {
    case r'ID':
      return Enum_FamilySortField.ID;
    case r'NAME':
      return Enum_FamilySortField.NAME;
    case r'NOTES':
      return Enum_FamilySortField.NOTES;
    case r'COLOR':
      return Enum_FamilySortField.COLOR;
    case r'PHOTO_UPDATED_AT':
      return Enum_FamilySortField.PHOTO_UPDATED_AT;
    case r'BLURHASH':
      return Enum_FamilySortField.BLURHASH;
    case r'STATUS':
      return Enum_FamilySortField.STATUS;
    case r'DECEASED_SPOUSE_NAME':
      return Enum_FamilySortField.DECEASED_SPOUSE_NAME;
    case r'MARRIAGE_DATE':
      return Enum_FamilySortField.MARRIAGE_DATE;
    case r'CHURCH_ID':
      return Enum_FamilySortField.CHURCH_ID;
    case r'USER_CAN_EDIT':
      return Enum_FamilySortField.USER_CAN_EDIT;
    case r'LAST_EDIT':
      return Enum_FamilySortField.LAST_EDIT;
    case r'LAST_VISIT':
      return Enum_FamilySortField.LAST_VISIT;
    case r'LAST_FATHER_VISIT':
      return Enum_FamilySortField.LAST_FATHER_VISIT;
    case r'CHURCH_NAME':
      return Enum_FamilySortField.CHURCH_NAME;
    case r'ADDRESS_AREA_NAME':
      return Enum_FamilySortField.ADDRESS_AREA_NAME;
    case r'ADDRESS_STREET_NAME':
      return Enum_FamilySortField.ADDRESS_STREET_NAME;
    case r'ADDRESS_DISTRICT_NAME':
      return Enum_FamilySortField.ADDRESS_DISTRICT_NAME;
    case r'ADDRESS_FULL_ADDRESS_TEXT':
      return Enum_FamilySortField.ADDRESS_FULL_ADDRESS_TEXT;
    default:
      return Enum_FamilySortField.$unknown;
  }
}

enum Enum_ContactSortField {
  ID,
  PERSON_ID,
  FAMILY_ID,
  PERSON_TYPE_ID,
  LABEL,
  PHONE,
  IS_MAIN_PHONE,
  CREATED_AT,
  UPDATED_AT,
  $unknown;

  factory Enum_ContactSortField.fromJson(String value) =>
      fromJson_Enum_ContactSortField(value);

  String toJson() => toJson_Enum_ContactSortField(this);
}
