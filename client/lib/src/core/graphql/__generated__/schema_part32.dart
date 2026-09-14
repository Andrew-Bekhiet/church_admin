// Part 32 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput(
    Input_HistoryMeetingDaysStreamCursorValueInput instance,
    TRes Function(Input_HistoryMeetingDaysStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysStreamCursorValueInput;

  factory CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryMeetingDaysStreamCursorValueInput;

  TRes call({
    DateTime? day,
    bool? gender,
    UuidValue? meetingId,
    int? personsCount,
    int? servantsCount,
    int? studyYearId,
    int? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryMeetingDaysStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? gender = _undefined,
    Object? meetingId = _undefined,
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysStreamCursorValueInput._({
      ..._instance._$data,
      if (day != _undefined) 'day': (day as DateTime?),
      if (gender != _undefined) 'gender': (gender as bool?),
      if (meetingId != _undefined) 'meetingId': (meetingId as UuidValue?),
      if (personsCount != _undefined) 'personsCount': (personsCount as int?),
      if (servantsCount != _undefined) 'servantsCount': (servantsCount as int?),
      if (studyYearId != _undefined) 'studyYearId': (studyYearId as int?),
      if (totalCount != _undefined) 'totalCount': (totalCount as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysStreamCursorValueInput(this._res);

  TRes _res;

  call({
    DateTime? day,
    bool? gender,
    UuidValue? meetingId,
    int? personsCount,
    int? servantsCount,
    int? studyYearId,
    int? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysSumOrderBy {
  factory Input_HistoryMeetingDaysSumOrderBy({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysSumOrderBy._({
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysSumOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysSumOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personsCount')) {
      final l$personsCount = data['personsCount'];
      result$data['personsCount'] = l$personsCount == null
          ? null
          : fromJson_Enum_OrderBy((l$personsCount as String));
    }
    if (data.containsKey('servantsCount')) {
      final l$servantsCount = data['servantsCount'];
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : fromJson_Enum_OrderBy((l$servantsCount as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('totalCount')) {
      final l$totalCount = data['totalCount'];
      result$data['totalCount'] = l$totalCount == null
          ? null
          : fromJson_Enum_OrderBy((l$totalCount as String));
    }
    return Input_HistoryMeetingDaysSumOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personsCount => (_$data['personsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get servantsCount => (_$data['servantsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get totalCount => (_$data['totalCount'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personsCount')) {
      final l$personsCount = personsCount;
      result$data['personsCount'] = l$personsCount == null
          ? null
          : toJson_Enum_OrderBy(l$personsCount);
    }
    if (_$data.containsKey('servantsCount')) {
      final l$servantsCount = servantsCount;
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : toJson_Enum_OrderBy(l$servantsCount);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('totalCount')) {
      final l$totalCount = totalCount;
      result$data['totalCount'] = l$totalCount == null
          ? null
          : toJson_Enum_OrderBy(l$totalCount);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingDaysSumOrderBy<
    Input_HistoryMeetingDaysSumOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingDaysSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysSumOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personsCount = personsCount;
    final lOther$personsCount = other.personsCount;
    if (_$data.containsKey('personsCount') !=
        other._$data.containsKey('personsCount')) {
      return false;
    }
    if (l$personsCount != lOther$personsCount) {
      return false;
    }
    final l$servantsCount = servantsCount;
    final lOther$servantsCount = other.servantsCount;
    if (_$data.containsKey('servantsCount') !=
        other._$data.containsKey('servantsCount')) {
      return false;
    }
    if (l$servantsCount != lOther$servantsCount) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (_$data.containsKey('totalCount') !=
        other._$data.containsKey('totalCount')) {
      return false;
    }
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$studyYearId = studyYearId;
    final l$totalCount = totalCount;
    return Object.hashAll([
      _$data.containsKey('personsCount') ? l$personsCount : const {},
      _$data.containsKey('servantsCount') ? l$servantsCount : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('totalCount') ? l$totalCount : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingDaysSumOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysSumOrderBy(
    Input_HistoryMeetingDaysSumOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysSumOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysSumOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysSumOrderBy;

  TRes call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysSumOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysSumOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysSumOrderBy(this._instance, this._then);

  final Input_HistoryMeetingDaysSumOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysSumOrderBy._({
      ..._instance._$data,
      if (personsCount != _undefined)
        'personsCount': (personsCount as Enum_OrderBy?),
      if (servantsCount != _undefined)
        'servantsCount': (servantsCount as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (totalCount != _undefined) 'totalCount': (totalCount as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysSumOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysSumOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysVarPopOrderBy {
  factory Input_HistoryMeetingDaysVarPopOrderBy({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysVarPopOrderBy._({
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysVarPopOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysVarPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personsCount')) {
      final l$personsCount = data['personsCount'];
      result$data['personsCount'] = l$personsCount == null
          ? null
          : fromJson_Enum_OrderBy((l$personsCount as String));
    }
    if (data.containsKey('servantsCount')) {
      final l$servantsCount = data['servantsCount'];
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : fromJson_Enum_OrderBy((l$servantsCount as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('totalCount')) {
      final l$totalCount = data['totalCount'];
      result$data['totalCount'] = l$totalCount == null
          ? null
          : fromJson_Enum_OrderBy((l$totalCount as String));
    }
    return Input_HistoryMeetingDaysVarPopOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personsCount => (_$data['personsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get servantsCount => (_$data['servantsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get totalCount => (_$data['totalCount'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personsCount')) {
      final l$personsCount = personsCount;
      result$data['personsCount'] = l$personsCount == null
          ? null
          : toJson_Enum_OrderBy(l$personsCount);
    }
    if (_$data.containsKey('servantsCount')) {
      final l$servantsCount = servantsCount;
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : toJson_Enum_OrderBy(l$servantsCount);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('totalCount')) {
      final l$totalCount = totalCount;
      result$data['totalCount'] = l$totalCount == null
          ? null
          : toJson_Enum_OrderBy(l$totalCount);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingDaysVarPopOrderBy<
    Input_HistoryMeetingDaysVarPopOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysVarPopOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personsCount = personsCount;
    final lOther$personsCount = other.personsCount;
    if (_$data.containsKey('personsCount') !=
        other._$data.containsKey('personsCount')) {
      return false;
    }
    if (l$personsCount != lOther$personsCount) {
      return false;
    }
    final l$servantsCount = servantsCount;
    final lOther$servantsCount = other.servantsCount;
    if (_$data.containsKey('servantsCount') !=
        other._$data.containsKey('servantsCount')) {
      return false;
    }
    if (l$servantsCount != lOther$servantsCount) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (_$data.containsKey('totalCount') !=
        other._$data.containsKey('totalCount')) {
      return false;
    }
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$studyYearId = studyYearId;
    final l$totalCount = totalCount;
    return Object.hashAll([
      _$data.containsKey('personsCount') ? l$personsCount : const {},
      _$data.containsKey('servantsCount') ? l$servantsCount : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('totalCount') ? l$totalCount : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingDaysVarPopOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysVarPopOrderBy(
    Input_HistoryMeetingDaysVarPopOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysVarPopOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysVarPopOrderBy;

  TRes call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysVarPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysVarPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysVarPopOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysVarPopOrderBy._({
      ..._instance._$data,
      if (personsCount != _undefined)
        'personsCount': (personsCount as Enum_OrderBy?),
      if (servantsCount != _undefined)
        'servantsCount': (servantsCount as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (totalCount != _undefined) 'totalCount': (totalCount as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysVarPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysVarPopOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysVarSampOrderBy {
  factory Input_HistoryMeetingDaysVarSampOrderBy({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysVarSampOrderBy._({
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysVarSampOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysVarSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personsCount')) {
      final l$personsCount = data['personsCount'];
      result$data['personsCount'] = l$personsCount == null
          ? null
          : fromJson_Enum_OrderBy((l$personsCount as String));
    }
    if (data.containsKey('servantsCount')) {
      final l$servantsCount = data['servantsCount'];
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : fromJson_Enum_OrderBy((l$servantsCount as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('totalCount')) {
      final l$totalCount = data['totalCount'];
      result$data['totalCount'] = l$totalCount == null
          ? null
          : fromJson_Enum_OrderBy((l$totalCount as String));
    }
    return Input_HistoryMeetingDaysVarSampOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personsCount => (_$data['personsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get servantsCount => (_$data['servantsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get totalCount => (_$data['totalCount'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personsCount')) {
      final l$personsCount = personsCount;
      result$data['personsCount'] = l$personsCount == null
          ? null
          : toJson_Enum_OrderBy(l$personsCount);
    }
    if (_$data.containsKey('servantsCount')) {
      final l$servantsCount = servantsCount;
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : toJson_Enum_OrderBy(l$servantsCount);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('totalCount')) {
      final l$totalCount = totalCount;
      result$data['totalCount'] = l$totalCount == null
          ? null
          : toJson_Enum_OrderBy(l$totalCount);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingDaysVarSampOrderBy<
    Input_HistoryMeetingDaysVarSampOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysVarSampOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personsCount = personsCount;
    final lOther$personsCount = other.personsCount;
    if (_$data.containsKey('personsCount') !=
        other._$data.containsKey('personsCount')) {
      return false;
    }
    if (l$personsCount != lOther$personsCount) {
      return false;
    }
    final l$servantsCount = servantsCount;
    final lOther$servantsCount = other.servantsCount;
    if (_$data.containsKey('servantsCount') !=
        other._$data.containsKey('servantsCount')) {
      return false;
    }
    if (l$servantsCount != lOther$servantsCount) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (_$data.containsKey('totalCount') !=
        other._$data.containsKey('totalCount')) {
      return false;
    }
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$studyYearId = studyYearId;
    final l$totalCount = totalCount;
    return Object.hashAll([
      _$data.containsKey('personsCount') ? l$personsCount : const {},
      _$data.containsKey('servantsCount') ? l$servantsCount : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('totalCount') ? l$totalCount : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingDaysVarSampOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysVarSampOrderBy(
    Input_HistoryMeetingDaysVarSampOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysVarSampOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysVarSampOrderBy;

  TRes call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysVarSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysVarSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysVarSampOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysVarSampOrderBy._({
      ..._instance._$data,
      if (personsCount != _undefined)
        'personsCount': (personsCount as Enum_OrderBy?),
      if (servantsCount != _undefined)
        'servantsCount': (servantsCount as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (totalCount != _undefined) 'totalCount': (totalCount as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysVarSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysVarSampOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysVarianceOrderBy {
  factory Input_HistoryMeetingDaysVarianceOrderBy({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysVarianceOrderBy._({
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysVarianceOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysVarianceOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('personsCount')) {
      final l$personsCount = data['personsCount'];
      result$data['personsCount'] = l$personsCount == null
          ? null
          : fromJson_Enum_OrderBy((l$personsCount as String));
    }
    if (data.containsKey('servantsCount')) {
      final l$servantsCount = data['servantsCount'];
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : fromJson_Enum_OrderBy((l$servantsCount as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('totalCount')) {
      final l$totalCount = data['totalCount'];
      result$data['totalCount'] = l$totalCount == null
          ? null
          : fromJson_Enum_OrderBy((l$totalCount as String));
    }
    return Input_HistoryMeetingDaysVarianceOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get personsCount => (_$data['personsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get servantsCount => (_$data['servantsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get totalCount => (_$data['totalCount'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('personsCount')) {
      final l$personsCount = personsCount;
      result$data['personsCount'] = l$personsCount == null
          ? null
          : toJson_Enum_OrderBy(l$personsCount);
    }
    if (_$data.containsKey('servantsCount')) {
      final l$servantsCount = servantsCount;
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : toJson_Enum_OrderBy(l$servantsCount);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('totalCount')) {
      final l$totalCount = totalCount;
      result$data['totalCount'] = l$totalCount == null
          ? null
          : toJson_Enum_OrderBy(l$totalCount);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingDaysVarianceOrderBy<
    Input_HistoryMeetingDaysVarianceOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysVarianceOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$personsCount = personsCount;
    final lOther$personsCount = other.personsCount;
    if (_$data.containsKey('personsCount') !=
        other._$data.containsKey('personsCount')) {
      return false;
    }
    if (l$personsCount != lOther$personsCount) {
      return false;
    }
    final l$servantsCount = servantsCount;
    final lOther$servantsCount = other.servantsCount;
    if (_$data.containsKey('servantsCount') !=
        other._$data.containsKey('servantsCount')) {
      return false;
    }
    if (l$servantsCount != lOther$servantsCount) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (_$data.containsKey('totalCount') !=
        other._$data.containsKey('totalCount')) {
      return false;
    }
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$studyYearId = studyYearId;
    final l$totalCount = totalCount;
    return Object.hashAll([
      _$data.containsKey('personsCount') ? l$personsCount : const {},
      _$data.containsKey('servantsCount') ? l$servantsCount : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('totalCount') ? l$totalCount : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingDaysVarianceOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysVarianceOrderBy(
    Input_HistoryMeetingDaysVarianceOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysVarianceOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysVarianceOrderBy;

  TRes call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysVarianceOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysVarianceOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysVarianceOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysVarianceOrderBy._({
      ..._instance._$data,
      if (personsCount != _undefined)
        'personsCount': (personsCount as Enum_OrderBy?),
      if (servantsCount != _undefined)
        'servantsCount': (servantsCount as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (totalCount != _undefined) 'totalCount': (totalCount as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysVarianceOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysVarianceOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingRosterBoolExp {
  factory Input_HistoryMeetingRosterBoolExp({
    List<Input_HistoryMeetingRosterBoolExp>? $_and,
    Input_HistoryMeetingRosterBoolExp? $_not,
    List<Input_HistoryMeetingRosterBoolExp>? $_or,
    Input_BooleanComparisonExp? asServant,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_BooleanComparisonExp? gender,
    Input_StringComparisonExp? mainPhone,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_IntComparisonExp? studyYearId,
    Input_StringComparisonExp? studyYearName,
  }) => Input_HistoryMeetingRosterBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (asServant != null) r'asServant': asServant,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (gender != null) r'gender': gender,
    if (mainPhone != null) r'mainPhone': mainPhone,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (name != null) r'name': name,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (studyYearName != null) r'studyYearName': studyYearName,
  });

  Input_HistoryMeetingRosterBoolExp._(this._$data);

  factory Input_HistoryMeetingRosterBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingRosterBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryMeetingRosterBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingRosterBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('asServant')) {
      final l$asServant = data['asServant'];
      result$data['asServant'] = l$asServant == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$asServant as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$attendanceHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
          ? null
          : Input_HistoryAttendanceHistoryAggregateBoolExp.fromJson(
              (l$attendanceHistoryAggregate as Map<String, dynamic>),
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
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = l$gender == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$gender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$mainPhone as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meeting')) {
      final l$meeting = data['meeting'];
      result$data['meeting'] = l$meeting == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$meeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$meetingId as Map<String, dynamic>),
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
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$studyYearId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearName')) {
      final l$studyYearName = data['studyYearName'];
      result$data['studyYearName'] = l$studyYearName == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$studyYearName as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingRosterBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryMeetingRosterBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryMeetingRosterBoolExp>?);

  Input_HistoryMeetingRosterBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryMeetingRosterBoolExp?);

  List<Input_HistoryMeetingRosterBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryMeetingRosterBoolExp>?);

  Input_BooleanComparisonExp? get asServant =>
      (_$data['asServant'] as Input_BooleanComparisonExp?);

  Input_HistoryAttendanceHistoryBoolExp? get attendanceHistory =>
      (_$data['attendanceHistory'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_HistoryAttendanceHistoryAggregateBoolExp?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_BooleanComparisonExp? get gender =>
      (_$data['gender'] as Input_BooleanComparisonExp?);

  Input_StringComparisonExp? get mainPhone =>
      (_$data['mainPhone'] as Input_StringComparisonExp?);

  Input_HistoryMeetingsBoolExp? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsBoolExp?);

  Input_UuidComparisonExp? get meetingId =>
      (_$data['meetingId'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_IntComparisonExp? get studyYearId =>
      (_$data['studyYearId'] as Input_IntComparisonExp?);

  Input_StringComparisonExp? get studyYearName =>
      (_$data['studyYearName'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('asServant')) {
      final l$asServant = asServant;
      result$data['asServant'] = l$asServant?.toJson();
    }
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender?.toJson();
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone?.toJson();
    }
    if (_$data.containsKey('meeting')) {
      final l$meeting = meeting;
      result$data['meeting'] = l$meeting?.toJson();
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId?.toJson();
    }
    if (_$data.containsKey('studyYearName')) {
      final l$studyYearName = studyYearName;
      result$data['studyYearName'] = l$studyYearName?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingRosterBoolExp<Input_HistoryMeetingRosterBoolExp>
  get copyWith => CopyWith_Input_HistoryMeetingRosterBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingRosterBoolExp ||
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
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (_$data.containsKey('asServant') !=
        other._$data.containsKey('asServant')) {
      return false;
    }
    if (l$asServant != lOther$asServant) {
      return false;
    }
    final l$attendanceHistory = attendanceHistory;
    final lOther$attendanceHistory = other.attendanceHistory;
    if (_$data.containsKey('attendanceHistory') !=
        other._$data.containsKey('attendanceHistory')) {
      return false;
    }
    if (l$attendanceHistory != lOther$attendanceHistory) {
      return false;
    }
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (_$data.containsKey('attendanceHistoryAggregate') !=
        other._$data.containsKey('attendanceHistoryAggregate')) {
      return false;
    }
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (_$data.containsKey('mainPhone') !=
        other._$data.containsKey('mainPhone')) {
      return false;
    }
    if (l$mainPhone != lOther$mainPhone) {
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
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$studyYearName = studyYearName;
    final lOther$studyYearName = other.studyYearName;
    if (_$data.containsKey('studyYearName') !=
        other._$data.containsKey('studyYearName')) {
      return false;
    }
    if (l$studyYearName != lOther$studyYearName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$asServant = asServant;
    final l$attendanceHistory = attendanceHistory;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$gender = gender;
    final l$mainPhone = mainPhone;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$name = name;
    final l$person = person;
    final l$personId = personId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$studyYearId = studyYearId;
    final l$studyYearName = studyYearName;
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
      _$data.containsKey('asServant') ? l$asServant : const {},
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('studyYearName') ? l$studyYearName : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingRosterBoolExp<TRes> {
  factory CopyWith_Input_HistoryMeetingRosterBoolExp(
    Input_HistoryMeetingRosterBoolExp instance,
    TRes Function(Input_HistoryMeetingRosterBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryMeetingRosterBoolExp;

  factory CopyWith_Input_HistoryMeetingRosterBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingRosterBoolExp;

  TRes call({
    List<Input_HistoryMeetingRosterBoolExp>? $_and,
    Input_HistoryMeetingRosterBoolExp? $_not,
    List<Input_HistoryMeetingRosterBoolExp>? $_or,
    Input_BooleanComparisonExp? asServant,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_BooleanComparisonExp? gender,
    Input_StringComparisonExp? mainPhone,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_IntComparisonExp? studyYearId,
    Input_StringComparisonExp? studyYearName,
  });
  TRes $_and(
    Iterable<Input_HistoryMeetingRosterBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingRosterBoolExp<
          Input_HistoryMeetingRosterBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryMeetingRosterBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryMeetingRosterBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingRosterBoolExp<
          Input_HistoryMeetingRosterBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_BooleanComparisonExp<TRes> get asServant;
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_BooleanComparisonExp<TRes> get gender;
  CopyWith_Input_StringComparisonExp<TRes> get mainPhone;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting;
  CopyWith_Input_UuidComparisonExp<TRes> get meetingId;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_IntComparisonExp<TRes> get studyYearId;
  CopyWith_Input_StringComparisonExp<TRes> get studyYearName;
}

class _CopyWithImpl_Input_HistoryMeetingRosterBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingRosterBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryMeetingRosterBoolExp(this._instance, this._then);

  final Input_HistoryMeetingRosterBoolExp _instance;

  final TRes Function(Input_HistoryMeetingRosterBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? asServant = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? gender = _undefined,
    Object? mainPhone = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? name = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? studyYearId = _undefined,
    Object? studyYearName = _undefined,
  }) => _then(
    Input_HistoryMeetingRosterBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryMeetingRosterBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryMeetingRosterBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryMeetingRosterBoolExp>?),
      if (asServant != _undefined)
        'asServant': (asServant as Input_BooleanComparisonExp?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory as Input_HistoryAttendanceHistoryBoolExp?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateBoolExp?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StringComparisonExp?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (gender != _undefined)
        'gender': (gender as Input_BooleanComparisonExp?),
      if (mainPhone != _undefined)
        'mainPhone': (mainPhone as Input_StringComparisonExp?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsBoolExp?),
      if (meetingId != _undefined)
        'meetingId': (meetingId as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Input_IntComparisonExp?),
      if (studyYearName != _undefined)
        'studyYearName': (studyYearName as Input_StringComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryMeetingRosterBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingRosterBoolExp<
          Input_HistoryMeetingRosterBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryMeetingRosterBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryMeetingRosterBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryMeetingRosterBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingRosterBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryMeetingRosterBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingRosterBoolExp<
          Input_HistoryMeetingRosterBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryMeetingRosterBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_BooleanComparisonExp<TRes> get asServant {
    final local$asServant = _instance.asServant;
    return local$asServant == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$asServant,
            (e) => call(asServant: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$attendanceHistory,
            (e) => call(attendanceHistory: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e),
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

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color,
            (e) => call(color: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get gender {
    final local$gender = _instance.gender;
    return local$gender == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$gender,
            (e) => call(gender: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get mainPhone {
    final local$mainPhone = _instance.mainPhone;
    return local$mainPhone == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$mainPhone,
            (e) => call(mainPhone: e),
          );
  }

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting {
    final local$meeting = _instance.meeting;
    return local$meeting == null
        ? CopyWith_Input_HistoryMeetingsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsBoolExp(
            local$meeting,
            (e) => call(meeting: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get meetingId {
    final local$meetingId = _instance.meetingId;
    return local$meetingId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$meetingId,
            (e) => call(meetingId: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_PersonsBoolExp<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$person, (e) => call(person: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$personId,
            (e) => call(personId: e),
          );
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

  CopyWith_Input_IntComparisonExp<TRes> get studyYearId {
    final local$studyYearId = _instance.studyYearId;
    return local$studyYearId == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(
            local$studyYearId,
            (e) => call(studyYearId: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get studyYearName {
    final local$studyYearName = _instance.studyYearName;
    return local$studyYearName == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$studyYearName,
            (e) => call(studyYearName: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingRosterBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingRosterBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingRosterBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryMeetingRosterBoolExp>? $_and,
    Input_HistoryMeetingRosterBoolExp? $_not,
    List<Input_HistoryMeetingRosterBoolExp>? $_or,
    Input_BooleanComparisonExp? asServant,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_BooleanComparisonExp? gender,
    Input_StringComparisonExp? mainPhone,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_IntComparisonExp? studyYearId,
    Input_StringComparisonExp? studyYearName,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryMeetingRosterBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryMeetingRosterBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_BooleanComparisonExp<TRes> get asServant =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get gender =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get mainPhone =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get meetingId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get studyYearId =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get studyYearName =>
      CopyWith_Input_StringComparisonExp.stub(_res);
}

class Input_HistoryMeetingRosterOrderBy {
  factory Input_HistoryMeetingRosterOrderBy({
    Enum_OrderBy? asServant,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? gender,
    Enum_OrderBy? mainPhone,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? name,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? studyYearName,
  }) => Input_HistoryMeetingRosterOrderBy._({
    if (asServant != null) r'asServant': asServant,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (gender != null) r'gender': gender,
    if (mainPhone != null) r'mainPhone': mainPhone,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (name != null) r'name': name,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (studyYearName != null) r'studyYearName': studyYearName,
  });

  Input_HistoryMeetingRosterOrderBy._(this._$data);

  factory Input_HistoryMeetingRosterOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asServant')) {
      final l$asServant = data['asServant'];
      result$data['asServant'] = l$asServant == null
          ? null
          : fromJson_Enum_OrderBy((l$asServant as String));
    }
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
          ? null
          : Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
              (l$attendanceHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : fromJson_Enum_OrderBy((l$blurhash as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = l$gender == null
          ? null
          : fromJson_Enum_OrderBy((l$gender as String));
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : fromJson_Enum_OrderBy((l$mainPhone as String));
    }
    if (data.containsKey('meeting')) {
      final l$meeting = data['meeting'];
      result$data['meeting'] = l$meeting == null
          ? null
          : Input_HistoryMeetingsOrderBy.fromJson(
              (l$meeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : fromJson_Enum_OrderBy((l$meetingId as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsOrderBy.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearId as String));
    }
    if (data.containsKey('studyYearName')) {
      final l$studyYearName = data['studyYearName'];
      result$data['studyYearName'] = l$studyYearName == null
          ? null
          : fromJson_Enum_OrderBy((l$studyYearName as String));
    }
    return Input_HistoryMeetingRosterOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get asServant => (_$data['asServant'] as Enum_OrderBy?);

  Input_HistoryAttendanceHistoryAggregateOrderBy?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get gender => (_$data['gender'] as Enum_OrderBy?);

  Enum_OrderBy? get mainPhone => (_$data['mainPhone'] as Enum_OrderBy?);

  Input_HistoryMeetingsOrderBy? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsOrderBy?);

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearName => (_$data['studyYearName'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asServant')) {
      final l$asServant = asServant;
      result$data['asServant'] = l$asServant == null
          ? null
          : toJson_Enum_OrderBy(l$asServant);
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash == null
          ? null
          : toJson_Enum_OrderBy(l$blurhash);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender == null
          ? null
          : toJson_Enum_OrderBy(l$gender);
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone == null
          ? null
          : toJson_Enum_OrderBy(l$mainPhone);
    }
    if (_$data.containsKey('meeting')) {
      final l$meeting = meeting;
      result$data['meeting'] = l$meeting?.toJson();
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : toJson_Enum_OrderBy(l$meetingId);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearId);
    }
    if (_$data.containsKey('studyYearName')) {
      final l$studyYearName = studyYearName;
      result$data['studyYearName'] = l$studyYearName == null
          ? null
          : toJson_Enum_OrderBy(l$studyYearName);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingRosterOrderBy<Input_HistoryMeetingRosterOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingRosterOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingRosterOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final lOther$attendanceHistoryAggregate = other.attendanceHistoryAggregate;
    if (_$data.containsKey('attendanceHistoryAggregate') !=
        other._$data.containsKey('attendanceHistoryAggregate')) {
      return false;
    }
    if (l$attendanceHistoryAggregate != lOther$attendanceHistoryAggregate) {
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$mainPhone = mainPhone;
    final lOther$mainPhone = other.mainPhone;
    if (_$data.containsKey('mainPhone') !=
        other._$data.containsKey('mainPhone')) {
      return false;
    }
    if (l$mainPhone != lOther$mainPhone) {
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
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
      return false;
    }
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
      return false;
    }
    final l$studyYearName = studyYearName;
    final lOther$studyYearName = other.studyYearName;
    if (_$data.containsKey('studyYearName') !=
        other._$data.containsKey('studyYearName')) {
      return false;
    }
    if (l$studyYearName != lOther$studyYearName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$asServant = asServant;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$gender = gender;
    final l$mainPhone = mainPhone;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$name = name;
    final l$person = person;
    final l$personId = personId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$studyYearId = studyYearId;
    final l$studyYearName = studyYearName;
    return Object.hashAll([
      _$data.containsKey('asServant') ? l$asServant : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('studyYearName') ? l$studyYearName : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingRosterOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingRosterOrderBy(
    Input_HistoryMeetingRosterOrderBy instance,
    TRes Function(Input_HistoryMeetingRosterOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingRosterOrderBy;

  factory CopyWith_Input_HistoryMeetingRosterOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingRosterOrderBy;

  TRes call({
    Enum_OrderBy? asServant,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? gender,
    Enum_OrderBy? mainPhone,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? name,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? studyYearName,
  });
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
}

class _CopyWithImpl_Input_HistoryMeetingRosterOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingRosterOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingRosterOrderBy(this._instance, this._then);

  final Input_HistoryMeetingRosterOrderBy _instance;

  final TRes Function(Input_HistoryMeetingRosterOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? asServant = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? gender = _undefined,
    Object? mainPhone = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? name = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? studyYearId = _undefined,
    Object? studyYearName = _undefined,
  }) => _then(
    Input_HistoryMeetingRosterOrderBy._({
      ..._instance._$data,
      if (asServant != _undefined) 'asServant': (asServant as Enum_OrderBy?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateOrderBy?),
      if (blurhash != _undefined) 'blurhash': (blurhash as Enum_OrderBy?),
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (gender != _undefined) 'gender': (gender as Enum_OrderBy?),
      if (mainPhone != _undefined) 'mainPhone': (mainPhone as Enum_OrderBy?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsOrderBy?),
      if (meetingId != _undefined) 'meetingId': (meetingId as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Enum_OrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (studyYearName != _undefined)
        'studyYearName': (studyYearName as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate {
    final local$attendanceHistoryAggregate =
        _instance.attendanceHistoryAggregate;
    return local$attendanceHistoryAggregate == null
        ? CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy(
            local$attendanceHistoryAggregate,
            (e) => call(attendanceHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting {
    final local$meeting = _instance.meeting;
    return local$meeting == null
        ? CopyWith_Input_HistoryMeetingsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsOrderBy(
            local$meeting,
            (e) => call(meeting: e),
          );
  }

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingRosterOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingRosterOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingRosterOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? asServant,
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? gender,
    Enum_OrderBy? mainPhone,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? name,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? studyYearName,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);
}

class Input_HistoryMeetingRosterStreamCursorInput {
  factory Input_HistoryMeetingRosterStreamCursorInput({
    required Input_HistoryMeetingRosterStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryMeetingRosterStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryMeetingRosterStreamCursorInput._(this._$data);

  factory Input_HistoryMeetingRosterStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryMeetingRosterStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryMeetingRosterStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingRosterStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryMeetingRosterStreamCursorValueInput);

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

  CopyWith_Input_HistoryMeetingRosterStreamCursorInput<
    Input_HistoryMeetingRosterStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingRosterStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingRosterStreamCursorInput ||
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
