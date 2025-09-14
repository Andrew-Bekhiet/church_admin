// Part 10 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_ChurchesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ChurchesStreamCursorValueInput(
    Input_ChurchesStreamCursorValueInput instance,
    TRes Function(Input_ChurchesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ChurchesStreamCursorValueInput;

  factory CopyWith_Input_ChurchesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesStreamCursorValueInput;

  TRes call({UuidValue? id, String? name});
}

class _CopyWithImpl_Input_ChurchesStreamCursorValueInput<TRes>
    implements CopyWith_Input_ChurchesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ChurchesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ChurchesStreamCursorValueInput _instance;

  final TRes Function(Input_ChurchesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? name = _undefined}) => _then(
    Input_ChurchesStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_ChurchesStreamCursorValueInput<TRes>
    implements CopyWith_Input_ChurchesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ChurchesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name}) => _res;
}

class Input_ChurchesUpdates {
  factory Input_ChurchesUpdates({
    Input_ChurchesSetInput? $_set,
    required Input_ChurchesBoolExp where,
  }) => Input_ChurchesUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_ChurchesUpdates._(this._$data);

  factory Input_ChurchesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_ChurchesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_ChurchesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_ChurchesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ChurchesSetInput? get $_set =>
      (_$data['_set'] as Input_ChurchesSetInput?);

  Input_ChurchesBoolExp get where => (_$data['where'] as Input_ChurchesBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_ChurchesUpdates<Input_ChurchesUpdates> get copyWith =>
      CopyWith_Input_ChurchesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ChurchesUpdates || runtimeType != other.runtimeType) {
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
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith_Input_ChurchesUpdates<TRes> {
  factory CopyWith_Input_ChurchesUpdates(
    Input_ChurchesUpdates instance,
    TRes Function(Input_ChurchesUpdates) then,
  ) = _CopyWithImpl_Input_ChurchesUpdates;

  factory CopyWith_Input_ChurchesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_ChurchesUpdates;

  TRes call({Input_ChurchesSetInput? $_set, Input_ChurchesBoolExp? where});
  CopyWith_Input_ChurchesSetInput<TRes> get $_set;
  CopyWith_Input_ChurchesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ChurchesUpdates<TRes>
    implements CopyWith_Input_ChurchesUpdates<TRes> {
  _CopyWithImpl_Input_ChurchesUpdates(this._instance, this._then);

  final Input_ChurchesUpdates _instance;

  final TRes Function(Input_ChurchesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_ChurchesUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_ChurchesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_ChurchesBoolExp),
    }),
  );

  CopyWith_Input_ChurchesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_ChurchesSetInput.stub(_then(_instance))
        : CopyWith_Input_ChurchesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_ChurchesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_ChurchesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_ChurchesUpdates<TRes>
    implements CopyWith_Input_ChurchesUpdates<TRes> {
  _CopyWithStubImpl_Input_ChurchesUpdates(this._res);

  TRes _res;

  call({Input_ChurchesSetInput? $_set, Input_ChurchesBoolExp? where}) => _res;

  CopyWith_Input_ChurchesSetInput<TRes> get $_set =>
      CopyWith_Input_ChurchesSetInput.stub(_res);

  CopyWith_Input_ChurchesBoolExp<TRes> get where =>
      CopyWith_Input_ChurchesBoolExp.stub(_res);
}

class Input_ClassesAggregateBoolExp {
  factory Input_ClassesAggregateBoolExp({
    Input_classesAggregateBoolExpBool_and? bool_and,
    Input_classesAggregateBoolExpBool_or? bool_or,
    Input_classesAggregateBoolExpCount? count,
  }) => Input_ClassesAggregateBoolExp._({
    if (bool_and != null) r'bool_and': bool_and,
    if (bool_or != null) r'bool_or': bool_or,
    if (count != null) r'count': count,
  });

  Input_ClassesAggregateBoolExp._(this._$data);

  factory Input_ClassesAggregateBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_classesAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_classesAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_classesAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_ClassesAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_classesAggregateBoolExpBool_and? get bool_and =>
      (_$data['bool_and'] as Input_classesAggregateBoolExpBool_and?);

  Input_classesAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or'] as Input_classesAggregateBoolExpBool_or?);

