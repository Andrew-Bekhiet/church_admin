// Part 1 of the schema
part of "schema.graphql.dart";

class Input_AddressesAggregateOrderBy {
  factory Input_AddressesAggregateOrderBy({
    Input_AddressesAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_AddressesMaxOrderBy? max,
    Input_AddressesMinOrderBy? min,
    Input_AddressesStddevOrderBy? stddev,
    Input_AddressesStddevPopOrderBy? stddevPop,
    Input_AddressesStddevSampOrderBy? stddevSamp,
    Input_AddressesSumOrderBy? sum,
    Input_AddressesVarPopOrderBy? varPop,
    Input_AddressesVarSampOrderBy? varSamp,
    Input_AddressesVarianceOrderBy? variance,
  }) => Input_AddressesAggregateOrderBy._({
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

  Input_AddressesAggregateOrderBy._(this._$data);

  factory Input_AddressesAggregateOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_AddressesAvgOrderBy.fromJson((l$avg as Map<String, dynamic>));
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
          : Input_AddressesMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_AddressesMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_AddressesStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_AddressesStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_AddressesStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_AddressesSumOrderBy.fromJson((l$sum as Map<String, dynamic>));
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_AddressesVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_AddressesVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_AddressesVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_AddressesAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_AddressesAvgOrderBy? get avg =>
      (_$data['avg'] as Input_AddressesAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_AddressesMaxOrderBy? get max =>
      (_$data['max'] as Input_AddressesMaxOrderBy?);

  Input_AddressesMinOrderBy? get min =>
      (_$data['min'] as Input_AddressesMinOrderBy?);

  Input_AddressesStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_AddressesStddevOrderBy?);

  Input_AddressesStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_AddressesStddevPopOrderBy?);

  Input_AddressesStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_AddressesStddevSampOrderBy?);

  Input_AddressesSumOrderBy? get sum =>
      (_$data['sum'] as Input_AddressesSumOrderBy?);

  Input_AddressesVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_AddressesVarPopOrderBy?);

  Input_AddressesVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_AddressesVarSampOrderBy?);

  Input_AddressesVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_AddressesVarianceOrderBy?);

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

  CopyWith_Input_AddressesAggregateOrderBy<Input_AddressesAggregateOrderBy>
  get copyWith => CopyWith_Input_AddressesAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesAggregateOrderBy ||
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

abstract class CopyWith_Input_AddressesAggregateOrderBy<TRes> {
  factory CopyWith_Input_AddressesAggregateOrderBy(
    Input_AddressesAggregateOrderBy instance,
    TRes Function(Input_AddressesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesAggregateOrderBy;

  factory CopyWith_Input_AddressesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesAggregateOrderBy;

  TRes call({
    Input_AddressesAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_AddressesMaxOrderBy? max,
    Input_AddressesMinOrderBy? min,
    Input_AddressesStddevOrderBy? stddev,
    Input_AddressesStddevPopOrderBy? stddevPop,
    Input_AddressesStddevSampOrderBy? stddevSamp,
    Input_AddressesSumOrderBy? sum,
    Input_AddressesVarPopOrderBy? varPop,
    Input_AddressesVarSampOrderBy? varSamp,
    Input_AddressesVarianceOrderBy? variance,
  });
  CopyWith_Input_AddressesAvgOrderBy<TRes> get avg;
  CopyWith_Input_AddressesMaxOrderBy<TRes> get max;
  CopyWith_Input_AddressesMinOrderBy<TRes> get min;
  CopyWith_Input_AddressesStddevOrderBy<TRes> get stddev;
  CopyWith_Input_AddressesStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_AddressesStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_AddressesSumOrderBy<TRes> get sum;
  CopyWith_Input_AddressesVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_AddressesVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_AddressesVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_AddressesAggregateOrderBy<TRes>
    implements CopyWith_Input_AddressesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesAggregateOrderBy(this._instance, this._then);

  final Input_AddressesAggregateOrderBy _instance;

  final TRes Function(Input_AddressesAggregateOrderBy) _then;

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
    Input_AddressesAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined) 'avg': (avg as Input_AddressesAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_AddressesMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_AddressesMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_AddressesStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_AddressesStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp': (stddevSamp as Input_AddressesStddevSampOrderBy?),
      if (sum != _undefined) 'sum': (sum as Input_AddressesSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_AddressesVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_AddressesVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_AddressesVarianceOrderBy?),
    }),
  );

  CopyWith_Input_AddressesAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_AddressesAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesAvgOrderBy(local$avg, (e) => call(avg: e));
  }

  CopyWith_Input_AddressesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_AddressesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_AddressesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_AddressesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesMinOrderBy(local$min, (e) => call(min: e));
  }

  CopyWith_Input_AddressesStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_AddressesStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_AddressesStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_AddressesStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_AddressesStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_AddressesStddevSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_AddressesSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_AddressesSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesSumOrderBy(local$sum, (e) => call(sum: e));
  }

  CopyWith_Input_AddressesVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_AddressesVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_AddressesVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_AddressesVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_AddressesVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_AddressesVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_AddressesVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_AddressesAggregateOrderBy<TRes>
    implements CopyWith_Input_AddressesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_AddressesAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_AddressesMaxOrderBy? max,
    Input_AddressesMinOrderBy? min,
    Input_AddressesStddevOrderBy? stddev,
    Input_AddressesStddevPopOrderBy? stddevPop,
    Input_AddressesStddevSampOrderBy? stddevSamp,
    Input_AddressesSumOrderBy? sum,
    Input_AddressesVarPopOrderBy? varPop,
    Input_AddressesVarSampOrderBy? varSamp,
    Input_AddressesVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_AddressesAvgOrderBy<TRes> get avg =>
      CopyWith_Input_AddressesAvgOrderBy.stub(_res);

  CopyWith_Input_AddressesMaxOrderBy<TRes> get max =>
      CopyWith_Input_AddressesMaxOrderBy.stub(_res);

  CopyWith_Input_AddressesMinOrderBy<TRes> get min =>
      CopyWith_Input_AddressesMinOrderBy.stub(_res);

  CopyWith_Input_AddressesStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_AddressesStddevOrderBy.stub(_res);

  CopyWith_Input_AddressesStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_AddressesStddevPopOrderBy.stub(_res);

  CopyWith_Input_AddressesStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_AddressesStddevSampOrderBy.stub(_res);

  CopyWith_Input_AddressesSumOrderBy<TRes> get sum =>
      CopyWith_Input_AddressesSumOrderBy.stub(_res);

  CopyWith_Input_AddressesVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_AddressesVarPopOrderBy.stub(_res);

  CopyWith_Input_AddressesVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_AddressesVarSampOrderBy.stub(_res);

  CopyWith_Input_AddressesVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_AddressesVarianceOrderBy.stub(_res);
}

