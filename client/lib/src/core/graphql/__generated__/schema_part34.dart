// Part 34 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsBoolExp(
    Input_HistoryMeetingsPersonsBoolExp instance,
    TRes Function(Input_HistoryMeetingsPersonsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsBoolExp;

  factory CopyWith_Input_HistoryMeetingsPersonsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsBoolExp;

  TRes call({
    List<Input_HistoryMeetingsPersonsBoolExp>? $_and,
    Input_HistoryMeetingsPersonsBoolExp? $_not,
    List<Input_HistoryMeetingsPersonsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  });
  TRes $_and(
    Iterable<Input_HistoryMeetingsPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsPersonsBoolExp<
          Input_HistoryMeetingsPersonsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryMeetingsPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsPersonsBoolExp<
          Input_HistoryMeetingsPersonsBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting;
  CopyWith_Input_UuidComparisonExp<TRes> get meetingId;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsBoolExp(this._instance, this._then);

  final Input_HistoryMeetingsPersonsBoolExp _instance;

  final TRes Function(Input_HistoryMeetingsPersonsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_HistoryMeetingsPersonsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryMeetingsPersonsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryMeetingsPersonsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryMeetingsPersonsBoolExp>?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory as Input_HistoryAttendanceHistoryBoolExp?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateBoolExp?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsBoolExp?),
      if (meetingId != _undefined)
        'meetingId': (meetingId as Input_UuidComparisonExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryMeetingsPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsPersonsBoolExp<
          Input_HistoryMeetingsPersonsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryMeetingsPersonsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryMeetingsPersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsPersonsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryMeetingsPersonsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsPersonsBoolExp<
          Input_HistoryMeetingsPersonsBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryMeetingsPersonsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

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
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryMeetingsPersonsBoolExp>? $_and,
    Input_HistoryMeetingsPersonsBoolExp? $_not,
    List<Input_HistoryMeetingsPersonsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryMeetingsPersonsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryMeetingsPersonsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get meetingId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_HistoryMeetingsPersonsMaxOrderBy {
  factory Input_HistoryMeetingsPersonsMaxOrderBy({
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
  }) => Input_HistoryMeetingsPersonsMaxOrderBy._({
    if (meetingId != null) r'meetingId': meetingId,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryMeetingsPersonsMaxOrderBy._(this._$data);

  factory Input_HistoryMeetingsPersonsMaxOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : fromJson_Enum_OrderBy((l$meetingId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_HistoryMeetingsPersonsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : toJson_Enum_OrderBy(l$meetingId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<
    Input_HistoryMeetingsPersonsMaxOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsMaxOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$meetingId = meetingId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy(
    Input_HistoryMeetingsPersonsMaxOrderBy instance,
    TRes Function(Input_HistoryMeetingsPersonsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsMaxOrderBy;

  factory CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsMaxOrderBy;

  TRes call({Enum_OrderBy? meetingId, Enum_OrderBy? personId});
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsMaxOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsPersonsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? meetingId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_HistoryMeetingsPersonsMaxOrderBy._({
          ..._instance._$data,
          if (meetingId != _undefined)
            'meetingId': (meetingId as Enum_OrderBy?),
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? meetingId, Enum_OrderBy? personId}) => _res;
}

class Input_HistoryMeetingsPersonsMinOrderBy {
  factory Input_HistoryMeetingsPersonsMinOrderBy({
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
  }) => Input_HistoryMeetingsPersonsMinOrderBy._({
    if (meetingId != null) r'meetingId': meetingId,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryMeetingsPersonsMinOrderBy._(this._$data);

  factory Input_HistoryMeetingsPersonsMinOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : fromJson_Enum_OrderBy((l$meetingId as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    return Input_HistoryMeetingsPersonsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : toJson_Enum_OrderBy(l$meetingId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<
    Input_HistoryMeetingsPersonsMinOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsMinOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$meetingId = meetingId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsMinOrderBy(
    Input_HistoryMeetingsPersonsMinOrderBy instance,
    TRes Function(Input_HistoryMeetingsPersonsMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsMinOrderBy;

  factory CopyWith_Input_HistoryMeetingsPersonsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsMinOrderBy;

  TRes call({Enum_OrderBy? meetingId, Enum_OrderBy? personId});
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsMinOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsPersonsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? meetingId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_HistoryMeetingsPersonsMinOrderBy._({
          ..._instance._$data,
          if (meetingId != _undefined)
            'meetingId': (meetingId as Enum_OrderBy?),
          if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
        }),
      );
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsMinOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? meetingId, Enum_OrderBy? personId}) => _res;
}

class Input_HistoryMeetingsPersonsOrderBy {
  factory Input_HistoryMeetingsPersonsOrderBy({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) => Input_HistoryMeetingsPersonsOrderBy._({
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryMeetingsPersonsOrderBy._(this._$data);

  factory Input_HistoryMeetingsPersonsOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = data['attendanceHistoryAggregate'];
      result$data['attendanceHistoryAggregate'] =
          l$attendanceHistoryAggregate == null
          ? null
          : Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
              (l$attendanceHistoryAggregate as Map<String, dynamic>),
            );
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
    return Input_HistoryMeetingsPersonsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryAggregateOrderBy?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateOrderBy?);

  Input_HistoryMeetingsOrderBy? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsOrderBy?);

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceHistoryAggregate')) {
      final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
      result$data['attendanceHistoryAggregate'] = l$attendanceHistoryAggregate
          ?.toJson();
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
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsOrderBy<
    Input_HistoryMeetingsPersonsOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsPersonsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsOrderBy(
    Input_HistoryMeetingsPersonsOrderBy instance,
    TRes Function(Input_HistoryMeetingsPersonsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsOrderBy;

  factory CopyWith_Input_HistoryMeetingsPersonsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsOrderBy;

  TRes call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  });
  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsPersonsOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsPersonsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceHistoryAggregate = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_HistoryMeetingsPersonsOrderBy._({
      ..._instance._$data,
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateOrderBy?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsOrderBy?),
      if (meetingId != _undefined) 'meetingId': (meetingId as Enum_OrderBy?),
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
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

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryAggregateOrderBy? attendanceHistoryAggregate,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsOrderBy<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);
}

class Input_HistoryMeetingsPersonsStreamCursorInput {
  factory Input_HistoryMeetingsPersonsStreamCursorInput({
    required Input_HistoryMeetingsPersonsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryMeetingsPersonsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryMeetingsPersonsStreamCursorInput._(this._$data);

  factory Input_HistoryMeetingsPersonsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryMeetingsPersonsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryMeetingsPersonsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsPersonsStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryMeetingsPersonsStreamCursorValueInput);

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

  CopyWith_Input_HistoryMeetingsPersonsStreamCursorInput<
    Input_HistoryMeetingsPersonsStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryMeetingsPersonsStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsStreamCursorInput(
    Input_HistoryMeetingsPersonsStreamCursorInput instance,
    TRes Function(Input_HistoryMeetingsPersonsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsStreamCursorInput;

  factory CopyWith_Input_HistoryMeetingsPersonsStreamCursorInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryMeetingsPersonsStreamCursorInput;

  TRes call({
    Input_HistoryMeetingsPersonsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsStreamCursorInput _instance;

  final TRes Function(Input_HistoryMeetingsPersonsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryMeetingsPersonsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue
                as Input_HistoryMeetingsPersonsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingsPersonsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput.stub(_res);
}

class Input_HistoryMeetingsPersonsStreamCursorValueInput {
  factory Input_HistoryMeetingsPersonsStreamCursorValueInput({
    UuidValue? meetingId,
    UuidValue? personId,
  }) => Input_HistoryMeetingsPersonsStreamCursorValueInput._({
    if (meetingId != null) r'meetingId': meetingId,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryMeetingsPersonsStreamCursorValueInput._(this._$data);

  factory Input_HistoryMeetingsPersonsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : stringToUuid(l$meetingId);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    return Input_HistoryMeetingsPersonsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get meetingId => (_$data['meetingId'] as UuidValue?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : uuidToString(l$meetingId);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput<
    Input_HistoryMeetingsPersonsStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$meetingId = meetingId;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput<
  TRes
> {
  factory CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput(
    Input_HistoryMeetingsPersonsStreamCursorValueInput instance,
    TRes Function(Input_HistoryMeetingsPersonsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsStreamCursorValueInput;

  factory CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryMeetingsPersonsStreamCursorValueInput;

  TRes call({UuidValue? meetingId, UuidValue? personId});
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryMeetingsPersonsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? meetingId = _undefined, Object? personId = _undefined}) =>
      _then(
        Input_HistoryMeetingsPersonsStreamCursorValueInput._({
          ..._instance._$data,
          if (meetingId != _undefined) 'meetingId': (meetingId as UuidValue?),
          if (personId != _undefined) 'personId': (personId as UuidValue?),
        }),
      );
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryMeetingsPersonsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsStreamCursorValueInput(
    this._res,
  );

  TRes _res;

  call({UuidValue? meetingId, UuidValue? personId}) => _res;
}

class Input_HistoryMeetingsPkColumnsInput {
  factory Input_HistoryMeetingsPkColumnsInput({required UuidValue id}) =>
      Input_HistoryMeetingsPkColumnsInput._({r'id': id});

  Input_HistoryMeetingsPkColumnsInput._(this._$data);

  factory Input_HistoryMeetingsPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_HistoryMeetingsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPkColumnsInput<
    Input_HistoryMeetingsPkColumnsInput
  >
  get copyWith => CopyWith_Input_HistoryMeetingsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPkColumnsInput ||
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

abstract class CopyWith_Input_HistoryMeetingsPkColumnsInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsPkColumnsInput(
    Input_HistoryMeetingsPkColumnsInput instance,
    TRes Function(Input_HistoryMeetingsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPkColumnsInput;

  factory CopyWith_Input_HistoryMeetingsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_HistoryMeetingsPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryMeetingsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPkColumnsInput(this._instance, this._then);

  final Input_HistoryMeetingsPkColumnsInput _instance;

  final TRes Function(Input_HistoryMeetingsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_HistoryMeetingsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryMeetingsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_HistoryMeetingsSetInput {
  factory Input_HistoryMeetingsSetInput({
    String? audience,
    int? color,
    bool? isArchived,
    String? name,
  }) => Input_HistoryMeetingsSetInput._({
    if (audience != null) r'audience': audience,
    if (color != null) r'color': color,
    if (isArchived != null) r'isArchived': isArchived,
    if (name != null) r'name': name,
  });

  Input_HistoryMeetingsSetInput._(this._$data);

  factory Input_HistoryMeetingsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = (l$audience as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = (l$isArchived as bool?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_HistoryMeetingsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get audience => (_$data['audience'] as String?);

  int? get color => (_$data['color'] as int?);

  bool? get isArchived => (_$data['isArchived'] as bool?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsSetInput<Input_HistoryMeetingsSetInput>
  get copyWith => CopyWith_Input_HistoryMeetingsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsSetInput ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$audience = audience;
    final l$color = color;
    final l$isArchived = isArchived;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsSetInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsSetInput(
    Input_HistoryMeetingsSetInput instance,
    TRes Function(Input_HistoryMeetingsSetInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsSetInput;

  factory CopyWith_Input_HistoryMeetingsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsSetInput;

  TRes call({String? audience, int? color, bool? isArchived, String? name});
}

class _CopyWithImpl_Input_HistoryMeetingsSetInput<TRes>
    implements CopyWith_Input_HistoryMeetingsSetInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsSetInput(this._instance, this._then);

  final Input_HistoryMeetingsSetInput _instance;

  final TRes Function(Input_HistoryMeetingsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? isArchived = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_HistoryMeetingsSetInput._({
      ..._instance._$data,
      if (audience != _undefined) 'audience': (audience as String?),
      if (color != _undefined) 'color': (color as int?),
      if (isArchived != _undefined) 'isArchived': (isArchived as bool?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsSetInput<TRes>
    implements CopyWith_Input_HistoryMeetingsSetInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsSetInput(this._res);

  TRes _res;

  call({String? audience, int? color, bool? isArchived, String? name}) => _res;
}

class Input_HistoryMeetingsStddevOrderBy {
  factory Input_HistoryMeetingsStddevOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsStddevOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsStddevOrderBy._(this._$data);

  factory Input_HistoryMeetingsStddevOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Input_HistoryMeetingsStddevOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsStddevOrderBy<
    Input_HistoryMeetingsStddevOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingsStddevOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStddevOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsStddevOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsStddevOrderBy(
    Input_HistoryMeetingsStddevOrderBy instance,
    TRes Function(Input_HistoryMeetingsStddevOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStddevOrderBy;

  factory CopyWith_Input_HistoryMeetingsStddevOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStddevOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStddevOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsStddevOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsStddevOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsStddevOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsStddevOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStddevOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsStddevPopOrderBy {
  factory Input_HistoryMeetingsStddevPopOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsStddevPopOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsStddevPopOrderBy._(this._$data);

  factory Input_HistoryMeetingsStddevPopOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Input_HistoryMeetingsStddevPopOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsStddevPopOrderBy<
    Input_HistoryMeetingsStddevPopOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsStddevPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStddevPopOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsStddevPopOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsStddevPopOrderBy(
    Input_HistoryMeetingsStddevPopOrderBy instance,
    TRes Function(Input_HistoryMeetingsStddevPopOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStddevPopOrderBy;

  factory CopyWith_Input_HistoryMeetingsStddevPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStddevPopOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevPopOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStddevPopOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStddevPopOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsStddevPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsStddevPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsStddevPopOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStddevPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsStddevSampOrderBy {
  factory Input_HistoryMeetingsStddevSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsStddevSampOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsStddevSampOrderBy._(this._$data);

  factory Input_HistoryMeetingsStddevSampOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
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
    return Input_HistoryMeetingsStddevSampOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsStddevSampOrderBy<
    Input_HistoryMeetingsStddevSampOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsStddevSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStddevSampOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsStddevSampOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsStddevSampOrderBy(
    Input_HistoryMeetingsStddevSampOrderBy instance,
    TRes Function(Input_HistoryMeetingsStddevSampOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStddevSampOrderBy;

  factory CopyWith_Input_HistoryMeetingsStddevSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStddevSampOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevSampOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStddevSampOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStddevSampOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsStddevSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsStddevSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsStddevSampOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsStddevSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStddevSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsStreamCursorInput {
  factory Input_HistoryMeetingsStreamCursorInput({
    required Input_HistoryMeetingsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryMeetingsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryMeetingsStreamCursorInput._(this._$data);

  factory Input_HistoryMeetingsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryMeetingsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryMeetingsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_HistoryMeetingsStreamCursorValueInput);

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

  CopyWith_Input_HistoryMeetingsStreamCursorInput<
    Input_HistoryMeetingsStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStreamCursorInput ||
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

abstract class CopyWith_Input_HistoryMeetingsStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsStreamCursorInput(
    Input_HistoryMeetingsStreamCursorInput instance,
    TRes Function(Input_HistoryMeetingsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStreamCursorInput;

  factory CopyWith_Input_HistoryMeetingsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorInput;

  TRes call({
    Input_HistoryMeetingsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_HistoryMeetingsStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStreamCursorInput _instance;

  final TRes Function(Input_HistoryMeetingsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryMeetingsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryMeetingsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryMeetingsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_HistoryMeetingsStreamCursorValueInput.stub(_res);
}

class Input_HistoryMeetingsStreamCursorValueInput {
  factory Input_HistoryMeetingsStreamCursorValueInput({
    String? audience,
    int? color,
    UuidValue? groupId,
    UuidValue? id,
    bool? isArchived,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => Input_HistoryMeetingsStreamCursorValueInput._({
    if (audience != null) r'audience': audience,
    if (color != null) r'color': color,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (isArchived != null) r'isArchived': isArchived,
    if (name != null) r'name': name,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsStreamCursorValueInput._(this._$data);

  factory Input_HistoryMeetingsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = (l$audience as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : stringToUuid(l$groupId);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = (l$isArchived as bool?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = (l$serviceGender as bool?);
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    return Input_HistoryMeetingsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get audience => (_$data['audience'] as String?);

  int? get color => (_$data['color'] as int?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  bool? get isArchived => (_$data['isArchived'] as bool?);

  String? get name => (_$data['name'] as String?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : uuidToString(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender;
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsStreamCursorValueInput<
    Input_HistoryMeetingsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$audience = audience;
    final l$color = color;
    final l$groupId = groupId;
    final l$id = id;
    final l$isArchived = isArchived;
    final l$name = name;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsStreamCursorValueInput(
    Input_HistoryMeetingsStreamCursorValueInput instance,
    TRes Function(Input_HistoryMeetingsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsStreamCursorValueInput;

  factory CopyWith_Input_HistoryMeetingsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorValueInput;

  TRes call({
    String? audience,
    int? color,
    UuidValue? groupId,
    UuidValue? id,
    bool? isArchived,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryMeetingsStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryMeetingsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? isArchived = _undefined,
    Object? name = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsStreamCursorValueInput._({
      ..._instance._$data,
      if (audience != _undefined) 'audience': (audience as String?),
      if (color != _undefined) 'color': (color as int?),
      if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (isArchived != _undefined) 'isArchived': (isArchived as bool?),
      if (name != _undefined) 'name': (name as String?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryMeetingsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    String? audience,
    int? color,
    UuidValue? groupId,
    UuidValue? id,
    bool? isArchived,
    String? name,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
  }) => _res;
}

class Input_HistoryMeetingsSumOrderBy {
  factory Input_HistoryMeetingsSumOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsSumOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsSumOrderBy._(this._$data);

  factory Input_HistoryMeetingsSumOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_HistoryMeetingsSumOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingsSumOrderBy<Input_HistoryMeetingsSumOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingsSumOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsSumOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsSumOrderBy(
    Input_HistoryMeetingsSumOrderBy instance,
    TRes Function(Input_HistoryMeetingsSumOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsSumOrderBy;

  factory CopyWith_Input_HistoryMeetingsSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsSumOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_HistoryMeetingsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsSumOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsSumOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsSumOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsSumOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_HistoryMeetingsUpdates {
  factory Input_HistoryMeetingsUpdates({
    Input_HistoryMeetingsIncInput? $_inc,
    Input_HistoryMeetingsSetInput? $_set,
    required Input_HistoryMeetingsBoolExp where,
  }) => Input_HistoryMeetingsUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_HistoryMeetingsUpdates._(this._$data);

  factory Input_HistoryMeetingsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_HistoryMeetingsIncInput.fromJson(
              (l$$_inc as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_HistoryMeetingsSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_HistoryMeetingsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_HistoryMeetingsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingsIncInput? get $_inc =>
      (_$data['_inc'] as Input_HistoryMeetingsIncInput?);

  Input_HistoryMeetingsSetInput? get $_set =>
      (_$data['_set'] as Input_HistoryMeetingsSetInput?);

  Input_HistoryMeetingsBoolExp get where =>
      (_$data['where'] as Input_HistoryMeetingsBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_inc')) {
      final l$$_inc = $_inc;
      result$data['_inc'] = l$$_inc?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsUpdates<Input_HistoryMeetingsUpdates>
  get copyWith => CopyWith_Input_HistoryMeetingsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsUpdates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_inc = $_inc;
    final lOther$$_inc = other.$_inc;
    if (_$data.containsKey('_inc') != other._$data.containsKey('_inc')) {
      return false;
    }
    if (l$$_inc != lOther$$_inc) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_inc = $_inc;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_inc') ? l$$_inc : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}
