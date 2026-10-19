// Part 54 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_AttendanceRecordFilterDatetime<TRes> {
  factory CopyWith_Input_AttendanceRecordFilterDatetime(
    Input_AttendanceRecordFilterDatetime instance,
    TRes Function(Input_AttendanceRecordFilterDatetime) then,
  ) = _CopyWithImpl_Input_AttendanceRecordFilterDatetime;

  factory CopyWith_Input_AttendanceRecordFilterDatetime.stub(TRes res) =
      _CopyWithStubImpl_Input_AttendanceRecordFilterDatetime;

  TRes call({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_AttendanceRecordFilterDatetime<TRes>
    implements CopyWith_Input_AttendanceRecordFilterDatetime<TRes> {
  _CopyWithImpl_Input_AttendanceRecordFilterDatetime(
    this._instance,
    this._then,
  );

  final Input_AttendanceRecordFilterDatetime _instance;

  final TRes Function(Input_AttendanceRecordFilterDatetime) _then;

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
    Input_AttendanceRecordFilterDatetime._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as DateTime?),
      if (notEq != _undefined) 'notEq': (notEq as DateTime?),
      if ($in != _undefined) 'in': ($in as List<DateTime>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as DateTime?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as DateTime?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as DateTime?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as DateTime?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as DateTime?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_AttendanceRecordFilterDatetime<TRes>
    implements CopyWith_Input_AttendanceRecordFilterDatetime<TRes> {
  _CopyWithStubImpl_Input_AttendanceRecordFilterDatetime(this._res);

  TRes _res;

  call({
    bool? isNil,
    DateTime? eq,
    DateTime? notEq,
    List<DateTime>? $in,
    DateTime? lessThan,
    DateTime? greaterThan,
    DateTime? lessThanOrEqual,
    DateTime? greaterThanOrEqual,
    DateTime? isDistinctFrom,
    DateTime? isNotDistinctFrom,
  }) => _res;
}

class Input_AttendanceRecordFilterPersonId {
  factory Input_AttendanceRecordFilterPersonId({
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
  }) => Input_AttendanceRecordFilterPersonId._({
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

  Input_AttendanceRecordFilterPersonId._(this._$data);

  factory Input_AttendanceRecordFilterPersonId.fromJson(
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
    return Input_AttendanceRecordFilterPersonId._(result$data);
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

  CopyWith_Input_AttendanceRecordFilterPersonId<
    Input_AttendanceRecordFilterPersonId
  >
  get copyWith => CopyWith_Input_AttendanceRecordFilterPersonId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AttendanceRecordFilterPersonId ||
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

abstract class CopyWith_Input_AttendanceRecordFilterPersonId<TRes> {
  factory CopyWith_Input_AttendanceRecordFilterPersonId(
    Input_AttendanceRecordFilterPersonId instance,
    TRes Function(Input_AttendanceRecordFilterPersonId) then,
  ) = _CopyWithImpl_Input_AttendanceRecordFilterPersonId;

  factory CopyWith_Input_AttendanceRecordFilterPersonId.stub(TRes res) =
      _CopyWithStubImpl_Input_AttendanceRecordFilterPersonId;

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

class _CopyWithImpl_Input_AttendanceRecordFilterPersonId<TRes>
    implements CopyWith_Input_AttendanceRecordFilterPersonId<TRes> {
  _CopyWithImpl_Input_AttendanceRecordFilterPersonId(
    this._instance,
    this._then,
  );

  final Input_AttendanceRecordFilterPersonId _instance;

  final TRes Function(Input_AttendanceRecordFilterPersonId) _then;

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
    Input_AttendanceRecordFilterPersonId._({
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

class _CopyWithStubImpl_Input_AttendanceRecordFilterPersonId<TRes>
    implements CopyWith_Input_AttendanceRecordFilterPersonId<TRes> {
  _CopyWithStubImpl_Input_AttendanceRecordFilterPersonId(this._res);

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

class Input_AttendanceRecordFilterMeetingId {
  factory Input_AttendanceRecordFilterMeetingId({
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
  }) => Input_AttendanceRecordFilterMeetingId._({
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

  Input_AttendanceRecordFilterMeetingId._(this._$data);

  factory Input_AttendanceRecordFilterMeetingId.fromJson(
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
    return Input_AttendanceRecordFilterMeetingId._(result$data);
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

  CopyWith_Input_AttendanceRecordFilterMeetingId<
    Input_AttendanceRecordFilterMeetingId
  >
  get copyWith =>
      CopyWith_Input_AttendanceRecordFilterMeetingId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AttendanceRecordFilterMeetingId ||
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

abstract class CopyWith_Input_AttendanceRecordFilterMeetingId<TRes> {
  factory CopyWith_Input_AttendanceRecordFilterMeetingId(
    Input_AttendanceRecordFilterMeetingId instance,
    TRes Function(Input_AttendanceRecordFilterMeetingId) then,
  ) = _CopyWithImpl_Input_AttendanceRecordFilterMeetingId;

  factory CopyWith_Input_AttendanceRecordFilterMeetingId.stub(TRes res) =
      _CopyWithStubImpl_Input_AttendanceRecordFilterMeetingId;

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

class _CopyWithImpl_Input_AttendanceRecordFilterMeetingId<TRes>
    implements CopyWith_Input_AttendanceRecordFilterMeetingId<TRes> {
  _CopyWithImpl_Input_AttendanceRecordFilterMeetingId(
    this._instance,
    this._then,
  );

  final Input_AttendanceRecordFilterMeetingId _instance;

  final TRes Function(Input_AttendanceRecordFilterMeetingId) _then;

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
    Input_AttendanceRecordFilterMeetingId._({
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

class _CopyWithStubImpl_Input_AttendanceRecordFilterMeetingId<TRes>
    implements CopyWith_Input_AttendanceRecordFilterMeetingId<TRes> {
  _CopyWithStubImpl_Input_AttendanceRecordFilterMeetingId(this._res);

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

class Input_AttendanceRecordFilterId {
  factory Input_AttendanceRecordFilterId({
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
  }) => Input_AttendanceRecordFilterId._({
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

  Input_AttendanceRecordFilterId._(this._$data);

  factory Input_AttendanceRecordFilterId.fromJson(Map<String, dynamic> data) {
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
    return Input_AttendanceRecordFilterId._(result$data);
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

  CopyWith_Input_AttendanceRecordFilterId<Input_AttendanceRecordFilterId>
  get copyWith => CopyWith_Input_AttendanceRecordFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AttendanceRecordFilterId ||
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

abstract class CopyWith_Input_AttendanceRecordFilterId<TRes> {
  factory CopyWith_Input_AttendanceRecordFilterId(
    Input_AttendanceRecordFilterId instance,
    TRes Function(Input_AttendanceRecordFilterId) then,
  ) = _CopyWithImpl_Input_AttendanceRecordFilterId;

  factory CopyWith_Input_AttendanceRecordFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_AttendanceRecordFilterId;

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

class _CopyWithImpl_Input_AttendanceRecordFilterId<TRes>
    implements CopyWith_Input_AttendanceRecordFilterId<TRes> {
  _CopyWithImpl_Input_AttendanceRecordFilterId(this._instance, this._then);

  final Input_AttendanceRecordFilterId _instance;

  final TRes Function(Input_AttendanceRecordFilterId) _then;

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
    Input_AttendanceRecordFilterId._({
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

class _CopyWithStubImpl_Input_AttendanceRecordFilterId<TRes>
    implements CopyWith_Input_AttendanceRecordFilterId<TRes> {
  _CopyWithStubImpl_Input_AttendanceRecordFilterId(this._res);

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

class Input_AttendanceRecordFilterInput {
  factory Input_AttendanceRecordFilterInput({
    List<Input_AttendanceRecordFilterInput>? and,
    List<Input_AttendanceRecordFilterInput>? or,
    List<Input_AttendanceRecordFilterInput>? not,
    Input_AttendanceRecordFilterId? id,
    Input_AttendanceRecordFilterMeetingId? meetingId,
    Input_AttendanceRecordFilterPersonId? personId,
    Input_AttendanceRecordFilterDatetime? datetime,
    Input_AttendanceRecordFilterAsServant? asServant,
    Input_AttendanceRecordFilterRecordedBy? recordedBy,
    Input_AttendanceRecordFilterDay? day,
    Input_MeetingFilterInput? meeting,
    Input_PersonFilterInput? person,
    Input_UserFilterInput? recordedByUser,
    Input_UserFilterInput? user,
    Input_AttendanceRecordFilterMeetingName? meetingName,
    Input_AttendanceRecordFilterPersonName? personName,
    Input_AttendanceRecordFilterRecordedByUserName? recordedByUserName,
    Input_AttendanceRecordFilterTime? time,
  }) => Input_AttendanceRecordFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (meetingId != null) r'meetingId': meetingId,
    if (personId != null) r'personId': personId,
    if (datetime != null) r'datetime': datetime,
    if (asServant != null) r'asServant': asServant,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (day != null) r'day': day,
    if (meeting != null) r'meeting': meeting,
    if (person != null) r'person': person,
    if (recordedByUser != null) r'recordedByUser': recordedByUser,
    if (user != null) r'user': user,
    if (meetingName != null) r'meetingName': meetingName,
    if (personName != null) r'personName': personName,
    if (recordedByUserName != null) r'recordedByUserName': recordedByUserName,
    if (time != null) r'time': time,
  });

  Input_AttendanceRecordFilterInput._(this._$data);

  factory Input_AttendanceRecordFilterInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_AttendanceRecordFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_AttendanceRecordFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_AttendanceRecordFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_AttendanceRecordFilterId.fromJson(
              (l$id as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : Input_AttendanceRecordFilterMeetingId.fromJson(
              (l$meetingId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_AttendanceRecordFilterPersonId.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : Input_AttendanceRecordFilterDatetime.fromJson(
              (l$datetime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('asServant')) {
      final l$asServant = data['asServant'];
      result$data['asServant'] = l$asServant == null
          ? null
          : Input_AttendanceRecordFilterAsServant.fromJson(
              (l$asServant as Map<String, dynamic>),
            );
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_AttendanceRecordFilterRecordedBy.fromJson(
              (l$recordedBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_AttendanceRecordFilterDay.fromJson(
              (l$day as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meeting')) {
      final l$meeting = data['meeting'];
      result$data['meeting'] = l$meeting == null
          ? null
          : Input_MeetingFilterInput.fromJson(
              (l$meeting as Map<String, dynamic>),
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
    if (data.containsKey('recordedByUser')) {
      final l$recordedByUser = data['recordedByUser'];
      result$data['recordedByUser'] = l$recordedByUser == null
          ? null
          : Input_UserFilterInput.fromJson(
              (l$recordedByUser as Map<String, dynamic>),
            );
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_UserFilterInput.fromJson((l$user as Map<String, dynamic>));
    }
    if (data.containsKey('meetingName')) {
      final l$meetingName = data['meetingName'];
      result$data['meetingName'] = l$meetingName == null
          ? null
          : Input_AttendanceRecordFilterMeetingName.fromJson(
              (l$meetingName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personName')) {
      final l$personName = data['personName'];
      result$data['personName'] = l$personName == null
          ? null
          : Input_AttendanceRecordFilterPersonName.fromJson(
              (l$personName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('recordedByUserName')) {
      final l$recordedByUserName = data['recordedByUserName'];
      result$data['recordedByUserName'] = l$recordedByUserName == null
          ? null
          : Input_AttendanceRecordFilterRecordedByUserName.fromJson(
              (l$recordedByUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : Input_AttendanceRecordFilterTime.fromJson(
              (l$time as Map<String, dynamic>),
            );
    }
    return Input_AttendanceRecordFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AttendanceRecordFilterInput>? get and =>
      (_$data['and'] as List<Input_AttendanceRecordFilterInput>?);

  List<Input_AttendanceRecordFilterInput>? get or =>
      (_$data['or'] as List<Input_AttendanceRecordFilterInput>?);

  List<Input_AttendanceRecordFilterInput>? get not =>
      (_$data['not'] as List<Input_AttendanceRecordFilterInput>?);

  Input_AttendanceRecordFilterId? get id =>
      (_$data['id'] as Input_AttendanceRecordFilterId?);

  Input_AttendanceRecordFilterMeetingId? get meetingId =>
      (_$data['meetingId'] as Input_AttendanceRecordFilterMeetingId?);

  Input_AttendanceRecordFilterPersonId? get personId =>
      (_$data['personId'] as Input_AttendanceRecordFilterPersonId?);

  Input_AttendanceRecordFilterDatetime? get datetime =>
      (_$data['datetime'] as Input_AttendanceRecordFilterDatetime?);

  Input_AttendanceRecordFilterAsServant? get asServant =>
      (_$data['asServant'] as Input_AttendanceRecordFilterAsServant?);

  Input_AttendanceRecordFilterRecordedBy? get recordedBy =>
      (_$data['recordedBy'] as Input_AttendanceRecordFilterRecordedBy?);

  Input_AttendanceRecordFilterDay? get day =>
      (_$data['day'] as Input_AttendanceRecordFilterDay?);

  Input_MeetingFilterInput? get meeting =>
      (_$data['meeting'] as Input_MeetingFilterInput?);

  Input_PersonFilterInput? get person =>
      (_$data['person'] as Input_PersonFilterInput?);

  Input_UserFilterInput? get recordedByUser =>
      (_$data['recordedByUser'] as Input_UserFilterInput?);

  Input_UserFilterInput? get user => (_$data['user'] as Input_UserFilterInput?);

  Input_AttendanceRecordFilterMeetingName? get meetingName =>
      (_$data['meetingName'] as Input_AttendanceRecordFilterMeetingName?);

  Input_AttendanceRecordFilterPersonName? get personName =>
      (_$data['personName'] as Input_AttendanceRecordFilterPersonName?);

  Input_AttendanceRecordFilterRecordedByUserName? get recordedByUserName =>
      (_$data['recordedByUserName']
          as Input_AttendanceRecordFilterRecordedByUserName?);

  Input_AttendanceRecordFilterTime? get time =>
      (_$data['time'] as Input_AttendanceRecordFilterTime?);

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
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime?.toJson();
    }
    if (_$data.containsKey('asServant')) {
      final l$asServant = asServant;
      result$data['asServant'] = l$asServant?.toJson();
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('meeting')) {
      final l$meeting = meeting;
      result$data['meeting'] = l$meeting?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('recordedByUser')) {
      final l$recordedByUser = recordedByUser;
      result$data['recordedByUser'] = l$recordedByUser?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    if (_$data.containsKey('meetingName')) {
      final l$meetingName = meetingName;
      result$data['meetingName'] = l$meetingName?.toJson();
    }
    if (_$data.containsKey('personName')) {
      final l$personName = personName;
      result$data['personName'] = l$personName?.toJson();
    }
    if (_$data.containsKey('recordedByUserName')) {
      final l$recordedByUserName = recordedByUserName;
      result$data['recordedByUserName'] = l$recordedByUserName?.toJson();
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AttendanceRecordFilterInput<Input_AttendanceRecordFilterInput>
  get copyWith => CopyWith_Input_AttendanceRecordFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AttendanceRecordFilterInput ||
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
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (_$data.containsKey('asServant') !=
        other._$data.containsKey('asServant')) {
      return false;
    }
    if (l$asServant != lOther$asServant) {
      return false;
    }
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (_$data.containsKey('day') != other._$data.containsKey('day')) {
      return false;
    }
    if (l$day != lOther$day) {
      return false;
    }
    final l$meeting = meeting;
    final lOther$meeting = other.meeting;
    if (_$data.containsKey('meeting') != other._$data.containsKey('meeting')) {
      return false;
    }
    if (l$meeting != lOther$meeting) {
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
    final l$recordedByUser = recordedByUser;
    final lOther$recordedByUser = other.recordedByUser;
    if (_$data.containsKey('recordedByUser') !=
        other._$data.containsKey('recordedByUser')) {
      return false;
    }
    if (l$recordedByUser != lOther$recordedByUser) {
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
    final l$meetingName = meetingName;
    final lOther$meetingName = other.meetingName;
    if (_$data.containsKey('meetingName') !=
        other._$data.containsKey('meetingName')) {
      return false;
    }
    if (l$meetingName != lOther$meetingName) {
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
    final l$recordedByUserName = recordedByUserName;
    final lOther$recordedByUserName = other.recordedByUserName;
    if (_$data.containsKey('recordedByUserName') !=
        other._$data.containsKey('recordedByUserName')) {
      return false;
    }
    if (l$recordedByUserName != lOther$recordedByUserName) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
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
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$datetime = datetime;
    final l$asServant = asServant;
    final l$recordedBy = recordedBy;
    final l$day = day;
    final l$meeting = meeting;
    final l$person = person;
    final l$recordedByUser = recordedByUser;
    final l$user = user;
    final l$meetingName = meetingName;
    final l$personName = personName;
    final l$recordedByUserName = recordedByUserName;
    final l$time = time;
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
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('asServant') ? l$asServant : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('recordedByUser') ? l$recordedByUser : const {},
      _$data.containsKey('user') ? l$user : const {},
      _$data.containsKey('meetingName') ? l$meetingName : const {},
      _$data.containsKey('personName') ? l$personName : const {},
      _$data.containsKey('recordedByUserName')
          ? l$recordedByUserName
          : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_AttendanceRecordFilterInput<TRes> {
  factory CopyWith_Input_AttendanceRecordFilterInput(
    Input_AttendanceRecordFilterInput instance,
    TRes Function(Input_AttendanceRecordFilterInput) then,
  ) = _CopyWithImpl_Input_AttendanceRecordFilterInput;

  factory CopyWith_Input_AttendanceRecordFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AttendanceRecordFilterInput;

  TRes call({
    List<Input_AttendanceRecordFilterInput>? and,
    List<Input_AttendanceRecordFilterInput>? or,
    List<Input_AttendanceRecordFilterInput>? not,
    Input_AttendanceRecordFilterId? id,
    Input_AttendanceRecordFilterMeetingId? meetingId,
    Input_AttendanceRecordFilterPersonId? personId,
    Input_AttendanceRecordFilterDatetime? datetime,
    Input_AttendanceRecordFilterAsServant? asServant,
    Input_AttendanceRecordFilterRecordedBy? recordedBy,
    Input_AttendanceRecordFilterDay? day,
    Input_MeetingFilterInput? meeting,
    Input_PersonFilterInput? person,
    Input_UserFilterInput? recordedByUser,
    Input_UserFilterInput? user,
    Input_AttendanceRecordFilterMeetingName? meetingName,
    Input_AttendanceRecordFilterPersonName? personName,
    Input_AttendanceRecordFilterRecordedByUserName? recordedByUserName,
    Input_AttendanceRecordFilterTime? time,
  });
  TRes and(
    Iterable<Input_AttendanceRecordFilterInput>? Function(
      Iterable<
        CopyWith_Input_AttendanceRecordFilterInput<
          Input_AttendanceRecordFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_AttendanceRecordFilterInput>? Function(
      Iterable<
        CopyWith_Input_AttendanceRecordFilterInput<
          Input_AttendanceRecordFilterInput
        >
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_AttendanceRecordFilterInput>? Function(
      Iterable<
        CopyWith_Input_AttendanceRecordFilterInput<
          Input_AttendanceRecordFilterInput
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_AttendanceRecordFilterId<TRes> get id;
  CopyWith_Input_AttendanceRecordFilterMeetingId<TRes> get meetingId;
  CopyWith_Input_AttendanceRecordFilterPersonId<TRes> get personId;
  CopyWith_Input_AttendanceRecordFilterDatetime<TRes> get datetime;
  CopyWith_Input_AttendanceRecordFilterAsServant<TRes> get asServant;
  CopyWith_Input_AttendanceRecordFilterRecordedBy<TRes> get recordedBy;
  CopyWith_Input_AttendanceRecordFilterDay<TRes> get day;
  CopyWith_Input_MeetingFilterInput<TRes> get meeting;
  CopyWith_Input_PersonFilterInput<TRes> get person;
  CopyWith_Input_UserFilterInput<TRes> get recordedByUser;
  CopyWith_Input_UserFilterInput<TRes> get user;
  CopyWith_Input_AttendanceRecordFilterMeetingName<TRes> get meetingName;
  CopyWith_Input_AttendanceRecordFilterPersonName<TRes> get personName;
  CopyWith_Input_AttendanceRecordFilterRecordedByUserName<TRes>
  get recordedByUserName;
  CopyWith_Input_AttendanceRecordFilterTime<TRes> get time;
}

class _CopyWithImpl_Input_AttendanceRecordFilterInput<TRes>
    implements CopyWith_Input_AttendanceRecordFilterInput<TRes> {
  _CopyWithImpl_Input_AttendanceRecordFilterInput(this._instance, this._then);

  final Input_AttendanceRecordFilterInput _instance;

  final TRes Function(Input_AttendanceRecordFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? datetime = _undefined,
    Object? asServant = _undefined,
    Object? recordedBy = _undefined,
    Object? day = _undefined,
    Object? meeting = _undefined,
    Object? person = _undefined,
    Object? recordedByUser = _undefined,
    Object? user = _undefined,
    Object? meetingName = _undefined,
    Object? personName = _undefined,
    Object? recordedByUserName = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_AttendanceRecordFilterInput._({
      ..._instance._$data,
      if (and != _undefined)
        'and': (and as List<Input_AttendanceRecordFilterInput>?),
      if (or != _undefined)
        'or': (or as List<Input_AttendanceRecordFilterInput>?),
      if (not != _undefined)
        'not': (not as List<Input_AttendanceRecordFilterInput>?),
      if (id != _undefined) 'id': (id as Input_AttendanceRecordFilterId?),
      if (meetingId != _undefined)
        'meetingId': (meetingId as Input_AttendanceRecordFilterMeetingId?),
      if (personId != _undefined)
        'personId': (personId as Input_AttendanceRecordFilterPersonId?),
      if (datetime != _undefined)
        'datetime': (datetime as Input_AttendanceRecordFilterDatetime?),
      if (asServant != _undefined)
        'asServant': (asServant as Input_AttendanceRecordFilterAsServant?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_AttendanceRecordFilterRecordedBy?),
      if (day != _undefined) 'day': (day as Input_AttendanceRecordFilterDay?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_MeetingFilterInput?),
      if (person != _undefined) 'person': (person as Input_PersonFilterInput?),
      if (recordedByUser != _undefined)
        'recordedByUser': (recordedByUser as Input_UserFilterInput?),
      if (user != _undefined) 'user': (user as Input_UserFilterInput?),
      if (meetingName != _undefined)
        'meetingName':
            (meetingName as Input_AttendanceRecordFilterMeetingName?),
      if (personName != _undefined)
        'personName': (personName as Input_AttendanceRecordFilterPersonName?),
      if (recordedByUserName != _undefined)
        'recordedByUserName':
            (recordedByUserName
                as Input_AttendanceRecordFilterRecordedByUserName?),
      if (time != _undefined)
        'time': (time as Input_AttendanceRecordFilterTime?),
    }),
  );

  TRes and(
    Iterable<Input_AttendanceRecordFilterInput>? Function(
      Iterable<
        CopyWith_Input_AttendanceRecordFilterInput<
          Input_AttendanceRecordFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_AttendanceRecordFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_AttendanceRecordFilterInput>? Function(
      Iterable<
        CopyWith_Input_AttendanceRecordFilterInput<
          Input_AttendanceRecordFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_AttendanceRecordFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_AttendanceRecordFilterInput>? Function(
      Iterable<
        CopyWith_Input_AttendanceRecordFilterInput<
          Input_AttendanceRecordFilterInput
        >
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_AttendanceRecordFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_AttendanceRecordFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_AttendanceRecordFilterId.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_AttendanceRecordFilterMeetingId<TRes> get meetingId {
    final local$meetingId = _instance.meetingId;
    return local$meetingId == null
        ? CopyWith_Input_AttendanceRecordFilterMeetingId.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterMeetingId(
            local$meetingId,
            (e) => call(meetingId: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterPersonId<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_AttendanceRecordFilterPersonId.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterPersonId(
            local$personId,
            (e) => call(personId: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterDatetime<TRes> get datetime {
    final local$datetime = _instance.datetime;
    return local$datetime == null
        ? CopyWith_Input_AttendanceRecordFilterDatetime.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterDatetime(
            local$datetime,
            (e) => call(datetime: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterAsServant<TRes> get asServant {
    final local$asServant = _instance.asServant;
    return local$asServant == null
        ? CopyWith_Input_AttendanceRecordFilterAsServant.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterAsServant(
            local$asServant,
            (e) => call(asServant: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterRecordedBy<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_AttendanceRecordFilterRecordedBy.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterRecordedBy(
            local$recordedBy,
            (e) => call(recordedBy: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterDay<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_AttendanceRecordFilterDay.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterDay(
            local$day,
            (e) => call(day: e),
          );
  }

  CopyWith_Input_MeetingFilterInput<TRes> get meeting {
    final local$meeting = _instance.meeting;
    return local$meeting == null
        ? CopyWith_Input_MeetingFilterInput.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterInput(
            local$meeting,
            (e) => call(meeting: e),
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

  CopyWith_Input_UserFilterInput<TRes> get recordedByUser {
    final local$recordedByUser = _instance.recordedByUser;
    return local$recordedByUser == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(
            local$recordedByUser,
            (e) => call(recordedByUser: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$user, (e) => call(user: e));
  }

  CopyWith_Input_AttendanceRecordFilterMeetingName<TRes> get meetingName {
    final local$meetingName = _instance.meetingName;
    return local$meetingName == null
        ? CopyWith_Input_AttendanceRecordFilterMeetingName.stub(
            _then(_instance),
          )
        : CopyWith_Input_AttendanceRecordFilterMeetingName(
            local$meetingName,
            (e) => call(meetingName: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterPersonName<TRes> get personName {
    final local$personName = _instance.personName;
    return local$personName == null
        ? CopyWith_Input_AttendanceRecordFilterPersonName.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterPersonName(
            local$personName,
            (e) => call(personName: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterRecordedByUserName<TRes>
  get recordedByUserName {
    final local$recordedByUserName = _instance.recordedByUserName;
    return local$recordedByUserName == null
        ? CopyWith_Input_AttendanceRecordFilterRecordedByUserName.stub(
            _then(_instance),
          )
        : CopyWith_Input_AttendanceRecordFilterRecordedByUserName(
            local$recordedByUserName,
            (e) => call(recordedByUserName: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterTime<TRes> get time {
    final local$time = _instance.time;
    return local$time == null
        ? CopyWith_Input_AttendanceRecordFilterTime.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterTime(
            local$time,
            (e) => call(time: e),
          );
  }
}

class _CopyWithStubImpl_Input_AttendanceRecordFilterInput<TRes>
    implements CopyWith_Input_AttendanceRecordFilterInput<TRes> {
  _CopyWithStubImpl_Input_AttendanceRecordFilterInput(this._res);

  TRes _res;

  call({
    List<Input_AttendanceRecordFilterInput>? and,
    List<Input_AttendanceRecordFilterInput>? or,
    List<Input_AttendanceRecordFilterInput>? not,
    Input_AttendanceRecordFilterId? id,
    Input_AttendanceRecordFilterMeetingId? meetingId,
    Input_AttendanceRecordFilterPersonId? personId,
    Input_AttendanceRecordFilterDatetime? datetime,
    Input_AttendanceRecordFilterAsServant? asServant,
    Input_AttendanceRecordFilterRecordedBy? recordedBy,
    Input_AttendanceRecordFilterDay? day,
    Input_MeetingFilterInput? meeting,
    Input_PersonFilterInput? person,
    Input_UserFilterInput? recordedByUser,
    Input_UserFilterInput? user,
    Input_AttendanceRecordFilterMeetingName? meetingName,
    Input_AttendanceRecordFilterPersonName? personName,
    Input_AttendanceRecordFilterRecordedByUserName? recordedByUserName,
    Input_AttendanceRecordFilterTime? time,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_AttendanceRecordFilterId<TRes> get id =>
      CopyWith_Input_AttendanceRecordFilterId.stub(_res);

  CopyWith_Input_AttendanceRecordFilterMeetingId<TRes> get meetingId =>
      CopyWith_Input_AttendanceRecordFilterMeetingId.stub(_res);

  CopyWith_Input_AttendanceRecordFilterPersonId<TRes> get personId =>
      CopyWith_Input_AttendanceRecordFilterPersonId.stub(_res);

  CopyWith_Input_AttendanceRecordFilterDatetime<TRes> get datetime =>
      CopyWith_Input_AttendanceRecordFilterDatetime.stub(_res);

  CopyWith_Input_AttendanceRecordFilterAsServant<TRes> get asServant =>
      CopyWith_Input_AttendanceRecordFilterAsServant.stub(_res);

  CopyWith_Input_AttendanceRecordFilterRecordedBy<TRes> get recordedBy =>
      CopyWith_Input_AttendanceRecordFilterRecordedBy.stub(_res);

  CopyWith_Input_AttendanceRecordFilterDay<TRes> get day =>
      CopyWith_Input_AttendanceRecordFilterDay.stub(_res);

  CopyWith_Input_MeetingFilterInput<TRes> get meeting =>
      CopyWith_Input_MeetingFilterInput.stub(_res);

  CopyWith_Input_PersonFilterInput<TRes> get person =>
      CopyWith_Input_PersonFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get recordedByUser =>
      CopyWith_Input_UserFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get user =>
      CopyWith_Input_UserFilterInput.stub(_res);

  CopyWith_Input_AttendanceRecordFilterMeetingName<TRes> get meetingName =>
      CopyWith_Input_AttendanceRecordFilterMeetingName.stub(_res);

  CopyWith_Input_AttendanceRecordFilterPersonName<TRes> get personName =>
      CopyWith_Input_AttendanceRecordFilterPersonName.stub(_res);

  CopyWith_Input_AttendanceRecordFilterRecordedByUserName<TRes>
  get recordedByUserName =>
      CopyWith_Input_AttendanceRecordFilterRecordedByUserName.stub(_res);

  CopyWith_Input_AttendanceRecordFilterTime<TRes> get time =>
      CopyWith_Input_AttendanceRecordFilterTime.stub(_res);
}

class Input_AttendanceRecordSortInput {
  factory Input_AttendanceRecordSortInput({
    Enum_SortOrder? order,
    required Enum_AttendanceRecordSortField field,
  }) => Input_AttendanceRecordSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_AttendanceRecordSortInput._(this._$data);

  factory Input_AttendanceRecordSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_AttendanceRecordSortField(
      (l$field as String),
    );
    return Input_AttendanceRecordSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_AttendanceRecordSortField get field =>
      (_$data['field'] as Enum_AttendanceRecordSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_AttendanceRecordSortField(l$field);
    return result$data;
  }

  CopyWith_Input_AttendanceRecordSortInput<Input_AttendanceRecordSortInput>
  get copyWith => CopyWith_Input_AttendanceRecordSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AttendanceRecordSortInput ||
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

abstract class CopyWith_Input_AttendanceRecordSortInput<TRes> {
  factory CopyWith_Input_AttendanceRecordSortInput(
    Input_AttendanceRecordSortInput instance,
    TRes Function(Input_AttendanceRecordSortInput) then,
  ) = _CopyWithImpl_Input_AttendanceRecordSortInput;

  factory CopyWith_Input_AttendanceRecordSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AttendanceRecordSortInput;

  TRes call({Enum_SortOrder? order, Enum_AttendanceRecordSortField? field});
}

class _CopyWithImpl_Input_AttendanceRecordSortInput<TRes>
    implements CopyWith_Input_AttendanceRecordSortInput<TRes> {
  _CopyWithImpl_Input_AttendanceRecordSortInput(this._instance, this._then);

  final Input_AttendanceRecordSortInput _instance;

  final TRes Function(Input_AttendanceRecordSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_AttendanceRecordSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_AttendanceRecordSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_AttendanceRecordSortInput<TRes>
    implements CopyWith_Input_AttendanceRecordSortInput<TRes> {
  _CopyWithStubImpl_Input_AttendanceRecordSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_AttendanceRecordSortField? field}) => _res;
}

class Input_RecordVisitInput {
  factory Input_RecordVisitInput({
    required String recordId,
    DateTime? time,
    bool? isFatherVisit,
    required Enum_VisitSubject subject,
  }) => Input_RecordVisitInput._({
    r'recordId': recordId,
    if (time != null) r'time': time,
    if (isFatherVisit != null) r'isFatherVisit': isFatherVisit,
    r'subject': subject,
  });

  Input_RecordVisitInput._(this._$data);

  factory Input_RecordVisitInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$recordId = data['recordId'];
    result$data['recordId'] = (l$recordId as String);
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    if (data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = data['isFatherVisit'];
      result$data['isFatherVisit'] = (l$isFatherVisit as bool?);
    }
    final l$subject = data['subject'];
    result$data['subject'] = fromJson_Enum_VisitSubject((l$subject as String));
    return Input_RecordVisitInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get recordId => (_$data['recordId'] as String);

  DateTime? get time => (_$data['time'] as DateTime?);

  bool? get isFatherVisit => (_$data['isFatherVisit'] as bool?);

  Enum_VisitSubject get subject => (_$data['subject'] as Enum_VisitSubject);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$recordId = recordId;
    result$data['recordId'] = l$recordId;
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    if (_$data.containsKey('isFatherVisit')) {
      final l$isFatherVisit = isFatherVisit;
      result$data['isFatherVisit'] = l$isFatherVisit;
    }
    final l$subject = subject;
    result$data['subject'] = toJson_Enum_VisitSubject(l$subject);
    return result$data;
  }

  CopyWith_Input_RecordVisitInput<Input_RecordVisitInput> get copyWith =>
      CopyWith_Input_RecordVisitInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_RecordVisitInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordId = recordId;
    final lOther$recordId = other.recordId;
    if (l$recordId != lOther$recordId) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    final l$isFatherVisit = isFatherVisit;
    final lOther$isFatherVisit = other.isFatherVisit;
    if (_$data.containsKey('isFatherVisit') !=
        other._$data.containsKey('isFatherVisit')) {
      return false;
    }
    if (l$isFatherVisit != lOther$isFatherVisit) {
      return false;
    }
    final l$subject = subject;
    final lOther$subject = other.subject;
    if (l$subject != lOther$subject) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$recordId = recordId;
    final l$time = time;
    final l$isFatherVisit = isFatherVisit;
    final l$subject = subject;
    return Object.hashAll([
      l$recordId,
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('isFatherVisit') ? l$isFatherVisit : const {},
      l$subject,
    ]);
  }
}

abstract class CopyWith_Input_RecordVisitInput<TRes> {
  factory CopyWith_Input_RecordVisitInput(
    Input_RecordVisitInput instance,
    TRes Function(Input_RecordVisitInput) then,
  ) = _CopyWithImpl_Input_RecordVisitInput;

  factory CopyWith_Input_RecordVisitInput.stub(TRes res) =
      _CopyWithStubImpl_Input_RecordVisitInput;

  TRes call({
    String? recordId,
    DateTime? time,
    bool? isFatherVisit,
    Enum_VisitSubject? subject,
  });
}

class _CopyWithImpl_Input_RecordVisitInput<TRes>
    implements CopyWith_Input_RecordVisitInput<TRes> {
  _CopyWithImpl_Input_RecordVisitInput(this._instance, this._then);

  final Input_RecordVisitInput _instance;

  final TRes Function(Input_RecordVisitInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? time = _undefined,
    Object? isFatherVisit = _undefined,
    Object? subject = _undefined,
  }) => _then(
    Input_RecordVisitInput._({
      ..._instance._$data,
      if (recordId != _undefined && recordId != null)
        'recordId': (recordId as String),
      if (time != _undefined) 'time': (time as DateTime?),
      if (isFatherVisit != _undefined)
        'isFatherVisit': (isFatherVisit as bool?),
      if (subject != _undefined && subject != null)
        'subject': (subject as Enum_VisitSubject),
    }),
  );
}

class _CopyWithStubImpl_Input_RecordVisitInput<TRes>
    implements CopyWith_Input_RecordVisitInput<TRes> {
  _CopyWithStubImpl_Input_RecordVisitInput(this._res);

  TRes _res;

  call({
    String? recordId,
    DateTime? time,
    bool? isFatherVisit,
    Enum_VisitSubject? subject,
  }) => _res;
}

class Input_VisitFilterIsFatherVisit {
  factory Input_VisitFilterIsFatherVisit({
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
  }) => Input_VisitFilterIsFatherVisit._({
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

  Input_VisitFilterIsFatherVisit._(this._$data);

  factory Input_VisitFilterIsFatherVisit.fromJson(Map<String, dynamic> data) {
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
    return Input_VisitFilterIsFatherVisit._(result$data);
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

  CopyWith_Input_VisitFilterIsFatherVisit<Input_VisitFilterIsFatherVisit>
  get copyWith => CopyWith_Input_VisitFilterIsFatherVisit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_VisitFilterIsFatherVisit ||
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
