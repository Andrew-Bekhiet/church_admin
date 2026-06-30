// Part 32 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp(
    Input_HistoryMeetingsPersonsAggregateBoolExp instance,
    TRes Function(Input_HistoryMeetingsPersonsAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateBoolExp;

  factory CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateBoolExp;

  TRes call({Input_historyMeetingsPersonsAggregateBoolExpCount? count});
  CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsAggregateBoolExp _instance;

  final TRes Function(Input_HistoryMeetingsPersonsAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) => _then(
    Input_HistoryMeetingsPersonsAggregateBoolExp._({
      ..._instance._$data,
      if (count != _undefined)
        'count': (count as Input_historyMeetingsPersonsAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateBoolExp(this._res);

  TRes _res;

  call({Input_historyMeetingsPersonsAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_historyMeetingsPersonsAggregateBoolExpCount.stub(_res);
}

class Input_HistoryMeetingsPersonsAggregateOrderBy {
  factory Input_HistoryMeetingsPersonsAggregateOrderBy({
    Enum_OrderBy? count,
    Input_HistoryMeetingsPersonsMaxOrderBy? max,
    Input_HistoryMeetingsPersonsMinOrderBy? min,
  }) => Input_HistoryMeetingsPersonsAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_HistoryMeetingsPersonsAggregateOrderBy._(this._$data);

  factory Input_HistoryMeetingsPersonsAggregateOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
          : Input_HistoryMeetingsPersonsMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryMeetingsPersonsMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsPersonsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryMeetingsPersonsMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryMeetingsPersonsMaxOrderBy?);

  Input_HistoryMeetingsPersonsMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryMeetingsPersonsMinOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<
    Input_HistoryMeetingsPersonsAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsAggregateOrderBy ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$max = max;
    final l$min = min;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('max') ? l$max : const {},
      _$data.containsKey('min') ? l$min : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy(
    Input_HistoryMeetingsPersonsAggregateOrderBy instance,
    TRes Function(Input_HistoryMeetingsPersonsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateOrderBy;

  factory CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_HistoryMeetingsPersonsMaxOrderBy? max,
    Input_HistoryMeetingsPersonsMinOrderBy? min,
  });
  CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsPersonsAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingsPersonsAggregateOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsPersonsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_HistoryMeetingsPersonsAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryMeetingsPersonsMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryMeetingsPersonsMinOrderBy?),
    }),
  );

  CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryMeetingsPersonsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsPersonsMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsPersonsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsPersonsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_HistoryMeetingsPersonsMaxOrderBy? max,
    Input_HistoryMeetingsPersonsMinOrderBy? min,
  }) => _res;

  CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryMeetingsPersonsMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsPersonsMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryMeetingsPersonsMinOrderBy.stub(_res);
}

class Input_HistoryMeetingsPersonsBoolExp {
  factory Input_HistoryMeetingsPersonsBoolExp({
    List<Input_HistoryMeetingsPersonsBoolExp>? $_and,
    Input_HistoryMeetingsPersonsBoolExp? $_not,
    List<Input_HistoryMeetingsPersonsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
  }) => Input_HistoryMeetingsPersonsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryMeetingsPersonsBoolExp._(this._$data);

  factory Input_HistoryMeetingsPersonsBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsPersonsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryMeetingsPersonsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryMeetingsPersonsBoolExp.fromJson(
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
    return Input_HistoryMeetingsPersonsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryMeetingsPersonsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryMeetingsPersonsBoolExp>?);

  Input_HistoryMeetingsPersonsBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryMeetingsPersonsBoolExp?);

  List<Input_HistoryMeetingsPersonsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryMeetingsPersonsBoolExp>?);

  Input_HistoryAttendanceHistoryBoolExp? get attendanceHistory =>
      (_$data['attendanceHistory'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_HistoryAttendanceHistoryAggregateBoolExp?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateBoolExp?);

  Input_HistoryMeetingsBoolExp? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsBoolExp?);

  Input_UuidComparisonExp? get meetingId =>
      (_$data['meetingId'] as Input_UuidComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('meeting')) {
      final l$meeting = meeting;
      result$data['meeting'] = l$meeting?.toJson();
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsPersonsBoolExp<
    Input_HistoryMeetingsPersonsBoolExp
  >
  get copyWith => CopyWith_Input_HistoryMeetingsPersonsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsPersonsBoolExp ||
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
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$attendanceHistory = attendanceHistory;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$person = person;
    final l$personId = personId;
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
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

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