  Input_classesAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_classesAggregateBoolExpCount?);

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

  CopyWith_Input_ClassesAggregateBoolExp<Input_ClassesAggregateBoolExp>
  get copyWith => CopyWith_Input_ClassesAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesAggregateBoolExp ||
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

abstract class CopyWith_Input_ClassesAggregateBoolExp<TRes> {
  factory CopyWith_Input_ClassesAggregateBoolExp(
    Input_ClassesAggregateBoolExp instance,
    TRes Function(Input_ClassesAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_ClassesAggregateBoolExp;

  factory CopyWith_Input_ClassesAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesAggregateBoolExp;

  TRes call({
    Input_classesAggregateBoolExpBool_and? bool_and,
    Input_classesAggregateBoolExpBool_or? bool_or,
    Input_classesAggregateBoolExpCount? count,
  });
  CopyWith_Input_classesAggregateBoolExpBool_and<TRes> get bool_and;
  CopyWith_Input_classesAggregateBoolExpBool_or<TRes> get bool_or;
  CopyWith_Input_classesAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_ClassesAggregateBoolExp<TRes>
    implements CopyWith_Input_ClassesAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_ClassesAggregateBoolExp(this._instance, this._then);

  final Input_ClassesAggregateBoolExp _instance;

  final TRes Function(Input_ClassesAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bool_and = _undefined,
    Object? bool_or = _undefined,
    Object? count = _undefined,
  }) => _then(
    Input_ClassesAggregateBoolExp._({
      ..._instance._$data,
      if (bool_and != _undefined)
        'bool_and': (bool_and as Input_classesAggregateBoolExpBool_and?),
      if (bool_or != _undefined)
        'bool_or': (bool_or as Input_classesAggregateBoolExpBool_or?),
      if (count != _undefined)
        'count': (count as Input_classesAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_classesAggregateBoolExpBool_and<TRes> get bool_and {
    final local$bool_and = _instance.bool_and;
    return local$bool_and == null
        ? CopyWith_Input_classesAggregateBoolExpBool_and.stub(_then(_instance))
        : CopyWith_Input_classesAggregateBoolExpBool_and(
            local$bool_and,
            (e) => call(bool_and: e),
          );
  }

  CopyWith_Input_classesAggregateBoolExpBool_or<TRes> get bool_or {
    final local$bool_or = _instance.bool_or;
    return local$bool_or == null
        ? CopyWith_Input_classesAggregateBoolExpBool_or.stub(_then(_instance))
        : CopyWith_Input_classesAggregateBoolExpBool_or(
            local$bool_or,
            (e) => call(bool_or: e),
          );
  }

  CopyWith_Input_classesAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_classesAggregateBoolExpCount.stub(_then(_instance))
        : CopyWith_Input_classesAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_ClassesAggregateBoolExp<TRes>
    implements CopyWith_Input_ClassesAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_ClassesAggregateBoolExp(this._res);

  TRes _res;

  call({
    Input_classesAggregateBoolExpBool_and? bool_and,
    Input_classesAggregateBoolExpBool_or? bool_or,
    Input_classesAggregateBoolExpCount? count,
  }) => _res;

  CopyWith_Input_classesAggregateBoolExpBool_and<TRes> get bool_and =>
      CopyWith_Input_classesAggregateBoolExpBool_and.stub(_res);

  CopyWith_Input_classesAggregateBoolExpBool_or<TRes> get bool_or =>
      CopyWith_Input_classesAggregateBoolExpBool_or.stub(_res);

  CopyWith_Input_classesAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_classesAggregateBoolExpCount.stub(_res);
}

class Input_ClassesAggregateOrderBy {
  factory Input_ClassesAggregateOrderBy({
    Input_ClassesAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_ClassesMaxOrderBy? max,
    Input_ClassesMinOrderBy? min,
    Input_ClassesStddevOrderBy? stddev,
    Input_ClassesStddevPopOrderBy? stddevPop,
    Input_ClassesStddevSampOrderBy? stddevSamp,
    Input_ClassesSumOrderBy? sum,
    Input_ClassesVarPopOrderBy? varPop,
    Input_ClassesVarSampOrderBy? varSamp,
    Input_ClassesVarianceOrderBy? variance,
  }) => Input_ClassesAggregateOrderBy._({
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

  Input_ClassesAggregateOrderBy._(this._$data);

  factory Input_ClassesAggregateOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_ClassesAvgOrderBy.fromJson((l$avg as Map<String, dynamic>));
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
          : Input_ClassesMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_ClassesMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_ClassesStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_ClassesStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_ClassesStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_ClassesSumOrderBy.fromJson((l$sum as Map<String, dynamic>));
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_ClassesVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_ClassesVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_ClassesVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_ClassesAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesAvgOrderBy? get avg =>
      (_$data['avg'] as Input_ClassesAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_ClassesMaxOrderBy? get max =>
      (_$data['max'] as Input_ClassesMaxOrderBy?);

  Input_ClassesMinOrderBy? get min =>
      (_$data['min'] as Input_ClassesMinOrderBy?);

  Input_ClassesStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_ClassesStddevOrderBy?);

  Input_ClassesStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_ClassesStddevPopOrderBy?);

  Input_ClassesStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_ClassesStddevSampOrderBy?);

  Input_ClassesSumOrderBy? get sum =>
      (_$data['sum'] as Input_ClassesSumOrderBy?);

  Input_ClassesVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_ClassesVarPopOrderBy?);

  Input_ClassesVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_ClassesVarSampOrderBy?);

  Input_ClassesVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_ClassesVarianceOrderBy?);

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

  CopyWith_Input_ClassesAggregateOrderBy<Input_ClassesAggregateOrderBy>
  get copyWith => CopyWith_Input_ClassesAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesAggregateOrderBy ||
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

abstract class CopyWith_Input_ClassesAggregateOrderBy<TRes> {
  factory CopyWith_Input_ClassesAggregateOrderBy(
    Input_ClassesAggregateOrderBy instance,
    TRes Function(Input_ClassesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesAggregateOrderBy;

  factory CopyWith_Input_ClassesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesAggregateOrderBy;

  TRes call({
    Input_ClassesAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_ClassesMaxOrderBy? max,
    Input_ClassesMinOrderBy? min,
    Input_ClassesStddevOrderBy? stddev,
    Input_ClassesStddevPopOrderBy? stddevPop,
    Input_ClassesStddevSampOrderBy? stddevSamp,
    Input_ClassesSumOrderBy? sum,
    Input_ClassesVarPopOrderBy? varPop,
    Input_ClassesVarSampOrderBy? varSamp,
    Input_ClassesVarianceOrderBy? variance,
  });
  CopyWith_Input_ClassesAvgOrderBy<TRes> get avg;
  CopyWith_Input_ClassesMaxOrderBy<TRes> get max;
  CopyWith_Input_ClassesMinOrderBy<TRes> get min;
  CopyWith_Input_ClassesStddevOrderBy<TRes> get stddev;
  CopyWith_Input_ClassesStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_ClassesStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_ClassesSumOrderBy<TRes> get sum;
  CopyWith_Input_ClassesVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_ClassesVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_ClassesVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_ClassesAggregateOrderBy<TRes>
    implements CopyWith_Input_ClassesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesAggregateOrderBy(this._instance, this._then);

  final Input_ClassesAggregateOrderBy _instance;

  final TRes Function(Input_ClassesAggregateOrderBy) _then;

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
    Input_ClassesAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined) 'avg': (avg as Input_ClassesAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_ClassesMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_ClassesMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_ClassesStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_ClassesStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp': (stddevSamp as Input_ClassesStddevSampOrderBy?),
      if (sum != _undefined) 'sum': (sum as Input_ClassesSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_ClassesVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_ClassesVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_ClassesVarianceOrderBy?),
    }),
  );

  CopyWith_Input_ClassesAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_ClassesAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesAvgOrderBy(local$avg, (e) => call(avg: e));
  }

  CopyWith_Input_ClassesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_ClassesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_ClassesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_ClassesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesMinOrderBy(local$min, (e) => call(min: e));
  }

