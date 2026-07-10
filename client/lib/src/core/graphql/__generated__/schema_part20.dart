// Part 20 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_GroupsAggregateBoolExp<TRes> {
  factory CopyWith_Input_GroupsAggregateBoolExp(
    Input_GroupsAggregateBoolExp instance,
    TRes Function(Input_GroupsAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_GroupsAggregateBoolExp;

  factory CopyWith_Input_GroupsAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsAggregateBoolExp;

  TRes call({Input_groupsAggregateBoolExpCount? count});
  CopyWith_Input_groupsAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_GroupsAggregateBoolExp<TRes>
    implements CopyWith_Input_GroupsAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_GroupsAggregateBoolExp(this._instance, this._then);

  final Input_GroupsAggregateBoolExp _instance;

  final TRes Function(Input_GroupsAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) => _then(
    Input_GroupsAggregateBoolExp._({
      ..._instance._$data,
      if (count != _undefined)
        'count': (count as Input_groupsAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_groupsAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_groupsAggregateBoolExpCount.stub(_then(_instance))
        : CopyWith_Input_groupsAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsAggregateBoolExp<TRes>
    implements CopyWith_Input_GroupsAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_GroupsAggregateBoolExp(this._res);

  TRes _res;

  call({Input_groupsAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_groupsAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_groupsAggregateBoolExpCount.stub(_res);
}

class Input_GroupsAggregateOrderBy {
  factory Input_GroupsAggregateOrderBy({
    Input_GroupsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_GroupsMaxOrderBy? max,
    Input_GroupsMinOrderBy? min,
    Input_GroupsStddevOrderBy? stddev,
    Input_GroupsStddevPopOrderBy? stddevPop,
    Input_GroupsStddevSampOrderBy? stddevSamp,
    Input_GroupsSumOrderBy? sum,
    Input_GroupsVarPopOrderBy? varPop,
    Input_GroupsVarSampOrderBy? varSamp,
    Input_GroupsVarianceOrderBy? variance,
  }) => Input_GroupsAggregateOrderBy._({
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

  Input_GroupsAggregateOrderBy._(this._$data);

  factory Input_GroupsAggregateOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_GroupsAvgOrderBy.fromJson((l$avg as Map<String, dynamic>));
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
          : Input_GroupsMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_GroupsMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_GroupsStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_GroupsStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_GroupsStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_GroupsSumOrderBy.fromJson((l$sum as Map<String, dynamic>));
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_GroupsVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_GroupsVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_GroupsVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_GroupsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupsAvgOrderBy? get avg => (_$data['avg'] as Input_GroupsAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_GroupsMaxOrderBy? get max => (_$data['max'] as Input_GroupsMaxOrderBy?);

  Input_GroupsMinOrderBy? get min => (_$data['min'] as Input_GroupsMinOrderBy?);

  Input_GroupsStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_GroupsStddevOrderBy?);

  Input_GroupsStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_GroupsStddevPopOrderBy?);

  Input_GroupsStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_GroupsStddevSampOrderBy?);

  Input_GroupsSumOrderBy? get sum => (_$data['sum'] as Input_GroupsSumOrderBy?);

  Input_GroupsVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_GroupsVarPopOrderBy?);

  Input_GroupsVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_GroupsVarSampOrderBy?);

  Input_GroupsVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_GroupsVarianceOrderBy?);

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

  CopyWith_Input_GroupsAggregateOrderBy<Input_GroupsAggregateOrderBy>
  get copyWith => CopyWith_Input_GroupsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsAggregateOrderBy ||
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

abstract class CopyWith_Input_GroupsAggregateOrderBy<TRes> {
  factory CopyWith_Input_GroupsAggregateOrderBy(
    Input_GroupsAggregateOrderBy instance,
    TRes Function(Input_GroupsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsAggregateOrderBy;

  factory CopyWith_Input_GroupsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsAggregateOrderBy;

  TRes call({
    Input_GroupsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_GroupsMaxOrderBy? max,
    Input_GroupsMinOrderBy? min,
    Input_GroupsStddevOrderBy? stddev,
    Input_GroupsStddevPopOrderBy? stddevPop,
    Input_GroupsStddevSampOrderBy? stddevSamp,
    Input_GroupsSumOrderBy? sum,
    Input_GroupsVarPopOrderBy? varPop,
    Input_GroupsVarSampOrderBy? varSamp,
    Input_GroupsVarianceOrderBy? variance,
  });
  CopyWith_Input_GroupsAvgOrderBy<TRes> get avg;
  CopyWith_Input_GroupsMaxOrderBy<TRes> get max;
  CopyWith_Input_GroupsMinOrderBy<TRes> get min;
  CopyWith_Input_GroupsStddevOrderBy<TRes> get stddev;
  CopyWith_Input_GroupsStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_GroupsStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_GroupsSumOrderBy<TRes> get sum;
  CopyWith_Input_GroupsVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_GroupsVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_GroupsVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_GroupsAggregateOrderBy<TRes>
    implements CopyWith_Input_GroupsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsAggregateOrderBy(this._instance, this._then);

  final Input_GroupsAggregateOrderBy _instance;

  final TRes Function(Input_GroupsAggregateOrderBy) _then;

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
    Input_GroupsAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined) 'avg': (avg as Input_GroupsAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_GroupsMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_GroupsMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_GroupsStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_GroupsStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp': (stddevSamp as Input_GroupsStddevSampOrderBy?),
      if (sum != _undefined) 'sum': (sum as Input_GroupsSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_GroupsVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_GroupsVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_GroupsVarianceOrderBy?),
    }),
  );

  CopyWith_Input_GroupsAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_GroupsAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsAvgOrderBy(local$avg, (e) => call(avg: e));
  }

  CopyWith_Input_GroupsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_GroupsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_GroupsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_GroupsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsMinOrderBy(local$min, (e) => call(min: e));
  }

  CopyWith_Input_GroupsStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_GroupsStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_GroupsStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_GroupsStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_GroupsStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_GroupsStddevSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_GroupsSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_GroupsSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsSumOrderBy(local$sum, (e) => call(sum: e));
  }

  CopyWith_Input_GroupsVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_GroupsVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_GroupsVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_GroupsVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_GroupsVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_GroupsVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsAggregateOrderBy<TRes>
    implements CopyWith_Input_GroupsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_GroupsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_GroupsMaxOrderBy? max,
    Input_GroupsMinOrderBy? min,
    Input_GroupsStddevOrderBy? stddev,
    Input_GroupsStddevPopOrderBy? stddevPop,
    Input_GroupsStddevSampOrderBy? stddevSamp,
    Input_GroupsSumOrderBy? sum,
    Input_GroupsVarPopOrderBy? varPop,
    Input_GroupsVarSampOrderBy? varSamp,
    Input_GroupsVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_GroupsAvgOrderBy<TRes> get avg =>
      CopyWith_Input_GroupsAvgOrderBy.stub(_res);

  CopyWith_Input_GroupsMaxOrderBy<TRes> get max =>
      CopyWith_Input_GroupsMaxOrderBy.stub(_res);

  CopyWith_Input_GroupsMinOrderBy<TRes> get min =>
      CopyWith_Input_GroupsMinOrderBy.stub(_res);

  CopyWith_Input_GroupsStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_GroupsStddevOrderBy.stub(_res);

  CopyWith_Input_GroupsStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_GroupsStddevPopOrderBy.stub(_res);

  CopyWith_Input_GroupsStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_GroupsStddevSampOrderBy.stub(_res);

  CopyWith_Input_GroupsSumOrderBy<TRes> get sum =>
      CopyWith_Input_GroupsSumOrderBy.stub(_res);

  CopyWith_Input_GroupsVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_GroupsVarPopOrderBy.stub(_res);

  CopyWith_Input_GroupsVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_GroupsVarSampOrderBy.stub(_res);

  CopyWith_Input_GroupsVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_GroupsVarianceOrderBy.stub(_res);
}

class Input_GroupsArrRelInsertInput {
  factory Input_GroupsArrRelInsertInput({
    required List<Input_GroupsInsertInput> data,
    Input_GroupsOnConflict? onConflict,
  }) => Input_GroupsArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_GroupsArrRelInsertInput._(this._$data);

  factory Input_GroupsArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_GroupsInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_GroupsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_GroupsArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_GroupsInsertInput> get data =>
      (_$data['data'] as List<Input_GroupsInsertInput>);

  Input_GroupsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_GroupsOnConflict?);

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

  CopyWith_Input_GroupsArrRelInsertInput<Input_GroupsArrRelInsertInput>
  get copyWith => CopyWith_Input_GroupsArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsArrRelInsertInput ||
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

abstract class CopyWith_Input_GroupsArrRelInsertInput<TRes> {
  factory CopyWith_Input_GroupsArrRelInsertInput(
    Input_GroupsArrRelInsertInput instance,
    TRes Function(Input_GroupsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_GroupsArrRelInsertInput;

  factory CopyWith_Input_GroupsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsArrRelInsertInput;

  TRes call({
    List<Input_GroupsInsertInput>? data,
    Input_GroupsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_GroupsInsertInput> Function(
      Iterable<CopyWith_Input_GroupsInsertInput<Input_GroupsInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_GroupsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_GroupsArrRelInsertInput<TRes>
    implements CopyWith_Input_GroupsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_GroupsArrRelInsertInput(this._instance, this._then);

  final Input_GroupsArrRelInsertInput _instance;

  final TRes Function(Input_GroupsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_GroupsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_GroupsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_GroupsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_GroupsInsertInput> Function(
      Iterable<CopyWith_Input_GroupsInsertInput<Input_GroupsInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map((e) => CopyWith_Input_GroupsInsertInput(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Input_GroupsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_GroupsOnConflict.stub(_then(_instance))
        : CopyWith_Input_GroupsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsArrRelInsertInput<TRes>
    implements CopyWith_Input_GroupsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_GroupsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_GroupsInsertInput>? data,
    Input_GroupsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_GroupsOnConflict<TRes> get onConflict =>
      CopyWith_Input_GroupsOnConflict.stub(_res);
}

class Input_GroupsAvgOrderBy {
  factory Input_GroupsAvgOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsAvgOrderBy._({if (color != null) r'color': color});

  Input_GroupsAvgOrderBy._(this._$data);

  factory Input_GroupsAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsAvgOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color == null
          ? null
          : toJson_Enum_OrderBy(l$color);
    }
    return result$data;
  }

  CopyWith_Input_GroupsAvgOrderBy<Input_GroupsAvgOrderBy> get copyWith =>
      CopyWith_Input_GroupsAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsAvgOrderBy || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsAvgOrderBy<TRes> {
  factory CopyWith_Input_GroupsAvgOrderBy(
    Input_GroupsAvgOrderBy instance,
    TRes Function(Input_GroupsAvgOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsAvgOrderBy;

  factory CopyWith_Input_GroupsAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsAvgOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsAvgOrderBy<TRes>
    implements CopyWith_Input_GroupsAvgOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsAvgOrderBy(this._instance, this._then);

  final Input_GroupsAvgOrderBy _instance;

  final TRes Function(Input_GroupsAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsAvgOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsAvgOrderBy<TRes>
    implements CopyWith_Input_GroupsAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsAvgOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsBoolExp {
  factory Input_GroupsBoolExp({
    List<Input_GroupsBoolExp>? $_and,
    Input_GroupsBoolExp? $_not,
    List<Input_GroupsBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryMeetingsBoolExp? defaultMeeting,
    Input_UuidComparisonExp? defaultMeetingId,
    Input_HistoryEditHistoryBoolExp? editHistroy,
    Input_HistoryEditHistoryAggregateBoolExp? editHistroyAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryMeetingsBoolExp? meetings,
    Input_StringComparisonExp? name,
    Input_PersonsGroupsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
    Input_BooleanComparisonExp? userCanEdit,
    Input_DaterangeComparisonExp? validity,
  }) => Input_GroupsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminUsers != null) r'adminUsers': adminUsers,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (defaultMeeting != null) r'defaultMeeting': defaultMeeting,
    if (defaultMeetingId != null) r'defaultMeetingId': defaultMeetingId,
    if (editHistroy != null) r'editHistroy': editHistroy,
    if (editHistroyAggregate != null)
      r'editHistroyAggregate': editHistroyAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (meetings != null) r'meetings': meetings,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
    if (validity != null) r'validity': validity,
  });

  Input_GroupsBoolExp._(this._$data);

  factory Input_GroupsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_GroupsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_GroupsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('adminUsers')) {
      final l$adminUsers = data['adminUsers'];
      result$data['adminUsers'] = l$adminUsers == null
          ? null
          : Input_AuthUsersAdminOnBoolExp.fromJson(
              (l$adminUsers as Map<String, dynamic>),
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
    if (data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = data['defaultMeeting'];
      result$data['defaultMeeting'] = l$defaultMeeting == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$defaultMeeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = data['defaultMeetingId'];
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$defaultMeetingId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistroy')) {
      final l$editHistroy = data['editHistroy'];
      result$data['editHistroy'] = l$editHistroy == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$editHistroy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistroyAggregate')) {
      final l$editHistroyAggregate = data['editHistroyAggregate'];
      result$data['editHistroyAggregate'] = l$editHistroyAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateBoolExp.fromJson(
              (l$editHistroyAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_HistoryLatestEditsBoolExp.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetings')) {
      final l$meetings = data['meetings'];
      result$data['meetings'] = l$meetings == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$meetings as Map<String, dynamic>),
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
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsGroupsBoolExp.fromJson(
              (l$persons as Map<String, dynamic>),
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
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesBoolExp.fromJson((l$service as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$serviceId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('validity')) {
      final l$validity = data['validity'];
      result$data['validity'] = l$validity == null
          ? null
          : Input_DaterangeComparisonExp.fromJson(
              (l$validity as Map<String, dynamic>),
            );
    }
    return Input_GroupsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_GroupsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_GroupsBoolExp>?);

  Input_GroupsBoolExp? get $_not => (_$data['_not'] as Input_GroupsBoolExp?);

  List<Input_GroupsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_GroupsBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryMeetingsBoolExp? get defaultMeeting =>
      (_$data['defaultMeeting'] as Input_HistoryMeetingsBoolExp?);

  Input_UuidComparisonExp? get defaultMeetingId =>
      (_$data['defaultMeetingId'] as Input_UuidComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistroy =>
      (_$data['editHistroy'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistroyAggregate =>
      (_$data['editHistroyAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_HistoryMeetingsBoolExp? get meetings =>
      (_$data['meetings'] as Input_HistoryMeetingsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsGroupsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsGroupsBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_UuidComparisonExp? get serviceId =>
      (_$data['serviceId'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get userCanEdit =>
      (_$data['userCanEdit'] as Input_BooleanComparisonExp?);

  Input_DaterangeComparisonExp? get validity =>
      (_$data['validity'] as Input_DaterangeComparisonExp?);

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
    if (_$data.containsKey('adminUsers')) {
      final l$adminUsers = adminUsers;
      result$data['adminUsers'] = l$adminUsers?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = defaultMeeting;
      result$data['defaultMeeting'] = l$defaultMeeting?.toJson();
    }
    if (_$data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = defaultMeetingId;
      result$data['defaultMeetingId'] = l$defaultMeetingId?.toJson();
    }
    if (_$data.containsKey('editHistroy')) {
      final l$editHistroy = editHistroy;
      result$data['editHistroy'] = l$editHistroy?.toJson();
    }
    if (_$data.containsKey('editHistroyAggregate')) {
      final l$editHistroyAggregate = editHistroyAggregate;
      result$data['editHistroyAggregate'] = l$editHistroyAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('meetings')) {
      final l$meetings = meetings;
      result$data['meetings'] = l$meetings?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    if (_$data.containsKey('validity')) {
      final l$validity = validity;
      result$data['validity'] = l$validity?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp> get copyWith =>
      CopyWith_Input_GroupsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsBoolExp || runtimeType != other.runtimeType) {
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
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (_$data.containsKey('adminUsers') !=
        other._$data.containsKey('adminUsers')) {
      return false;
    }
    if (l$adminUsers != lOther$adminUsers) {
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
    final l$defaultMeeting = defaultMeeting;
    final lOther$defaultMeeting = other.defaultMeeting;
    if (_$data.containsKey('defaultMeeting') !=
        other._$data.containsKey('defaultMeeting')) {
      return false;
    }
    if (l$defaultMeeting != lOther$defaultMeeting) {
      return false;
    }
    final l$defaultMeetingId = defaultMeetingId;
    final lOther$defaultMeetingId = other.defaultMeetingId;
    if (_$data.containsKey('defaultMeetingId') !=
        other._$data.containsKey('defaultMeetingId')) {
      return false;
    }
    if (l$defaultMeetingId != lOther$defaultMeetingId) {
      return false;
    }
    final l$editHistroy = editHistroy;
    final lOther$editHistroy = other.editHistroy;
    if (_$data.containsKey('editHistroy') !=
        other._$data.containsKey('editHistroy')) {
      return false;
    }
    if (l$editHistroy != lOther$editHistroy) {
      return false;
    }
    final l$editHistroyAggregate = editHistroyAggregate;
    final lOther$editHistroyAggregate = other.editHistroyAggregate;
    if (_$data.containsKey('editHistroyAggregate') !=
        other._$data.containsKey('editHistroyAggregate')) {
      return false;
    }
    if (l$editHistroyAggregate != lOther$editHistroyAggregate) {
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
    final l$lastEdit = lastEdit;
    final lOther$lastEdit = other.lastEdit;
    if (_$data.containsKey('lastEdit') !=
        other._$data.containsKey('lastEdit')) {
      return false;
    }
    if (l$lastEdit != lOther$lastEdit) {
      return false;
    }
    final l$meetings = meetings;
    final lOther$meetings = other.meetings;
    if (_$data.containsKey('meetings') !=
        other._$data.containsKey('meetings')) {
      return false;
    }
    if (l$meetings != lOther$meetings) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
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
    final l$service = service;
    final lOther$service = other.service;
    if (_$data.containsKey('service') != other._$data.containsKey('service')) {
      return false;
    }
    if (l$service != lOther$service) {
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
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (_$data.containsKey('userCanEdit') !=
        other._$data.containsKey('userCanEdit')) {
      return false;
    }
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$validity = validity;
    final lOther$validity = other.validity;
    if (_$data.containsKey('validity') !=
        other._$data.containsKey('validity')) {
      return false;
    }
    if (l$validity != lOther$validity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$adminUsers = adminUsers;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$defaultMeeting = defaultMeeting;
    final l$defaultMeetingId = defaultMeetingId;
    final l$editHistroy = editHistroy;
    final l$editHistroyAggregate = editHistroyAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$meetings = meetings;
    final l$name = name;
    final l$persons = persons;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$serviceId = serviceId;
    final l$userCanEdit = userCanEdit;
    final l$validity = validity;
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
      _$data.containsKey('adminUsers') ? l$adminUsers : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('defaultMeeting') ? l$defaultMeeting : const {},
      _$data.containsKey('defaultMeetingId') ? l$defaultMeetingId : const {},
      _$data.containsKey('editHistroy') ? l$editHistroy : const {},
      _$data.containsKey('editHistroyAggregate')
          ? l$editHistroyAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('meetings') ? l$meetings : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
      _$data.containsKey('validity') ? l$validity : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsBoolExp<TRes> {
  factory CopyWith_Input_GroupsBoolExp(
    Input_GroupsBoolExp instance,
    TRes Function(Input_GroupsBoolExp) then,
  ) = _CopyWithImpl_Input_GroupsBoolExp;

  factory CopyWith_Input_GroupsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsBoolExp;

  TRes call({
    List<Input_GroupsBoolExp>? $_and,
    Input_GroupsBoolExp? $_not,
    List<Input_GroupsBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryMeetingsBoolExp? defaultMeeting,
    Input_UuidComparisonExp? defaultMeetingId,
    Input_HistoryEditHistoryBoolExp? editHistroy,
    Input_HistoryEditHistoryAggregateBoolExp? editHistroyAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryMeetingsBoolExp? meetings,
    Input_StringComparisonExp? name,
    Input_PersonsGroupsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
    Input_BooleanComparisonExp? userCanEdit,
    Input_DaterangeComparisonExp? validity,
  });
  TRes $_and(
    Iterable<Input_GroupsBoolExp>? Function(
      Iterable<CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_GroupsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_GroupsBoolExp>? Function(
      Iterable<CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get defaultMeeting;
  CopyWith_Input_UuidComparisonExp<TRes> get defaultMeetingId;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistroy;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistroyAggregate;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meetings;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsGroupsBoolExp<TRes> get persons;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_ServicesBoolExp<TRes> get service;
  CopyWith_Input_UuidComparisonExp<TRes> get serviceId;
  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit;
  CopyWith_Input_DaterangeComparisonExp<TRes> get validity;
}

class _CopyWithImpl_Input_GroupsBoolExp<TRes>
    implements CopyWith_Input_GroupsBoolExp<TRes> {
  _CopyWithImpl_Input_GroupsBoolExp(this._instance, this._then);

  final Input_GroupsBoolExp _instance;

  final TRes Function(Input_GroupsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? adminUsers = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? defaultMeeting = _undefined,
    Object? defaultMeetingId = _undefined,
    Object? editHistroy = _undefined,
    Object? editHistroyAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? meetings = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
    Object? userCanEdit = _undefined,
    Object? validity = _undefined,
  }) => _then(
    Input_GroupsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_GroupsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_GroupsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_GroupsBoolExp>?),
      if (adminUsers != _undefined)
        'adminUsers': (adminUsers as Input_AuthUsersAdminOnBoolExp?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StringComparisonExp?),
      if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
      if (defaultMeeting != _undefined)
        'defaultMeeting': (defaultMeeting as Input_HistoryMeetingsBoolExp?),
      if (defaultMeetingId != _undefined)
        'defaultMeetingId': (defaultMeetingId as Input_UuidComparisonExp?),
      if (editHistroy != _undefined)
        'editHistroy': (editHistroy as Input_HistoryEditHistoryBoolExp?),
      if (editHistroyAggregate != _undefined)
        'editHistroyAggregate':
            (editHistroyAggregate as Input_HistoryEditHistoryAggregateBoolExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
      if (meetings != _undefined)
        'meetings': (meetings as Input_HistoryMeetingsBoolExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsGroupsBoolExp?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
      if (service != _undefined) 'service': (service as Input_ServicesBoolExp?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_UuidComparisonExp?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_BooleanComparisonExp?),
      if (validity != _undefined)
        'validity': (validity as Input_DaterangeComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_GroupsBoolExp>? Function(
      Iterable<CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_GroupsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_GroupsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_GroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_GroupsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_GroupsBoolExp>? Function(
      Iterable<CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_GroupsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers {
    final local$adminUsers = _instance.adminUsers;
    return local$adminUsers == null
        ? CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersAdminOnBoolExp(
            local$adminUsers,
            (e) => call(adminUsers: e),
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

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get defaultMeeting {
    final local$defaultMeeting = _instance.defaultMeeting;
    return local$defaultMeeting == null
        ? CopyWith_Input_HistoryMeetingsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsBoolExp(
            local$defaultMeeting,
            (e) => call(defaultMeeting: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get defaultMeetingId {
    final local$defaultMeetingId = _instance.defaultMeetingId;
    return local$defaultMeetingId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$defaultMeetingId,
            (e) => call(defaultMeetingId: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistroy {
    final local$editHistroy = _instance.editHistroy;
    return local$editHistroy == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$editHistroy,
            (e) => call(editHistroy: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistroyAggregate {
    final local$editHistroyAggregate = _instance.editHistroyAggregate;
    return local$editHistroyAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryEditHistoryAggregateBoolExp(
            local$editHistroyAggregate,
            (e) => call(editHistroyAggregate: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_HistoryLatestEditsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryLatestEditsBoolExp(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Input_HistoryMeetingsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsBoolExp(
            local$meetings,
            (e) => call(meetings: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsGroupsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsBoolExp(
            local$persons,
            (e) => call(persons: e),
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

  CopyWith_Input_ServicesBoolExp<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServicesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ServicesBoolExp(
            local$service,
            (e) => call(service: e),
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

  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }

  CopyWith_Input_DaterangeComparisonExp<TRes> get validity {
    final local$validity = _instance.validity;
    return local$validity == null
        ? CopyWith_Input_DaterangeComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DaterangeComparisonExp(
            local$validity,
            (e) => call(validity: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsBoolExp<TRes>
    implements CopyWith_Input_GroupsBoolExp<TRes> {
  _CopyWithStubImpl_Input_GroupsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_GroupsBoolExp>? $_and,
    Input_GroupsBoolExp? $_not,
    List<Input_GroupsBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryMeetingsBoolExp? defaultMeeting,
    Input_UuidComparisonExp? defaultMeetingId,
    Input_HistoryEditHistoryBoolExp? editHistroy,
    Input_HistoryEditHistoryAggregateBoolExp? editHistroyAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryMeetingsBoolExp? meetings,
    Input_StringComparisonExp? name,
    Input_PersonsGroupsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
    Input_BooleanComparisonExp? userCanEdit,
    Input_DaterangeComparisonExp? validity,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_GroupsBoolExp<TRes> get $_not =>
      CopyWith_Input_GroupsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers =>
      CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get defaultMeeting =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get defaultMeetingId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistroy =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistroyAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meetings =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsGroupsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsGroupsBoolExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get service =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get userCanEdit =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_DaterangeComparisonExp<TRes> get validity =>
      CopyWith_Input_DaterangeComparisonExp.stub(_res);
}

class Input_GroupsIncInput {
  factory Input_GroupsIncInput({int? color}) =>
      Input_GroupsIncInput._({if (color != null) r'color': color});

  Input_GroupsIncInput._(this._$data);

  factory Input_GroupsIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_GroupsIncInput._(result$data);
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

  CopyWith_Input_GroupsIncInput<Input_GroupsIncInput> get copyWith =>
      CopyWith_Input_GroupsIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsIncInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsIncInput<TRes> {
  factory CopyWith_Input_GroupsIncInput(
    Input_GroupsIncInput instance,
    TRes Function(Input_GroupsIncInput) then,
  ) = _CopyWithImpl_Input_GroupsIncInput;

  factory CopyWith_Input_GroupsIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_GroupsIncInput<TRes>
    implements CopyWith_Input_GroupsIncInput<TRes> {
  _CopyWithImpl_Input_GroupsIncInput(this._instance, this._then);

  final Input_GroupsIncInput _instance;

  final TRes Function(Input_GroupsIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsIncInput._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsIncInput<TRes>
    implements CopyWith_Input_GroupsIncInput<TRes> {
  _CopyWithStubImpl_Input_GroupsIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_GroupsInsertInput {
  factory Input_GroupsInsertInput({
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    int? color,
    Input_HistoryMeetingsObjRelInsertInput? defaultMeeting,
    UuidValue? defaultMeetingId,
    Input_HistoryMeetingsArrRelInsertInput? meetings,
    String? name,
    Input_PersonsGroupsArrRelInsertInput? persons,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => Input_GroupsInsertInput._({
    if (adminUsers != null) r'adminUsers': adminUsers,
    if (color != null) r'color': color,
    if (defaultMeeting != null) r'defaultMeeting': defaultMeeting,
    if (defaultMeetingId != null) r'defaultMeetingId': defaultMeetingId,
    if (meetings != null) r'meetings': meetings,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
    if (validity != null) r'validity': validity,
  });

  Input_GroupsInsertInput._(this._$data);

  factory Input_GroupsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('adminUsers')) {
      final l$adminUsers = data['adminUsers'];
      result$data['adminUsers'] = l$adminUsers == null
          ? null
          : Input_AuthUsersAdminOnArrRelInsertInput.fromJson(
              (l$adminUsers as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = data['defaultMeeting'];
      result$data['defaultMeeting'] = l$defaultMeeting == null
          ? null
          : Input_HistoryMeetingsObjRelInsertInput.fromJson(
              (l$defaultMeeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = data['defaultMeetingId'];
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : stringToUuid(l$defaultMeetingId);
    }
    if (data.containsKey('meetings')) {
      final l$meetings = data['meetings'];
      result$data['meetings'] = l$meetings == null
          ? null
          : Input_HistoryMeetingsArrRelInsertInput.fromJson(
              (l$meetings as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsGroupsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServicesObjRelInsertInput.fromJson(
              (l$service as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : stringToUuid(l$serviceId);
    }
    if (data.containsKey('validity')) {
      final l$validity = data['validity'];
      result$data['validity'] = l$validity == null
          ? null
          : dateRangeFromString(l$validity);
    }
    return Input_GroupsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AuthUsersAdminOnArrRelInsertInput? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnArrRelInsertInput?);

  int? get color => (_$data['color'] as int?);

  Input_HistoryMeetingsObjRelInsertInput? get defaultMeeting =>
      (_$data['defaultMeeting'] as Input_HistoryMeetingsObjRelInsertInput?);

  UuidValue? get defaultMeetingId => (_$data['defaultMeetingId'] as UuidValue?);

  Input_HistoryMeetingsArrRelInsertInput? get meetings =>
      (_$data['meetings'] as Input_HistoryMeetingsArrRelInsertInput?);

  String? get name => (_$data['name'] as String?);

  Input_PersonsGroupsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsGroupsArrRelInsertInput?);

  Input_ServicesObjRelInsertInput? get service =>
      (_$data['service'] as Input_ServicesObjRelInsertInput?);

  UuidValue? get serviceId => (_$data['serviceId'] as UuidValue?);

  DateTimeRange? get validity => (_$data['validity'] as DateTimeRange?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('adminUsers')) {
      final l$adminUsers = adminUsers;
      result$data['adminUsers'] = l$adminUsers?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = defaultMeeting;
      result$data['defaultMeeting'] = l$defaultMeeting?.toJson();
    }
    if (_$data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = defaultMeetingId;
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : uuidToString(l$defaultMeetingId);
    }
    if (_$data.containsKey('meetings')) {
      final l$meetings = meetings;
      result$data['meetings'] = l$meetings?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : uuidToString(l$serviceId);
    }
    if (_$data.containsKey('validity')) {
      final l$validity = validity;
      result$data['validity'] = l$validity == null
          ? null
          : dateRangeToString(l$validity);
    }
    return result$data;
  }

  CopyWith_Input_GroupsInsertInput<Input_GroupsInsertInput> get copyWith =>
      CopyWith_Input_GroupsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsInsertInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adminUsers = adminUsers;
    final lOther$adminUsers = other.adminUsers;
    if (_$data.containsKey('adminUsers') !=
        other._$data.containsKey('adminUsers')) {
      return false;
    }
    if (l$adminUsers != lOther$adminUsers) {
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
    final l$defaultMeeting = defaultMeeting;
    final lOther$defaultMeeting = other.defaultMeeting;
    if (_$data.containsKey('defaultMeeting') !=
        other._$data.containsKey('defaultMeeting')) {
      return false;
    }
    if (l$defaultMeeting != lOther$defaultMeeting) {
      return false;
    }
    final l$defaultMeetingId = defaultMeetingId;
    final lOther$defaultMeetingId = other.defaultMeetingId;
    if (_$data.containsKey('defaultMeetingId') !=
        other._$data.containsKey('defaultMeetingId')) {
      return false;
    }
    if (l$defaultMeetingId != lOther$defaultMeetingId) {
      return false;
    }
    final l$meetings = meetings;
    final lOther$meetings = other.meetings;
    if (_$data.containsKey('meetings') !=
        other._$data.containsKey('meetings')) {
      return false;
    }
    if (l$meetings != lOther$meetings) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$validity = validity;
    final lOther$validity = other.validity;
    if (_$data.containsKey('validity') !=
        other._$data.containsKey('validity')) {
      return false;
    }
    if (l$validity != lOther$validity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$adminUsers = adminUsers;
    final l$color = color;
    final l$defaultMeeting = defaultMeeting;
    final l$defaultMeetingId = defaultMeetingId;
    final l$meetings = meetings;
    final l$name = name;
    final l$persons = persons;
    final l$service = service;
    final l$serviceId = serviceId;
    final l$validity = validity;
    return Object.hashAll([
      _$data.containsKey('adminUsers') ? l$adminUsers : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('defaultMeeting') ? l$defaultMeeting : const {},
      _$data.containsKey('defaultMeetingId') ? l$defaultMeetingId : const {},
      _$data.containsKey('meetings') ? l$meetings : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('validity') ? l$validity : const {},
    ]);
  }
}

abstract class CopyWith_Input_GroupsInsertInput<TRes> {
  factory CopyWith_Input_GroupsInsertInput(
    Input_GroupsInsertInput instance,
    TRes Function(Input_GroupsInsertInput) then,
  ) = _CopyWithImpl_Input_GroupsInsertInput;

  factory CopyWith_Input_GroupsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsInsertInput;

  TRes call({
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    int? color,
    Input_HistoryMeetingsObjRelInsertInput? defaultMeeting,
    UuidValue? defaultMeetingId,
    Input_HistoryMeetingsArrRelInsertInput? meetings,
    String? name,
    Input_PersonsGroupsArrRelInsertInput? persons,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
    DateTimeRange? validity,
  });
  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers;
  CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> get defaultMeeting;
  CopyWith_Input_HistoryMeetingsArrRelInsertInput<TRes> get meetings;
  CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> get persons;
  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service;
}

class _CopyWithImpl_Input_GroupsInsertInput<TRes>
    implements CopyWith_Input_GroupsInsertInput<TRes> {
  _CopyWithImpl_Input_GroupsInsertInput(this._instance, this._then);

  final Input_GroupsInsertInput _instance;

  final TRes Function(Input_GroupsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adminUsers = _undefined,
    Object? color = _undefined,
    Object? defaultMeeting = _undefined,
    Object? defaultMeetingId = _undefined,
    Object? meetings = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? service = _undefined,
    Object? serviceId = _undefined,
    Object? validity = _undefined,
  }) => _then(
    Input_GroupsInsertInput._({
      ..._instance._$data,
      if (adminUsers != _undefined)
        'adminUsers': (adminUsers as Input_AuthUsersAdminOnArrRelInsertInput?),
      if (color != _undefined) 'color': (color as int?),
      if (defaultMeeting != _undefined)
        'defaultMeeting':
            (defaultMeeting as Input_HistoryMeetingsObjRelInsertInput?),
      if (defaultMeetingId != _undefined)
        'defaultMeetingId': (defaultMeetingId as UuidValue?),
      if (meetings != _undefined)
        'meetings': (meetings as Input_HistoryMeetingsArrRelInsertInput?),
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsGroupsArrRelInsertInput?),
      if (service != _undefined)
        'service': (service as Input_ServicesObjRelInsertInput?),
      if (serviceId != _undefined) 'serviceId': (serviceId as UuidValue?),
      if (validity != _undefined) 'validity': (validity as DateTimeRange?),
    }),
  );

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers {
    final local$adminUsers = _instance.adminUsers;
    return local$adminUsers == null
        ? CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_AuthUsersAdminOnArrRelInsertInput(
            local$adminUsers,
            (e) => call(adminUsers: e),
          );
  }

  CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> get defaultMeeting {
    final local$defaultMeeting = _instance.defaultMeeting;
    return local$defaultMeeting == null
        ? CopyWith_Input_HistoryMeetingsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsObjRelInsertInput(
            local$defaultMeeting,
            (e) => call(defaultMeeting: e),
          );
  }

  CopyWith_Input_HistoryMeetingsArrRelInsertInput<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Input_HistoryMeetingsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsArrRelInsertInput(
            local$meetings,
            (e) => call(meetings: e),
          );
  }

  CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsGroupsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsGroupsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
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
}

class _CopyWithStubImpl_Input_GroupsInsertInput<TRes>
    implements CopyWith_Input_GroupsInsertInput<TRes> {
  _CopyWithStubImpl_Input_GroupsInsertInput(this._res);

  TRes _res;

  call({
    Input_AuthUsersAdminOnArrRelInsertInput? adminUsers,
    int? color,
    Input_HistoryMeetingsObjRelInsertInput? defaultMeeting,
    UuidValue? defaultMeetingId,
    Input_HistoryMeetingsArrRelInsertInput? meetings,
    String? name,
    Input_PersonsGroupsArrRelInsertInput? persons,
    Input_ServicesObjRelInsertInput? service,
    UuidValue? serviceId,
    DateTimeRange? validity,
  }) => _res;

  CopyWith_Input_AuthUsersAdminOnArrRelInsertInput<TRes> get adminUsers =>
      CopyWith_Input_AuthUsersAdminOnArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> get defaultMeeting =>
      CopyWith_Input_HistoryMeetingsObjRelInsertInput.stub(_res);

  CopyWith_Input_HistoryMeetingsArrRelInsertInput<TRes> get meetings =>
      CopyWith_Input_HistoryMeetingsArrRelInsertInput.stub(_res);

  CopyWith_Input_PersonsGroupsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsGroupsArrRelInsertInput.stub(_res);

  CopyWith_Input_ServicesObjRelInsertInput<TRes> get service =>
      CopyWith_Input_ServicesObjRelInsertInput.stub(_res);
}

class Input_GroupsMaxOrderBy {
  factory Input_GroupsMaxOrderBy({
    Enum_OrderBy? blurhash,
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? photoUpdatedAt,
    Enum_OrderBy? serviceId,
  }) => Input_GroupsMaxOrderBy._({
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (serviceId != null) r'serviceId': serviceId,
  });

  Input_GroupsMaxOrderBy._(this._$data);

  factory Input_GroupsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$photoUpdatedAt as String));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : fromJson_Enum_OrderBy((l$serviceId as String));
    }
    return Input_GroupsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get blurhash => (_$data['blurhash'] as Enum_OrderBy?);

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Enum_OrderBy?);

  Enum_OrderBy? get serviceId => (_$data['serviceId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$photoUpdatedAt);
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId == null
          ? null
          : toJson_Enum_OrderBy(l$serviceId);
    }
    return result$data;
  }

  CopyWith_Input_GroupsMaxOrderBy<Input_GroupsMaxOrderBy> get copyWith =>
      CopyWith_Input_GroupsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsMaxOrderBy || runtimeType != other.runtimeType) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$blurhash = blurhash;
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}
