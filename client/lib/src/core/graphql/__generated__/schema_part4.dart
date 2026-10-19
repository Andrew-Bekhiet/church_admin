// Part 4 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_FamilyContactFilterPersonTypeId<TRes> {
  factory CopyWith_Input_FamilyContactFilterPersonTypeId(
    Input_FamilyContactFilterPersonTypeId instance,
    TRes Function(Input_FamilyContactFilterPersonTypeId) then,
  ) = _CopyWithImpl_Input_FamilyContactFilterPersonTypeId;

  factory CopyWith_Input_FamilyContactFilterPersonTypeId.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyContactFilterPersonTypeId;

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

class _CopyWithImpl_Input_FamilyContactFilterPersonTypeId<TRes>
    implements CopyWith_Input_FamilyContactFilterPersonTypeId<TRes> {
  _CopyWithImpl_Input_FamilyContactFilterPersonTypeId(
    this._instance,
    this._then,
  );

  final Input_FamilyContactFilterPersonTypeId _instance;

  final TRes Function(Input_FamilyContactFilterPersonTypeId) _then;

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
    Input_FamilyContactFilterPersonTypeId._({
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

class _CopyWithStubImpl_Input_FamilyContactFilterPersonTypeId<TRes>
    implements CopyWith_Input_FamilyContactFilterPersonTypeId<TRes> {
  _CopyWithStubImpl_Input_FamilyContactFilterPersonTypeId(this._res);

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

class Input_FamilyContactFilterFamilyId {
  factory Input_FamilyContactFilterFamilyId({
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
  }) => Input_FamilyContactFilterFamilyId._({
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

  Input_FamilyContactFilterFamilyId._(this._$data);

  factory Input_FamilyContactFilterFamilyId.fromJson(
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
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_FamilyContactFilterFamilyId._(result$data);
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

  CopyWith_Input_FamilyContactFilterFamilyId<Input_FamilyContactFilterFamilyId>
  get copyWith => CopyWith_Input_FamilyContactFilterFamilyId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyContactFilterFamilyId ||
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

abstract class CopyWith_Input_FamilyContactFilterFamilyId<TRes> {
  factory CopyWith_Input_FamilyContactFilterFamilyId(
    Input_FamilyContactFilterFamilyId instance,
    TRes Function(Input_FamilyContactFilterFamilyId) then,
  ) = _CopyWithImpl_Input_FamilyContactFilterFamilyId;

  factory CopyWith_Input_FamilyContactFilterFamilyId.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyContactFilterFamilyId;

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

class _CopyWithImpl_Input_FamilyContactFilterFamilyId<TRes>
    implements CopyWith_Input_FamilyContactFilterFamilyId<TRes> {
  _CopyWithImpl_Input_FamilyContactFilterFamilyId(this._instance, this._then);

  final Input_FamilyContactFilterFamilyId _instance;

  final TRes Function(Input_FamilyContactFilterFamilyId) _then;

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
    Input_FamilyContactFilterFamilyId._({
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

class _CopyWithStubImpl_Input_FamilyContactFilterFamilyId<TRes>
    implements CopyWith_Input_FamilyContactFilterFamilyId<TRes> {
  _CopyWithStubImpl_Input_FamilyContactFilterFamilyId(this._res);

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

class Input_FamilyContactFilterPersonId {
  factory Input_FamilyContactFilterPersonId({
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
  }) => Input_FamilyContactFilterPersonId._({
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

  Input_FamilyContactFilterPersonId._(this._$data);

  factory Input_FamilyContactFilterPersonId.fromJson(
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
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_FamilyContactFilterPersonId._(result$data);
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

  CopyWith_Input_FamilyContactFilterPersonId<Input_FamilyContactFilterPersonId>
  get copyWith => CopyWith_Input_FamilyContactFilterPersonId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyContactFilterPersonId ||
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

abstract class CopyWith_Input_FamilyContactFilterPersonId<TRes> {
  factory CopyWith_Input_FamilyContactFilterPersonId(
    Input_FamilyContactFilterPersonId instance,
    TRes Function(Input_FamilyContactFilterPersonId) then,
  ) = _CopyWithImpl_Input_FamilyContactFilterPersonId;

  factory CopyWith_Input_FamilyContactFilterPersonId.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyContactFilterPersonId;

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

class _CopyWithImpl_Input_FamilyContactFilterPersonId<TRes>
    implements CopyWith_Input_FamilyContactFilterPersonId<TRes> {
  _CopyWithImpl_Input_FamilyContactFilterPersonId(this._instance, this._then);

  final Input_FamilyContactFilterPersonId _instance;

  final TRes Function(Input_FamilyContactFilterPersonId) _then;

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
    Input_FamilyContactFilterPersonId._({
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

class _CopyWithStubImpl_Input_FamilyContactFilterPersonId<TRes>
    implements CopyWith_Input_FamilyContactFilterPersonId<TRes> {
  _CopyWithStubImpl_Input_FamilyContactFilterPersonId(this._res);

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

class Input_FamilyContactFilterId {
  factory Input_FamilyContactFilterId({
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
  }) => Input_FamilyContactFilterId._({
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

  Input_FamilyContactFilterId._(this._$data);

  factory Input_FamilyContactFilterId.fromJson(Map<String, dynamic> data) {
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
    return Input_FamilyContactFilterId._(result$data);
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

  CopyWith_Input_FamilyContactFilterId<Input_FamilyContactFilterId>
  get copyWith => CopyWith_Input_FamilyContactFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyContactFilterId ||
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

abstract class CopyWith_Input_FamilyContactFilterId<TRes> {
  factory CopyWith_Input_FamilyContactFilterId(
    Input_FamilyContactFilterId instance,
    TRes Function(Input_FamilyContactFilterId) then,
  ) = _CopyWithImpl_Input_FamilyContactFilterId;

  factory CopyWith_Input_FamilyContactFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyContactFilterId;

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

class _CopyWithImpl_Input_FamilyContactFilterId<TRes>
    implements CopyWith_Input_FamilyContactFilterId<TRes> {
  _CopyWithImpl_Input_FamilyContactFilterId(this._instance, this._then);

  final Input_FamilyContactFilterId _instance;

  final TRes Function(Input_FamilyContactFilterId) _then;

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
    Input_FamilyContactFilterId._({
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

class _CopyWithStubImpl_Input_FamilyContactFilterId<TRes>
    implements CopyWith_Input_FamilyContactFilterId<TRes> {
  _CopyWithStubImpl_Input_FamilyContactFilterId(this._res);

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

class Input_FamilyContactFilterInput {
  factory Input_FamilyContactFilterInput({
    List<Input_FamilyContactFilterInput>? and,
    List<Input_FamilyContactFilterInput>? or,
    List<Input_FamilyContactFilterInput>? not,
    Input_FamilyContactFilterId? id,
    Input_FamilyContactFilterPersonId? personId,
    Input_FamilyContactFilterFamilyId? familyId,
    Input_FamilyContactFilterPersonTypeId? personTypeId,
    Input_FamilyContactFilterLabel? label,
    Input_FamilyContactFilterPhone? phone,
    Input_FamilyContactFilterIsMainPhone? isMainPhone,
    Input_FamilyContactFilterCreatedAt? createdAt,
    Input_FamilyContactFilterUpdatedAt? updatedAt,
    Input_FamilyContactFilterEffectiveFamilyId? effectiveFamilyId,
    Input_FamilyContactFilterEffectivePersonTypeId? effectivePersonTypeId,
    Input_PersonFilterInput? person,
    Input_PersonTypeFilterInput? personType,
    Input_FamilyFilterInput? family,
    Input_FamilyContactFilterPersonTypeOrder? personTypeOrder,
  }) => Input_FamilyContactFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
    if (familyId != null) r'familyId': familyId,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (label != null) r'label': label,
    if (phone != null) r'phone': phone,
    if (isMainPhone != null) r'isMainPhone': isMainPhone,
    if (createdAt != null) r'createdAt': createdAt,
    if (updatedAt != null) r'updatedAt': updatedAt,
    if (effectiveFamilyId != null) r'effectiveFamilyId': effectiveFamilyId,
    if (effectivePersonTypeId != null)
      r'effectivePersonTypeId': effectivePersonTypeId,
    if (person != null) r'person': person,
    if (personType != null) r'personType': personType,
    if (family != null) r'family': family,
    if (personTypeOrder != null) r'personTypeOrder': personTypeOrder,
  });

  Input_FamilyContactFilterInput._(this._$data);

  factory Input_FamilyContactFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_FamilyContactFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_FamilyContactFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_FamilyContactFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_FamilyContactFilterId.fromJson(
              (l$id as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_FamilyContactFilterPersonId.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_FamilyContactFilterFamilyId.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : Input_FamilyContactFilterPersonTypeId.fromJson(
              (l$personTypeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = l$label == null
          ? null
          : Input_FamilyContactFilterLabel.fromJson(
              (l$label as Map<String, dynamic>),
            );
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = l$phone == null
          ? null
          : Input_FamilyContactFilterPhone.fromJson(
              (l$phone as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isMainPhone')) {
      final l$isMainPhone = data['isMainPhone'];
      result$data['isMainPhone'] = l$isMainPhone == null
          ? null
          : Input_FamilyContactFilterIsMainPhone.fromJson(
              (l$isMainPhone as Map<String, dynamic>),
            );
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input_FamilyContactFilterCreatedAt.fromJson(
              (l$createdAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input_FamilyContactFilterUpdatedAt.fromJson(
              (l$updatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = data['effectiveFamilyId'];
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : Input_FamilyContactFilterEffectiveFamilyId.fromJson(
              (l$effectiveFamilyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = data['effectivePersonTypeId'];
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : Input_FamilyContactFilterEffectivePersonTypeId.fromJson(
              (l$effectivePersonTypeId as Map<String, dynamic>),
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
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypeFilterInput.fromJson(
              (l$personType as Map<String, dynamic>),
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
    if (data.containsKey('personTypeOrder')) {
      final l$personTypeOrder = data['personTypeOrder'];
      result$data['personTypeOrder'] = l$personTypeOrder == null
          ? null
          : Input_FamilyContactFilterPersonTypeOrder.fromJson(
              (l$personTypeOrder as Map<String, dynamic>),
            );
    }
    return Input_FamilyContactFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamilyContactFilterInput>? get and =>
      (_$data['and'] as List<Input_FamilyContactFilterInput>?);

  List<Input_FamilyContactFilterInput>? get or =>
      (_$data['or'] as List<Input_FamilyContactFilterInput>?);

  List<Input_FamilyContactFilterInput>? get not =>
      (_$data['not'] as List<Input_FamilyContactFilterInput>?);

  Input_FamilyContactFilterId? get id =>
      (_$data['id'] as Input_FamilyContactFilterId?);

  Input_FamilyContactFilterPersonId? get personId =>
      (_$data['personId'] as Input_FamilyContactFilterPersonId?);

  Input_FamilyContactFilterFamilyId? get familyId =>
      (_$data['familyId'] as Input_FamilyContactFilterFamilyId?);

  Input_FamilyContactFilterPersonTypeId? get personTypeId =>
      (_$data['personTypeId'] as Input_FamilyContactFilterPersonTypeId?);

  Input_FamilyContactFilterLabel? get label =>
      (_$data['label'] as Input_FamilyContactFilterLabel?);

  Input_FamilyContactFilterPhone? get phone =>
      (_$data['phone'] as Input_FamilyContactFilterPhone?);

  Input_FamilyContactFilterIsMainPhone? get isMainPhone =>
      (_$data['isMainPhone'] as Input_FamilyContactFilterIsMainPhone?);

  Input_FamilyContactFilterCreatedAt? get createdAt =>
      (_$data['createdAt'] as Input_FamilyContactFilterCreatedAt?);

  Input_FamilyContactFilterUpdatedAt? get updatedAt =>
      (_$data['updatedAt'] as Input_FamilyContactFilterUpdatedAt?);

  Input_FamilyContactFilterEffectiveFamilyId? get effectiveFamilyId =>
      (_$data['effectiveFamilyId']
          as Input_FamilyContactFilterEffectiveFamilyId?);

  Input_FamilyContactFilterEffectivePersonTypeId? get effectivePersonTypeId =>
      (_$data['effectivePersonTypeId']
          as Input_FamilyContactFilterEffectivePersonTypeId?);

  Input_PersonFilterInput? get person =>
      (_$data['person'] as Input_PersonFilterInput?);

  Input_PersonTypeFilterInput? get personType =>
      (_$data['personType'] as Input_PersonTypeFilterInput?);

  Input_FamilyFilterInput? get family =>
      (_$data['family'] as Input_FamilyFilterInput?);

  Input_FamilyContactFilterPersonTypeOrder? get personTypeOrder =>
      (_$data['personTypeOrder'] as Input_FamilyContactFilterPersonTypeOrder?);

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
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId?.toJson();
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label?.toJson();
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone?.toJson();
    }
    if (_$data.containsKey('isMainPhone')) {
      final l$isMainPhone = isMainPhone;
      result$data['isMainPhone'] = l$isMainPhone?.toJson();
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    if (_$data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = effectiveFamilyId;
      result$data['effectiveFamilyId'] = l$effectiveFamilyId?.toJson();
    }
    if (_$data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = effectivePersonTypeId;
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('personTypeOrder')) {
      final l$personTypeOrder = personTypeOrder;
      result$data['personTypeOrder'] = l$personTypeOrder?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamilyContactFilterInput<Input_FamilyContactFilterInput>
  get copyWith => CopyWith_Input_FamilyContactFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyContactFilterInput ||
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$isMainPhone = isMainPhone;
    final lOther$isMainPhone = other.isMainPhone;
    if (_$data.containsKey('isMainPhone') !=
        other._$data.containsKey('isMainPhone')) {
      return false;
    }
    if (l$isMainPhone != lOther$isMainPhone) {
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
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$effectiveFamilyId = effectiveFamilyId;
    final lOther$effectiveFamilyId = other.effectiveFamilyId;
    if (_$data.containsKey('effectiveFamilyId') !=
        other._$data.containsKey('effectiveFamilyId')) {
      return false;
    }
    if (l$effectiveFamilyId != lOther$effectiveFamilyId) {
      return false;
    }
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final lOther$effectivePersonTypeId = other.effectivePersonTypeId;
    if (_$data.containsKey('effectivePersonTypeId') !=
        other._$data.containsKey('effectivePersonTypeId')) {
      return false;
    }
    if (l$effectivePersonTypeId != lOther$effectivePersonTypeId) {
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
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (_$data.containsKey('personType') !=
        other._$data.containsKey('personType')) {
      return false;
    }
    if (l$personType != lOther$personType) {
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
    final l$personTypeOrder = personTypeOrder;
    final lOther$personTypeOrder = other.personTypeOrder;
    if (_$data.containsKey('personTypeOrder') !=
        other._$data.containsKey('personTypeOrder')) {
      return false;
    }
    if (l$personTypeOrder != lOther$personTypeOrder) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$id = id;
    final l$personId = personId;
    final l$familyId = familyId;
    final l$personTypeId = personTypeId;
    final l$label = label;
    final l$phone = phone;
    final l$isMainPhone = isMainPhone;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$effectiveFamilyId = effectiveFamilyId;
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final l$person = person;
    final l$personType = personType;
    final l$family = family;
    final l$personTypeOrder = personTypeOrder;
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
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('isMainPhone') ? l$isMainPhone : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
      _$data.containsKey('effectiveFamilyId') ? l$effectiveFamilyId : const {},
      _$data.containsKey('effectivePersonTypeId')
          ? l$effectivePersonTypeId
          : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('personTypeOrder') ? l$personTypeOrder : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamilyContactFilterInput<TRes> {
  factory CopyWith_Input_FamilyContactFilterInput(
    Input_FamilyContactFilterInput instance,
    TRes Function(Input_FamilyContactFilterInput) then,
  ) = _CopyWithImpl_Input_FamilyContactFilterInput;

  factory CopyWith_Input_FamilyContactFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyContactFilterInput;

  TRes call({
    List<Input_FamilyContactFilterInput>? and,
    List<Input_FamilyContactFilterInput>? or,
    List<Input_FamilyContactFilterInput>? not,
    Input_FamilyContactFilterId? id,
    Input_FamilyContactFilterPersonId? personId,
    Input_FamilyContactFilterFamilyId? familyId,
    Input_FamilyContactFilterPersonTypeId? personTypeId,
    Input_FamilyContactFilterLabel? label,
    Input_FamilyContactFilterPhone? phone,
    Input_FamilyContactFilterIsMainPhone? isMainPhone,
    Input_FamilyContactFilterCreatedAt? createdAt,
    Input_FamilyContactFilterUpdatedAt? updatedAt,
    Input_FamilyContactFilterEffectiveFamilyId? effectiveFamilyId,
    Input_FamilyContactFilterEffectivePersonTypeId? effectivePersonTypeId,
    Input_PersonFilterInput? person,
    Input_PersonTypeFilterInput? personType,
    Input_FamilyFilterInput? family,
    Input_FamilyContactFilterPersonTypeOrder? personTypeOrder,
  });
  TRes and(
    Iterable<Input_FamilyContactFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyContactFilterInput<Input_FamilyContactFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_FamilyContactFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyContactFilterInput<Input_FamilyContactFilterInput>
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_FamilyContactFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyContactFilterInput<Input_FamilyContactFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith_Input_FamilyContactFilterId<TRes> get id;
  CopyWith_Input_FamilyContactFilterPersonId<TRes> get personId;
  CopyWith_Input_FamilyContactFilterFamilyId<TRes> get familyId;
  CopyWith_Input_FamilyContactFilterPersonTypeId<TRes> get personTypeId;
  CopyWith_Input_FamilyContactFilterLabel<TRes> get label;
  CopyWith_Input_FamilyContactFilterPhone<TRes> get phone;
  CopyWith_Input_FamilyContactFilterIsMainPhone<TRes> get isMainPhone;
  CopyWith_Input_FamilyContactFilterCreatedAt<TRes> get createdAt;
  CopyWith_Input_FamilyContactFilterUpdatedAt<TRes> get updatedAt;
  CopyWith_Input_FamilyContactFilterEffectiveFamilyId<TRes>
  get effectiveFamilyId;
  CopyWith_Input_FamilyContactFilterEffectivePersonTypeId<TRes>
  get effectivePersonTypeId;
  CopyWith_Input_PersonFilterInput<TRes> get person;
  CopyWith_Input_PersonTypeFilterInput<TRes> get personType;
  CopyWith_Input_FamilyFilterInput<TRes> get family;
  CopyWith_Input_FamilyContactFilterPersonTypeOrder<TRes> get personTypeOrder;
}

class _CopyWithImpl_Input_FamilyContactFilterInput<TRes>
    implements CopyWith_Input_FamilyContactFilterInput<TRes> {
  _CopyWithImpl_Input_FamilyContactFilterInput(this._instance, this._then);

  final Input_FamilyContactFilterInput _instance;

  final TRes Function(Input_FamilyContactFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? familyId = _undefined,
    Object? personTypeId = _undefined,
    Object? label = _undefined,
    Object? phone = _undefined,
    Object? isMainPhone = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? effectiveFamilyId = _undefined,
    Object? effectivePersonTypeId = _undefined,
    Object? person = _undefined,
    Object? personType = _undefined,
    Object? family = _undefined,
    Object? personTypeOrder = _undefined,
  }) => _then(
    Input_FamilyContactFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input_FamilyContactFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_FamilyContactFilterInput>?),
      if (not != _undefined)
        'not': (not as List<Input_FamilyContactFilterInput>?),
      if (id != _undefined) 'id': (id as Input_FamilyContactFilterId?),
      if (personId != _undefined)
        'personId': (personId as Input_FamilyContactFilterPersonId?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_FamilyContactFilterFamilyId?),
      if (personTypeId != _undefined)
        'personTypeId':
            (personTypeId as Input_FamilyContactFilterPersonTypeId?),
      if (label != _undefined)
        'label': (label as Input_FamilyContactFilterLabel?),
      if (phone != _undefined)
        'phone': (phone as Input_FamilyContactFilterPhone?),
      if (isMainPhone != _undefined)
        'isMainPhone': (isMainPhone as Input_FamilyContactFilterIsMainPhone?),
      if (createdAt != _undefined)
        'createdAt': (createdAt as Input_FamilyContactFilterCreatedAt?),
      if (updatedAt != _undefined)
        'updatedAt': (updatedAt as Input_FamilyContactFilterUpdatedAt?),
      if (effectiveFamilyId != _undefined)
        'effectiveFamilyId':
            (effectiveFamilyId as Input_FamilyContactFilterEffectiveFamilyId?),
      if (effectivePersonTypeId != _undefined)
        'effectivePersonTypeId':
            (effectivePersonTypeId
                as Input_FamilyContactFilterEffectivePersonTypeId?),
      if (person != _undefined) 'person': (person as Input_PersonFilterInput?),
      if (personType != _undefined)
        'personType': (personType as Input_PersonTypeFilterInput?),
      if (family != _undefined) 'family': (family as Input_FamilyFilterInput?),
      if (personTypeOrder != _undefined)
        'personTypeOrder':
            (personTypeOrder as Input_FamilyContactFilterPersonTypeOrder?),
    }),
  );

  TRes and(
    Iterable<Input_FamilyContactFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyContactFilterInput<Input_FamilyContactFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_FamilyContactFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_FamilyContactFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyContactFilterInput<Input_FamilyContactFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_FamilyContactFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_FamilyContactFilterInput>? Function(
      Iterable<
        CopyWith_Input_FamilyContactFilterInput<Input_FamilyContactFilterInput>
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_FamilyContactFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_FamilyContactFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_FamilyContactFilterId.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_FamilyContactFilterPersonId<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_FamilyContactFilterPersonId.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterPersonId(
            local$personId,
            (e) => call(personId: e),
          );
  }

  CopyWith_Input_FamilyContactFilterFamilyId<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_FamilyContactFilterFamilyId.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterFamilyId(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_FamilyContactFilterPersonTypeId<TRes> get personTypeId {
    final local$personTypeId = _instance.personTypeId;
    return local$personTypeId == null
        ? CopyWith_Input_FamilyContactFilterPersonTypeId.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterPersonTypeId(
            local$personTypeId,
            (e) => call(personTypeId: e),
          );
  }

  CopyWith_Input_FamilyContactFilterLabel<TRes> get label {
    final local$label = _instance.label;
    return local$label == null
        ? CopyWith_Input_FamilyContactFilterLabel.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterLabel(
            local$label,
            (e) => call(label: e),
          );
  }

  CopyWith_Input_FamilyContactFilterPhone<TRes> get phone {
    final local$phone = _instance.phone;
    return local$phone == null
        ? CopyWith_Input_FamilyContactFilterPhone.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterPhone(
            local$phone,
            (e) => call(phone: e),
          );
  }

  CopyWith_Input_FamilyContactFilterIsMainPhone<TRes> get isMainPhone {
    final local$isMainPhone = _instance.isMainPhone;
    return local$isMainPhone == null
        ? CopyWith_Input_FamilyContactFilterIsMainPhone.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterIsMainPhone(
            local$isMainPhone,
            (e) => call(isMainPhone: e),
          );
  }

  CopyWith_Input_FamilyContactFilterCreatedAt<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith_Input_FamilyContactFilterCreatedAt.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterCreatedAt(
            local$createdAt,
            (e) => call(createdAt: e),
          );
  }

  CopyWith_Input_FamilyContactFilterUpdatedAt<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith_Input_FamilyContactFilterUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_FamilyContactFilterUpdatedAt(
            local$updatedAt,
            (e) => call(updatedAt: e),
          );
  }

  CopyWith_Input_FamilyContactFilterEffectiveFamilyId<TRes>
  get effectiveFamilyId {
    final local$effectiveFamilyId = _instance.effectiveFamilyId;
    return local$effectiveFamilyId == null
        ? CopyWith_Input_FamilyContactFilterEffectiveFamilyId.stub(
            _then(_instance),
          )
        : CopyWith_Input_FamilyContactFilterEffectiveFamilyId(
            local$effectiveFamilyId,
            (e) => call(effectiveFamilyId: e),
          );
  }

  CopyWith_Input_FamilyContactFilterEffectivePersonTypeId<TRes>
  get effectivePersonTypeId {
    final local$effectivePersonTypeId = _instance.effectivePersonTypeId;
    return local$effectivePersonTypeId == null
        ? CopyWith_Input_FamilyContactFilterEffectivePersonTypeId.stub(
            _then(_instance),
          )
        : CopyWith_Input_FamilyContactFilterEffectivePersonTypeId(
            local$effectivePersonTypeId,
            (e) => call(effectivePersonTypeId: e),
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

  CopyWith_Input_PersonTypeFilterInput<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Input_PersonTypeFilterInput.stub(_then(_instance))
        : CopyWith_Input_PersonTypeFilterInput(
            local$personType,
            (e) => call(personType: e),
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

  CopyWith_Input_FamilyContactFilterPersonTypeOrder<TRes> get personTypeOrder {
    final local$personTypeOrder = _instance.personTypeOrder;
    return local$personTypeOrder == null
        ? CopyWith_Input_FamilyContactFilterPersonTypeOrder.stub(
            _then(_instance),
          )
        : CopyWith_Input_FamilyContactFilterPersonTypeOrder(
            local$personTypeOrder,
            (e) => call(personTypeOrder: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamilyContactFilterInput<TRes>
    implements CopyWith_Input_FamilyContactFilterInput<TRes> {
  _CopyWithStubImpl_Input_FamilyContactFilterInput(this._res);

  TRes _res;

  call({
    List<Input_FamilyContactFilterInput>? and,
    List<Input_FamilyContactFilterInput>? or,
    List<Input_FamilyContactFilterInput>? not,
    Input_FamilyContactFilterId? id,
    Input_FamilyContactFilterPersonId? personId,
    Input_FamilyContactFilterFamilyId? familyId,
    Input_FamilyContactFilterPersonTypeId? personTypeId,
    Input_FamilyContactFilterLabel? label,
    Input_FamilyContactFilterPhone? phone,
    Input_FamilyContactFilterIsMainPhone? isMainPhone,
    Input_FamilyContactFilterCreatedAt? createdAt,
    Input_FamilyContactFilterUpdatedAt? updatedAt,
    Input_FamilyContactFilterEffectiveFamilyId? effectiveFamilyId,
    Input_FamilyContactFilterEffectivePersonTypeId? effectivePersonTypeId,
    Input_PersonFilterInput? person,
    Input_PersonTypeFilterInput? personType,
    Input_FamilyFilterInput? family,
    Input_FamilyContactFilterPersonTypeOrder? personTypeOrder,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_FamilyContactFilterId<TRes> get id =>
      CopyWith_Input_FamilyContactFilterId.stub(_res);

  CopyWith_Input_FamilyContactFilterPersonId<TRes> get personId =>
      CopyWith_Input_FamilyContactFilterPersonId.stub(_res);

  CopyWith_Input_FamilyContactFilterFamilyId<TRes> get familyId =>
      CopyWith_Input_FamilyContactFilterFamilyId.stub(_res);

  CopyWith_Input_FamilyContactFilterPersonTypeId<TRes> get personTypeId =>
      CopyWith_Input_FamilyContactFilterPersonTypeId.stub(_res);

  CopyWith_Input_FamilyContactFilterLabel<TRes> get label =>
      CopyWith_Input_FamilyContactFilterLabel.stub(_res);

  CopyWith_Input_FamilyContactFilterPhone<TRes> get phone =>
      CopyWith_Input_FamilyContactFilterPhone.stub(_res);

  CopyWith_Input_FamilyContactFilterIsMainPhone<TRes> get isMainPhone =>
      CopyWith_Input_FamilyContactFilterIsMainPhone.stub(_res);

  CopyWith_Input_FamilyContactFilterCreatedAt<TRes> get createdAt =>
      CopyWith_Input_FamilyContactFilterCreatedAt.stub(_res);

  CopyWith_Input_FamilyContactFilterUpdatedAt<TRes> get updatedAt =>
      CopyWith_Input_FamilyContactFilterUpdatedAt.stub(_res);

  CopyWith_Input_FamilyContactFilterEffectiveFamilyId<TRes>
  get effectiveFamilyId =>
      CopyWith_Input_FamilyContactFilterEffectiveFamilyId.stub(_res);

  CopyWith_Input_FamilyContactFilterEffectivePersonTypeId<TRes>
  get effectivePersonTypeId =>
      CopyWith_Input_FamilyContactFilterEffectivePersonTypeId.stub(_res);

  CopyWith_Input_PersonFilterInput<TRes> get person =>
      CopyWith_Input_PersonFilterInput.stub(_res);

  CopyWith_Input_PersonTypeFilterInput<TRes> get personType =>
      CopyWith_Input_PersonTypeFilterInput.stub(_res);

  CopyWith_Input_FamilyFilterInput<TRes> get family =>
      CopyWith_Input_FamilyFilterInput.stub(_res);

  CopyWith_Input_FamilyContactFilterPersonTypeOrder<TRes> get personTypeOrder =>
      CopyWith_Input_FamilyContactFilterPersonTypeOrder.stub(_res);
}

class Input_FamilyContactSortInput {
  factory Input_FamilyContactSortInput({
    Enum_SortOrder? order,
    required Enum_FamilyContactSortField field,
  }) => Input_FamilyContactSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_FamilyContactSortInput._(this._$data);

  factory Input_FamilyContactSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_FamilyContactSortField(
      (l$field as String),
    );
    return Input_FamilyContactSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_FamilyContactSortField get field =>
      (_$data['field'] as Enum_FamilyContactSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_FamilyContactSortField(l$field);
    return result$data;
  }

  CopyWith_Input_FamilyContactSortInput<Input_FamilyContactSortInput>
  get copyWith => CopyWith_Input_FamilyContactSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamilyContactSortInput ||
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

abstract class CopyWith_Input_FamilyContactSortInput<TRes> {
  factory CopyWith_Input_FamilyContactSortInput(
    Input_FamilyContactSortInput instance,
    TRes Function(Input_FamilyContactSortInput) then,
  ) = _CopyWithImpl_Input_FamilyContactSortInput;

  factory CopyWith_Input_FamilyContactSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_FamilyContactSortInput;

  TRes call({Enum_SortOrder? order, Enum_FamilyContactSortField? field});
}

class _CopyWithImpl_Input_FamilyContactSortInput<TRes>
    implements CopyWith_Input_FamilyContactSortInput<TRes> {
  _CopyWithImpl_Input_FamilyContactSortInput(this._instance, this._then);

  final Input_FamilyContactSortInput _instance;

  final TRes Function(Input_FamilyContactSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_FamilyContactSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_FamilyContactSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_FamilyContactSortInput<TRes>
    implements CopyWith_Input_FamilyContactSortInput<TRes> {
  _CopyWithStubImpl_Input_FamilyContactSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_FamilyContactSortField? field}) => _res;
}

class Input_PersonTagFilterTagName {
  factory Input_PersonTagFilterTagName({
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
  }) => Input_PersonTagFilterTagName._({
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

  Input_PersonTagFilterTagName._(this._$data);

  factory Input_PersonTagFilterTagName.fromJson(Map<String, dynamic> data) {
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
    return Input_PersonTagFilterTagName._(result$data);
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

  CopyWith_Input_PersonTagFilterTagName<Input_PersonTagFilterTagName>
  get copyWith => CopyWith_Input_PersonTagFilterTagName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonTagFilterTagName ||
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