  CopyWith_Input_ClassesStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_ClassesStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_ClassesStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_ClassesStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_ClassesStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_ClassesStddevSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_ClassesSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_ClassesSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesSumOrderBy(local$sum, (e) => call(sum: e));
  }

  CopyWith_Input_ClassesVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_ClassesVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_ClassesVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_ClassesVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_ClassesVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_ClassesVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_ClassesAggregateOrderBy<TRes>
    implements CopyWith_Input_ClassesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_ClassesAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_ClassesMaxOrderBy? max,
    Input_ClassesMinOrderBy? min,
    Input_ClassesStddevOrderBy? stddev,
    Input_ClassesStddevPopOrderBy? stddevPop,
    Input_ClassesStddevSampOrderBy? stddevSamp,
    Input_ClassesSumOrderBy? sum,
    Input_ClassesVarPopOrderBy? varPop,
    Input_ClassesVarSampOrderBy? varSamp,
    Input_ClassesVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_ClassesAvgOrderBy<TRes> get avg =>
      CopyWith_Input_ClassesAvgOrderBy.stub(_res);

  CopyWith_Input_ClassesMaxOrderBy<TRes> get max =>
      CopyWith_Input_ClassesMaxOrderBy.stub(_res);

  CopyWith_Input_ClassesMinOrderBy<TRes> get min =>
      CopyWith_Input_ClassesMinOrderBy.stub(_res);

