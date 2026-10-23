// Part 53 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_MeetingDayFilterMeetingId<TRes> {
  factory CopyWith_Input_MeetingDayFilterMeetingId(
    Input_MeetingDayFilterMeetingId instance,
    TRes Function(Input_MeetingDayFilterMeetingId) then,
  ) = _CopyWithImpl_Input_MeetingDayFilterMeetingId;

  factory CopyWith_Input_MeetingDayFilterMeetingId.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingDayFilterMeetingId;

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

class _CopyWithImpl_Input_MeetingDayFilterMeetingId<TRes>
    implements CopyWith_Input_MeetingDayFilterMeetingId<TRes> {
  _CopyWithImpl_Input_MeetingDayFilterMeetingId(this._instance, this._then);

  final Input_MeetingDayFilterMeetingId _instance;

  final TRes Function(Input_MeetingDayFilterMeetingId) _then;

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
    Input_MeetingDayFilterMeetingId._({
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

class _CopyWithStubImpl_Input_MeetingDayFilterMeetingId<TRes>
    implements CopyWith_Input_MeetingDayFilterMeetingId<TRes> {
  _CopyWithStubImpl_Input_MeetingDayFilterMeetingId(this._res);

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

class Input_MeetingDayFilterInput {
  factory Input_MeetingDayFilterInput({
    List<Input_MeetingDayFilterInput>? and,
    List<Input_MeetingDayFilterInput>? or,
    List<Input_MeetingDayFilterInput>? not,
    Input_MeetingDayFilterMeetingId? meetingId,
    Input_MeetingDayFilterDay? day,
    Input_MeetingDayFilterStudyYearId? studyYearId,
    Input_MeetingDayFilterGender? gender,
    Input_MeetingDayFilterPersonsCount? personsCount,
    Input_MeetingDayFilterServantsCount? servantsCount,
    Input_MeetingDayFilterTotalCount? totalCount,
    Input_MeetingFilterInput? meeting,
    Input_StudyYearFilterInput? studyYear,
  }) => Input_MeetingDayFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (meetingId != null) r'meetingId': meetingId,
    if (day != null) r'day': day,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (gender != null) r'gender': gender,
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (totalCount != null) r'totalCount': totalCount,
    if (meeting != null) r'meeting': meeting,
    if (studyYear != null) r'studyYear': studyYear,
  });

  Input_MeetingDayFilterInput._(this._$data);

  factory Input_MeetingDayFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_MeetingDayFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_MeetingDayFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_MeetingDayFilterInput.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : Input_MeetingDayFilterMeetingId.fromJson(
              (l$meetingId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_MeetingDayFilterDay.fromJson((l$day as Map<String, dynamic>));
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = l$studyYearId == null
          ? null
          : Input_MeetingDayFilterStudyYearId.fromJson(
              (l$studyYearId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = l$gender == null
          ? null
          : Input_MeetingDayFilterGender.fromJson(
              (l$gender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personsCount')) {
      final l$personsCount = data['personsCount'];
      result$data['personsCount'] = l$personsCount == null
          ? null
          : Input_MeetingDayFilterPersonsCount.fromJson(
              (l$personsCount as Map<String, dynamic>),
            );
    }
    if (data.containsKey('servantsCount')) {
      final l$servantsCount = data['servantsCount'];
      result$data['servantsCount'] = l$servantsCount == null
          ? null
          : Input_MeetingDayFilterServantsCount.fromJson(
              (l$servantsCount as Map<String, dynamic>),
            );
    }
    if (data.containsKey('totalCount')) {
      final l$totalCount = data['totalCount'];
      result$data['totalCount'] = l$totalCount == null
          ? null
          : Input_MeetingDayFilterTotalCount.fromJson(
              (l$totalCount as Map<String, dynamic>),
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
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearFilterInput.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    return Input_MeetingDayFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_MeetingDayFilterInput>? get and =>
      (_$data['and'] as List<Input_MeetingDayFilterInput>?);

  List<Input_MeetingDayFilterInput>? get or =>
      (_$data['or'] as List<Input_MeetingDayFilterInput>?);

  List<Input_MeetingDayFilterInput>? get not =>
      (_$data['not'] as List<Input_MeetingDayFilterInput>?);

  Input_MeetingDayFilterMeetingId? get meetingId =>
      (_$data['meetingId'] as Input_MeetingDayFilterMeetingId?);

  Input_MeetingDayFilterDay? get day =>
      (_$data['day'] as Input_MeetingDayFilterDay?);

  Input_MeetingDayFilterStudyYearId? get studyYearId =>
      (_$data['studyYearId'] as Input_MeetingDayFilterStudyYearId?);

  Input_MeetingDayFilterGender? get gender =>
      (_$data['gender'] as Input_MeetingDayFilterGender?);

  Input_MeetingDayFilterPersonsCount? get personsCount =>
      (_$data['personsCount'] as Input_MeetingDayFilterPersonsCount?);

  Input_MeetingDayFilterServantsCount? get servantsCount =>
      (_$data['servantsCount'] as Input_MeetingDayFilterServantsCount?);

  Input_MeetingDayFilterTotalCount? get totalCount =>
      (_$data['totalCount'] as Input_MeetingDayFilterTotalCount?);

  Input_MeetingFilterInput? get meeting =>
      (_$data['meeting'] as Input_MeetingFilterInput?);

  Input_StudyYearFilterInput? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearFilterInput?);

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
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId?.toJson();
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender?.toJson();
    }
    if (_$data.containsKey('personsCount')) {
      final l$personsCount = personsCount;
      result$data['personsCount'] = l$personsCount?.toJson();
    }
    if (_$data.containsKey('servantsCount')) {
      final l$servantsCount = servantsCount;
      result$data['servantsCount'] = l$servantsCount?.toJson();
    }
    if (_$data.containsKey('totalCount')) {
      final l$totalCount = totalCount;
      result$data['totalCount'] = l$totalCount?.toJson();
    }
    if (_$data.containsKey('meeting')) {
      final l$meeting = meeting;
      result$data['meeting'] = l$meeting?.toJson();
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_MeetingDayFilterInput<Input_MeetingDayFilterInput>
  get copyWith => CopyWith_Input_MeetingDayFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingDayFilterInput ||
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
    final l$meetingId = meetingId;
    final lOther$meetingId = other.meetingId;
    if (_$data.containsKey('meetingId') !=
        other._$data.containsKey('meetingId')) {
      return false;
    }
    if (l$meetingId != lOther$meetingId) {
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
    final l$studyYearId = studyYearId;
    final lOther$studyYearId = other.studyYearId;
    if (_$data.containsKey('studyYearId') !=
        other._$data.containsKey('studyYearId')) {
      return false;
    }
    if (l$studyYearId != lOther$studyYearId) {
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
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (_$data.containsKey('totalCount') !=
        other._$data.containsKey('totalCount')) {
      return false;
    }
    if (l$totalCount != lOther$totalCount) {
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$meetingId = meetingId;
    final l$day = day;
    final l$studyYearId = studyYearId;
    final l$gender = gender;
    final l$personsCount = personsCount;
    final l$servantsCount = servantsCount;
    final l$totalCount = totalCount;
    final l$meeting = meeting;
    final l$studyYear = studyYear;
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
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('personsCount') ? l$personsCount : const {},
      _$data.containsKey('servantsCount') ? l$servantsCount : const {},
      _$data.containsKey('totalCount') ? l$totalCount : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_MeetingDayFilterInput<TRes> {
  factory CopyWith_Input_MeetingDayFilterInput(
    Input_MeetingDayFilterInput instance,
    TRes Function(Input_MeetingDayFilterInput) then,
  ) = _CopyWithImpl_Input_MeetingDayFilterInput;

  factory CopyWith_Input_MeetingDayFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingDayFilterInput;

  TRes call({
    List<Input_MeetingDayFilterInput>? and,
    List<Input_MeetingDayFilterInput>? or,
    List<Input_MeetingDayFilterInput>? not,
    Input_MeetingDayFilterMeetingId? meetingId,
    Input_MeetingDayFilterDay? day,
    Input_MeetingDayFilterStudyYearId? studyYearId,
    Input_MeetingDayFilterGender? gender,
    Input_MeetingDayFilterPersonsCount? personsCount,
    Input_MeetingDayFilterServantsCount? servantsCount,
    Input_MeetingDayFilterTotalCount? totalCount,
    Input_MeetingFilterInput? meeting,
    Input_StudyYearFilterInput? studyYear,
  });
  TRes and(
    Iterable<Input_MeetingDayFilterInput>? Function(
      Iterable<
        CopyWith_Input_MeetingDayFilterInput<Input_MeetingDayFilterInput>
      >?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_MeetingDayFilterInput>? Function(
      Iterable<
        CopyWith_Input_MeetingDayFilterInput<Input_MeetingDayFilterInput>
      >?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_MeetingDayFilterInput>? Function(
      Iterable<
        CopyWith_Input_MeetingDayFilterInput<Input_MeetingDayFilterInput>
      >?,
    )
    _fn,
  );
  CopyWith_Input_MeetingDayFilterMeetingId<TRes> get meetingId;
  CopyWith_Input_MeetingDayFilterDay<TRes> get day;
  CopyWith_Input_MeetingDayFilterStudyYearId<TRes> get studyYearId;
  CopyWith_Input_MeetingDayFilterGender<TRes> get gender;
  CopyWith_Input_MeetingDayFilterPersonsCount<TRes> get personsCount;
  CopyWith_Input_MeetingDayFilterServantsCount<TRes> get servantsCount;
  CopyWith_Input_MeetingDayFilterTotalCount<TRes> get totalCount;
  CopyWith_Input_MeetingFilterInput<TRes> get meeting;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear;
}

class _CopyWithImpl_Input_MeetingDayFilterInput<TRes>
    implements CopyWith_Input_MeetingDayFilterInput<TRes> {
  _CopyWithImpl_Input_MeetingDayFilterInput(this._instance, this._then);

  final Input_MeetingDayFilterInput _instance;

  final TRes Function(Input_MeetingDayFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? meetingId = _undefined,
    Object? day = _undefined,
    Object? studyYearId = _undefined,
    Object? gender = _undefined,
    Object? personsCount = _undefined,
    Object? servantsCount = _undefined,
    Object? totalCount = _undefined,
    Object? meeting = _undefined,
    Object? studyYear = _undefined,
  }) => _then(
    Input_MeetingDayFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_MeetingDayFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_MeetingDayFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_MeetingDayFilterInput>?),
      if (meetingId != _undefined)
        'meetingId': (meetingId as Input_MeetingDayFilterMeetingId?),
      if (day != _undefined) 'day': (day as Input_MeetingDayFilterDay?),
      if (studyYearId != _undefined)
        'studyYearId': (studyYearId as Input_MeetingDayFilterStudyYearId?),
      if (gender != _undefined)
        'gender': (gender as Input_MeetingDayFilterGender?),
      if (personsCount != _undefined)
        'personsCount': (personsCount as Input_MeetingDayFilterPersonsCount?),
      if (servantsCount != _undefined)
        'servantsCount':
            (servantsCount as Input_MeetingDayFilterServantsCount?),
      if (totalCount != _undefined)
        'totalCount': (totalCount as Input_MeetingDayFilterTotalCount?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_MeetingFilterInput?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearFilterInput?),
    }),
  );

  TRes and(
    Iterable<Input_MeetingDayFilterInput>? Function(
      Iterable<
        CopyWith_Input_MeetingDayFilterInput<Input_MeetingDayFilterInput>
      >?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map(
        (e) => CopyWith_Input_MeetingDayFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_MeetingDayFilterInput>? Function(
      Iterable<
        CopyWith_Input_MeetingDayFilterInput<Input_MeetingDayFilterInput>
      >?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map(
        (e) => CopyWith_Input_MeetingDayFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_MeetingDayFilterInput>? Function(
      Iterable<
        CopyWith_Input_MeetingDayFilterInput<Input_MeetingDayFilterInput>
      >?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map(
        (e) => CopyWith_Input_MeetingDayFilterInput(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_MeetingDayFilterMeetingId<TRes> get meetingId {
    final local$meetingId = _instance.meetingId;
    return local$meetingId == null
        ? CopyWith_Input_MeetingDayFilterMeetingId.stub(_then(_instance))
        : CopyWith_Input_MeetingDayFilterMeetingId(
            local$meetingId,
            (e) => call(meetingId: e),
          );
  }

  CopyWith_Input_MeetingDayFilterDay<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_MeetingDayFilterDay.stub(_then(_instance))
        : CopyWith_Input_MeetingDayFilterDay(local$day, (e) => call(day: e));
  }

  CopyWith_Input_MeetingDayFilterStudyYearId<TRes> get studyYearId {
    final local$studyYearId = _instance.studyYearId;
    return local$studyYearId == null
        ? CopyWith_Input_MeetingDayFilterStudyYearId.stub(_then(_instance))
        : CopyWith_Input_MeetingDayFilterStudyYearId(
            local$studyYearId,
            (e) => call(studyYearId: e),
          );
  }

  CopyWith_Input_MeetingDayFilterGender<TRes> get gender {
    final local$gender = _instance.gender;
    return local$gender == null
        ? CopyWith_Input_MeetingDayFilterGender.stub(_then(_instance))
        : CopyWith_Input_MeetingDayFilterGender(
            local$gender,
            (e) => call(gender: e),
          );
  }

  CopyWith_Input_MeetingDayFilterPersonsCount<TRes> get personsCount {
    final local$personsCount = _instance.personsCount;
    return local$personsCount == null
        ? CopyWith_Input_MeetingDayFilterPersonsCount.stub(_then(_instance))
        : CopyWith_Input_MeetingDayFilterPersonsCount(
            local$personsCount,
            (e) => call(personsCount: e),
          );
  }

  CopyWith_Input_MeetingDayFilterServantsCount<TRes> get servantsCount {
    final local$servantsCount = _instance.servantsCount;
    return local$servantsCount == null
        ? CopyWith_Input_MeetingDayFilterServantsCount.stub(_then(_instance))
        : CopyWith_Input_MeetingDayFilterServantsCount(
            local$servantsCount,
            (e) => call(servantsCount: e),
          );
  }

  CopyWith_Input_MeetingDayFilterTotalCount<TRes> get totalCount {
    final local$totalCount = _instance.totalCount;
    return local$totalCount == null
        ? CopyWith_Input_MeetingDayFilterTotalCount.stub(_then(_instance))
        : CopyWith_Input_MeetingDayFilterTotalCount(
            local$totalCount,
            (e) => call(totalCount: e),
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

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Input_MeetingDayFilterInput<TRes>
    implements CopyWith_Input_MeetingDayFilterInput<TRes> {
  _CopyWithStubImpl_Input_MeetingDayFilterInput(this._res);

  TRes _res;

  call({
    List<Input_MeetingDayFilterInput>? and,
    List<Input_MeetingDayFilterInput>? or,
    List<Input_MeetingDayFilterInput>? not,
    Input_MeetingDayFilterMeetingId? meetingId,
    Input_MeetingDayFilterDay? day,
    Input_MeetingDayFilterStudyYearId? studyYearId,
    Input_MeetingDayFilterGender? gender,
    Input_MeetingDayFilterPersonsCount? personsCount,
    Input_MeetingDayFilterServantsCount? servantsCount,
    Input_MeetingDayFilterTotalCount? totalCount,
    Input_MeetingFilterInput? meeting,
    Input_StudyYearFilterInput? studyYear,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_MeetingDayFilterMeetingId<TRes> get meetingId =>
      CopyWith_Input_MeetingDayFilterMeetingId.stub(_res);

  CopyWith_Input_MeetingDayFilterDay<TRes> get day =>
      CopyWith_Input_MeetingDayFilterDay.stub(_res);

  CopyWith_Input_MeetingDayFilterStudyYearId<TRes> get studyYearId =>
      CopyWith_Input_MeetingDayFilterStudyYearId.stub(_res);

  CopyWith_Input_MeetingDayFilterGender<TRes> get gender =>
      CopyWith_Input_MeetingDayFilterGender.stub(_res);

  CopyWith_Input_MeetingDayFilterPersonsCount<TRes> get personsCount =>
      CopyWith_Input_MeetingDayFilterPersonsCount.stub(_res);

  CopyWith_Input_MeetingDayFilterServantsCount<TRes> get servantsCount =>
      CopyWith_Input_MeetingDayFilterServantsCount.stub(_res);

  CopyWith_Input_MeetingDayFilterTotalCount<TRes> get totalCount =>
      CopyWith_Input_MeetingDayFilterTotalCount.stub(_res);

  CopyWith_Input_MeetingFilterInput<TRes> get meeting =>
      CopyWith_Input_MeetingFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);
}

class Input_MeetingDaySortInput {
  factory Input_MeetingDaySortInput({
    Enum_SortOrder? order,
    required Enum_MeetingDaySortField field,
  }) => Input_MeetingDaySortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_MeetingDaySortInput._(this._$data);

  factory Input_MeetingDaySortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_MeetingDaySortField(
      (l$field as String),
    );
    return Input_MeetingDaySortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_MeetingDaySortField get field =>
      (_$data['field'] as Enum_MeetingDaySortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_MeetingDaySortField(l$field);
    return result$data;
  }

  CopyWith_Input_MeetingDaySortInput<Input_MeetingDaySortInput> get copyWith =>
      CopyWith_Input_MeetingDaySortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingDaySortInput ||
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

abstract class CopyWith_Input_MeetingDaySortInput<TRes> {
  factory CopyWith_Input_MeetingDaySortInput(
    Input_MeetingDaySortInput instance,
    TRes Function(Input_MeetingDaySortInput) then,
  ) = _CopyWithImpl_Input_MeetingDaySortInput;

  factory CopyWith_Input_MeetingDaySortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingDaySortInput;

  TRes call({Enum_SortOrder? order, Enum_MeetingDaySortField? field});
}

class _CopyWithImpl_Input_MeetingDaySortInput<TRes>
    implements CopyWith_Input_MeetingDaySortInput<TRes> {
  _CopyWithImpl_Input_MeetingDaySortInput(this._instance, this._then);

  final Input_MeetingDaySortInput _instance;

  final TRes Function(Input_MeetingDaySortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_MeetingDaySortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_MeetingDaySortField),
    }),
  );
}

class _CopyWithStubImpl_Input_MeetingDaySortInput<TRes>
    implements CopyWith_Input_MeetingDaySortInput<TRes> {
  _CopyWithStubImpl_Input_MeetingDaySortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_MeetingDaySortField? field}) => _res;
}

class Input_UpdateMeetingInput {
  factory Input_UpdateMeetingInput({
    String? name,
    Enum_MeetingAudience? audience,
    bool? isArchived,
    int? color,
    bool? showKodasCheckbox,
  }) => Input_UpdateMeetingInput._({
    if (name != null) r'name': name,
    if (audience != null) r'audience': audience,
    if (isArchived != null) r'isArchived': isArchived,
    if (color != null) r'color': color,
    if (showKodasCheckbox != null) r'showKodasCheckbox': showKodasCheckbox,
  });

  Input_UpdateMeetingInput._(this._$data);

  factory Input_UpdateMeetingInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : fromJson_Enum_MeetingAudience((l$audience as String));
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = (l$isArchived as bool?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = data['showKodasCheckbox'];
      result$data['showKodasCheckbox'] = (l$showKodasCheckbox as bool?);
    }
    return Input_UpdateMeetingInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Enum_MeetingAudience? get audience =>
      (_$data['audience'] as Enum_MeetingAudience?);

  bool? get isArchived => (_$data['isArchived'] as bool?);

  int? get color => (_$data['color'] as int?);

  bool? get showKodasCheckbox => (_$data['showKodasCheckbox'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience == null
          ? null
          : toJson_Enum_MeetingAudience(l$audience);
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = showKodasCheckbox;
      result$data['showKodasCheckbox'] = l$showKodasCheckbox;
    }
    return result$data;
  }

  CopyWith_Input_UpdateMeetingInput<Input_UpdateMeetingInput> get copyWith =>
      CopyWith_Input_UpdateMeetingInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateMeetingInput ||
        runtimeType != other.runtimeType) {
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
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (_$data.containsKey('audience') !=
        other._$data.containsKey('audience')) {
      return false;
    }
    if (l$audience != lOther$audience) {
      return false;
    }
    final l$isArchived = isArchived;
    final lOther$isArchived = other.isArchived;
    if (_$data.containsKey('isArchived') !=
        other._$data.containsKey('isArchived')) {
      return false;
    }
    if (l$isArchived != lOther$isArchived) {
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
    final l$showKodasCheckbox = showKodasCheckbox;
    final lOther$showKodasCheckbox = other.showKodasCheckbox;
    if (_$data.containsKey('showKodasCheckbox') !=
        other._$data.containsKey('showKodasCheckbox')) {
      return false;
    }
    if (l$showKodasCheckbox != lOther$showKodasCheckbox) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$audience = audience;
    final l$isArchived = isArchived;
    final l$color = color;
    final l$showKodasCheckbox = showKodasCheckbox;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('showKodasCheckbox') ? l$showKodasCheckbox : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateMeetingInput<TRes> {
  factory CopyWith_Input_UpdateMeetingInput(
    Input_UpdateMeetingInput instance,
    TRes Function(Input_UpdateMeetingInput) then,
  ) = _CopyWithImpl_Input_UpdateMeetingInput;

  factory CopyWith_Input_UpdateMeetingInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateMeetingInput;

  TRes call({
    String? name,
    Enum_MeetingAudience? audience,
    bool? isArchived,
    int? color,
    bool? showKodasCheckbox,
  });
}

class _CopyWithImpl_Input_UpdateMeetingInput<TRes>
    implements CopyWith_Input_UpdateMeetingInput<TRes> {
  _CopyWithImpl_Input_UpdateMeetingInput(this._instance, this._then);

  final Input_UpdateMeetingInput _instance;

  final TRes Function(Input_UpdateMeetingInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? audience = _undefined,
    Object? isArchived = _undefined,
    Object? color = _undefined,
    Object? showKodasCheckbox = _undefined,
  }) => _then(
    Input_UpdateMeetingInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (audience != _undefined)
        'audience': (audience as Enum_MeetingAudience?),
      if (isArchived != _undefined) 'isArchived': (isArchived as bool?),
      if (color != _undefined) 'color': (color as int?),
      if (showKodasCheckbox != _undefined)
        'showKodasCheckbox': (showKodasCheckbox as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_UpdateMeetingInput<TRes>
    implements CopyWith_Input_UpdateMeetingInput<TRes> {
  _CopyWithStubImpl_Input_UpdateMeetingInput(this._res);

  TRes _res;

  call({
    String? name,
    Enum_MeetingAudience? audience,
    bool? isArchived,
    int? color,
    bool? showKodasCheckbox,
  }) => _res;
}

class Input_CreateMeetingInput {
  factory Input_CreateMeetingInput({
    required String name,
    String? serviceId,
    int? serviceStudyYear,
    bool? serviceGender,
    String? groupId,
    Enum_MeetingAudience? audience,
    bool? isArchived,
    int? color,
    bool? showKodasCheckbox,
  }) => Input_CreateMeetingInput._({
    r'name': name,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (groupId != null) r'groupId': groupId,
    if (audience != null) r'audience': audience,
    if (isArchived != null) r'isArchived': isArchived,
    if (color != null) r'color': color,
    if (showKodasCheckbox != null) r'showKodasCheckbox': showKodasCheckbox,
  });

  Input_CreateMeetingInput._(this._$data);

  factory Input_CreateMeetingInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = (l$serviceId as String?);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = (l$groupId as String?);
    }
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : fromJson_Enum_MeetingAudience((l$audience as String));
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = (l$isArchived as bool?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = data['showKodasCheckbox'];
      result$data['showKodasCheckbox'] = (l$showKodasCheckbox as bool?);
    }
    return Input_CreateMeetingInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String? get serviceId => (_$data['serviceId'] as String?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  String? get groupId => (_$data['groupId'] as String?);

  Enum_MeetingAudience? get audience =>
      (_$data['audience'] as Enum_MeetingAudience?);

  bool? get isArchived => (_$data['isArchived'] as bool?);

  int? get color => (_$data['color'] as int?);

  bool? get showKodasCheckbox => (_$data['showKodasCheckbox'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId;
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId;
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience == null
          ? null
          : toJson_Enum_MeetingAudience(l$audience);
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = showKodasCheckbox;
      result$data['showKodasCheckbox'] = l$showKodasCheckbox;
    }
    return result$data;
  }

  CopyWith_Input_CreateMeetingInput<Input_CreateMeetingInput> get copyWith =>
      CopyWith_Input_CreateMeetingInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CreateMeetingInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
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
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (_$data.containsKey('serviceGender') !=
        other._$data.containsKey('serviceGender')) {
      return false;
    }
    if (l$serviceGender != lOther$serviceGender) {
      return false;
    }
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (_$data.containsKey('audience') !=
        other._$data.containsKey('audience')) {
      return false;
    }
    if (l$audience != lOther$audience) {
      return false;
    }
    final l$isArchived = isArchived;
    final lOther$isArchived = other.isArchived;
    if (_$data.containsKey('isArchived') !=
        other._$data.containsKey('isArchived')) {
      return false;
    }
    if (l$isArchived != lOther$isArchived) {
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
    final l$showKodasCheckbox = showKodasCheckbox;
    final lOther$showKodasCheckbox = other.showKodasCheckbox;
    if (_$data.containsKey('showKodasCheckbox') !=
        other._$data.containsKey('showKodasCheckbox')) {
      return false;
    }
    if (l$showKodasCheckbox != lOther$showKodasCheckbox) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceGender = serviceGender;
    final l$groupId = groupId;
    final l$audience = audience;
    final l$isArchived = isArchived;
    final l$color = color;
    final l$showKodasCheckbox = showKodasCheckbox;
    return Object.hashAll([
      l$name,
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('showKodasCheckbox') ? l$showKodasCheckbox : const {},
    ]);
  }
}

abstract class CopyWith_Input_CreateMeetingInput<TRes> {
  factory CopyWith_Input_CreateMeetingInput(
    Input_CreateMeetingInput instance,
    TRes Function(Input_CreateMeetingInput) then,
  ) = _CopyWithImpl_Input_CreateMeetingInput;

  factory CopyWith_Input_CreateMeetingInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CreateMeetingInput;

  TRes call({
    String? name,
    String? serviceId,
    int? serviceStudyYear,
    bool? serviceGender,
    String? groupId,
    Enum_MeetingAudience? audience,
    bool? isArchived,
    int? color,
    bool? showKodasCheckbox,
  });
}

class _CopyWithImpl_Input_CreateMeetingInput<TRes>
    implements CopyWith_Input_CreateMeetingInput<TRes> {
  _CopyWithImpl_Input_CreateMeetingInput(this._instance, this._then);

  final Input_CreateMeetingInput _instance;

  final TRes Function(Input_CreateMeetingInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceGender = _undefined,
    Object? groupId = _undefined,
    Object? audience = _undefined,
    Object? isArchived = _undefined,
    Object? color = _undefined,
    Object? showKodasCheckbox = _undefined,
  }) => _then(
    Input_CreateMeetingInput._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (serviceId != _undefined) 'serviceId': (serviceId as String?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (groupId != _undefined) 'groupId': (groupId as String?),
      if (audience != _undefined)
        'audience': (audience as Enum_MeetingAudience?),
      if (isArchived != _undefined) 'isArchived': (isArchived as bool?),
      if (color != _undefined) 'color': (color as int?),
      if (showKodasCheckbox != _undefined)
        'showKodasCheckbox': (showKodasCheckbox as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_CreateMeetingInput<TRes>
    implements CopyWith_Input_CreateMeetingInput<TRes> {
  _CopyWithStubImpl_Input_CreateMeetingInput(this._res);

  TRes _res;

  call({
    String? name,
    String? serviceId,
    int? serviceStudyYear,
    bool? serviceGender,
    String? groupId,
    Enum_MeetingAudience? audience,
    bool? isArchived,
    int? color,
    bool? showKodasCheckbox,
  }) => _res;
}

class Input_MeetingFilterStudyYearOrder {
  factory Input_MeetingFilterStudyYearOrder({
    bool? isNil,
    int? eq,
    int? notEq,
    List<int?>? $in,
    int? lessThan,
    int? greaterThan,
    int? lessThanOrEqual,
    int? greaterThanOrEqual,
    int? isDistinctFrom,
    int? isNotDistinctFrom,
  }) => Input_MeetingFilterStudyYearOrder._({
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

  Input_MeetingFilterStudyYearOrder._(this._$data);

  factory Input_MeetingFilterStudyYearOrder.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as int?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as int?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as int?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as int?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as int?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as int?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as int?);
    }
    return Input_MeetingFilterStudyYearOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  int? get eq => (_$data['eq'] as int?);

  int? get notEq => (_$data['notEq'] as int?);

  List<int?>? get $in => (_$data['in'] as List<int?>?);

  int? get lessThan => (_$data['lessThan'] as int?);

  int? get greaterThan => (_$data['greaterThan'] as int?);

  int? get lessThanOrEqual => (_$data['lessThanOrEqual'] as int?);

  int? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as int?);

  int? get isDistinctFrom => (_$data['isDistinctFrom'] as int?);

  int? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as int?);

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

  CopyWith_Input_MeetingFilterStudyYearOrder<Input_MeetingFilterStudyYearOrder>
  get copyWith => CopyWith_Input_MeetingFilterStudyYearOrder(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingFilterStudyYearOrder ||
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

abstract class CopyWith_Input_MeetingFilterStudyYearOrder<TRes> {
  factory CopyWith_Input_MeetingFilterStudyYearOrder(
    Input_MeetingFilterStudyYearOrder instance,
    TRes Function(Input_MeetingFilterStudyYearOrder) then,
  ) = _CopyWithImpl_Input_MeetingFilterStudyYearOrder;

  factory CopyWith_Input_MeetingFilterStudyYearOrder.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingFilterStudyYearOrder;

  TRes call({
    bool? isNil,
    int? eq,
    int? notEq,
    List<int?>? $in,
    int? lessThan,
    int? greaterThan,
    int? lessThanOrEqual,
    int? greaterThanOrEqual,
    int? isDistinctFrom,
    int? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_MeetingFilterStudyYearOrder<TRes>
    implements CopyWith_Input_MeetingFilterStudyYearOrder<TRes> {
  _CopyWithImpl_Input_MeetingFilterStudyYearOrder(this._instance, this._then);

  final Input_MeetingFilterStudyYearOrder _instance;

  final TRes Function(Input_MeetingFilterStudyYearOrder) _then;

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
    Input_MeetingFilterStudyYearOrder._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as int?),
      if (notEq != _undefined) 'notEq': (notEq as int?),
      if ($in != _undefined) 'in': ($in as List<int?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as int?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as int?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as int?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as int?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as int?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_MeetingFilterStudyYearOrder<TRes>
    implements CopyWith_Input_MeetingFilterStudyYearOrder<TRes> {
  _CopyWithStubImpl_Input_MeetingFilterStudyYearOrder(this._res);

  TRes _res;

  call({
    bool? isNil,
    int? eq,
    int? notEq,
    List<int?>? $in,
    int? lessThan,
    int? greaterThan,
    int? lessThanOrEqual,
    int? greaterThanOrEqual,
    int? isDistinctFrom,
    int? isNotDistinctFrom,
  }) => _res;
}

class Input_MeetingFilterGroupName {
  factory Input_MeetingFilterGroupName({
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
  }) => Input_MeetingFilterGroupName._({
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

  Input_MeetingFilterGroupName._(this._$data);

  factory Input_MeetingFilterGroupName.fromJson(Map<String, dynamic> data) {
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
    return Input_MeetingFilterGroupName._(result$data);
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

  CopyWith_Input_MeetingFilterGroupName<Input_MeetingFilterGroupName>
  get copyWith => CopyWith_Input_MeetingFilterGroupName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingFilterGroupName ||
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

abstract class CopyWith_Input_MeetingFilterGroupName<TRes> {
  factory CopyWith_Input_MeetingFilterGroupName(
    Input_MeetingFilterGroupName instance,
    TRes Function(Input_MeetingFilterGroupName) then,
  ) = _CopyWithImpl_Input_MeetingFilterGroupName;

  factory CopyWith_Input_MeetingFilterGroupName.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingFilterGroupName;

  TRes call({
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
  });
}

class _CopyWithImpl_Input_MeetingFilterGroupName<TRes>
    implements CopyWith_Input_MeetingFilterGroupName<TRes> {
  _CopyWithImpl_Input_MeetingFilterGroupName(this._instance, this._then);

  final Input_MeetingFilterGroupName _instance;

  final TRes Function(Input_MeetingFilterGroupName) _then;

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
    Object? contains = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
    Object? stringEndsWith = _undefined,
    Object? stringStartsWith = _undefined,
    Object? like = _undefined,
    Object? ilike = _undefined,
  }) => _then(
    Input_MeetingFilterGroupName._({
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
      if (contains != _undefined) 'contains': (contains as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
      if (stringEndsWith != _undefined)
        'stringEndsWith': (stringEndsWith as String?),
      if (stringStartsWith != _undefined)
        'stringStartsWith': (stringStartsWith as String?),
      if (like != _undefined) 'like': (like as String?),
      if (ilike != _undefined) 'ilike': (ilike as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_MeetingFilterGroupName<TRes>
    implements CopyWith_Input_MeetingFilterGroupName<TRes> {
  _CopyWithStubImpl_Input_MeetingFilterGroupName(this._res);

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
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => _res;
}

class Input_MeetingFilterServiceName {
  factory Input_MeetingFilterServiceName({
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
  }) => Input_MeetingFilterServiceName._({
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

  Input_MeetingFilterServiceName._(this._$data);

  factory Input_MeetingFilterServiceName.fromJson(Map<String, dynamic> data) {
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
    return Input_MeetingFilterServiceName._(result$data);
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

  CopyWith_Input_MeetingFilterServiceName<Input_MeetingFilterServiceName>
  get copyWith => CopyWith_Input_MeetingFilterServiceName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingFilterServiceName ||
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
