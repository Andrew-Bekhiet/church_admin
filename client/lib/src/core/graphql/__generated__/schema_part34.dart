// Part 34 of the schema
part of "schema.graphql.dart";

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

abstract class CopyWith_Input_HistoryMeetingRosterStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryMeetingRosterStreamCursorInput(
    Input_HistoryMeetingRosterStreamCursorInput instance,
    TRes Function(Input_HistoryMeetingRosterStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingRosterStreamCursorInput;

  factory CopyWith_Input_HistoryMeetingRosterStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingRosterStreamCursorInput;

  TRes call({
    Input_HistoryMeetingRosterStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryMeetingRosterStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingRosterStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingRosterStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingRosterStreamCursorInput _instance;

  final TRes Function(Input_HistoryMeetingRosterStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryMeetingRosterStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryMeetingRosterStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingRosterStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingRosterStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingRosterStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingRosterStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput.stub(_res);
}

class Input_HistoryMeetingRosterStreamCursorValueInput {
  factory Input_HistoryMeetingRosterStreamCursorValueInput({
    bool? asServant,
    String? blurhash,
    int? color,
    bool? gender,
    String? mainPhone,
    UuidValue? meetingId,
    String? name,
    UuidValue? personId,
    DateTime? photoUpdatedAt,
    int? studyYearId,
    String? studyYearName,
  }) => Input_HistoryMeetingRosterStreamCursorValueInput._({
    if (asServant != null) r'asServant': asServant,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (gender != null) r'gender': gender,
    if (mainPhone != null) r'mainPhone': mainPhone,
    if (meetingId != null) r'meetingId': meetingId,
    if (name != null) r'name': name,
    if (personId != null) r'personId': personId,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (studyYearName != null) r'studyYearName': studyYearName,
  });

  Input_HistoryMeetingRosterStreamCursorValueInput._(this._$data);

  factory Input_HistoryMeetingRosterStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asServant')) {
      final l$asServant = data['asServant'];
      result$data['asServant'] = (l$asServant as bool?);
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = (l$blurhash as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as bool?);
    }
    if (data.containsKey('mainPhone')) {
      final l$mainPhone = data['mainPhone'];
      result$data['mainPhone'] = (l$mainPhone as String?);
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : stringToUuid(l$meetingId);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzFromString(l$photoUpdatedAt);
    }
    if (data.containsKey('studyYearId')) {
      final l$studyYearId = data['studyYearId'];
      result$data['studyYearId'] = (l$studyYearId as int?);
    }
    if (data.containsKey('studyYearName')) {
      final l$studyYearName = data['studyYearName'];
      result$data['studyYearName'] = (l$studyYearName as String?);
    }
    return Input_HistoryMeetingRosterStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get asServant => (_$data['asServant'] as bool?);

  String? get blurhash => (_$data['blurhash'] as String?);

  int? get color => (_$data['color'] as int?);

  bool? get gender => (_$data['gender'] as bool?);

  String? get mainPhone => (_$data['mainPhone'] as String?);

  UuidValue? get meetingId => (_$data['meetingId'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  DateTime? get photoUpdatedAt => (_$data['photoUpdatedAt'] as DateTime?);

  int? get studyYearId => (_$data['studyYearId'] as int?);

  String? get studyYearName => (_$data['studyYearName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asServant')) {
      final l$asServant = asServant;
      result$data['asServant'] = l$asServant;
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('mainPhone')) {
      final l$mainPhone = mainPhone;
      result$data['mainPhone'] = l$mainPhone;
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : uuidToString(l$meetingId);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : tstzToString(l$photoUpdatedAt);
    }
    if (_$data.containsKey('studyYearId')) {
      final l$studyYearId = studyYearId;
      result$data['studyYearId'] = l$studyYearId;
    }
    if (_$data.containsKey('studyYearName')) {
      final l$studyYearName = studyYearName;
      result$data['studyYearName'] = l$studyYearName;
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput<
    Input_HistoryMeetingRosterStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingRosterStreamCursorValueInput ||
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
    final l$blurhash = blurhash;
    final l$color = color;
    final l$gender = gender;
    final l$mainPhone = mainPhone;
    final l$meetingId = meetingId;
    final l$name = name;
    final l$personId = personId;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$studyYearId = studyYearId;
    final l$studyYearName = studyYearName;
    return Object.hashAll([
      _$data.containsKey('asServant') ? l$asServant : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('mainPhone') ? l$mainPhone : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('studyYearId') ? l$studyYearId : const {},
      _$data.containsKey('studyYearName') ? l$studyYearName : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput(
    Input_HistoryMeetingRosterStreamCursorValueInput instance,
    TRes Function(Input_HistoryMeetingRosterStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingRosterStreamCursorValueInput;

  factory CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryMeetingRosterStreamCursorValueInput;

  TRes call({
    bool? asServant,
    String? blurhash,
    int? color,
    bool? gender,
    String? mainPhone,
    UuidValue? meetingId,
    String? name,
    UuidValue? personId,
    DateTime? photoUpdatedAt,
    int? studyYearId,
    String? studyYearName,
  });
}

class _CopyWithImpl_Input_HistoryMeetingRosterStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingRosterStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingRosterStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryMeetingRosterStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? asServant = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? gender = _undefined,
    Object? mainPhone = _undefined,
    Object? meetingId = _undefined,
    Object? name = _undefined,
    Object? personId = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? studyYearId = _undefined,
    Object? studyYearName = _undefined,
  }) => _then(
    Input_HistoryMeetingRosterStreamCursorValueInput._({
      ..._instance._$data,
      if (asServant != _undefined) 'asServant': (asServant as bool?),
      if (blurhash != _undefined) 'blurhash': (blurhash as String?),
      if (color != _undefined) 'color': (color as int?),
      if (gender != _undefined) 'gender': (gender as bool?),
      if (mainPhone != _undefined) 'mainPhone': (mainPhone as String?),
      if (meetingId != _undefined) 'meetingId': (meetingId as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as DateTime?),
      if (studyYearId != _undefined) 'studyYearId': (studyYearId as int?),
      if (studyYearName != _undefined)
        'studyYearName': (studyYearName as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingRosterStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingRosterStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingRosterStreamCursorValueInput(this._res);

  TRes _res;

  call({
    bool? asServant,
    String? blurhash,
    int? color,
    bool? gender,
    String? mainPhone,
    UuidValue? meetingId,
    String? name,
    UuidValue? personId,
    DateTime? photoUpdatedAt,
    int? studyYearId,
    String? studyYearName,
  }) => _res;
}

class Input_HistoryMeetingsAggregateOrderBy {
  factory Input_HistoryMeetingsAggregateOrderBy({
    Input_HistoryMeetingsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryMeetingsMaxOrderBy? max,
    Input_HistoryMeetingsMinOrderBy? min,
    Input_HistoryMeetingsStddevOrderBy? stddev,
    Input_HistoryMeetingsStddevPopOrderBy? stddevPop,
    Input_HistoryMeetingsStddevSampOrderBy? stddevSamp,
    Input_HistoryMeetingsSumOrderBy? sum,
    Input_HistoryMeetingsVarPopOrderBy? varPop,
    Input_HistoryMeetingsVarSampOrderBy? varSamp,
    Input_HistoryMeetingsVarianceOrderBy? variance,
  }) => Input_HistoryMeetingsAggregateOrderBy._({
    if (avg != null) r'avg': avg,
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
    if (stddev != null) r'stddev': stddev,
    if (stddevPop != null) r'stddevPop': stddevPop,
    if (stddevSamp != null) r'stddevSamp': stddevSamp,
    if (sum != null) r'sum': sum,
    if (varPop != null) r'varPop': varPop,
    if (varSamp != null) r'varSamp': varSamp,
    if (variance != null) r'variance': variance,
  });

  Input_HistoryMeetingsAggregateOrderBy._(this._$data);

  factory Input_HistoryMeetingsAggregateOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_HistoryMeetingsAvgOrderBy.fromJson(
              (l$avg as Map<String, dynamic>),
            );
    }
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
          : Input_HistoryMeetingsMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryMeetingsMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_HistoryMeetingsStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_HistoryMeetingsStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_HistoryMeetingsStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_HistoryMeetingsSumOrderBy.fromJson(
              (l$sum as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_HistoryMeetingsVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_HistoryMeetingsVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_HistoryMeetingsVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsAvgOrderBy? get avg =>
      (_$data['avg'] as Input_HistoryMeetingsAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryMeetingsMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryMeetingsMaxOrderBy?);

  Input_HistoryMeetingsMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryMeetingsMinOrderBy?);

  Input_HistoryMeetingsStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_HistoryMeetingsStddevOrderBy?);

  Input_HistoryMeetingsStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_HistoryMeetingsStddevPopOrderBy?);

  Input_HistoryMeetingsStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_HistoryMeetingsStddevSampOrderBy?);

  Input_HistoryMeetingsSumOrderBy? get sum =>
      (_$data['sum'] as Input_HistoryMeetingsSumOrderBy?);

  Input_HistoryMeetingsVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_HistoryMeetingsVarPopOrderBy?);

  Input_HistoryMeetingsVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_HistoryMeetingsVarSampOrderBy?);

  Input_HistoryMeetingsVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_HistoryMeetingsVarianceOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avg')) {
      final l$avg = avg;
      result$data['avg'] = l$avg?.toJson();
    }
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
    if (_$data.containsKey('stddev')) {
      final l$stddev = stddev;
      result$data['stddev'] = l$stddev?.toJson();
    }
    if (_$data.containsKey('stddevPop')) {
      final l$stddevPop = stddevPop;
      result$data['stddevPop'] = l$stddevPop?.toJson();
    }
    if (_$data.containsKey('stddevSamp')) {
      final l$stddevSamp = stddevSamp;
      result$data['stddevSamp'] = l$stddevSamp?.toJson();
    }
    if (_$data.containsKey('sum')) {
      final l$sum = sum;
      result$data['sum'] = l$sum?.toJson();
    }
    if (_$data.containsKey('varPop')) {
      final l$varPop = varPop;
      result$data['varPop'] = l$varPop?.toJson();
    }
    if (_$data.containsKey('varSamp')) {
      final l$varSamp = varSamp;
      result$data['varSamp'] = l$varSamp?.toJson();
    }
    if (_$data.containsKey('variance')) {
      final l$variance = variance;
      result$data['variance'] = l$variance?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsAggregateOrderBy<
    Input_HistoryMeetingsAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsAggregateOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avg = avg;
    final lOther$avg = other.avg;
    if (_$data.containsKey('avg') != other._$data.containsKey('avg')) {
      return false;
    }
    if (l$avg != lOther$avg) {
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
    final l$stddev = stddev;
    final lOther$stddev = other.stddev;
    if (_$data.containsKey('stddev') != other._$data.containsKey('stddev')) {
      return false;
    }
    if (l$stddev != lOther$stddev) {
      return false;
    }
    final l$stddevPop = stddevPop;
    final lOther$stddevPop = other.stddevPop;
    if (_$data.containsKey('stddevPop') !=
        other._$data.containsKey('stddevPop')) {
      return false;
    }
    if (l$stddevPop != lOther$stddevPop) {
      return false;
    }
    final l$stddevSamp = stddevSamp;
    final lOther$stddevSamp = other.stddevSamp;
    if (_$data.containsKey('stddevSamp') !=
        other._$data.containsKey('stddevSamp')) {
      return false;
    }
    if (l$stddevSamp != lOther$stddevSamp) {
      return false;
    }
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (_$data.containsKey('sum') != other._$data.containsKey('sum')) {
      return false;
    }
    if (l$sum != lOther$sum) {
      return false;
    }
    final l$varPop = varPop;
    final lOther$varPop = other.varPop;
    if (_$data.containsKey('varPop') != other._$data.containsKey('varPop')) {
      return false;
    }
    if (l$varPop != lOther$varPop) {
      return false;
    }
    final l$varSamp = varSamp;
    final lOther$varSamp = other.varSamp;
    if (_$data.containsKey('varSamp') != other._$data.containsKey('varSamp')) {
      return false;
    }
    if (l$varSamp != lOther$varSamp) {
      return false;
    }
    final l$variance = variance;
    final lOther$variance = other.variance;
    if (_$data.containsKey('variance') !=
        other._$data.containsKey('variance')) {
      return false;
    }
    if (l$variance != lOther$variance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avg = avg;
    final l$count = count;
    final l$max = max;
    final l$min = min;
    final l$stddev = stddev;
    final l$stddevPop = stddevPop;
    final l$stddevSamp = stddevSamp;
    final l$sum = sum;
    final l$varPop = varPop;
    final l$varSamp = varSamp;
    final l$variance = variance;
    return Object.hashAll([
      _$data.containsKey('avg') ? l$avg : const {},
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
      _$data.containsKey('stddev') ? l$stddev : const {},
      _$data.containsKey('stddevPop') ? l$stddevPop : const {},
      _$data.containsKey('stddevSamp') ? l$stddevSamp : const {},
      _$data.containsKey('sum') ? l$sum : const {},
      _$data.containsKey('varPop') ? l$varPop : const {},
      _$data.containsKey('varSamp') ? l$varSamp : const {},
      _$data.containsKey('variance') ? l$variance : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsAggregateOrderBy(
    Input_HistoryMeetingsAggregateOrderBy instance,
    TRes Function(Input_HistoryMeetingsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsAggregateOrderBy;

  factory CopyWith_Input_HistoryMeetingsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsAggregateOrderBy;

  TRes call({
    Input_HistoryMeetingsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryMeetingsMaxOrderBy? max,
    Input_HistoryMeetingsMinOrderBy? min,
    Input_HistoryMeetingsStddevOrderBy? stddev,
    Input_HistoryMeetingsStddevPopOrderBy? stddevPop,
    Input_HistoryMeetingsStddevSampOrderBy? stddevSamp,
    Input_HistoryMeetingsSumOrderBy? sum,
    Input_HistoryMeetingsVarPopOrderBy? varPop,
    Input_HistoryMeetingsVarSampOrderBy? varSamp,
    Input_HistoryMeetingsVarianceOrderBy? variance,
  });
  CopyWith_Input_HistoryMeetingsAvgOrderBy<TRes> get avg;
  CopyWith_Input_HistoryMeetingsMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryMeetingsMinOrderBy<TRes> get min;
  CopyWith_Input_HistoryMeetingsStddevOrderBy<TRes> get stddev;
  CopyWith_Input_HistoryMeetingsStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_HistoryMeetingsStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> get sum;
  CopyWith_Input_HistoryMeetingsVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_HistoryMeetingsVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_HistoryMeetingsVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_HistoryMeetingsAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsAggregateOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avg = _undefined,
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
    Object? stddev = _undefined,
    Object? stddevPop = _undefined,
    Object? stddevSamp = _undefined,
    Object? sum = _undefined,
    Object? varPop = _undefined,
    Object? varSamp = _undefined,
    Object? variance = _undefined,
  }) => _then(
    Input_HistoryMeetingsAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined) 'avg': (avg as Input_HistoryMeetingsAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_HistoryMeetingsMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_HistoryMeetingsMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_HistoryMeetingsStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_HistoryMeetingsStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp': (stddevSamp as Input_HistoryMeetingsStddevSampOrderBy?),
      if (sum != _undefined) 'sum': (sum as Input_HistoryMeetingsSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_HistoryMeetingsVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_HistoryMeetingsVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_HistoryMeetingsVarianceOrderBy?),
    }),
  );

  CopyWith_Input_HistoryMeetingsAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_HistoryMeetingsAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsAvgOrderBy(
            local$avg,
            (e) => call(avg: e),
          );
  }

  CopyWith_Input_HistoryMeetingsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryMeetingsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryMeetingsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryMeetingsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }

  CopyWith_Input_HistoryMeetingsStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_HistoryMeetingsStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_HistoryMeetingsStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_HistoryMeetingsStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_HistoryMeetingsStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_HistoryMeetingsStddevSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_HistoryMeetingsSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsSumOrderBy(
            local$sum,
            (e) => call(sum: e),
          );
  }

  CopyWith_Input_HistoryMeetingsVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_HistoryMeetingsVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_HistoryMeetingsVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_HistoryMeetingsVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_HistoryMeetingsVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_HistoryMeetingsVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryMeetingsMaxOrderBy? max,
    Input_HistoryMeetingsMinOrderBy? min,
    Input_HistoryMeetingsStddevOrderBy? stddev,
    Input_HistoryMeetingsStddevPopOrderBy? stddevPop,
    Input_HistoryMeetingsStddevSampOrderBy? stddevSamp,
    Input_HistoryMeetingsSumOrderBy? sum,
    Input_HistoryMeetingsVarPopOrderBy? varPop,
    Input_HistoryMeetingsVarSampOrderBy? varSamp,
    Input_HistoryMeetingsVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_HistoryMeetingsAvgOrderBy<TRes> get avg =>
      CopyWith_Input_HistoryMeetingsAvgOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryMeetingsMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryMeetingsMinOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_HistoryMeetingsStddevOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_HistoryMeetingsStddevPopOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_HistoryMeetingsStddevSampOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> get sum =>
      CopyWith_Input_HistoryMeetingsSumOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_HistoryMeetingsVarPopOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_HistoryMeetingsVarSampOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_HistoryMeetingsVarianceOrderBy.stub(_res);
}

class Input_HistoryMeetingsArrRelInsertInput {
  factory Input_HistoryMeetingsArrRelInsertInput({
    required List<Input_HistoryMeetingsInsertInput> data,
    Input_HistoryMeetingsOnConflict? onConflict,
  }) => Input_HistoryMeetingsArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryMeetingsArrRelInsertInput._(this._$data);

  factory Input_HistoryMeetingsArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_HistoryMeetingsInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryMeetingsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryMeetingsInsertInput> get data =>
      (_$data['data'] as List<Input_HistoryMeetingsInsertInput>);

  Input_HistoryMeetingsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryMeetingsOnConflict?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.map((e) => e.toJson()).toList();
    if (_$data.containsKey('onConflict')) {
      final l$onConflict = onConflict;
      result$data['onConflict'] = l$onConflict?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsArrRelInsertInput<
    Input_HistoryMeetingsArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsArrRelInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) {
      return false;
    }
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) {
        return false;
      }
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
      Object.hashAll(l$data.map((v) => v)),
      _$data.containsKey('onConflict') ? l$onConflict : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsArrRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsArrRelInsertInput(
    Input_HistoryMeetingsArrRelInsertInput instance,
    TRes Function(Input_HistoryMeetingsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsArrRelInsertInput;

  factory CopyWith_Input_HistoryMeetingsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsArrRelInsertInput;

  TRes call({
    List<Input_HistoryMeetingsInsertInput>? data,
    Input_HistoryMeetingsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_HistoryMeetingsInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsInsertInput<
          Input_HistoryMeetingsInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_HistoryMeetingsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryMeetingsArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsArrRelInsertInput _instance;

  final TRes Function(Input_HistoryMeetingsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryMeetingsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_HistoryMeetingsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_HistoryMeetingsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_HistoryMeetingsInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsInsertInput<
          Input_HistoryMeetingsInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_HistoryMeetingsInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_HistoryMeetingsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryMeetingsOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_HistoryMeetingsInsertInput>? data,
    Input_HistoryMeetingsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_HistoryMeetingsOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryMeetingsOnConflict.stub(_res);
}

class Input_HistoryMeetingsAvgOrderBy {
  factory Input_HistoryMeetingsAvgOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsAvgOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsAvgOrderBy._(this._$data);

  factory Input_HistoryMeetingsAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsAvgOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsAvgOrderBy<Input_HistoryMeetingsAvgOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingsAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsAvgOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsAvgOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsAvgOrderBy(
    Input_HistoryMeetingsAvgOrderBy instance,
    TRes Function(Input_HistoryMeetingsAvgOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsAvgOrderBy;

  factory CopyWith_Input_HistoryMeetingsAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsAvgOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsAvgOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsAvgOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsAvgOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsAvgOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsAvgOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsAvgOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsAvgOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsBoolExp {
  factory Input_HistoryMeetingsBoolExp({
    List<Input_HistoryMeetingsBoolExp>? $_and,
    Input_HistoryMeetingsBoolExp? $_not,
    List<Input_HistoryMeetingsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_MeetingAudienceComparisonExp? audience,
    Input_BigintComparisonExp? color,
    Input_HistoryMeetingDaysBoolExp? days,
    Input_HistoryMeetingDaysAggregateBoolExp? daysAggregate,
    Input_GroupsBoolExp? group,
    Input_UuidComparisonExp? groupId,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isArchived,
    Input_StringComparisonExp? name,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_BooleanComparisonExp? showKodasCheckbox,
    Input_StudyYearsBoolExp? studyYear,
  }) => Input_HistoryMeetingsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (audience != null) r'audience': audience,
    if (color != null) r'color': color,
    if (days != null) r'days': days,
    if (daysAggregate != null) r'daysAggregate': daysAggregate,
    if (group != null) r'group': group,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (isArchived != null) r'isArchived': isArchived,
    if (name != null) r'name': name,
    if (service != null) r'service': service,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (showKodasCheckbox != null) r'showKodasCheckbox': showKodasCheckbox,
    if (studyYear != null) r'studyYear': studyYear,
  });

  Input_HistoryMeetingsBoolExp._(this._$data);

  factory Input_HistoryMeetingsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
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
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : Input_MeetingAudienceComparisonExp.fromJson(
              (l$audience as Map<String, dynamic>),
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
    if (data.containsKey('days')) {
      final l$days = data['days'];
      result$data['days'] = l$days == null
          ? null
          : Input_HistoryMeetingDaysBoolExp.fromJson(
              (l$days as Map<String, dynamic>),
            );
    }
    if (data.containsKey('daysAggregate')) {
      final l$daysAggregate = data['daysAggregate'];
      result$data['daysAggregate'] = l$daysAggregate == null
          ? null
          : Input_HistoryMeetingDaysAggregateBoolExp.fromJson(
              (l$daysAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$groupId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = l$isArchived == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isArchived as Map<String, dynamic>),
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
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$serviceGender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$serviceId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : Input_IntComparisonExp.fromJson(
              (l$serviceStudyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = data['showKodasCheckbox'];
      result$data['showKodasCheckbox'] = l$showKodasCheckbox == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$showKodasCheckbox as Map<String, dynamic>),
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
    return Input_HistoryMeetingsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryMeetingsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryMeetingsBoolExp>?);

  Input_HistoryMeetingsBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryMeetingsBoolExp?);

  List<Input_HistoryMeetingsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryMeetingsBoolExp>?);

  Input_HistoryAttendanceHistoryBoolExp? get attendanceHistory =>
      (_$data['attendanceHistory'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_HistoryAttendanceHistoryAggregateBoolExp?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateBoolExp?);

  Input_MeetingAudienceComparisonExp? get audience =>
      (_$data['audience'] as Input_MeetingAudienceComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryMeetingDaysBoolExp? get days =>
      (_$data['days'] as Input_HistoryMeetingDaysBoolExp?);

  Input_HistoryMeetingDaysAggregateBoolExp? get daysAggregate =>
      (_$data['daysAggregate'] as Input_HistoryMeetingDaysAggregateBoolExp?);

  Input_GroupsBoolExp? get group => (_$data['group'] as Input_GroupsBoolExp?);

  Input_UuidComparisonExp? get groupId =>
      (_$data['groupId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get isArchived =>
      (_$data['isArchived'] as Input_BooleanComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_BooleanComparisonExp? get serviceGender =>
      (_$data['serviceGender'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get serviceId =>
      (_$data['serviceId'] as Input_UuidComparisonExp?);

  Input_IntComparisonExp? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Input_IntComparisonExp?);

  Input_BooleanComparisonExp? get showKodasCheckbox =>
      (_$data['showKodasCheckbox'] as Input_BooleanComparisonExp?);

  Input_StudyYearsBoolExp? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsBoolExp?);

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
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('days')) {
      final l$days = days;
      result$data['days'] = l$days?.toJson();
    }
    if (_$data.containsKey('daysAggregate')) {
      final l$daysAggregate = daysAggregate;
      result$data['daysAggregate'] = l$daysAggregate?.toJson();
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId?.toJson();
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear?.toJson();
    }
    if (_$data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = showKodasCheckbox;
      result$data['showKodasCheckbox'] = l$showKodasCheckbox?.toJson();
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsBoolExp<Input_HistoryMeetingsBoolExp>
  get copyWith => CopyWith_Input_HistoryMeetingsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsBoolExp ||
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
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (_$data.containsKey('audience') !=
        other._$data.containsKey('audience')) {
      return false;
    }
    if (l$audience != lOther$audience) {
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
    final l$days = days;
    final lOther$days = other.days;
    if (_$data.containsKey('days') != other._$data.containsKey('days')) {
      return false;
    }
    if (l$days != lOther$days) {
      return false;
    }
    final l$daysAggregate = daysAggregate;
    final lOther$daysAggregate = other.daysAggregate;
    if (_$data.containsKey('daysAggregate') !=
        other._$data.containsKey('daysAggregate')) {
      return false;
    }
    if (l$daysAggregate != lOther$daysAggregate) {
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
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
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
    final l$isArchived = isArchived;
    final lOther$isArchived = other.isArchived;
    if (_$data.containsKey('isArchived') !=
        other._$data.containsKey('isArchived')) {
      return false;
    }
    if (l$isArchived != lOther$isArchived) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    final l$showKodasCheckbox = showKodasCheckbox;
    final lOther$showKodasCheckbox = other.showKodasCheckbox;
    if (_$data.containsKey('showKodasCheckbox') !=
        other._$data.containsKey('showKodasCheckbox')) {
      return false;
    }
    if (l$showKodasCheckbox != lOther$showKodasCheckbox) {
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$attendanceHistory = attendanceHistory;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$audience = audience;
    final l$color = color;
    final l$days = days;
    final l$daysAggregate = daysAggregate;
    final l$group = group;
    final l$groupId = groupId;
    final l$id = id;
    final l$isArchived = isArchived;
    final l$name = name;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$showKodasCheckbox = showKodasCheckbox;
    final l$studyYear = studyYear;
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
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('days') ? l$days : const {},
      _$data.containsKey('daysAggregate') ? l$daysAggregate : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('showKodasCheckbox') ? l$showKodasCheckbox : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}