  CopyWith_Input_ClassesStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_ClassesStddevOrderBy.stub(_res);

  CopyWith_Input_ClassesStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_ClassesStddevPopOrderBy.stub(_res);

  CopyWith_Input_ClassesStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_ClassesStddevSampOrderBy.stub(_res);

  CopyWith_Input_ClassesSumOrderBy<TRes> get sum =>
      CopyWith_Input_ClassesSumOrderBy.stub(_res);

  CopyWith_Input_ClassesVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_ClassesVarPopOrderBy.stub(_res);

  CopyWith_Input_ClassesVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_ClassesVarSampOrderBy.stub(_res);

  CopyWith_Input_ClassesVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_ClassesVarianceOrderBy.stub(_res);
}

class Input_ClassesArrRelInsertInput {
  factory Input_ClassesArrRelInsertInput({
    required List<Input_ClassesInsertInput> data,
    Input_ClassesOnConflict? onConflict,
  }) => Input_ClassesArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_ClassesArrRelInsertInput._(this._$data);

  factory Input_ClassesArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_ClassesInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_ClassesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_ClassesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ClassesInsertInput> get data =>
      (_$data['data'] as List<Input_ClassesInsertInput>);

  Input_ClassesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_ClassesOnConflict?);

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

  CopyWith_Input_ClassesArrRelInsertInput<Input_ClassesArrRelInsertInput>
  get copyWith => CopyWith_Input_ClassesArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesArrRelInsertInput ||
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

