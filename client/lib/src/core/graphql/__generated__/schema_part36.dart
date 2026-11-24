// Part 36 of the schema
part of "schema.graphql.dart";

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
    Enum_OrderBy? autoAttendanceWeekday,
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsAvgOrderBy._({
    if (autoAttendanceWeekday != null)
      r'autoAttendanceWeekday': autoAttendanceWeekday,
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsAvgOrderBy._(this._$data);

  factory Input_HistoryMeetingsAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('autoAttendanceWeekday')) {
      final l$autoAttendanceWeekday = data['autoAttendanceWeekday'];
      result$data['autoAttendanceWeekday'] = l$autoAttendanceWeekday == null
          ? null
          : fromJson_Enum_OrderBy((l$autoAttendanceWeekday as String));
    }
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

  Enum_OrderBy? get autoAttendanceWeekday =>
      (_$data['autoAttendanceWeekday'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('autoAttendanceWeekday')) {
      final l$autoAttendanceWeekday = autoAttendanceWeekday;
      result$data['autoAttendanceWeekday'] = l$autoAttendanceWeekday == null
          ? null
          : toJson_Enum_OrderBy(l$autoAttendanceWeekday);
    }
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
    final l$autoAttendanceWeekday = autoAttendanceWeekday;
    final lOther$autoAttendanceWeekday = other.autoAttendanceWeekday;
    if (_$data.containsKey('autoAttendanceWeekday') !=
        other._$data.containsKey('autoAttendanceWeekday')) {
      return false;
    }
    if (l$autoAttendanceWeekday != lOther$autoAttendanceWeekday) {
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
    final l$autoAttendanceWeekday = autoAttendanceWeekday;
    final l$color = color;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('autoAttendanceWeekday')
          ? l$autoAttendanceWeekday
          : const {},
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

  TRes call({
    Enum_OrderBy? autoAttendanceWeekday,
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  });
}

class _CopyWithImpl_Input_HistoryMeetingsAvgOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingsAvgOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsAvgOrderBy(this._instance, this._then);

  final Input_HistoryMeetingsAvgOrderBy _instance;

  final TRes Function(Input_HistoryMeetingsAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? autoAttendanceWeekday = _undefined,
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsAvgOrderBy._({
      ..._instance._$data,
      if (autoAttendanceWeekday != _undefined)
        'autoAttendanceWeekday': (autoAttendanceWeekday as Enum_OrderBy?),
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

  call({
    Enum_OrderBy? autoAttendanceWeekday,
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => _res;
}

class Input_HistoryMeetingsBoolExp {
  factory Input_HistoryMeetingsBoolExp({
    List<Input_HistoryMeetingsBoolExp>? $_and,
    Input_HistoryMeetingsBoolExp? $_not,
    List<Input_HistoryMeetingsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_MeetingAudienceComparisonExp? audience,
    Input_TimeComparisonExp? autoAttendanceEndTime,
    Input_BooleanComparisonExp? autoAttendanceRecordsServants,
    Input_TimeComparisonExp? autoAttendanceStartTime,
    Input_SmallintComparisonExp? autoAttendanceWeekday,
    Input_TimeComparisonExp? autoCommunionEndTime,
    Input_TimeComparisonExp? autoCommunionStartTime,
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
    if (autoAttendanceEndTime != null)
      r'autoAttendanceEndTime': autoAttendanceEndTime,
    if (autoAttendanceRecordsServants != null)
      r'autoAttendanceRecordsServants': autoAttendanceRecordsServants,
    if (autoAttendanceStartTime != null)
      r'autoAttendanceStartTime': autoAttendanceStartTime,
    if (autoAttendanceWeekday != null)
      r'autoAttendanceWeekday': autoAttendanceWeekday,
    if (autoCommunionEndTime != null)
      r'autoCommunionEndTime': autoCommunionEndTime,
    if (autoCommunionStartTime != null)
      r'autoCommunionStartTime': autoCommunionStartTime,
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
    if (data.containsKey('autoAttendanceEndTime')) {
      final l$autoAttendanceEndTime = data['autoAttendanceEndTime'];
      result$data['autoAttendanceEndTime'] = l$autoAttendanceEndTime == null
          ? null
          : Input_TimeComparisonExp.fromJson(
              (l$autoAttendanceEndTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('autoAttendanceRecordsServants')) {
      final l$autoAttendanceRecordsServants =
          data['autoAttendanceRecordsServants'];
      result$data['autoAttendanceRecordsServants'] =
          l$autoAttendanceRecordsServants == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$autoAttendanceRecordsServants as Map<String, dynamic>),
            );
    }
    if (data.containsKey('autoAttendanceStartTime')) {
      final l$autoAttendanceStartTime = data['autoAttendanceStartTime'];
      result$data['autoAttendanceStartTime'] = l$autoAttendanceStartTime == null
          ? null
          : Input_TimeComparisonExp.fromJson(
              (l$autoAttendanceStartTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('autoAttendanceWeekday')) {
      final l$autoAttendanceWeekday = data['autoAttendanceWeekday'];
      result$data['autoAttendanceWeekday'] = l$autoAttendanceWeekday == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$autoAttendanceWeekday as Map<String, dynamic>),
            );
    }
    if (data.containsKey('autoCommunionEndTime')) {
      final l$autoCommunionEndTime = data['autoCommunionEndTime'];
      result$data['autoCommunionEndTime'] = l$autoCommunionEndTime == null
          ? null
          : Input_TimeComparisonExp.fromJson(
              (l$autoCommunionEndTime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('autoCommunionStartTime')) {
      final l$autoCommunionStartTime = data['autoCommunionStartTime'];
      result$data['autoCommunionStartTime'] = l$autoCommunionStartTime == null
          ? null
          : Input_TimeComparisonExp.fromJson(
              (l$autoCommunionStartTime as Map<String, dynamic>),
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

  Input_TimeComparisonExp? get autoAttendanceEndTime =>
      (_$data['autoAttendanceEndTime'] as Input_TimeComparisonExp?);

  Input_BooleanComparisonExp? get autoAttendanceRecordsServants =>
      (_$data['autoAttendanceRecordsServants'] as Input_BooleanComparisonExp?);

  Input_TimeComparisonExp? get autoAttendanceStartTime =>
      (_$data['autoAttendanceStartTime'] as Input_TimeComparisonExp?);

  Input_SmallintComparisonExp? get autoAttendanceWeekday =>
      (_$data['autoAttendanceWeekday'] as Input_SmallintComparisonExp?);

  Input_TimeComparisonExp? get autoCommunionEndTime =>
      (_$data['autoCommunionEndTime'] as Input_TimeComparisonExp?);

  Input_TimeComparisonExp? get autoCommunionStartTime =>
      (_$data['autoCommunionStartTime'] as Input_TimeComparisonExp?);

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
    if (_$data.containsKey('autoAttendanceEndTime')) {
      final l$autoAttendanceEndTime = autoAttendanceEndTime;
      result$data['autoAttendanceEndTime'] = l$autoAttendanceEndTime?.toJson();
    }
    if (_$data.containsKey('autoAttendanceRecordsServants')) {
      final l$autoAttendanceRecordsServants = autoAttendanceRecordsServants;
      result$data['autoAttendanceRecordsServants'] =
          l$autoAttendanceRecordsServants?.toJson();
    }
    if (_$data.containsKey('autoAttendanceStartTime')) {
      final l$autoAttendanceStartTime = autoAttendanceStartTime;
      result$data['autoAttendanceStartTime'] = l$autoAttendanceStartTime
          ?.toJson();
    }
    if (_$data.containsKey('autoAttendanceWeekday')) {
      final l$autoAttendanceWeekday = autoAttendanceWeekday;
      result$data['autoAttendanceWeekday'] = l$autoAttendanceWeekday?.toJson();
    }
    if (_$data.containsKey('autoCommunionEndTime')) {
      final l$autoCommunionEndTime = autoCommunionEndTime;
      result$data['autoCommunionEndTime'] = l$autoCommunionEndTime?.toJson();
    }
    if (_$data.containsKey('autoCommunionStartTime')) {
      final l$autoCommunionStartTime = autoCommunionStartTime;
      result$data['autoCommunionStartTime'] = l$autoCommunionStartTime
          ?.toJson();
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
    final l$autoAttendanceEndTime = autoAttendanceEndTime;
    final lOther$autoAttendanceEndTime = other.autoAttendanceEndTime;
    if (_$data.containsKey('autoAttendanceEndTime') !=
        other._$data.containsKey('autoAttendanceEndTime')) {
      return false;
    }
    if (l$autoAttendanceEndTime != lOther$autoAttendanceEndTime) {
      return false;
    }
    final l$autoAttendanceRecordsServants = autoAttendanceRecordsServants;
    final lOther$autoAttendanceRecordsServants =
        other.autoAttendanceRecordsServants;
    if (_$data.containsKey('autoAttendanceRecordsServants') !=
        other._$data.containsKey('autoAttendanceRecordsServants')) {
      return false;
    }
    if (l$autoAttendanceRecordsServants !=
        lOther$autoAttendanceRecordsServants) {
      return false;
    }
    final l$autoAttendanceStartTime = autoAttendanceStartTime;
    final lOther$autoAttendanceStartTime = other.autoAttendanceStartTime;
    if (_$data.containsKey('autoAttendanceStartTime') !=
        other._$data.containsKey('autoAttendanceStartTime')) {
      return false;
    }
    if (l$autoAttendanceStartTime != lOther$autoAttendanceStartTime) {
      return false;
    }
    final l$autoAttendanceWeekday = autoAttendanceWeekday;
    final lOther$autoAttendanceWeekday = other.autoAttendanceWeekday;
    if (_$data.containsKey('autoAttendanceWeekday') !=
        other._$data.containsKey('autoAttendanceWeekday')) {
      return false;
    }
    if (l$autoAttendanceWeekday != lOther$autoAttendanceWeekday) {
      return false;
    }
    final l$autoCommunionEndTime = autoCommunionEndTime;
    final lOther$autoCommunionEndTime = other.autoCommunionEndTime;
    if (_$data.containsKey('autoCommunionEndTime') !=
        other._$data.containsKey('autoCommunionEndTime')) {
      return false;
    }
    if (l$autoCommunionEndTime != lOther$autoCommunionEndTime) {
      return false;
    }
    final l$autoCommunionStartTime = autoCommunionStartTime;
    final lOther$autoCommunionStartTime = other.autoCommunionStartTime;
    if (_$data.containsKey('autoCommunionStartTime') !=
        other._$data.containsKey('autoCommunionStartTime')) {
      return false;
    }
    if (l$autoCommunionStartTime != lOther$autoCommunionStartTime) {
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
    final l$autoAttendanceEndTime = autoAttendanceEndTime;
    final l$autoAttendanceRecordsServants = autoAttendanceRecordsServants;
    final l$autoAttendanceStartTime = autoAttendanceStartTime;
    final l$autoAttendanceWeekday = autoAttendanceWeekday;
    final l$autoCommunionEndTime = autoCommunionEndTime;
    final l$autoCommunionStartTime = autoCommunionStartTime;
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
      _$data.containsKey('autoAttendanceEndTime')
          ? l$autoAttendanceEndTime
          : const {},
      _$data.containsKey('autoAttendanceRecordsServants')
          ? l$autoAttendanceRecordsServants
          : const {},
      _$data.containsKey('autoAttendanceStartTime')
          ? l$autoAttendanceStartTime
          : const {},
      _$data.containsKey('autoAttendanceWeekday')
          ? l$autoAttendanceWeekday
          : const {},
      _$data.containsKey('autoCommunionEndTime')
          ? l$autoCommunionEndTime
          : const {},
      _$data.containsKey('autoCommunionStartTime')
          ? l$autoCommunionStartTime
          : const {},
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

abstract class CopyWith_Input_HistoryMeetingsBoolExp<TRes> {
  factory CopyWith_Input_HistoryMeetingsBoolExp(
    Input_HistoryMeetingsBoolExp instance,
    TRes Function(Input_HistoryMeetingsBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsBoolExp;

  factory CopyWith_Input_HistoryMeetingsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsBoolExp;

  TRes call({
    List<Input_HistoryMeetingsBoolExp>? $_and,
    Input_HistoryMeetingsBoolExp? $_not,
    List<Input_HistoryMeetingsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_MeetingAudienceComparisonExp? audience,
    Input_TimeComparisonExp? autoAttendanceEndTime,
    Input_BooleanComparisonExp? autoAttendanceRecordsServants,
    Input_TimeComparisonExp? autoAttendanceStartTime,
    Input_SmallintComparisonExp? autoAttendanceWeekday,
    Input_TimeComparisonExp? autoCommunionEndTime,
    Input_TimeComparisonExp? autoCommunionStartTime,
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
  });
  TRes $_and(
    Iterable<Input_HistoryMeetingsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsBoolExp<Input_HistoryMeetingsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryMeetingsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsBoolExp<Input_HistoryMeetingsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_MeetingAudienceComparisonExp<TRes> get audience;
  CopyWith_Input_TimeComparisonExp<TRes> get autoAttendanceEndTime;
  CopyWith_Input_BooleanComparisonExp<TRes> get autoAttendanceRecordsServants;
  CopyWith_Input_TimeComparisonExp<TRes> get autoAttendanceStartTime;
  CopyWith_Input_SmallintComparisonExp<TRes> get autoAttendanceWeekday;
  CopyWith_Input_TimeComparisonExp<TRes> get autoCommunionEndTime;
  CopyWith_Input_TimeComparisonExp<TRes> get autoCommunionStartTime;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get days;
  CopyWith_Input_HistoryMeetingDaysAggregateBoolExp<TRes> get daysAggregate;
  CopyWith_Input_GroupsBoolExp<TRes> get group;
  CopyWith_Input_UuidComparisonExp<TRes> get groupId;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_BooleanComparisonExp<TRes> get isArchived;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_ServicesBoolExp<TRes> get service;
  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender;
  CopyWith_Input_UuidComparisonExp<TRes> get serviceId;
  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear;
  CopyWith_Input_BooleanComparisonExp<TRes> get showKodasCheckbox;
  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryMeetingsBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsBoolExp(this._instance, this._then);

  final Input_HistoryMeetingsBoolExp _instance;

  final TRes Function(Input_HistoryMeetingsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? audience = _undefined,
    Object? autoAttendanceEndTime = _undefined,
    Object? autoAttendanceRecordsServants = _undefined,
    Object? autoAttendanceStartTime = _undefined,
    Object? autoAttendanceWeekday = _undefined,
    Object? autoCommunionEndTime = _undefined,
    Object? autoCommunionStartTime = _undefined,
    Object? color = _undefined,
    Object? days = _undefined,
    Object? daysAggregate = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? id = _undefined,
    Object? isArchived = _undefined,
    Object? name = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? showKodasCheckbox = _undefined,
    Object? studyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryMeetingsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_HistoryMeetingsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryMeetingsBoolExp>?),
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory as Input_HistoryAttendanceHistoryBoolExp?),
      if (attendanceHistoryAggregate != _undefined)
        'attendanceHistoryAggregate':
            (attendanceHistoryAggregate
                as Input_HistoryAttendanceHistoryAggregateBoolExp?),
      if (audience != _undefined)
        'audience': (audience as Input_MeetingAudienceComparisonExp?),
      if (autoAttendanceEndTime != _undefined)
        'autoAttendanceEndTime':
            (autoAttendanceEndTime as Input_TimeComparisonExp?),
      if (autoAttendanceRecordsServants != _undefined)
        'autoAttendanceRecordsServants':
            (autoAttendanceRecordsServants as Input_BooleanComparisonExp?),
      if (autoAttendanceStartTime != _undefined)
        'autoAttendanceStartTime':
            (autoAttendanceStartTime as Input_TimeComparisonExp?),
      if (autoAttendanceWeekday != _undefined)
        'autoAttendanceWeekday':
            (autoAttendanceWeekday as Input_SmallintComparisonExp?),
      if (autoCommunionEndTime != _undefined)
        'autoCommunionEndTime':
            (autoCommunionEndTime as Input_TimeComparisonExp?),
      if (autoCommunionStartTime != _undefined)
        'autoCommunionStartTime':
            (autoCommunionStartTime as Input_TimeComparisonExp?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (days != _undefined)
        'days': (days as Input_HistoryMeetingDaysBoolExp?),
      if (daysAggregate != _undefined)
        'daysAggregate':
            (daysAggregate as Input_HistoryMeetingDaysAggregateBoolExp?),
      if (group != _undefined) 'group': (group as Input_GroupsBoolExp?),
      if (groupId != _undefined)
        'groupId': (groupId as Input_UuidComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (isArchived != _undefined)
        'isArchived': (isArchived as Input_BooleanComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (service != _undefined) 'service': (service as Input_ServicesBoolExp?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Input_BooleanComparisonExp?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_UuidComparisonExp?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Input_IntComparisonExp?),
      if (showKodasCheckbox != _undefined)
        'showKodasCheckbox': (showKodasCheckbox as Input_BooleanComparisonExp?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryMeetingsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsBoolExp<Input_HistoryMeetingsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryMeetingsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryMeetingsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryMeetingsBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryMeetingsBoolExp<Input_HistoryMeetingsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryMeetingsBoolExp(e, (i) => i),
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

  CopyWith_Input_MeetingAudienceComparisonExp<TRes> get audience {
    final local$audience = _instance.audience;
    return local$audience == null
        ? CopyWith_Input_MeetingAudienceComparisonExp.stub(_then(_instance))
        : CopyWith_Input_MeetingAudienceComparisonExp(
            local$audience,
            (e) => call(audience: e),
          );
  }

  CopyWith_Input_TimeComparisonExp<TRes> get autoAttendanceEndTime {
    final local$autoAttendanceEndTime = _instance.autoAttendanceEndTime;
    return local$autoAttendanceEndTime == null
        ? CopyWith_Input_TimeComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimeComparisonExp(
            local$autoAttendanceEndTime,
            (e) => call(autoAttendanceEndTime: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get autoAttendanceRecordsServants {
    final local$autoAttendanceRecordsServants =
        _instance.autoAttendanceRecordsServants;
    return local$autoAttendanceRecordsServants == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$autoAttendanceRecordsServants,
            (e) => call(autoAttendanceRecordsServants: e),
          );
  }

  CopyWith_Input_TimeComparisonExp<TRes> get autoAttendanceStartTime {
    final local$autoAttendanceStartTime = _instance.autoAttendanceStartTime;
    return local$autoAttendanceStartTime == null
        ? CopyWith_Input_TimeComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimeComparisonExp(
            local$autoAttendanceStartTime,
            (e) => call(autoAttendanceStartTime: e),
          );
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get autoAttendanceWeekday {
    final local$autoAttendanceWeekday = _instance.autoAttendanceWeekday;
    return local$autoAttendanceWeekday == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$autoAttendanceWeekday,
            (e) => call(autoAttendanceWeekday: e),
          );
  }

  CopyWith_Input_TimeComparisonExp<TRes> get autoCommunionEndTime {
    final local$autoCommunionEndTime = _instance.autoCommunionEndTime;
    return local$autoCommunionEndTime == null
        ? CopyWith_Input_TimeComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimeComparisonExp(
            local$autoCommunionEndTime,
            (e) => call(autoCommunionEndTime: e),
          );
  }

  CopyWith_Input_TimeComparisonExp<TRes> get autoCommunionStartTime {
    final local$autoCommunionStartTime = _instance.autoCommunionStartTime;
    return local$autoCommunionStartTime == null
        ? CopyWith_Input_TimeComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimeComparisonExp(
            local$autoCommunionStartTime,
            (e) => call(autoCommunionStartTime: e),
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

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get days {
    final local$days = _instance.days;
    return local$days == null
        ? CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysBoolExp(
            local$days,
            (e) => call(days: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysAggregateBoolExp<TRes> get daysAggregate {
    final local$daysAggregate = _instance.daysAggregate;
    return local$daysAggregate == null
        ? CopyWith_Input_HistoryMeetingDaysAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryMeetingDaysAggregateBoolExp(
            local$daysAggregate,
            (e) => call(daysAggregate: e),
          );
  }

  CopyWith_Input_GroupsBoolExp<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$group, (e) => call(group: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get groupId {
    final local$groupId = _instance.groupId;
    return local$groupId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$groupId,
            (e) => call(groupId: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isArchived {
    final local$isArchived = _instance.isArchived;
    return local$isArchived == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isArchived,
            (e) => call(isArchived: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_ServicesBoolExp<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender {
    final local$serviceGender = _instance.serviceGender;
    return local$serviceGender == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$serviceGender,
            (e) => call(serviceGender: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId {
    final local$serviceId = _instance.serviceId;
    return local$serviceId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$serviceId,
            (e) => call(serviceId: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear {
    final local$serviceStudyYear = _instance.serviceStudyYear;
    return local$serviceStudyYear == null
        ? CopyWith_Input_IntComparisonExp.stub(_then(_instance))
        : CopyWith_Input_IntComparisonExp(
            local$serviceStudyYear,
            (e) => call(serviceStudyYear: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get showKodasCheckbox {
    final local$showKodasCheckbox = _instance.showKodasCheckbox;
    return local$showKodasCheckbox == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$showKodasCheckbox,
            (e) => call(showKodasCheckbox: e),
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
}

class _CopyWithStubImpl_Input_HistoryMeetingsBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingsBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryMeetingsBoolExp>? $_and,
    Input_HistoryMeetingsBoolExp? $_not,
    List<Input_HistoryMeetingsBoolExp>? $_or,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_MeetingAudienceComparisonExp? audience,
    Input_TimeComparisonExp? autoAttendanceEndTime,
    Input_BooleanComparisonExp? autoAttendanceRecordsServants,
    Input_TimeComparisonExp? autoAttendanceStartTime,
    Input_SmallintComparisonExp? autoAttendanceWeekday,
    Input_TimeComparisonExp? autoCommunionEndTime,
    Input_TimeComparisonExp? autoCommunionStartTime,
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
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_MeetingAudienceComparisonExp<TRes> get audience =>
      CopyWith_Input_MeetingAudienceComparisonExp.stub(_res);

  CopyWith_Input_TimeComparisonExp<TRes> get autoAttendanceEndTime =>
      CopyWith_Input_TimeComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get autoAttendanceRecordsServants =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_TimeComparisonExp<TRes> get autoAttendanceStartTime =>
      CopyWith_Input_TimeComparisonExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get autoAttendanceWeekday =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_TimeComparisonExp<TRes> get autoCommunionEndTime =>
      CopyWith_Input_TimeComparisonExp.stub(_res);

  CopyWith_Input_TimeComparisonExp<TRes> get autoCommunionStartTime =>
      CopyWith_Input_TimeComparisonExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get days =>
      CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_res);

  CopyWith_Input_HistoryMeetingDaysAggregateBoolExp<TRes> get daysAggregate =>
      CopyWith_Input_HistoryMeetingDaysAggregateBoolExp.stub(_res);

  CopyWith_Input_GroupsBoolExp<TRes> get group =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get groupId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isArchived =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get service =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get showKodasCheckbox =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);
}

class Input_HistoryMeetingsIncInput {
  factory Input_HistoryMeetingsIncInput({int? color}) =>
      Input_HistoryMeetingsIncInput._({if (color != null) r'color': color});

  Input_HistoryMeetingsIncInput._(this._$data);

  factory Input_HistoryMeetingsIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_HistoryMeetingsIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsIncInput<Input_HistoryMeetingsIncInput>
  get copyWith => CopyWith_Input_HistoryMeetingsIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsIncInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_HistoryMeetingsIncInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsIncInput(
    Input_HistoryMeetingsIncInput instance,
    TRes Function(Input_HistoryMeetingsIncInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsIncInput;

  factory CopyWith_Input_HistoryMeetingsIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_HistoryMeetingsIncInput<TRes>
    implements CopyWith_Input_HistoryMeetingsIncInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsIncInput(this._instance, this._then);

  final Input_HistoryMeetingsIncInput _instance;

  final TRes Function(Input_HistoryMeetingsIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_HistoryMeetingsIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryMeetingsIncInput<TRes>
    implements CopyWith_Input_HistoryMeetingsIncInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_HistoryMeetingsInsertInput {
  factory Input_HistoryMeetingsInsertInput({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    String? audience,
    int? color,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    bool? isArchived,
    String? name,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    bool? showKodasCheckbox,
    Input_StudyYearsObjRelInsertInput? studyYear,
  }) => Input_HistoryMeetingsInsertInput._({
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (audience != null) r'audience': audience,
    if (color != null) r'color': color,
    if (group != null) r'group': group,
    if (groupId != null) r'groupId': groupId,
    if (isArchived != null) r'isArchived': isArchived,
    if (name != null) r'name': name,
    if (service != null) r'service': service,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (showKodasCheckbox != null) r'showKodasCheckbox': showKodasCheckbox,
    if (studyYear != null) r'studyYear': studyYear,
  });

  Input_HistoryMeetingsInsertInput._(this._$data);

  factory Input_HistoryMeetingsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = data['attendanceHistory'];
      result$data['attendanceHistory'] = l$attendanceHistory == null
          ? null
          : Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
              (l$attendanceHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = (l$audience as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupsObjRelInsertInput.fromJson(
              (l$group as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : stringToUuid(l$groupId);
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = (l$isArchived as bool?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesObjRelInsertInput.fromJson(
              (l$service as Map<String, dynamic>),
            );
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
    if (data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = data['showKodasCheckbox'];
      result$data['showKodasCheckbox'] = (l$showKodasCheckbox as bool?);
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsObjRelInsertInput.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceHistoryArrRelInsertInput? get attendanceHistory =>
      (_$data['attendanceHistory']
          as Input_HistoryAttendanceHistoryArrRelInsertInput?);

  String? get audience => (_$data['audience'] as String?);

  int? get color => (_$data['color'] as int?);

  Input_GroupsObjRelInsertInput? get group =>
      (_$data['group'] as Input_GroupsObjRelInsertInput?);

  UuidValue? get groupId => (_$data['groupId'] as UuidValue?);

  bool? get isArchived => (_$data['isArchived'] as bool?);

  String? get name => (_$data['name'] as String?);

  Input_ServicesObjRelInsertInput? get service =>
      (_$data['service'] as Input_ServicesObjRelInsertInput?);

  bool? get serviceGender => (_$data['serviceGender'] as bool?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  bool? get showKodasCheckbox => (_$data['showKodasCheckbox'] as bool?);

  Input_StudyYearsObjRelInsertInput? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearsObjRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('attendanceHistory')) {
      final l$attendanceHistory = attendanceHistory;
      result$data['attendanceHistory'] = l$attendanceHistory?.toJson();
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : uuidToString(l$groupId);
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
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
    if (_$data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = showKodasCheckbox;
      result$data['showKodasCheckbox'] = l$showKodasCheckbox;
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsInsertInput<Input_HistoryMeetingsInsertInput>
  get copyWith => CopyWith_Input_HistoryMeetingsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$attendanceHistory = attendanceHistory;
    final l$audience = audience;
    final l$color = color;
    final l$group = group;
    final l$groupId = groupId;
    final l$isArchived = isArchived;
    final l$name = name;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$showKodasCheckbox = showKodasCheckbox;
    final l$studyYear = studyYear;
    return Object.hashAll([
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
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

abstract class CopyWith_Input_HistoryMeetingsInsertInput<TRes> {
  factory CopyWith_Input_HistoryMeetingsInsertInput(
    Input_HistoryMeetingsInsertInput instance,
    TRes Function(Input_HistoryMeetingsInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryMeetingsInsertInput;

  factory CopyWith_Input_HistoryMeetingsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingsInsertInput;

  TRes call({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    String? audience,
    int? color,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    bool? isArchived,
    String? name,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    bool? showKodasCheckbox,
    Input_StudyYearsObjRelInsertInput? studyYear,
  });
  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory;
  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group;
  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service;
  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear;
}

class _CopyWithImpl_Input_HistoryMeetingsInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryMeetingsInsertInput(this._instance, this._then);

  final Input_HistoryMeetingsInsertInput _instance;

  final TRes Function(Input_HistoryMeetingsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? attendanceHistory = _undefined,
    Object? audience = _undefined,
    Object? color = _undefined,
    Object? group = _undefined,
    Object? groupId = _undefined,
    Object? isArchived = _undefined,
    Object? name = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? showKodasCheckbox = _undefined,
    Object? studyYear = _undefined,
  }) => _then(
    Input_HistoryMeetingsInsertInput._({
      ..._instance._$data,
      if (attendanceHistory != _undefined)
        'attendanceHistory':
            (attendanceHistory
                as Input_HistoryAttendanceHistoryArrRelInsertInput?),
      if (audience != _undefined) 'audience': (audience as String?),
      if (color != _undefined) 'color': (color as int?),
      if (group != _undefined)
        'group': (group as Input_GroupsObjRelInsertInput?),
      if (groupId != _undefined) 'groupId': (groupId as UuidValue?),
      if (isArchived != _undefined) 'isArchived': (isArchived as bool?),
      if (name != _undefined) 'name': (name as String?),
      if (service != _undefined)
        'service': (service as Input_ServicesObjRelInsertInput?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as bool?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as int?),
      if (showKodasCheckbox != _undefined)
        'showKodasCheckbox': (showKodasCheckbox as bool?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsObjRelInsertInput?),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory {
    final local$attendanceHistory = _instance.attendanceHistory;
    return local$attendanceHistory == null
        ? CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(
            local$attendanceHistory,
            (e) => call(attendanceHistory: e),
          );
  }

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_GroupsObjRelInsertInput(
            local$group,
            (e) => call(group: e),
          );
  }

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ServicesObjRelInsertInput(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearsObjRelInsertInput(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingsInsertInput<TRes>
    implements CopyWith_Input_HistoryMeetingsInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingsInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceHistoryArrRelInsertInput? attendanceHistory,
    String? audience,
    int? color,
    Input_GroupsObjRelInsertInput? group,
    UuidValue? groupId,
    bool? isArchived,
    String? name,
    Input_ServicesObjRelInsertInput? service,
    bool? serviceGender,
    UuidValue? serviceId,
    int? serviceStudyYear,
    bool? showKodasCheckbox,
    Input_StudyYearsObjRelInsertInput? studyYear,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
  get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_GroupsObjRelInsertInput<TRes> get group =>
      CopyWith_Input_GroupsObjRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);

  CopyWith_Input_StudyYearsObjRelInsertInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearsObjRelInsertInput.stub(_res);
}

class Input_HistoryMeetingsMaxOrderBy {
  factory Input_HistoryMeetingsMaxOrderBy({
    Enum_OrderBy? audience,
    Enum_OrderBy? autoAttendanceWeekday,
    Enum_OrderBy? color,
    Enum_OrderBy? groupId,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? serviceId,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_HistoryMeetingsMaxOrderBy._({
    if (audience != null) r'audience': audience,
    if (autoAttendanceWeekday != null)
      r'autoAttendanceWeekday': autoAttendanceWeekday,
    if (color != null) r'color': color,
    if (groupId != null) r'groupId': groupId,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_HistoryMeetingsMaxOrderBy._(this._$data);

  factory Input_HistoryMeetingsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : fromJson_Enum_OrderBy((l$audience as String));
    }
    if (data.containsKey('autoAttendanceWeekday')) {
      final l$autoAttendanceWeekday = data['autoAttendanceWeekday'];
      result$data['autoAttendanceWeekday'] = l$autoAttendanceWeekday == null
          ? null
          : fromJson_Enum_OrderBy((l$autoAttendanceWeekday as String));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : fromJson_Enum_OrderBy((l$groupId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceStudyYear as String));
    }
    return Input_HistoryMeetingsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get audience => (_$data['audience'] as Enum_OrderBy?);

  Enum_OrderBy? get autoAttendanceWeekday =>
      (_$data['autoAttendanceWeekday'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get groupId => (_$data['groupId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience == null
          ? null
          : toJson_Enum_OrderBy(l$audience);
    }
    if (_$data.containsKey('autoAttendanceWeekday')) {
      final l$autoAttendanceWeekday = autoAttendanceWeekday;
      result$data['autoAttendanceWeekday'] = l$autoAttendanceWeekday == null
          ? null
          : toJson_Enum_OrderBy(l$autoAttendanceWeekday);
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId == null
          ? null
          : toJson_Enum_OrderBy(l$groupId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : toJson_Enum_OrderBy(l$serviceStudyYear);
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingsMaxOrderBy<Input_HistoryMeetingsMaxOrderBy>
  get copyWith => CopyWith_Input_HistoryMeetingsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingsMaxOrderBy ||
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
    final l$autoAttendanceWeekday = autoAttendanceWeekday;
    final lOther$autoAttendanceWeekday = other.autoAttendanceWeekday;
    if (_$data.containsKey('autoAttendanceWeekday') !=
        other._$data.containsKey('autoAttendanceWeekday')) {
      return false;
    }
    if (l$autoAttendanceWeekday != lOther$autoAttendanceWeekday) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
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
    return true;
  }

  @override
  int get hashCode {
    final l$audience = audience;
    final l$autoAttendanceWeekday = autoAttendanceWeekday;
    final l$color = color;
    final l$groupId = groupId;
    final l$id = id;
    final l$name = name;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    return Object.hashAll([
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('autoAttendanceWeekday')
          ? l$autoAttendanceWeekday
          : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
    ]);
  }
}
