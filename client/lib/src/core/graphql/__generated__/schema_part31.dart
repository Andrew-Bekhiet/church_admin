// Part 31 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryMeetingDaysAvgOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysAvgOrderBy(
    Input_HistoryMeetingDaysAvgOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysAvgOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysAvgOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysAvgOrderBy;

  TRes call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  });
}

class _CopyWithImpl_Input_HistoryMeetingDaysAvgOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysAvgOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysAvgOrderBy(this._instance, this._then);

  final Input_HistoryMeetingDaysAvgOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? studyYearId = _undefined,
    Object? totalCount = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysAvgOrderBy._({
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

class _CopyWithStubImpl_Input_HistoryMeetingDaysAvgOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysAvgOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => _res;
}

class Input_HistoryMeetingDaysBoolExp {
  factory Input_HistoryMeetingDaysBoolExp({
    List<Input_HistoryMeetingDaysBoolExp>? $_and,
    Input_HistoryMeetingDaysBoolExp? $_not,
    List<Input_HistoryMeetingDaysBoolExp>? $_or,
    Input_DateComparisonExp? day,
    Input_BooleanComparisonExp? gender,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_IntComparisonExp? personsCount,
    Input_IntComparisonExp? servantsCount,
    Input_StudyYearsBoolExp? studyYear,
    Input_SmallintComparisonExp? studyYearId,
    Input_IntComparisonExp? totalCount,
  }) => Input_HistoryMeetingDaysBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
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

  Input_HistoryMeetingDaysBoolExp._(this._$data);

  factory Input_HistoryMeetingDaysBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingDaysBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryMeetingDaysBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingDaysBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_DateComparisonExp.fromJson((l$day as Map<String, dynamic>));
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = l$gender == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$gender as Map<String, dynamic>),
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
    if (data.containsKey('personsCount')) {
      final l$personsCount = data['personsCount'];
      result$data['personsCount'] = l$personsCount == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$personsCount as Map<String, dynamic>),
            );
    }
    if (data.containsKey('servantsCount')) {
      final l$servantsCount = data['servantsCount'];
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$servantsCount as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsBoolExp.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$studyYearId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('totalCount')) {
      final l$totalCount = data['totalCount'];
      result$data['totalCount'] = l$totalCount == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$totalCount as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingDaysBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryMeetingDaysBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryMeetingDaysBoolExp>?);

  Input_HistoryMeetingDaysBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryMeetingDaysBoolExp?);

  List<Input_HistoryMeetingDaysBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryMeetingDaysBoolExp>?);

  Input_DateComparisonExp? get day =>
      (_$data['day'] as Input_DateComparisonExp?);

  Input_BooleanComparisonExp? get gender =>
      (_$data['gender'] as Input_BooleanComparisonExp?);

  Input_HistoryMeetingsBoolExp? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsBoolExp?);

  Input_UuidComparisonExp? get meetingId =>
      (_$data['meetingId'] as Input_UuidComparisonExp?);

  Input_IntComparisonExp? get personsCount =>
      (_$data['personsCount'] as Input_IntComparisonExp?);

  Input_IntComparisonExp? get servantsCount =>
      (_$data['servantsCount'] as Input_IntComparisonExp?);

  Input_StudyYearsBoolExp? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsBoolExp?);

  Input_SmallintComparisonExp? get studyYearId =>
      (_$data['studyYearId'] as Input_SmallintComparisonExp?);

  Input_IntComparisonExp? get totalCount =>
      (_$data['totalCount'] as Input_IntComparisonExp?);

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
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender?.toJson();
    }
    if (_$data.containsKey('meeting')) {
      final l$meeting = meeting;
      result$data['meeting'] = l$meeting?.toJson();
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId?.toJson();
    }
    if (_$data.containsKey('personsCount')) {
      final l$personsCount = personsCount;
      result$data['personsCount'] = l$personsCount?.toJson();
    }
    if (_$data.containsKey('servantsCount')) {
      final l$servantsCount = servantsCount;
      result$data['servantsCount'] = l$servantsCount?.toJson();
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId?.toJson();
    }
    if (_$data.containsKey('totalCount')) {
      final l$totalCount = totalCount;
      result$data['totalCount'] = l$totalCount?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingDaysBoolExp<Input_HistoryMeetingDaysBoolExp>
  get copyWith => CopyWith_Input_HistoryMeetingDaysBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysBoolExp ||
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
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

abstract class CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysBoolExp(
    Input_HistoryMeetingDaysBoolExp instance,
    TRes Function(Input_HistoryMeetingDaysBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysBoolExp;

  factory CopyWith_Input_HistoryMeetingDaysBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysBoolExp;

  TRes call({
    List<Input_HistoryMeetingDaysBoolExp>? $_and,
    Input_HistoryMeetingDaysBoolExp? $_not,
    List<Input_HistoryMeetingDaysBoolExp>? $_or,
    Input_DateComparisonExp? day,
    Input_BooleanComparisonExp? gender,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_IntComparisonExp? personsCount,
    Input_IntComparisonExp? servantsCount,
    Input_StudyYearsBoolExp? studyYear,
    Input_SmallintComparisonExp? studyYearId,
    Input_IntComparisonExp? totalCount,
  });
  TRes $_and(
    Iterable<Input_HistoryMeetingDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingDaysBoolExp<
          Input_HistoryMeetingDaysBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryMeetingDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingDaysBoolExp<
          Input_HistoryMeetingDaysBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_DateComparisonExp<TRes> get day;
  CopyWith_Input_BooleanComparisonExp<TRes> get gender;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting;
  CopyWith_Input_UuidComparisonExp<TRes> get meetingId;
  CopyWith_Input_IntComparisonExp<TRes> get personsCount;
  CopyWith_Input_IntComparisonExp<TRes> get servantsCount;
  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear;
  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearId;
  CopyWith_Input_IntComparisonExp<TRes> get totalCount;
}

class _CopyWithImpl_Input_HistoryMeetingDaysBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysBoolExp(this._instance, this._then);

  final Input_HistoryMeetingDaysBoolExp _instance;

  final TRes Function(Input_HistoryMeetingDaysBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
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
    Input_HistoryMeetingDaysBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryMeetingDaysBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryMeetingDaysBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryMeetingDaysBoolExp>?),
      if (day != _undefined) 'day': (day as Input_DateComparisonExp?),
      if (gender != _undefined)
        'gender': (gender as Input_BooleanComparisonExp?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsBoolExp?),
      if (meetingId != _undefined)
        'meetingId': (meetingId as Input_UuidComparisonExp?),
      if (personsCount != _undefined)
        'personsCount': (personsCount as Input_IntComparisonExp?),
      if (servantsCount != _undefined)
        'servantsCount': (servantsCount as Input_IntComparisonExp?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsBoolExp?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Input_SmallintComparisonExp?),
      if (totalCount != _undefined)
        'totalCount': (totalCount as Input_IntComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryMeetingDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingDaysBoolExp<
          Input_HistoryMeetingDaysBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryMeetingDaysBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryMeetingDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingDaysBoolExp<
          Input_HistoryMeetingDaysBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryMeetingDaysBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_DateComparisonExp<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_DateComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DateComparisonExp(local$day, (e) => call(day: e));
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

  CopyWith_Input_IntComparisonExp<TRes> get personsCount {
    final local$personsCount = _instance.personsCount;
    return local$personsCount == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(
            local$personsCount,
            (e) => call(personsCount: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get servantsCount {
    final local$servantsCount = _instance.servantsCount;
    return local$servantsCount == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(
            local$servantsCount,
            (e) => call(servantsCount: e),
          );
  }

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearId {
    final local$studyYearId = _instance.studyYearId;
    return local$studyYearId == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$studyYearId,
            (e) => call(studyYearId: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get totalCount {
    final local$totalCount = _instance.totalCount;
    return local$totalCount == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(
            local$totalCount,
            (e) => call(totalCount: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryMeetingDaysBoolExp>? $_and,
    Input_HistoryMeetingDaysBoolExp? $_not,
    List<Input_HistoryMeetingDaysBoolExp>? $_or,
    Input_DateComparisonExp? day,
    Input_BooleanComparisonExp? gender,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_IntComparisonExp? personsCount,
    Input_IntComparisonExp? servantsCount,
    Input_StudyYearsBoolExp? studyYear,
    Input_SmallintComparisonExp? studyYearId,
    Input_IntComparisonExp? totalCount,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_DateComparisonExp<TRes> get day =>
      CopyWith_Input_DateComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get gender =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get meetingId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get personsCount =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get servantsCount =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get studyYearId =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get totalCount =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_HistoryMeetingDaysMaxOrderBy {
  factory Input_HistoryMeetingDaysMaxOrderBy({
    Enum_OrderBy? day,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysMaxOrderBy._({
    if (day != null) r'day': day,
    if (meetingId != null) r'meetingId': meetingId,
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysMaxOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysMaxOrderBy.fromJson(
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
    return Input_HistoryMeetingDaysMaxOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingDaysMaxOrderBy<
    Input_HistoryMeetingDaysMaxOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingDaysMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysMaxOrderBy ||
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