abstract class CopyWith_Input_ClassesArrRelInsertInput<TRes> {
  factory CopyWith_Input_ClassesArrRelInsertInput(
    Input_ClassesArrRelInsertInput instance,
    TRes Function(Input_ClassesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_ClassesArrRelInsertInput;

  factory CopyWith_Input_ClassesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesArrRelInsertInput;

  TRes call({
    List<Input_ClassesInsertInput>? data,
    Input_ClassesOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_ClassesInsertInput> Function(
      Iterable<CopyWith_Input_ClassesInsertInput<Input_ClassesInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_ClassesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_ClassesArrRelInsertInput<TRes>
    implements CopyWith_Input_ClassesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_ClassesArrRelInsertInput(this._instance, this._then);

  final Input_ClassesArrRelInsertInput _instance;

  final TRes Function(Input_ClassesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_ClassesArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_ClassesInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_ClassesOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_ClassesInsertInput> Function(
      Iterable<CopyWith_Input_ClassesInsertInput<Input_ClassesInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map((e) => CopyWith_Input_ClassesInsertInput(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Input_ClassesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_ClassesOnConflict.stub(_then(_instance))
        : CopyWith_Input_ClassesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_ClassesArrRelInsertInput<TRes>
    implements CopyWith_Input_ClassesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_ClassesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_ClassesInsertInput>? data,
    Input_ClassesOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_ClassesOnConflict<TRes> get onConflict =>
      CopyWith_Input_ClassesOnConflict.stub(_res);
}

class Input_ClassesAvgOrderBy {
  factory Input_ClassesAvgOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesAvgOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesAvgOrderBy._(this._$data);

  factory Input_ClassesAvgOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_ClassesAvgOrderBy._(result$data);
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

  CopyWith_Input_ClassesAvgOrderBy<Input_ClassesAvgOrderBy> get copyWith =>
      CopyWith_Input_ClassesAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesAvgOrderBy || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ClassesAvgOrderBy<TRes> {
  factory CopyWith_Input_ClassesAvgOrderBy(
    Input_ClassesAvgOrderBy instance,
    TRes Function(Input_ClassesAvgOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesAvgOrderBy;

  factory CopyWith_Input_ClassesAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesAvgOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesAvgOrderBy<TRes>
    implements CopyWith_Input_ClassesAvgOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesAvgOrderBy(this._instance, this._then);

  final Input_ClassesAvgOrderBy _instance;

  final TRes Function(Input_ClassesAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesAvgOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesAvgOrderBy<TRes>
    implements CopyWith_Input_ClassesAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesAvgOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesBoolExp {
  factory Input_ClassesBoolExp({
    List<Input_ClassesBoolExp>? $_and,
    Input_ClassesBoolExp? $_not,
    List<Input_ClassesBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_ClassesPersonsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? studyYear,
  }) => Input_ClassesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminUsers != null) r'adminUsers': adminUsers,
    if (attendanceDaysConstraints != null)
      r'attendanceDaysConstraints': attendanceDaysConstraints,
    if (attendanceDaysConstraintsAggregate != null)
      r'attendanceDaysConstraintsAggregate': attendanceDaysConstraintsAggregate,
    if (attendanceHistory != null) r'attendanceHistory': attendanceHistory,
    if (attendanceHistoryAggregate != null)
      r'attendanceHistoryAggregate': attendanceHistoryAggregate,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (editHistory != null) r'editHistory': editHistory,
    if (editHistoryAggregate != null)
      r'editHistoryAggregate': editHistoryAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (service != null) r'service': service,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (studyYear != null) r'studyYear': studyYear,
  });

  Input_ClassesBoolExp._(this._$data);

  factory Input_ClassesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_ClassesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_ClassesBoolExp.fromJson((e as Map<String, dynamic>)),
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
    if (data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = data['attendanceDaysConstraints'];
      result$data['attendanceDaysConstraints'] =
          l$attendanceDaysConstraints == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsBoolExp.fromJson(
              (l$attendanceDaysConstraints as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          data['attendanceDaysConstraintsAggregate'];
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate == null
          ? null
          : Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.fromJson(
              (l$attendanceDaysConstraintsAggregate as Map<String, dynamic>),
            );
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
    if (data.containsKey('editHistory')) {
      final l$editHistory = data['editHistory'];
      result$data['editHistory'] = l$editHistory == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$editHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = data['editHistoryAggregate'];
      result$data['editHistoryAggregate'] = l$editHistoryAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateBoolExp.fromJson(
              (l$editHistoryAggregate as Map<String, dynamic>),
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
          : Input_ClassesPersonsBoolExp.fromJson(
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
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearsBoolExp.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    return Input_ClassesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ClassesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_ClassesBoolExp>?);

  Input_ClassesBoolExp? get $_not => (_$data['_not'] as Input_ClassesBoolExp?);

  List<Input_ClassesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_ClassesBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnBoolExp?);

  Input_HistoryAttendanceDaysConstraintsBoolExp?
  get attendanceDaysConstraints =>
      (_$data['attendanceDaysConstraints']
          as Input_HistoryAttendanceDaysConstraintsBoolExp?);

  Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
  get attendanceDaysConstraintsAggregate =>
      (_$data['attendanceDaysConstraintsAggregate']
          as Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?);

  Input_HistoryAttendanceHistoryBoolExp? get attendanceHistory =>
      (_$data['attendanceHistory'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_HistoryAttendanceHistoryAggregateBoolExp?
  get attendanceHistoryAggregate =>
      (_$data['attendanceHistoryAggregate']
          as Input_HistoryAttendanceHistoryAggregateBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistory =>
      (_$data['editHistory'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistoryAggregate =>
      (_$data['editHistoryAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_ClassesPersonsBoolExp? get persons =>
      (_$data['persons'] as Input_ClassesPersonsBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_BooleanComparisonExp? get serviceGender =>
      (_$data['serviceGender'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get serviceId =>
      (_$data['serviceId'] as Input_UuidComparisonExp?);

  Input_IntComparisonExp? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Input_IntComparisonExp?);

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
    if (_$data.containsKey('adminUsers')) {
      final l$adminUsers = adminUsers;
      result$data['adminUsers'] = l$adminUsers?.toJson();
    }
    if (_$data.containsKey('attendanceDaysConstraints')) {
      final l$attendanceDaysConstraints = attendanceDaysConstraints;
      result$data['attendanceDaysConstraints'] = l$attendanceDaysConstraints
          ?.toJson();
    }
    if (_$data.containsKey('attendanceDaysConstraintsAggregate')) {
      final l$attendanceDaysConstraintsAggregate =
          attendanceDaysConstraintsAggregate;
      result$data['attendanceDaysConstraintsAggregate'] =
          l$attendanceDaysConstraintsAggregate?.toJson();
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
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('editHistory')) {
      final l$editHistory = editHistory;
      result$data['editHistory'] = l$editHistory?.toJson();
    }
    if (_$data.containsKey('editHistoryAggregate')) {
      final l$editHistoryAggregate = editHistoryAggregate;
      result$data['editHistoryAggregate'] = l$editHistoryAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
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
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ClassesBoolExp<Input_ClassesBoolExp> get copyWith =>
      CopyWith_Input_ClassesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesBoolExp || runtimeType != other.runtimeType) {
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
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final lOther$attendanceDaysConstraints = other.attendanceDaysConstraints;
    if (_$data.containsKey('attendanceDaysConstraints') !=
        other._$data.containsKey('attendanceDaysConstraints')) {
      return false;
    }
    if (l$attendanceDaysConstraints != lOther$attendanceDaysConstraints) {
      return false;
    }
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final lOther$attendanceDaysConstraintsAggregate =
        other.attendanceDaysConstraintsAggregate;
    if (_$data.containsKey('attendanceDaysConstraintsAggregate') !=
        other._$data.containsKey('attendanceDaysConstraintsAggregate')) {
      return false;
    }
    if (l$attendanceDaysConstraintsAggregate !=
        lOther$attendanceDaysConstraintsAggregate) {
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
    final l$editHistory = editHistory;
    final lOther$editHistory = other.editHistory;
    if (_$data.containsKey('editHistory') !=
        other._$data.containsKey('editHistory')) {
      return false;
    }
    if (l$editHistory != lOther$editHistory) {
      return false;
    }
    final l$editHistoryAggregate = editHistoryAggregate;
    final lOther$editHistoryAggregate = other.editHistoryAggregate;
    if (_$data.containsKey('editHistoryAggregate') !=
        other._$data.containsKey('editHistoryAggregate')) {
      return false;
    }
    if (l$editHistoryAggregate != lOther$editHistoryAggregate) {
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
    final l$adminUsers = adminUsers;
    final l$attendanceDaysConstraints = attendanceDaysConstraints;
    final l$attendanceDaysConstraintsAggregate =
        attendanceDaysConstraintsAggregate;
    final l$attendanceHistory = attendanceHistory;
    final l$attendanceHistoryAggregate = attendanceHistoryAggregate;
    final l$blurhash = blurhash;
    final l$color = color;
    final l$editHistory = editHistory;
    final l$editHistoryAggregate = editHistoryAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$name = name;
    final l$persons = persons;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$serviceGender = serviceGender;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
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
      _$data.containsKey('adminUsers') ? l$adminUsers : const {},
      _$data.containsKey('attendanceDaysConstraints')
          ? l$attendanceDaysConstraints
          : const {},
      _$data.containsKey('attendanceDaysConstraintsAggregate')
          ? l$attendanceDaysConstraintsAggregate
          : const {},
      _$data.containsKey('attendanceHistory') ? l$attendanceHistory : const {},
      _$data.containsKey('attendanceHistoryAggregate')
          ? l$attendanceHistoryAggregate
          : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('editHistory') ? l$editHistory : const {},
      _$data.containsKey('editHistoryAggregate')
          ? l$editHistoryAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassesBoolExp<TRes> {
  factory CopyWith_Input_ClassesBoolExp(
    Input_ClassesBoolExp instance,
    TRes Function(Input_ClassesBoolExp) then,
  ) = _CopyWithImpl_Input_ClassesBoolExp;

  factory CopyWith_Input_ClassesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesBoolExp;

  TRes call({
    List<Input_ClassesBoolExp>? $_and,
    Input_ClassesBoolExp? $_not,
    List<Input_ClassesBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_ClassesPersonsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? studyYear,
  });
  TRes $_and(
    Iterable<Input_ClassesBoolExp>? Function(
      Iterable<CopyWith_Input_ClassesBoolExp<Input_ClassesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_ClassesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_ClassesBoolExp>? Function(
      Iterable<CopyWith_Input_ClassesBoolExp<Input_ClassesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers;
  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get attendanceDaysConstraints;
  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get attendanceDaysConstraintsAggregate;
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory;
  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate;
  CopyWith_Input_StringComparisonExp<TRes> get blurhash;
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory;
  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_ClassesPersonsBoolExp<TRes> get persons;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt;
  CopyWith_Input_ServicesBoolExp<TRes> get service;
  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender;
  CopyWith_Input_UuidComparisonExp<TRes> get serviceId;
  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear;
  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear;
}

class _CopyWithImpl_Input_ClassesBoolExp<TRes>
    implements CopyWith_Input_ClassesBoolExp<TRes> {
  _CopyWithImpl_Input_ClassesBoolExp(this._instance, this._then);

  final Input_ClassesBoolExp _instance;

  final TRes Function(Input_ClassesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? adminUsers = _undefined,
    Object? attendanceDaysConstraints = _undefined,
    Object? attendanceDaysConstraintsAggregate = _undefined,
    Object? attendanceHistory = _undefined,
    Object? attendanceHistoryAggregate = _undefined,
    Object? blurhash = _undefined,
    Object? color = _undefined,
    Object? editHistory = _undefined,
    Object? editHistoryAggregate = _undefined,
    Object? id = _undefined,
    Object? lastEdit = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? service = _undefined,
    Object? serviceGender = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? studyYear = _undefined,
  }) => _then(
    Input_ClassesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_ClassesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_ClassesBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_ClassesBoolExp>?),
      if (adminUsers != _undefined)
        'adminUsers': (adminUsers as Input_AuthUsersAdminOnBoolExp?),
      if (attendanceDaysConstraints != _undefined)
        'attendanceDaysConstraints':
            (attendanceDaysConstraints
                as Input_HistoryAttendanceDaysConstraintsBoolExp?),
      if (attendanceDaysConstraintsAggregate != _undefined)
        'attendanceDaysConstraintsAggregate':
            (attendanceDaysConstraintsAggregate
                as Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?),
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
      if (editHistory != _undefined)
        'editHistory': (editHistory as Input_HistoryEditHistoryBoolExp?),
      if (editHistoryAggregate != _undefined)
        'editHistoryAggregate':
            (editHistoryAggregate as Input_HistoryEditHistoryAggregateBoolExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_HistoryLatestEditsBoolExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined)
        'persons': (persons as Input_ClassesPersonsBoolExp?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_TimestamptzComparisonExp?),
      if (service != _undefined) 'service': (service as Input_ServicesBoolExp?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Input_BooleanComparisonExp?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_UuidComparisonExp?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Input_IntComparisonExp?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearsBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_ClassesBoolExp>? Function(
      Iterable<CopyWith_Input_ClassesBoolExp<Input_ClassesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_ClassesBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_ClassesBoolExp>? Function(
      Iterable<CopyWith_Input_ClassesBoolExp<Input_ClassesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_ClassesBoolExp(e, (i) => i)),
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

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get attendanceDaysConstraints {
    final local$attendanceDaysConstraints = _instance.attendanceDaysConstraints;
    return local$attendanceDaysConstraints == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            local$attendanceDaysConstraints,
            (e) => call(attendanceDaysConstraints: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get attendanceDaysConstraintsAggregate {
    final local$attendanceDaysConstraintsAggregate =
        _instance.attendanceDaysConstraintsAggregate;
    return local$attendanceDaysConstraintsAggregate == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp(
            local$attendanceDaysConstraintsAggregate,
            (e) => call(attendanceDaysConstraintsAggregate: e),
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

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory {
    final local$editHistory = _instance.editHistory;
    return local$editHistory == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$editHistory,
            (e) => call(editHistory: e),
          );
  }

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate {
    final local$editHistoryAggregate = _instance.editHistoryAggregate;
    return local$editHistoryAggregate == null
        ? CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryEditHistoryAggregateBoolExp(
            local$editHistoryAggregate,
            (e) => call(editHistoryAggregate: e),
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

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_ClassesPersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_ClassesPersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesPersonsBoolExp(
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

class _CopyWithStubImpl_Input_ClassesBoolExp<TRes>
    implements CopyWith_Input_ClassesBoolExp<TRes> {
  _CopyWithStubImpl_Input_ClassesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_ClassesBoolExp>? $_and,
    Input_ClassesBoolExp? $_not,
    List<Input_ClassesBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_HistoryAttendanceDaysConstraintsBoolExp? attendanceDaysConstraints,
    Input_HistoryAttendanceDaysConstraintsAggregateBoolExp?
    attendanceDaysConstraintsAggregate,
    Input_HistoryAttendanceHistoryBoolExp? attendanceHistory,
    Input_HistoryAttendanceHistoryAggregateBoolExp? attendanceHistoryAggregate,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryEditHistoryBoolExp? editHistory,
    Input_HistoryEditHistoryAggregateBoolExp? editHistoryAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_StringComparisonExp? name,
    Input_ClassesPersonsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_BooleanComparisonExp? serviceGender,
    Input_UuidComparisonExp? serviceId,
    Input_IntComparisonExp? serviceStudyYear,
    Input_StudyYearsBoolExp? studyYear,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get $_not =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_AuthUsersAdminOnBoolExp<TRes> get adminUsers =>
      CopyWith_Input_AuthUsersAdminOnBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes>
  get attendanceDaysConstraints =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp<TRes>
  get attendanceDaysConstraintsAggregate =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsAggregateBoolExp.stub(
        _res,
      );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get attendanceHistory =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
  get attendanceHistoryAggregate =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get blurhash =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get editHistory =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryEditHistoryAggregateBoolExp<TRes>
  get editHistoryAggregate =>
      CopyWith_Input_HistoryEditHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryLatestEditsBoolExp<TRes> get lastEdit =>
      CopyWith_Input_HistoryLatestEditsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_ClassesPersonsBoolExp<TRes> get persons =>
      CopyWith_Input_ClassesPersonsBoolExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get photoUpdatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_ServicesBoolExp<TRes> get service =>
      CopyWith_Input_ServicesBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get serviceGender =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get serviceId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get serviceStudyYear =>
      CopyWith_Input_IntComparisonExp.stub(_res);

  CopyWith_Input_StudyYearsBoolExp<TRes> get studyYear =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);
}

class Input_ClassesIncInput {
  factory Input_ClassesIncInput({int? color, int? serviceStudyYear}) =>
      Input_ClassesIncInput._({
        if (color != null) r'color': color,
        if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
      });

  Input_ClassesIncInput._(this._$data);

  factory Input_ClassesIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = (l$serviceStudyYear as int?);
    }
    return Input_ClassesIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  int? get serviceStudyYear => (_$data['serviceStudyYear'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear;
    }
    return result$data;
  }

  CopyWith_Input_ClassesIncInput<Input_ClassesIncInput> get copyWith =>
      CopyWith_Input_ClassesIncInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesIncInput || runtimeType != other.runtimeType) {
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
