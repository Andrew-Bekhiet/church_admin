// Part 34 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryMeetingDaysMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysMaxOrderBy(
    Input_HistoryMeetingDaysMaxOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysMaxOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysMaxOrderBy;

  TRes call({
    Enum_OrderBy? day,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysMaxOrderBy(this._instance, this._then);

  final Input_HistoryMeetingDaysMaxOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? meetingId = _undefined,
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysMaxOrderBy._({
      ..._instance._$data,
      if (day != _undefined) 'day': (day as Enum_OrderBy?),
      if (meetingId != _undefined) 'meetingId': (meetingId as Enum_OrderBy?),
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

class _CopyWithStubImpl_Input_HistoryMeetingDaysMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? day,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysMinOrderBy {
  factory Input_HistoryMeetingDaysMinOrderBy({
    Enum_OrderBy? day,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysMinOrderBy._({
    if (day != null) r'day': day,
    if (meetingId != null) r'meetingId': meetingId,
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysMinOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysMinOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : fromJson_Enum_OrderBy((l$day as String));
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : fromJson_Enum_OrderBy((l$meetingId as String));
    }
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
    return Input_HistoryMeetingDaysMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get day => (_$data['day'] as Enum_OrderBy?);

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Enum_OrderBy? get personsCount => (_$data['personsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get servantsCount => (_$data['servantsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get totalCount => (_$data['totalCount'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : toJson_Enum_OrderBy(l$day);
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : toJson_Enum_OrderBy(l$meetingId);
    }
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

  CopyWith_Input_HistoryMeetingDaysMinOrderBy<
    Input_HistoryMeetingDaysMinOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingDaysMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysMinOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    final l$day = day;
    final l$meetingId = meetingId;
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$studyYearId = studyYearId;
    final l$totalCount = totalCount;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personsCount') ? l$personsCount : const {},
      _$data.containsKey('servantsCount') ? l$servantsCount : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('totalCount') ? l$totalCount : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingDaysMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysMinOrderBy(
    Input_HistoryMeetingDaysMinOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysMinOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysMinOrderBy;

  TRes call({
    Enum_OrderBy? day,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysMinOrderBy(this._instance, this._then);

  final Input_HistoryMeetingDaysMinOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? meetingId = _undefined,
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysMinOrderBy._({
      ..._instance._$data,
      if (day != _undefined) 'day': (day as Enum_OrderBy?),
      if (meetingId != _undefined) 'meetingId': (meetingId as Enum_OrderBy?),
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

class _CopyWithStubImpl_Input_HistoryMeetingDaysMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? day,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysOrderBy {
  factory Input_HistoryMeetingDaysOrderBy({
    Enum_OrderBy? day,
    Enum_OrderBy? gender,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysOrderBy._({
    if (day != null) r'day': day,
    if (gender != null) r'gender': gender,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYear != null) r'studyYear': studyYear,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : fromJson_Enum_OrderBy((l$day as String));
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = l$gender == null
          ? null
          : fromJson_Enum_OrderBy((l$gender as String));
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
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsOrderBy.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
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
    return Input_HistoryMeetingDaysOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get day => (_$data['day'] as Enum_OrderBy?);

  Enum_OrderBy? get gender => (_$data['gender'] as Enum_OrderBy?);

  Input_HistoryMeetingsOrderBy? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsOrderBy?);

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Enum_OrderBy? get personsCount => (_$data['personsCount'] as Enum_OrderBy?);

  Enum_OrderBy? get servantsCount => (_$data['servantsCount'] as Enum_OrderBy?);

  Input_StudyYearsOrderBy? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsOrderBy?);

  Enum_OrderBy? get studyYearId => (_$data['studyYearId'] as Enum_OrderBy?);

  Enum_OrderBy? get totalCount => (_$data['totalCount'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : toJson_Enum_OrderBy(l$day);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender == null
          ? null
          : toJson_Enum_OrderBy(l$gender);
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
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
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

  CopyWith_Input_HistoryMeetingDaysOrderBy<Input_HistoryMeetingDaysOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingDaysOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
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
    final l$day = day;
    final l$gender = gender;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$studyYear = studyYear;
    final l$studyYearId = studyYearId;
    final l$totalCount = totalCount;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personsCount') ? l$personsCount : const {},
      _$data.containsKey('servantsCount') ? l$servantsCount : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('totalCount') ? l$totalCount : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingDaysOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysOrderBy(
    Input_HistoryMeetingDaysOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysOrderBy;

  TRes call({
    Enum_OrderBy? day,
    Enum_OrderBy? gender,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting;
  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryMeetingDaysOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysOrderBy(this._instance, this._then);

  final Input_HistoryMeetingDaysOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? gender = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYear = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysOrderBy._({
      ..._instance._$data,
      if (day != _undefined) 'day': (day as Enum_OrderBy?),
      if (gender != _undefined) 'gender': (gender as Enum_OrderBy?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsOrderBy?),
      if (meetingId != _undefined) 'meetingId': (meetingId as Enum_OrderBy?),
      if (personsCount != _undefined)
        'personsCount': (personsCount as Enum_OrderBy?),
      if (servantsCount != _undefined)
        'servantsCount': (servantsCount as Enum_OrderBy?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsOrderBy?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Enum_OrderBy?),
      if (totalCount != _undefined) 'totalCount': (totalCount as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting {
    final local$meeting = _instance.meeting;
    return local$meeting == null
        ? CopyWith_Input_HistoryMeetingsOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsOrderBy(
            local$meeting,
            (e) => call(meeting: e),
          );
  }

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsOrderBy.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOrderBy(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? day,
    Enum_OrderBy? gender,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Input_StudyYearsOrderBy? studyYear,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsOrderBy.stub(_res);

  CopyWith_Input_StudyYearsOrderBy<TRes> get studyYear =>
      CopyWith_Input_StudyYearsOrderBy.stub(_res);
}

class Input_HistoryMeetingDaysStddevOrderBy {
  factory Input_HistoryMeetingDaysStddevOrderBy({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysStddevOrderBy._({
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysStddevOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysStddevOrderBy.fromJson(
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
    return Input_HistoryMeetingDaysStddevOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingDaysStddevOrderBy<
    Input_HistoryMeetingDaysStddevOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysStddevOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingDaysStddevOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysStddevOrderBy(
    Input_HistoryMeetingDaysStddevOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysStddevOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysStddevOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysStddevOrderBy;

  TRes call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStddevOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysStddevOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysStddevOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysStddevOrderBy._({
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

class _CopyWithStubImpl_Input_HistoryMeetingDaysStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysStddevOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysStddevPopOrderBy {
  factory Input_HistoryMeetingDaysStddevPopOrderBy({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysStddevPopOrderBy._({
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysStddevPopOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysStddevPopOrderBy.fromJson(
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
    return Input_HistoryMeetingDaysStddevPopOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy<
    Input_HistoryMeetingDaysStddevPopOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysStddevPopOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy(
    Input_HistoryMeetingDaysStddevPopOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysStddevPopOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysStddevPopOrderBy;

  TRes call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysStddevPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysStddevPopOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysStddevPopOrderBy._({
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

class _CopyWithStubImpl_Input_HistoryMeetingDaysStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysStddevPopOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysStddevSampOrderBy {
  factory Input_HistoryMeetingDaysStddevSampOrderBy({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysStddevSampOrderBy._({
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysStddevSampOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysStddevSampOrderBy.fromJson(
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
    return Input_HistoryMeetingDaysStddevSampOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy<
    Input_HistoryMeetingDaysStddevSampOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysStddevSampOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy(
    Input_HistoryMeetingDaysStddevSampOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysStddevSampOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysStddevSampOrderBy;

  TRes call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysStddevSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysStddevSampOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysStddevSampOrderBy._({
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

class _CopyWithStubImpl_Input_HistoryMeetingDaysStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysStddevSampOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysStreamCursorInput {
  factory Input_HistoryMeetingDaysStreamCursorInput({
    required Input_HistoryMeetingDaysStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryMeetingDaysStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryMeetingDaysStreamCursorInput._(this._$data);

  factory Input_HistoryMeetingDaysStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryMeetingDaysStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryMeetingDaysStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingDaysStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryMeetingDaysStreamCursorValueInput);

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

  CopyWith_Input_HistoryMeetingDaysStreamCursorInput<
    Input_HistoryMeetingDaysStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryMeetingDaysStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysStreamCursorInput(
    Input_HistoryMeetingDaysStreamCursorInput instance,
    TRes Function(Input_HistoryMeetingDaysStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysStreamCursorInput;

  factory CopyWith_Input_HistoryMeetingDaysStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysStreamCursorInput;

  TRes call({
    Input_HistoryMeetingDaysStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryMeetingDaysStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysStreamCursorInput _instance;

  final TRes Function(Input_HistoryMeetingDaysStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryMeetingDaysStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingDaysStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingDaysStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput.stub(_res);
}

class Input_HistoryMeetingDaysStreamCursorValueInput {
  factory Input_HistoryMeetingDaysStreamCursorValueInput({
    DateTime? day,
    bool? gender,
    UuidValue? meetingId,
    int? personsCount,
    int? servantsCount,
    int? studyYearId,
    int? totalCount,
  }) => Input_HistoryMeetingDaysStreamCursorValueInput._({
    if (day != null) r'day': day,
    if (gender != null) r'gender': gender,
    if (meetingId != null) r'meetingId': meetingId,
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysStreamCursorValueInput._(this._$data);

  factory Input_HistoryMeetingDaysStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as bool?);
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : stringToUuid(l$meetingId);
    }
    if (data.containsKey('personsCount')) {
      final l$personsCount = data['personsCount'];
      result$data['personsCount'] = (l$personsCount as int?);
    }
    if (data.containsKey('servantsCount')) {
      final l$servantsCount = data['servantsCount'];
      result$data['servantsCount'] = (l$servantsCount as int?);
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    if (data.containsKey('totalCount')) {
      final l$totalCount = data['totalCount'];
      result$data['totalCount'] = (l$totalCount as int?);
    }
    return Input_HistoryMeetingDaysStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get day => (_$data['day'] as DateTime?);

  bool? get gender => (_$data['gender'] as bool?);

  UuidValue? get meetingId => (_$data['meetingId'] as UuidValue?);

  int? get personsCount => (_$data['personsCount'] as int?);

  int? get servantsCount => (_$data['servantsCount'] as int?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  int? get totalCount => (_$data['totalCount'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : uuidToString(l$meetingId);
    }
    if (_$data.containsKey('personsCount')) {
      final l$personsCount = personsCount;
      result$data['personsCount'] = l$personsCount;
    }
    if (_$data.containsKey('servantsCount')) {
      final l$servantsCount = servantsCount;
      result$data['servantsCount'] = l$servantsCount;
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    if (_$data.containsKey('totalCount')) {
      final l$totalCount = totalCount;
      result$data['totalCount'] = l$totalCount;
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput<
    Input_HistoryMeetingDaysStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
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
    final l$day = day;
    final l$gender = gender;
    final l$meetingId = meetingId;
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$studyYearId = studyYearId;
    final l$totalCount = totalCount;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personsCount') ? l$personsCount : const {},
      _$data.containsKey('servantsCount') ? l$servantsCount : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('totalCount') ? l$totalCount : const {},
    ]);
  }
}

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
