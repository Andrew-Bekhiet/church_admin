// Part 32 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> {
  factory CopyWith_Input_HistoryLatestVisitsOrderBy(
    Input_HistoryLatestVisitsOrderBy instance,
    TRes Function(Input_HistoryLatestVisitsOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryLatestVisitsOrderBy;

  factory CopyWith_Input_HistoryLatestVisitsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryLatestVisitsOrderBy;

  TRes call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? visitId,
  });
  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user;
}

class _CopyWithImpl_Input_HistoryLatestVisitsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryLatestVisitsOrderBy(this._instance, this._then);

  final Input_HistoryLatestVisitsOrderBy _instance;

  final TRes Function(Input_HistoryLatestVisitsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
    Object? visitId = _undefined,
  }) => _then(
    Input_HistoryLatestVisitsOrderBy._({
      ..._instance._$data,
      if (recordId != _undefined) 'recordId': (recordId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (table != _undefined) 'table': (table as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataOrderBy?),
      if (visitId != _undefined) 'visitId': (visitId as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataOrderBy.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataOrderBy(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_HistoryLatestVisitsOrderBy<TRes>
    implements CopyWith_Input_HistoryLatestVisitsOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryLatestVisitsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? recordId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? table,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
    Enum_OrderBy? visitId,
  }) => _res;

  CopyWith_Input_AuthUsersDataOrderBy<TRes> get user =>
      CopyWith_Input_AuthUsersDataOrderBy.stub(_res);
}

class Input_HistoryMeetingDaysAggregateBoolExp {
  factory Input_HistoryMeetingDaysAggregateBoolExp({
    Input_historyMeetingDaysAggregateBoolExpBool_and? bool_and,
    Input_historyMeetingDaysAggregateBoolExpBool_or? bool_or,
    Input_historyMeetingDaysAggregateBoolExpCount? count,
  }) => Input_HistoryMeetingDaysAggregateBoolExp._({
    if (bool_and != null) r'bool_and': bool_and,
    if (bool_or != null) r'bool_or': bool_or,
    if (count != null) r'count': count,
  });

  Input_HistoryMeetingDaysAggregateBoolExp._(this._$data);

  factory Input_HistoryMeetingDaysAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_historyMeetingDaysAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_historyMeetingDaysAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyMeetingDaysAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingDaysAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyMeetingDaysAggregateBoolExpBool_and? get bool_and =>
      (_$data['bool_and'] as Input_historyMeetingDaysAggregateBoolExpBool_and?);

  Input_historyMeetingDaysAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or'] as Input_historyMeetingDaysAggregateBoolExpBool_or?);

  Input_historyMeetingDaysAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyMeetingDaysAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('bool_and')) {
      final l$bool_and = bool_and;
      result$data['bool_and'] = l$bool_and?.toJson();
    }
    if (_$data.containsKey('bool_or')) {
      final l$bool_or = bool_or;
      result$data['bool_or'] = l$bool_or?.toJson();
    }
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryMeetingDaysAggregateBoolExp<
    Input_HistoryMeetingDaysAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysAggregateBoolExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bool_and = bool_and;
    final lOther$bool_and = other.bool_and;
    if (_$data.containsKey('bool_and') !=
        other._$data.containsKey('bool_and')) {
      return false;
    }
    if (l$bool_and != lOther$bool_and) {
      return false;
    }
    final l$bool_or = bool_or;
    final lOther$bool_or = other.bool_or;
    if (_$data.containsKey('bool_or') != other._$data.containsKey('bool_or')) {
      return false;
    }
    if (l$bool_or != lOther$bool_or) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$bool_and = bool_and;
    final l$bool_or = bool_or;
    final l$count = count;
    return Object.hashAll([
      _$data.containsKey('bool_and') ? l$bool_and : const {},
      _$data.containsKey('bool_or') ? l$bool_or : const {},
      _$data.containsKey('count') ? l$count : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryMeetingDaysAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysAggregateBoolExp(
    Input_HistoryMeetingDaysAggregateBoolExp instance,
    TRes Function(Input_HistoryMeetingDaysAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysAggregateBoolExp;

  factory CopyWith_Input_HistoryMeetingDaysAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysAggregateBoolExp;

  TRes call({
    Input_historyMeetingDaysAggregateBoolExpBool_and? bool_and,
    Input_historyMeetingDaysAggregateBoolExpBool_or? bool_or,
    Input_historyMeetingDaysAggregateBoolExpCount? count,
  });
  CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and<TRes> get bool_and;
  CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or<TRes> get bool_or;
  CopyWith_Input_historyMeetingDaysAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryMeetingDaysAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingDaysAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysAggregateBoolExp _instance;

  final TRes Function(Input_HistoryMeetingDaysAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bool_and = _undefined,
    Object? bool_or = _undefined,
    Object? count = _undefined,
  }) => _then(
    Input_HistoryMeetingDaysAggregateBoolExp._({
      ..._instance._$data,
      if (bool_and != _undefined)
        'bool_and':
            (bool_and as Input_historyMeetingDaysAggregateBoolExpBool_and?),
      if (bool_or != _undefined)
        'bool_or':
            (bool_or as Input_historyMeetingDaysAggregateBoolExpBool_or?),
      if (count != _undefined)
        'count': (count as Input_historyMeetingDaysAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and<TRes> get bool_and {
    final local$bool_and = _instance.bool_and;
    return local$bool_and == null
        ? CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and(
            local$bool_and,
            (e) => call(bool_and: e),
          );
  }

  CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or<TRes> get bool_or {
    final local$bool_or = _instance.bool_or;
    return local$bool_or == null
        ? CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or(
            local$bool_or,
            (e) => call(bool_or: e),
          );
  }

  CopyWith_Input_historyMeetingDaysAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyMeetingDaysAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyMeetingDaysAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryMeetingDaysAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysAggregateBoolExp(this._res);

  TRes _res;

  call({
    Input_historyMeetingDaysAggregateBoolExpBool_and? bool_and,
    Input_historyMeetingDaysAggregateBoolExpBool_or? bool_or,
    Input_historyMeetingDaysAggregateBoolExpCount? count,
  }) => _res;

  CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and<TRes>
  get bool_and =>
      CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and.stub(_res);

  CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or<TRes> get bool_or =>
      CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or.stub(_res);

  CopyWith_Input_historyMeetingDaysAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_historyMeetingDaysAggregateBoolExpCount.stub(_res);
}

class Input_HistoryMeetingDaysAggregateOrderBy {
  factory Input_HistoryMeetingDaysAggregateOrderBy({
    Input_HistoryMeetingDaysAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryMeetingDaysMaxOrderBy? max,
    Input_HistoryMeetingDaysMinOrderBy? min,
    Input_HistoryMeetingDaysStddevOrderBy? stddev,
    Input_HistoryMeetingDaysStddevPopOrderBy? stddevPop,
    Input_HistoryMeetingDaysStddevSampOrderBy? stddevSamp,
    Input_HistoryMeetingDaysSumOrderBy? sum,
    Input_HistoryMeetingDaysVarPopOrderBy? varPop,
    Input_HistoryMeetingDaysVarSampOrderBy? varSamp,
    Input_HistoryMeetingDaysVarianceOrderBy? variance,
  }) => Input_HistoryMeetingDaysAggregateOrderBy._({
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

  Input_HistoryMeetingDaysAggregateOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysAggregateOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_HistoryMeetingDaysAvgOrderBy.fromJson(
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
          : Input_HistoryMeetingDaysMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryMeetingDaysMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_HistoryMeetingDaysStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_HistoryMeetingDaysStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_HistoryMeetingDaysStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_HistoryMeetingDaysSumOrderBy.fromJson(
              (l$sum as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_HistoryMeetingDaysVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_HistoryMeetingDaysVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_HistoryMeetingDaysVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_HistoryMeetingDaysAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryMeetingDaysAvgOrderBy? get avg =>
      (_$data['avg'] as Input_HistoryMeetingDaysAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryMeetingDaysMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryMeetingDaysMaxOrderBy?);

  Input_HistoryMeetingDaysMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryMeetingDaysMinOrderBy?);

  Input_HistoryMeetingDaysStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_HistoryMeetingDaysStddevOrderBy?);

  Input_HistoryMeetingDaysStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_HistoryMeetingDaysStddevPopOrderBy?);

  Input_HistoryMeetingDaysStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_HistoryMeetingDaysStddevSampOrderBy?);

  Input_HistoryMeetingDaysSumOrderBy? get sum =>
      (_$data['sum'] as Input_HistoryMeetingDaysSumOrderBy?);

  Input_HistoryMeetingDaysVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_HistoryMeetingDaysVarPopOrderBy?);

  Input_HistoryMeetingDaysVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_HistoryMeetingDaysVarSampOrderBy?);

  Input_HistoryMeetingDaysVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_HistoryMeetingDaysVarianceOrderBy?);

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

  CopyWith_Input_HistoryMeetingDaysAggregateOrderBy<
    Input_HistoryMeetingDaysAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryMeetingDaysAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryMeetingDaysAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryMeetingDaysAggregateOrderBy(
    Input_HistoryMeetingDaysAggregateOrderBy instance,
    TRes Function(Input_HistoryMeetingDaysAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryMeetingDaysAggregateOrderBy;

  factory CopyWith_Input_HistoryMeetingDaysAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryMeetingDaysAggregateOrderBy;

  TRes call({
    Input_HistoryMeetingDaysAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryMeetingDaysMaxOrderBy? max,
    Input_HistoryMeetingDaysMinOrderBy? min,
    Input_HistoryMeetingDaysStddevOrderBy? stddev,
    Input_HistoryMeetingDaysStddevPopOrderBy? stddevPop,
    Input_HistoryMeetingDaysStddevSampOrderBy? stddevSamp,
    Input_HistoryMeetingDaysSumOrderBy? sum,
    Input_HistoryMeetingDaysVarPopOrderBy? varPop,
    Input_HistoryMeetingDaysVarSampOrderBy? varSamp,
    Input_HistoryMeetingDaysVarianceOrderBy? variance,
  });
  CopyWith_Input_HistoryMeetingDaysAvgOrderBy<TRes> get avg;
  CopyWith_Input_HistoryMeetingDaysMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryMeetingDaysMinOrderBy<TRes> get min;
  CopyWith_Input_HistoryMeetingDaysStddevOrderBy<TRes> get stddev;
  CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_HistoryMeetingDaysSumOrderBy<TRes> get sum;
  CopyWith_Input_HistoryMeetingDaysVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_HistoryMeetingDaysVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_HistoryMeetingDaysVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_HistoryMeetingDaysAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryMeetingDaysAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryMeetingDaysAggregateOrderBy _instance;

  final TRes Function(Input_HistoryMeetingDaysAggregateOrderBy) _then;

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
    Input_HistoryMeetingDaysAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined)
        'avg': (avg as Input_HistoryMeetingDaysAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryMeetingDaysMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryMeetingDaysMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_HistoryMeetingDaysStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_HistoryMeetingDaysStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp':
            (stddevSamp as Input_HistoryMeetingDaysStddevSampOrderBy?),
      if (sum != _undefined)
        'sum': (sum as Input_HistoryMeetingDaysSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_HistoryMeetingDaysVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_HistoryMeetingDaysVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_HistoryMeetingDaysVarianceOrderBy?),
    }),
  );

  CopyWith_Input_HistoryMeetingDaysAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_HistoryMeetingDaysAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysAvgOrderBy(
            local$avg,
            (e) => call(avg: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryMeetingDaysMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryMeetingDaysMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_HistoryMeetingDaysStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_HistoryMeetingDaysSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysSumOrderBy(
            local$sum,
            (e) => call(sum: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_HistoryMeetingDaysVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_HistoryMeetingDaysVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_HistoryMeetingDaysVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_HistoryMeetingDaysVarianceOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryMeetingDaysVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryMeetingDaysAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryMeetingDaysAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryMeetingDaysAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryMeetingDaysAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_HistoryMeetingDaysMaxOrderBy? max,
    Input_HistoryMeetingDaysMinOrderBy? min,
    Input_HistoryMeetingDaysStddevOrderBy? stddev,
    Input_HistoryMeetingDaysStddevPopOrderBy? stddevPop,
    Input_HistoryMeetingDaysStddevSampOrderBy? stddevSamp,
    Input_HistoryMeetingDaysSumOrderBy? sum,
    Input_HistoryMeetingDaysVarPopOrderBy? varPop,
    Input_HistoryMeetingDaysVarSampOrderBy? varSamp,
    Input_HistoryMeetingDaysVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_HistoryMeetingDaysAvgOrderBy<TRes> get avg =>
      CopyWith_Input_HistoryMeetingDaysAvgOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingDaysMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryMeetingDaysMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingDaysMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryMeetingDaysMinOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingDaysStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_HistoryMeetingDaysStddevOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_HistoryMeetingDaysStddevPopOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_HistoryMeetingDaysStddevSampOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingDaysSumOrderBy<TRes> get sum =>
      CopyWith_Input_HistoryMeetingDaysSumOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingDaysVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_HistoryMeetingDaysVarPopOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingDaysVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_HistoryMeetingDaysVarSampOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingDaysVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_HistoryMeetingDaysVarianceOrderBy.stub(_res);
}

class Input_HistoryMeetingDaysAvgOrderBy {
  factory Input_HistoryMeetingDaysAvgOrderBy({
    Enum_OrderBy? personsCount,
    Enum_OrderBy? servantsCount,
    Enum_OrderBy? studyYearId,
    Enum_OrderBy? totalCount,
  }) => Input_HistoryMeetingDaysAvgOrderBy._({
    if (personsCount != null) r'personsCount': personsCount,
    if (servantsCount != null) r'servantsCount': servantsCount,
    if (studyYearId != null) r'studyYearId': studyYearId,
    if (totalCount != null) r'totalCount': totalCount,
  });

  Input_HistoryMeetingDaysAvgOrderBy._(this._$data);

  factory Input_HistoryMeetingDaysAvgOrderBy.fromJson(
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
    return Input_HistoryMeetingDaysAvgOrderBy._(result$data);
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

  CopyWith_Input_HistoryMeetingDaysAvgOrderBy<
    Input_HistoryMeetingDaysAvgOrderBy
  >
  get copyWith => CopyWith_Input_HistoryMeetingDaysAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryMeetingDaysAvgOrderBy ||
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