class Input_AddressesArrRelInsertInput {
  factory Input_AddressesArrRelInsertInput({
    required List<Input_AddressesInsertInput> data,
    Input_AddressesOnConflict? onConflict,
  }) => Input_AddressesArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_AddressesArrRelInsertInput._(this._$data);

  factory Input_AddressesArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) =>
              Input_AddressesInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_AddressesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_AddressesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AddressesInsertInput> get data =>
      (_$data['data'] as List<Input_AddressesInsertInput>);

  Input_AddressesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_AddressesOnConflict?);

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

  CopyWith_Input_AddressesArrRelInsertInput<Input_AddressesArrRelInsertInput>
  get copyWith => CopyWith_Input_AddressesArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesArrRelInsertInput ||
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

abstract class CopyWith_Input_AddressesArrRelInsertInput<TRes> {
  factory CopyWith_Input_AddressesArrRelInsertInput(
    Input_AddressesArrRelInsertInput instance,
    TRes Function(Input_AddressesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_AddressesArrRelInsertInput;

  factory CopyWith_Input_AddressesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesArrRelInsertInput;

  TRes call({
    List<Input_AddressesInsertInput>? data,
    Input_AddressesOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_AddressesInsertInput> Function(
      Iterable<CopyWith_Input_AddressesInsertInput<Input_AddressesInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_AddressesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_AddressesArrRelInsertInput<TRes>
    implements CopyWith_Input_AddressesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_AddressesArrRelInsertInput(this._instance, this._then);

  final Input_AddressesArrRelInsertInput _instance;

  final TRes Function(Input_AddressesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_AddressesArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_AddressesInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_AddressesOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_AddressesInsertInput> Function(
      Iterable<CopyWith_Input_AddressesInsertInput<Input_AddressesInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_AddressesInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_AddressesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_AddressesOnConflict.stub(_then(_instance))
        : CopyWith_Input_AddressesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_AddressesArrRelInsertInput<TRes>
    implements CopyWith_Input_AddressesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_AddressesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_AddressesInsertInput>? data,
    Input_AddressesOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_AddressesOnConflict<TRes> get onConflict =>
      CopyWith_Input_AddressesOnConflict.stub(_res);
}

class Input_AddressesAvgOrderBy {
  factory Input_AddressesAvgOrderBy({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => Input_AddressesAvgOrderBy._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
  });

  Input_AddressesAvgOrderBy._(this._$data);

  factory Input_AddressesAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$apartmentNumber as String));
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$houseNumber as String));
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : fromJson_Enum_OrderBy((l$storeyNumber as String));
    }
    return Input_AddressesAvgOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get apartmentNumber =>
      (_$data['apartmentNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get houseNumber => (_$data['houseNumber'] as Enum_OrderBy?);

  Enum_OrderBy? get storeyNumber => (_$data['storeyNumber'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : toJson_Enum_OrderBy(l$apartmentNumber);
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : toJson_Enum_OrderBy(l$houseNumber);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : toJson_Enum_OrderBy(l$storeyNumber);
    }
    return result$data;
  }

  CopyWith_Input_AddressesAvgOrderBy<Input_AddressesAvgOrderBy> get copyWith =>
      CopyWith_Input_AddressesAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesAvgOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$houseNumber = houseNumber;
    final l$storeyNumber = storeyNumber;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesAvgOrderBy<TRes> {
  factory CopyWith_Input_AddressesAvgOrderBy(
    Input_AddressesAvgOrderBy instance,
    TRes Function(Input_AddressesAvgOrderBy) then,
  ) = _CopyWithImpl_Input_AddressesAvgOrderBy;

  factory CopyWith_Input_AddressesAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesAvgOrderBy;

  TRes call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  });
}

class _CopyWithImpl_Input_AddressesAvgOrderBy<TRes>
    implements CopyWith_Input_AddressesAvgOrderBy<TRes> {
  _CopyWithImpl_Input_AddressesAvgOrderBy(this._instance, this._then);

  final Input_AddressesAvgOrderBy _instance;

  final TRes Function(Input_AddressesAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
  }) => _then(
    Input_AddressesAvgOrderBy._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Enum_OrderBy?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Enum_OrderBy?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesAvgOrderBy<TRes>
    implements CopyWith_Input_AddressesAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_AddressesAvgOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? apartmentNumber,
    Enum_OrderBy? houseNumber,
    Enum_OrderBy? storeyNumber,
  }) => _res;
}

class Input_AddressesBoolExp {
  factory Input_AddressesBoolExp({
    List<Input_AddressesBoolExp>? $_and,
    Input_AddressesBoolExp? $_not,
    List<Input_AddressesBoolExp>? $_or,
    Input_SmallintComparisonExp? apartmentNumber,
    Input_AreasBoolExp? area,
    Input_UuidComparisonExp? areaId,
    Input_StringComparisonExp? countryIsoCode,
    Input_DistrictsBoolExp? district,
    Input_UuidComparisonExp? districtId,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_GeographyComparisonExp? geolocation,
    Input_SmallintComparisonExp? houseNumber,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? specialLandmark,
    Input_StoresBoolExp? store,
    Input_UuidComparisonExp? storeId,
    Input_SmallintComparisonExp? storeyNumber,
    Input_StreetsBoolExp? street,
    Input_UuidComparisonExp? streetId,
    Input_StringComparisonExp? substreetName,
  }) => Input_AddressesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (area != null) r'area': area,
    if (areaId != null) r'areaId': areaId,
    if (countryIsoCode != null) r'countryIsoCode': countryIsoCode,
    if (district != null) r'district': district,
    if (districtId != null) r'districtId': districtId,
    if (family != null) r'family': family,
    if (familyId != null) r'familyId': familyId,
    if (geolocation != null) r'geolocation': geolocation,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (id != null) r'id': id,
    if (specialLandmark != null) r'specialLandmark': specialLandmark,
    if (store != null) r'store': store,
    if (storeId != null) r'storeId': storeId,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
    if (street != null) r'street': street,
    if (streetId != null) r'streetId': streetId,
    if (substreetName != null) r'substreetName': substreetName,
  });

  Input_AddressesBoolExp._(this._$data);

  factory Input_AddressesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_AddressesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_AddressesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_AddressesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = l$apartmentNumber == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$apartmentNumber as Map<String, dynamic>),
            );
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasBoolExp.fromJson((l$area as Map<String, dynamic>));
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$areaId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = data['countryIsoCode'];
      result$data['countryIsoCode'] = l$countryIsoCode == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$countryIsoCode as Map<String, dynamic>),
            );
    }
    if (data.containsKey('district')) {
      final l$district = data['district'];
      result$data['district'] = l$district == null
          ? null
          : Input_DistrictsBoolExp.fromJson(
              (l$district as Map<String, dynamic>),
            );
    }
    if (data.containsKey('districtId')) {
      final l$districtId = data['districtId'];
      result$data['districtId'] = l$districtId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$districtId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesBoolExp.fromJson((l$family as Map<String, dynamic>));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = l$geolocation == null
          ? null
          : Input_GeographyComparisonExp.fromJson(
              (l$geolocation as Map<String, dynamic>),
            );
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = l$houseNumber == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$houseNumber as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('specialLandmark')) {
      final l$specialLandmark = data['specialLandmark'];
      result$data['specialLandmark'] = l$specialLandmark == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$specialLandmark as Map<String, dynamic>),
            );
    }
    if (data.containsKey('store')) {
      final l$store = data['store'];
      result$data['store'] = l$store == null
          ? null
          : Input_StoresBoolExp.fromJson((l$store as Map<String, dynamic>));
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$storeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = l$storeyNumber == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$storeyNumber as Map<String, dynamic>),
            );
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = l$street == null
          ? null
          : Input_StreetsBoolExp.fromJson((l$street as Map<String, dynamic>));
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$streetId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('substreetName')) {
      final l$substreetName = data['substreetName'];
      result$data['substreetName'] = l$substreetName == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$substreetName as Map<String, dynamic>),
            );
    }
    return Input_AddressesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AddressesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_AddressesBoolExp>?);

  Input_AddressesBoolExp? get $_not =>
      (_$data['_not'] as Input_AddressesBoolExp?);

  List<Input_AddressesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_AddressesBoolExp>?);

  Input_SmallintComparisonExp? get apartmentNumber =>
      (_$data['apartmentNumber'] as Input_SmallintComparisonExp?);

  Input_AreasBoolExp? get area => (_$data['area'] as Input_AreasBoolExp?);

  Input_UuidComparisonExp? get areaId =>
      (_$data['areaId'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get countryIsoCode =>
      (_$data['countryIsoCode'] as Input_StringComparisonExp?);

  Input_DistrictsBoolExp? get district =>
      (_$data['district'] as Input_DistrictsBoolExp?);

  Input_UuidComparisonExp? get districtId =>
      (_$data['districtId'] as Input_UuidComparisonExp?);

  Input_FamiliesBoolExp? get family =>
      (_$data['family'] as Input_FamiliesBoolExp?);

  Input_UuidComparisonExp? get familyId =>
      (_$data['familyId'] as Input_UuidComparisonExp?);

  Input_GeographyComparisonExp? get geolocation =>
      (_$data['geolocation'] as Input_GeographyComparisonExp?);

  Input_SmallintComparisonExp? get houseNumber =>
      (_$data['houseNumber'] as Input_SmallintComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get specialLandmark =>
      (_$data['specialLandmark'] as Input_StringComparisonExp?);

  Input_StoresBoolExp? get store => (_$data['store'] as Input_StoresBoolExp?);

  Input_UuidComparisonExp? get storeId =>
      (_$data['storeId'] as Input_UuidComparisonExp?);

  Input_SmallintComparisonExp? get storeyNumber =>
      (_$data['storeyNumber'] as Input_SmallintComparisonExp?);

  Input_StreetsBoolExp? get street =>
      (_$data['street'] as Input_StreetsBoolExp?);

  Input_UuidComparisonExp? get streetId =>
      (_$data['streetId'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get substreetName =>
      (_$data['substreetName'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber?.toJson();
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId?.toJson();
    }
    if (_$data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = countryIsoCode;
      result$data['countryIsoCode'] = l$countryIsoCode?.toJson();
    }
    if (_$data.containsKey('district')) {
      final l$district = district;
      result$data['district'] = l$district?.toJson();
    }
    if (_$data.containsKey('districtId')) {
      final l$districtId = districtId;
      result$data['districtId'] = l$districtId?.toJson();
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation?.toJson();
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('specialLandmark')) {
      final l$specialLandmark = specialLandmark;
      result$data['specialLandmark'] = l$specialLandmark?.toJson();
    }
    if (_$data.containsKey('store')) {
      final l$store = store;
      result$data['store'] = l$store?.toJson();
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId?.toJson();
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber?.toJson();
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId?.toJson();
    }
    if (_$data.containsKey('substreetName')) {
      final l$substreetName = substreetName;
      result$data['substreetName'] = l$substreetName?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AddressesBoolExp<Input_AddressesBoolExp> get copyWith =>
      CopyWith_Input_AddressesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesBoolExp || runtimeType != other.runtimeType) {
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
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$countryIsoCode = countryIsoCode;
    final lOther$countryIsoCode = other.countryIsoCode;
    if (_$data.containsKey('countryIsoCode') !=
        other._$data.containsKey('countryIsoCode')) {
      return false;
    }
    if (l$countryIsoCode != lOther$countryIsoCode) {
      return false;
    }
    final l$district = district;
    final lOther$district = other.district;
    if (_$data.containsKey('district') !=
        other._$data.containsKey('district')) {
      return false;
    }
    if (l$district != lOther$district) {
      return false;
    }
    final l$districtId = districtId;
    final lOther$districtId = other.districtId;
    if (_$data.containsKey('districtId') !=
        other._$data.containsKey('districtId')) {
      return false;
    }
    if (l$districtId != lOther$districtId) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (_$data.containsKey('geolocation') !=
        other._$data.containsKey('geolocation')) {
      return false;
    }
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
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
    final l$specialLandmark = specialLandmark;
    final lOther$specialLandmark = other.specialLandmark;
    if (_$data.containsKey('specialLandmark') !=
        other._$data.containsKey('specialLandmark')) {
      return false;
    }
    if (l$specialLandmark != lOther$specialLandmark) {
      return false;
    }
    final l$store = store;
    final lOther$store = other.store;
    if (_$data.containsKey('store') != other._$data.containsKey('store')) {
      return false;
    }
    if (l$store != lOther$store) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (_$data.containsKey('street') != other._$data.containsKey('street')) {
      return false;
    }
    if (l$street != lOther$street) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    final l$substreetName = substreetName;
    final lOther$substreetName = other.substreetName;
    if (_$data.containsKey('substreetName') !=
        other._$data.containsKey('substreetName')) {
      return false;
    }
    if (l$substreetName != lOther$substreetName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$apartmentNumber = apartmentNumber;
    final l$area = area;
    final l$areaId = areaId;
    final l$countryIsoCode = countryIsoCode;
    final l$district = district;
    final l$districtId = districtId;
    final l$family = family;
    final l$familyId = familyId;
    final l$geolocation = geolocation;
    final l$houseNumber = houseNumber;
    final l$id = id;
    final l$specialLandmark = specialLandmark;
    final l$store = store;
    final l$storeId = storeId;
    final l$storeyNumber = storeyNumber;
    final l$street = street;
    final l$streetId = streetId;
    final l$substreetName = substreetName;
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
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('countryIsoCode') ? l$countryIsoCode : const {},
      _$data.containsKey('district') ? l$district : const {},
      _$data.containsKey('districtId') ? l$districtId : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('specialLandmark') ? l$specialLandmark : const {},
      _$data.containsKey('store') ? l$store : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
      _$data.containsKey('street') ? l$street : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('substreetName') ? l$substreetName : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesBoolExp<TRes> {
  factory CopyWith_Input_AddressesBoolExp(
    Input_AddressesBoolExp instance,
    TRes Function(Input_AddressesBoolExp) then,
  ) = _CopyWithImpl_Input_AddressesBoolExp;

  factory CopyWith_Input_AddressesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesBoolExp;

  TRes call({
    List<Input_AddressesBoolExp>? $_and,
    Input_AddressesBoolExp? $_not,
    List<Input_AddressesBoolExp>? $_or,
    Input_SmallintComparisonExp? apartmentNumber,
    Input_AreasBoolExp? area,
    Input_UuidComparisonExp? areaId,
    Input_StringComparisonExp? countryIsoCode,
    Input_DistrictsBoolExp? district,
    Input_UuidComparisonExp? districtId,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_GeographyComparisonExp? geolocation,
    Input_SmallintComparisonExp? houseNumber,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? specialLandmark,
    Input_StoresBoolExp? store,
    Input_UuidComparisonExp? storeId,
    Input_SmallintComparisonExp? storeyNumber,
    Input_StreetsBoolExp? street,
    Input_UuidComparisonExp? streetId,
    Input_StringComparisonExp? substreetName,
  });
  TRes $_and(
    Iterable<Input_AddressesBoolExp>? Function(
      Iterable<CopyWith_Input_AddressesBoolExp<Input_AddressesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_AddressesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_AddressesBoolExp>? Function(
      Iterable<CopyWith_Input_AddressesBoolExp<Input_AddressesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_SmallintComparisonExp<TRes> get apartmentNumber;
  CopyWith_Input_AreasBoolExp<TRes> get area;
  CopyWith_Input_UuidComparisonExp<TRes> get areaId;
  CopyWith_Input_StringComparisonExp<TRes> get countryIsoCode;
  CopyWith_Input_DistrictsBoolExp<TRes> get district;
  CopyWith_Input_UuidComparisonExp<TRes> get districtId;
  CopyWith_Input_FamiliesBoolExp<TRes> get family;
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
  CopyWith_Input_GeographyComparisonExp<TRes> get geolocation;
  CopyWith_Input_SmallintComparisonExp<TRes> get houseNumber;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get specialLandmark;
  CopyWith_Input_StoresBoolExp<TRes> get store;
  CopyWith_Input_UuidComparisonExp<TRes> get storeId;
  CopyWith_Input_SmallintComparisonExp<TRes> get storeyNumber;
  CopyWith_Input_StreetsBoolExp<TRes> get street;
  CopyWith_Input_UuidComparisonExp<TRes> get streetId;
  CopyWith_Input_StringComparisonExp<TRes> get substreetName;
}

class _CopyWithImpl_Input_AddressesBoolExp<TRes>
    implements CopyWith_Input_AddressesBoolExp<TRes> {
  _CopyWithImpl_Input_AddressesBoolExp(this._instance, this._then);

  final Input_AddressesBoolExp _instance;

  final TRes Function(Input_AddressesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? apartmentNumber = _undefined,
    Object? area = _undefined,
    Object? areaId = _undefined,
    Object? countryIsoCode = _undefined,
    Object? district = _undefined,
    Object? districtId = _undefined,
    Object? family = _undefined,
    Object? familyId = _undefined,
    Object? geolocation = _undefined,
    Object? houseNumber = _undefined,
    Object? id = _undefined,
    Object? specialLandmark = _undefined,
    Object? store = _undefined,
    Object? storeId = _undefined,
    Object? storeyNumber = _undefined,
    Object? street = _undefined,
    Object? streetId = _undefined,
    Object? substreetName = _undefined,
  }) => _then(
    Input_AddressesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_AddressesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_AddressesBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_AddressesBoolExp>?),
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as Input_SmallintComparisonExp?),
      if (area != _undefined) 'area': (area as Input_AreasBoolExp?),
      if (areaId != _undefined) 'areaId': (areaId as Input_UuidComparisonExp?),
      if (countryIsoCode != _undefined)
        'countryIsoCode': (countryIsoCode as Input_StringComparisonExp?),
      if (district != _undefined)
        'district': (district as Input_DistrictsBoolExp?),
      if (districtId != _undefined)
        'districtId': (districtId as Input_UuidComparisonExp?),
      if (family != _undefined) 'family': (family as Input_FamiliesBoolExp?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
      if (geolocation != _undefined)
        'geolocation': (geolocation as Input_GeographyComparisonExp?),
      if (houseNumber != _undefined)
        'houseNumber': (houseNumber as Input_SmallintComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (specialLandmark != _undefined)
        'specialLandmark': (specialLandmark as Input_StringComparisonExp?),
      if (store != _undefined) 'store': (store as Input_StoresBoolExp?),
      if (storeId != _undefined)
        'storeId': (storeId as Input_UuidComparisonExp?),
      if (storeyNumber != _undefined)
        'storeyNumber': (storeyNumber as Input_SmallintComparisonExp?),
      if (street != _undefined) 'street': (street as Input_StreetsBoolExp?),
      if (streetId != _undefined)
        'streetId': (streetId as Input_UuidComparisonExp?),
      if (substreetName != _undefined)
        'substreetName': (substreetName as Input_StringComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_AddressesBoolExp>? Function(
      Iterable<CopyWith_Input_AddressesBoolExp<Input_AddressesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_AddressesBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_AddressesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_AddressesBoolExp.stub(_then(_instance))
        : CopyWith_Input_AddressesBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_AddressesBoolExp>? Function(
      Iterable<CopyWith_Input_AddressesBoolExp<Input_AddressesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_AddressesBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_SmallintComparisonExp<TRes> get apartmentNumber {
    final local$apartmentNumber = _instance.apartmentNumber;
    return local$apartmentNumber == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$apartmentNumber,
            (e) => call(apartmentNumber: e),
          );
  }

  CopyWith_Input_AreasBoolExp<TRes> get area {
    final local$area = _instance.area;
    return local$area == null
        ? CopyWith_Input_AreasBoolExp.stub(_then(_instance))
        : CopyWith_Input_AreasBoolExp(local$area, (e) => call(area: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get areaId {
    final local$areaId = _instance.areaId;
    return local$areaId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$areaId,
            (e) => call(areaId: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get countryIsoCode {
    final local$countryIsoCode = _instance.countryIsoCode;
    return local$countryIsoCode == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$countryIsoCode,
            (e) => call(countryIsoCode: e),
          );
  }

  CopyWith_Input_DistrictsBoolExp<TRes> get district {
    final local$district = _instance.district;
    return local$district == null
        ? CopyWith_Input_DistrictsBoolExp.stub(_then(_instance))
        : CopyWith_Input_DistrictsBoolExp(
            local$district,
            (e) => call(district: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get districtId {
    final local$districtId = _instance.districtId;
    return local$districtId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$districtId,
            (e) => call(districtId: e),
          );
  }

  CopyWith_Input_FamiliesBoolExp<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesBoolExp(local$family, (e) => call(family: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_GeographyComparisonExp<TRes> get geolocation {
    final local$geolocation = _instance.geolocation;
    return local$geolocation == null
        ? CopyWith_Input_GeographyComparisonExp.stub(_then(_instance))
        : CopyWith_Input_GeographyComparisonExp(
            local$geolocation,
            (e) => call(geolocation: e),
          );
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get houseNumber {
    final local$houseNumber = _instance.houseNumber;
    return local$houseNumber == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$houseNumber,
            (e) => call(houseNumber: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get specialLandmark {
    final local$specialLandmark = _instance.specialLandmark;
    return local$specialLandmark == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$specialLandmark,
            (e) => call(specialLandmark: e),
          );
  }

  CopyWith_Input_StoresBoolExp<TRes> get store {
    final local$store = _instance.store;
    return local$store == null
        ? CopyWith_Input_StoresBoolExp.stub(_then(_instance))
        : CopyWith_Input_StoresBoolExp(local$store, (e) => call(store: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get storeId {
    final local$storeId = _instance.storeId;
    return local$storeId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$storeId,
            (e) => call(storeId: e),
          );
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get storeyNumber {
    final local$storeyNumber = _instance.storeyNumber;
    return local$storeyNumber == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$storeyNumber,
            (e) => call(storeyNumber: e),
          );
  }

  CopyWith_Input_StreetsBoolExp<TRes> get street {
    final local$street = _instance.street;
    return local$street == null
        ? CopyWith_Input_StreetsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StreetsBoolExp(local$street, (e) => call(street: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get streetId {
    final local$streetId = _instance.streetId;
    return local$streetId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$streetId,
            (e) => call(streetId: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get substreetName {
    final local$substreetName = _instance.substreetName;
    return local$substreetName == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$substreetName,
            (e) => call(substreetName: e),
          );
  }
}

class _CopyWithStubImpl_Input_AddressesBoolExp<TRes>
    implements CopyWith_Input_AddressesBoolExp<TRes> {
  _CopyWithStubImpl_Input_AddressesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_AddressesBoolExp>? $_and,
    Input_AddressesBoolExp? $_not,
    List<Input_AddressesBoolExp>? $_or,
    Input_SmallintComparisonExp? apartmentNumber,
    Input_AreasBoolExp? area,
    Input_UuidComparisonExp? areaId,
    Input_StringComparisonExp? countryIsoCode,
    Input_DistrictsBoolExp? district,
    Input_UuidComparisonExp? districtId,
    Input_FamiliesBoolExp? family,
    Input_UuidComparisonExp? familyId,
    Input_GeographyComparisonExp? geolocation,
    Input_SmallintComparisonExp? houseNumber,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? specialLandmark,
    Input_StoresBoolExp? store,
    Input_UuidComparisonExp? storeId,
    Input_SmallintComparisonExp? storeyNumber,
    Input_StreetsBoolExp? street,
    Input_UuidComparisonExp? streetId,
    Input_StringComparisonExp? substreetName,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_AddressesBoolExp<TRes> get $_not =>
      CopyWith_Input_AddressesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_SmallintComparisonExp<TRes> get apartmentNumber =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_AreasBoolExp<TRes> get area =>
      CopyWith_Input_AreasBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get areaId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get countryIsoCode =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_DistrictsBoolExp<TRes> get district =>
      CopyWith_Input_DistrictsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get districtId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_FamiliesBoolExp<TRes> get family =>
      CopyWith_Input_FamiliesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_GeographyComparisonExp<TRes> get geolocation =>
      CopyWith_Input_GeographyComparisonExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get houseNumber =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get specialLandmark =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_StoresBoolExp<TRes> get store =>
      CopyWith_Input_StoresBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get storeId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get storeyNumber =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_StreetsBoolExp<TRes> get street =>
      CopyWith_Input_StreetsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get streetId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get substreetName =>
      CopyWith_Input_StringComparisonExp.stub(_res);
}

class Input_AddressesIncInput {
  factory Input_AddressesIncInput({
    int? apartmentNumber,
    int? houseNumber,
    int? storeyNumber,
  }) => Input_AddressesIncInput._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
  });

  Input_AddressesIncInput._(this._$data);

  factory Input_AddressesIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = (l$apartmentNumber as int?);
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = (l$houseNumber as int?);
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = (l$storeyNumber as int?);
    }
    return Input_AddressesIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get apartmentNumber => (_$data['apartmentNumber'] as int?);

  int? get houseNumber => (_$data['houseNumber'] as int?);

  int? get storeyNumber => (_$data['storeyNumber'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber;
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber;
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber;
    }
    return result$data;
  }

  CopyWith_Input_AddressesIncInput<Input_AddressesIncInput> get copyWith =>
      CopyWith_Input_AddressesIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesIncInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$houseNumber = houseNumber;
    final l$storeyNumber = storeyNumber;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
    ]);
  }
}

abstract class CopyWith_Input_AddressesIncInput<TRes> {
  factory CopyWith_Input_AddressesIncInput(
    Input_AddressesIncInput instance,
    TRes Function(Input_AddressesIncInput) then,
  ) = _CopyWithImpl_Input_AddressesIncInput;

  factory CopyWith_Input_AddressesIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AddressesIncInput;

  TRes call({int? apartmentNumber, int? houseNumber, int? storeyNumber});
}

class _CopyWithImpl_Input_AddressesIncInput<TRes>
    implements CopyWith_Input_AddressesIncInput<TRes> {
  _CopyWithImpl_Input_AddressesIncInput(this._instance, this._then);

  final Input_AddressesIncInput _instance;

  final TRes Function(Input_AddressesIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? apartmentNumber = _undefined,
    Object? houseNumber = _undefined,
    Object? storeyNumber = _undefined,
  }) => _then(
    Input_AddressesIncInput._({
      ..._instance._$data,
      if (apartmentNumber != _undefined)
        'apartmentNumber': (apartmentNumber as int?),
      if (houseNumber != _undefined) 'houseNumber': (houseNumber as int?),
      if (storeyNumber != _undefined) 'storeyNumber': (storeyNumber as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_AddressesIncInput<TRes>
    implements CopyWith_Input_AddressesIncInput<TRes> {
  _CopyWithStubImpl_Input_AddressesIncInput(this._res);

  TRes _res;

  call({int? apartmentNumber, int? houseNumber, int? storeyNumber}) => _res;
}

class Input_AddressesInsertInput {
  factory Input_AddressesInsertInput({
    int? apartmentNumber,
    Input_AreasObjRelInsertInput? area,
    UuidValue? areaId,
    String? countryIsoCode,
    Input_DistrictsObjRelInsertInput? district,
    UuidValue? districtId,
    Input_FamiliesObjRelInsertInput? family,
    UuidValue? familyId,
    Map<String, dynamic>? geolocation,
    int? houseNumber,
    String? specialLandmark,
    Input_StoresObjRelInsertInput? store,
    UuidValue? storeId,
    int? storeyNumber,
    Input_StreetsObjRelInsertInput? street,
    UuidValue? streetId,
    String? substreetName,
  }) => Input_AddressesInsertInput._({
    if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
    if (area != null) r'area': area,
    if (areaId != null) r'areaId': areaId,
    if (countryIsoCode != null) r'countryIsoCode': countryIsoCode,
    if (district != null) r'district': district,
    if (districtId != null) r'districtId': districtId,
    if (family != null) r'family': family,
    if (familyId != null) r'familyId': familyId,
    if (geolocation != null) r'geolocation': geolocation,
    if (houseNumber != null) r'houseNumber': houseNumber,
    if (specialLandmark != null) r'specialLandmark': specialLandmark,
    if (store != null) r'store': store,
    if (storeId != null) r'storeId': storeId,
    if (storeyNumber != null) r'storeyNumber': storeyNumber,
    if (street != null) r'street': street,
    if (streetId != null) r'streetId': streetId,
    if (substreetName != null) r'substreetName': substreetName,
  });

  Input_AddressesInsertInput._(this._$data);

  factory Input_AddressesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = (l$apartmentNumber as int?);
    }
    if (data.containsKey('area')) {
      final l$area = data['area'];
      result$data['area'] = l$area == null
          ? null
          : Input_AreasObjRelInsertInput.fromJson(
              (l$area as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areaId')) {
      final l$areaId = data['areaId'];
      result$data['areaId'] = l$areaId == null ? null : stringToUuid(l$areaId);
    }
    if (data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = data['countryIsoCode'];
      result$data['countryIsoCode'] = (l$countryIsoCode as String?);
    }
    if (data.containsKey('district')) {
      final l$district = data['district'];
      result$data['district'] = l$district == null
          ? null
          : Input_DistrictsObjRelInsertInput.fromJson(
              (l$district as Map<String, dynamic>),
            );
    }
    if (data.containsKey('districtId')) {
      final l$districtId = data['districtId'];
      result$data['districtId'] = l$districtId == null
          ? null
          : stringToUuid(l$districtId);
    }
    if (data.containsKey('family')) {
      final l$family = data['family'];
      result$data['family'] = l$family == null
          ? null
          : Input_FamiliesObjRelInsertInput.fromJson(
              (l$family as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('geolocation')) {
      final l$geolocation = data['geolocation'];
      result$data['geolocation'] = (l$geolocation as Map<String, dynamic>?);
    }
    if (data.containsKey('houseNumber')) {
      final l$houseNumber = data['houseNumber'];
      result$data['houseNumber'] = (l$houseNumber as int?);
    }
    if (data.containsKey('specialLandmark')) {
      final l$specialLandmark = data['specialLandmark'];
      result$data['specialLandmark'] = (l$specialLandmark as String?);
    }
    if (data.containsKey('store')) {
      final l$store = data['store'];
      result$data['store'] = l$store == null
          ? null
          : Input_StoresObjRelInsertInput.fromJson(
              (l$store as Map<String, dynamic>),
            );
    }
    if (data.containsKey('storeId')) {
      final l$storeId = data['storeId'];
      result$data['storeId'] = l$storeId == null
          ? null
          : stringToUuid(l$storeId);
    }
    if (data.containsKey('storeyNumber')) {
      final l$storeyNumber = data['storeyNumber'];
      result$data['storeyNumber'] = (l$storeyNumber as int?);
    }
    if (data.containsKey('street')) {
      final l$street = data['street'];
      result$data['street'] = l$street == null
          ? null
          : Input_StreetsObjRelInsertInput.fromJson(
              (l$street as Map<String, dynamic>),
            );
    }
    if (data.containsKey('streetId')) {
      final l$streetId = data['streetId'];
      result$data['streetId'] = l$streetId == null
          ? null
          : stringToUuid(l$streetId);
    }
    if (data.containsKey('substreetName')) {
      final l$substreetName = data['substreetName'];
      result$data['substreetName'] = (l$substreetName as String?);
    }
    return Input_AddressesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get apartmentNumber => (_$data['apartmentNumber'] as int?);

  Input_AreasObjRelInsertInput? get area =>
      (_$data['area'] as Input_AreasObjRelInsertInput?);

  UuidValue? get areaId => (_$data['areaId'] as UuidValue?);

  String? get countryIsoCode => (_$data['countryIsoCode'] as String?);

  Input_DistrictsObjRelInsertInput? get district =>
      (_$data['district'] as Input_DistrictsObjRelInsertInput?);

  UuidValue? get districtId => (_$data['districtId'] as UuidValue?);

  Input_FamiliesObjRelInsertInput? get family =>
      (_$data['family'] as Input_FamiliesObjRelInsertInput?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  Map<String, dynamic>? get geolocation =>
      (_$data['geolocation'] as Map<String, dynamic>?);

  int? get houseNumber => (_$data['houseNumber'] as int?);

  String? get specialLandmark => (_$data['specialLandmark'] as String?);

  Input_StoresObjRelInsertInput? get store =>
      (_$data['store'] as Input_StoresObjRelInsertInput?);

  UuidValue? get storeId => (_$data['storeId'] as UuidValue?);

  int? get storeyNumber => (_$data['storeyNumber'] as int?);

  Input_StreetsObjRelInsertInput? get street =>
      (_$data['street'] as Input_StreetsObjRelInsertInput?);

  UuidValue? get streetId => (_$data['streetId'] as UuidValue?);

  String? get substreetName => (_$data['substreetName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber;
    }
    if (_$data.containsKey('area')) {
      final l$area = area;
      result$data['area'] = l$area?.toJson();
    }
    if (_$data.containsKey('areaId')) {
      final l$areaId = areaId;
      result$data['areaId'] = l$areaId == null ? null : uuidToString(l$areaId);
    }
    if (_$data.containsKey('countryIsoCode')) {
      final l$countryIsoCode = countryIsoCode;
      result$data['countryIsoCode'] = l$countryIsoCode;
    }
    if (_$data.containsKey('district')) {
      final l$district = district;
      result$data['district'] = l$district?.toJson();
    }
    if (_$data.containsKey('districtId')) {
      final l$districtId = districtId;
      result$data['districtId'] = l$districtId == null
          ? null
          : uuidToString(l$districtId);
    }
    if (_$data.containsKey('family')) {
      final l$family = family;
      result$data['family'] = l$family?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('geolocation')) {
      final l$geolocation = geolocation;
      result$data['geolocation'] = l$geolocation;
    }
    if (_$data.containsKey('houseNumber')) {
      final l$houseNumber = houseNumber;
      result$data['houseNumber'] = l$houseNumber;
    }
    if (_$data.containsKey('specialLandmark')) {
      final l$specialLandmark = specialLandmark;
      result$data['specialLandmark'] = l$specialLandmark;
    }
    if (_$data.containsKey('store')) {
      final l$store = store;
      result$data['store'] = l$store?.toJson();
    }
    if (_$data.containsKey('storeId')) {
      final l$storeId = storeId;
      result$data['storeId'] = l$storeId == null
          ? null
          : uuidToString(l$storeId);
    }
    if (_$data.containsKey('storeyNumber')) {
      final l$storeyNumber = storeyNumber;
      result$data['storeyNumber'] = l$storeyNumber;
    }
    if (_$data.containsKey('street')) {
      final l$street = street;
      result$data['street'] = l$street?.toJson();
    }
    if (_$data.containsKey('streetId')) {
      final l$streetId = streetId;
      result$data['streetId'] = l$streetId == null
          ? null
          : uuidToString(l$streetId);
    }
    if (_$data.containsKey('substreetName')) {
      final l$substreetName = substreetName;
      result$data['substreetName'] = l$substreetName;
    }
    return result$data;
  }

  CopyWith_Input_AddressesInsertInput<Input_AddressesInsertInput>
  get copyWith => CopyWith_Input_AddressesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AddressesInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$area = area;
    final lOther$area = other.area;
    if (_$data.containsKey('area') != other._$data.containsKey('area')) {
      return false;
    }
    if (l$area != lOther$area) {
      return false;
    }
    final l$areaId = areaId;
    final lOther$areaId = other.areaId;
    if (_$data.containsKey('areaId') != other._$data.containsKey('areaId')) {
      return false;
    }
    if (l$areaId != lOther$areaId) {
      return false;
    }
    final l$countryIsoCode = countryIsoCode;
    final lOther$countryIsoCode = other.countryIsoCode;
    if (_$data.containsKey('countryIsoCode') !=
        other._$data.containsKey('countryIsoCode')) {
      return false;
    }
    if (l$countryIsoCode != lOther$countryIsoCode) {
      return false;
    }
    final l$district = district;
    final lOther$district = other.district;
    if (_$data.containsKey('district') !=
        other._$data.containsKey('district')) {
      return false;
    }
    if (l$district != lOther$district) {
      return false;
    }
    final l$districtId = districtId;
    final lOther$districtId = other.districtId;
    if (_$data.containsKey('districtId') !=
        other._$data.containsKey('districtId')) {
      return false;
    }
    if (l$districtId != lOther$districtId) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (_$data.containsKey('family') != other._$data.containsKey('family')) {
      return false;
    }
    if (l$family != lOther$family) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$geolocation = geolocation;
    final lOther$geolocation = other.geolocation;
    if (_$data.containsKey('geolocation') !=
        other._$data.containsKey('geolocation')) {
      return false;
    }
    if (l$geolocation != lOther$geolocation) {
      return false;
    }
    final l$houseNumber = houseNumber;
    final lOther$houseNumber = other.houseNumber;
    if (_$data.containsKey('houseNumber') !=
        other._$data.containsKey('houseNumber')) {
      return false;
    }
    if (l$houseNumber != lOther$houseNumber) {
      return false;
    }
    final l$specialLandmark = specialLandmark;
    final lOther$specialLandmark = other.specialLandmark;
    if (_$data.containsKey('specialLandmark') !=
        other._$data.containsKey('specialLandmark')) {
      return false;
    }
    if (l$specialLandmark != lOther$specialLandmark) {
      return false;
    }
    final l$store = store;
    final lOther$store = other.store;
    if (_$data.containsKey('store') != other._$data.containsKey('store')) {
      return false;
    }
    if (l$store != lOther$store) {
      return false;
    }
    final l$storeId = storeId;
    final lOther$storeId = other.storeId;
    if (_$data.containsKey('storeId') != other._$data.containsKey('storeId')) {
      return false;
    }
    if (l$storeId != lOther$storeId) {
      return false;
    }
    final l$storeyNumber = storeyNumber;
    final lOther$storeyNumber = other.storeyNumber;
    if (_$data.containsKey('storeyNumber') !=
        other._$data.containsKey('storeyNumber')) {
      return false;
    }
    if (l$storeyNumber != lOther$storeyNumber) {
      return false;
    }
    final l$street = street;
    final lOther$street = other.street;
    if (_$data.containsKey('street') != other._$data.containsKey('street')) {
      return false;
    }
    if (l$street != lOther$street) {
      return false;
    }
    final l$streetId = streetId;
    final lOther$streetId = other.streetId;
    if (_$data.containsKey('streetId') !=
        other._$data.containsKey('streetId')) {
      return false;
    }
    if (l$streetId != lOther$streetId) {
      return false;
    }
    final l$substreetName = substreetName;
    final lOther$substreetName = other.substreetName;
    if (_$data.containsKey('substreetName') !=
        other._$data.containsKey('substreetName')) {
      return false;
    }
    if (l$substreetName != lOther$substreetName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$apartmentNumber = apartmentNumber;
    final l$area = area;
    final l$areaId = areaId;
    final l$countryIsoCode = countryIsoCode;
    final l$district = district;
    final l$districtId = districtId;
    final l$family = family;
    final l$familyId = familyId;
    final l$geolocation = geolocation;
    final l$houseNumber = houseNumber;
    final l$specialLandmark = specialLandmark;
    final l$store = store;
    final l$storeId = storeId;
    final l$storeyNumber = storeyNumber;
    final l$street = street;
    final l$streetId = streetId;
    final l$substreetName = substreetName;
    return Object.hashAll([
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('area') ? l$area : const {},
      _$data.containsKey('areaId') ? l$areaId : const {},
      _$data.containsKey('countryIsoCode') ? l$countryIsoCode : const {},
      _$data.containsKey('district') ? l$district : const {},
      _$data.containsKey('districtId') ? l$districtId : const {},
      _$data.containsKey('family') ? l$family : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('geolocation') ? l$geolocation : const {},
      _$data.containsKey('houseNumber') ? l$houseNumber : const {},
      _$data.containsKey('specialLandmark') ? l$specialLandmark : const {},
      _$data.containsKey('store') ? l$store : const {},
      _$data.containsKey('storeId') ? l$storeId : const {},
      _$data.containsKey('storeyNumber') ? l$storeyNumber : const {},
      _$data.containsKey('street') ? l$street : const {},
      _$data.containsKey('streetId') ? l$streetId : const {},
      _$data.containsKey('substreetName') ? l$substreetName : const {},
    ]);
  }
}
