// Part 23 of the schema
part of "schema.graphql.dart";

class _CopyWithImpl_Input_HistoryAttendanceDaysUpdates<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysUpdates<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysUpdates(this._instance, this._then);

  final Input_HistoryAttendanceDaysUpdates _instance;

  final TRes Function(Input_HistoryAttendanceDaysUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_HistoryAttendanceDaysUpdates._({
      ..._instance._$data,
      if ($_set != _undefined)
        '_set': ($_set as Input_HistoryAttendanceDaysSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_HistoryAttendanceDaysBoolExp),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_HistoryAttendanceDaysSetInput.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysSetInput(
            local$$_set,
            (e) => call($_set: e),
          );
  }

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_HistoryAttendanceDaysBoolExp(
      local$where,
      (e) => call(where: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysUpdates<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysUpdates<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysUpdates(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysSetInput? $_set,
    Input_HistoryAttendanceDaysBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> get $_set =>
      CopyWith_Input_HistoryAttendanceDaysSetInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);
}

class Input_HistoryAttendanceHistoryAggregateBoolExp {
  factory Input_HistoryAttendanceHistoryAggregateBoolExp({
    Input_historyAttendanceHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceHistoryAggregateBoolExpCount? count,
  }) => Input_HistoryAttendanceHistoryAggregateBoolExp._({
    if (bool_and != null) r'bool_and': bool_and,
    if (bool_or != null) r'bool_or': bool_or,
    if (count != null) r'count': count,
  });

  Input_HistoryAttendanceHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryAttendanceHistoryAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('bool_and')) {
      final l$bool_and = data['bool_and'];
      result$data['bool_and'] = l$bool_and == null
          ? null
          : Input_historyAttendanceHistoryAggregateBoolExpBool_and.fromJson(
              (l$bool_and as Map<String, dynamic>),
            );
    }
    if (data.containsKey('bool_or')) {
      final l$bool_or = data['bool_or'];
      result$data['bool_or'] = l$bool_or == null
          ? null
          : Input_historyAttendanceHistoryAggregateBoolExpBool_or.fromJson(
              (l$bool_or as Map<String, dynamic>),
            );
    }
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyAttendanceHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyAttendanceHistoryAggregateBoolExpBool_and? get bool_and =>
      (_$data['bool_and']
          as Input_historyAttendanceHistoryAggregateBoolExpBool_and?);

  Input_historyAttendanceHistoryAggregateBoolExpBool_or? get bool_or =>
      (_$data['bool_or']
          as Input_historyAttendanceHistoryAggregateBoolExpBool_or?);

  Input_historyAttendanceHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyAttendanceHistoryAggregateBoolExpCount?);

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

  CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<
    Input_HistoryAttendanceHistoryAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryAggregateBoolExp ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp(
    Input_HistoryAttendanceHistoryAggregateBoolExp instance,
    TRes Function(Input_HistoryAttendanceHistoryAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateBoolExp;

  factory CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateBoolExp;

  TRes call({
    Input_historyAttendanceHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceHistoryAggregateBoolExpCount? count,
  });
  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes>
  get bool_and;
  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes>
  get bool_or;
  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryAggregateBoolExp _instance;

  final TRes Function(Input_HistoryAttendanceHistoryAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bool_and = _undefined,
    Object? bool_or = _undefined,
    Object? count = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryAggregateBoolExp._({
      ..._instance._$data,
      if (bool_and != _undefined)
        'bool_and':
            (bool_and
                as Input_historyAttendanceHistoryAggregateBoolExpBool_and?),
      if (bool_or != _undefined)
        'bool_or':
            (bool_or as Input_historyAttendanceHistoryAggregateBoolExpBool_or?),
      if (count != _undefined)
        'count':
            (count as Input_historyAttendanceHistoryAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes>
  get bool_and {
    final local$bool_and = _instance.bool_and;
    return local$bool_and == null
        ? CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
            local$bool_and,
            (e) => call(bool_and: e),
          );
  }

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes>
  get bool_or {
    final local$bool_or = _instance.bool_or;
    return local$bool_or == null
        ? CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
            local$bool_or,
            (e) => call(bool_or: e),
          );
  }

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateBoolExp(this._res);

  TRes _res;

  call({
    Input_historyAttendanceHistoryAggregateBoolExpBool_and? bool_and,
    Input_historyAttendanceHistoryAggregateBoolExpBool_or? bool_or,
    Input_historyAttendanceHistoryAggregateBoolExpCount? count,
  }) => _res;

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes>
  get bool_and =>
      CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and.stub(
        _res,
      );

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes>
  get bool_or =>
      CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or.stub(_res);

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes>
  get count =>
      CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount.stub(_res);
}

class Input_HistoryAttendanceHistoryAggregateOrderBy {
  factory Input_HistoryAttendanceHistoryAggregateOrderBy({
    Enum_OrderBy? count,
    Input_HistoryAttendanceHistoryMaxOrderBy? max,
    Input_HistoryAttendanceHistoryMinOrderBy? min,
  }) => Input_HistoryAttendanceHistoryAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_HistoryAttendanceHistoryAggregateOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryAggregateOrderBy.fromJson(
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
          : Input_HistoryAttendanceHistoryMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryAttendanceHistoryMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceHistoryAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryAttendanceHistoryMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryAttendanceHistoryMaxOrderBy?);

  Input_HistoryAttendanceHistoryMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryAttendanceHistoryMinOrderBy?);

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

  CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<
    Input_HistoryAttendanceHistoryAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy(
    Input_HistoryAttendanceHistoryAggregateOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_HistoryAttendanceHistoryMaxOrderBy? max,
    Input_HistoryAttendanceHistoryMinOrderBy? min,
  });
  CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryAggregateOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryAttendanceHistoryMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryAttendanceHistoryMinOrderBy?),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryAttendanceHistoryMinOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_HistoryAttendanceHistoryMaxOrderBy? max,
    Input_HistoryAttendanceHistoryMinOrderBy? min,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryAttendanceHistoryMinOrderBy.stub(_res);
}

class Input_HistoryAttendanceHistoryArrRelInsertInput {
  factory Input_HistoryAttendanceHistoryArrRelInsertInput({
    required List<Input_HistoryAttendanceHistoryInsertInput> data,
    Input_HistoryAttendanceHistoryOnConflict? onConflict,
  }) => Input_HistoryAttendanceHistoryArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryAttendanceHistoryArrRelInsertInput._(this._$data);

  factory Input_HistoryAttendanceHistoryArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_HistoryAttendanceHistoryInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryAttendanceHistoryOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceHistoryArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceHistoryInsertInput> get data =>
      (_$data['data'] as List<Input_HistoryAttendanceHistoryInsertInput>);

  Input_HistoryAttendanceHistoryOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryAttendanceHistoryOnConflict?);

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

  CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<
    Input_HistoryAttendanceHistoryArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryArrRelInsertInput ||
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

abstract class CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput(
    Input_HistoryAttendanceHistoryArrRelInsertInput instance,
    TRes Function(Input_HistoryAttendanceHistoryArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryArrRelInsertInput;

  factory CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceHistoryArrRelInsertInput;

  TRes call({
    List<Input_HistoryAttendanceHistoryInsertInput>? data,
    Input_HistoryAttendanceHistoryOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_HistoryAttendanceHistoryInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceHistoryInsertInput<
          Input_HistoryAttendanceHistoryInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryArrRelInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceHistoryArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryAttendanceHistoryArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_HistoryAttendanceHistoryInsertInput>),
          if (onConflict != _undefined)
            'onConflict':
                (onConflict as Input_HistoryAttendanceHistoryOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_HistoryAttendanceHistoryInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceHistoryInsertInput<
          Input_HistoryAttendanceHistoryInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_HistoryAttendanceHistoryInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryAttendanceHistoryOnConflict.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceHistoryOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_HistoryAttendanceHistoryInsertInput>? data,
    Input_HistoryAttendanceHistoryOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryAttendanceHistoryOnConflict.stub(_res);
}

class Input_HistoryAttendanceHistoryBoolExp {
  factory Input_HistoryAttendanceHistoryBoolExp({
    List<Input_HistoryAttendanceHistoryBoolExp>? $_and,
    Input_HistoryAttendanceHistoryBoolExp? $_not,
    List<Input_HistoryAttendanceHistoryBoolExp>? $_or,
    Input_BooleanComparisonExp? asServant,
    Input_TimestamptzComparisonExp? datetime,
    Input_UuidComparisonExp? id,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_AuthUsersDataBoolExp? recordedByUser,
  }) => Input_HistoryAttendanceHistoryBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (asServant != null) r'asServant': asServant,
    if (datetime != null) r'datetime': datetime,
    if (id != null) r'id': id,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (recordedByUser != null) r'recordedByUser': recordedByUser,
  });

  Input_HistoryAttendanceHistoryBoolExp._(this._$data);

  factory Input_HistoryAttendanceHistoryBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('asServant')) {
      final l$asServant = data['asServant'];
      result$data['asServant'] = l$asServant == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$asServant as Map<String, dynamic>),
            );
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$datetime as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
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
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$recordedBy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('recordedByUser')) {
      final l$recordedByUser = data['recordedByUser'];
      result$data['recordedByUser'] = l$recordedByUser == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$recordedByUser as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceHistoryBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceHistoryBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryAttendanceHistoryBoolExp>?);

  Input_HistoryAttendanceHistoryBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryAttendanceHistoryBoolExp?);

  List<Input_HistoryAttendanceHistoryBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryAttendanceHistoryBoolExp>?);

  Input_BooleanComparisonExp? get asServant =>
      (_$data['asServant'] as Input_BooleanComparisonExp?);

  Input_TimestamptzComparisonExp? get datetime =>
      (_$data['datetime'] as Input_TimestamptzComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryMeetingsBoolExp? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsBoolExp?);

  Input_UuidComparisonExp? get meetingId =>
      (_$data['meetingId'] as Input_UuidComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get recordedBy =>
      (_$data['recordedBy'] as Input_UuidComparisonExp?);

  Input_AuthUsersDataBoolExp? get recordedByUser =>
      (_$data['recordedByUser'] as Input_AuthUsersDataBoolExp?);

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
    if (_$data.containsKey('asServant')) {
      final l$asServant = asServant;
      result$data['asServant'] = l$asServant?.toJson();
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
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
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy?.toJson();
    }
    if (_$data.containsKey('recordedByUser')) {
      final l$recordedByUser = recordedByUser;
      result$data['recordedByUser'] = l$recordedByUser?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<
    Input_HistoryAttendanceHistoryBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryBoolExp ||
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
    final l$asServant = asServant;
    final lOther$asServant = other.asServant;
    if (_$data.containsKey('asServant') !=
        other._$data.containsKey('asServant')) {
      return false;
    }
    if (l$asServant != lOther$asServant) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$recordedByUser = recordedByUser;
    final lOther$recordedByUser = other.recordedByUser;
    if (_$data.containsKey('recordedByUser') !=
        other._$data.containsKey('recordedByUser')) {
      return false;
    }
    if (l$recordedByUser != lOther$recordedByUser) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$asServant = asServant;
    final l$datetime = datetime;
    final l$id = id;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$recordedByUser = recordedByUser;
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
      _$data.containsKey('asServant') ? l$asServant : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('recordedByUser') ? l$recordedByUser : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryBoolExp(
    Input_HistoryAttendanceHistoryBoolExp instance,
    TRes Function(Input_HistoryAttendanceHistoryBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryBoolExp;

  factory CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryBoolExp;

  TRes call({
    List<Input_HistoryAttendanceHistoryBoolExp>? $_and,
    Input_HistoryAttendanceHistoryBoolExp? $_not,
    List<Input_HistoryAttendanceHistoryBoolExp>? $_or,
    Input_BooleanComparisonExp? asServant,
    Input_TimestamptzComparisonExp? datetime,
    Input_UuidComparisonExp? id,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_AuthUsersDataBoolExp? recordedByUser,
  });
  TRes $_and(
    Iterable<Input_HistoryAttendanceHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceHistoryBoolExp<
          Input_HistoryAttendanceHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryAttendanceHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceHistoryBoolExp<
          Input_HistoryAttendanceHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_BooleanComparisonExp<TRes> get asServant;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get datetime;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting;
  CopyWith_Input_UuidComparisonExp<TRes> get meetingId;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get recordedByUser;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryBoolExp _instance;

  final TRes Function(Input_HistoryAttendanceHistoryBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? asServant = _undefined,
    Object? datetime = _undefined,
    Object? id = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? recordedByUser = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryAttendanceHistoryBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryAttendanceHistoryBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryAttendanceHistoryBoolExp>?),
      if (asServant != _undefined)
        'asServant': (asServant as Input_BooleanComparisonExp?),
      if (datetime != _undefined)
        'datetime': (datetime as Input_TimestamptzComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsBoolExp?),
      if (meetingId != _undefined)
        'meetingId': (meetingId as Input_UuidComparisonExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_UuidComparisonExp?),
      if (recordedByUser != _undefined)
        'recordedByUser': (recordedByUser as Input_AuthUsersDataBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryAttendanceHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceHistoryBoolExp<
          Input_HistoryAttendanceHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryAttendanceHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryAttendanceHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceHistoryBoolExp<
          Input_HistoryAttendanceHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryAttendanceHistoryBoolExp(e, (i) => i),
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

  CopyWith_Input_TimestamptzComparisonExp<TRes> get datetime {
    final local$datetime = _instance.datetime;
    return local$datetime == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$datetime,
            (e) => call(datetime: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
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

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy {
    final local$recordedBy = _instance.recordedBy;
    return local$recordedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$recordedBy,
            (e) => call(recordedBy: e),
          );
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get recordedByUser {
    final local$recordedByUser = _instance.recordedByUser;
    return local$recordedByUser == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(
            local$recordedByUser,
            (e) => call(recordedByUser: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryAttendanceHistoryBoolExp>? $_and,
    Input_HistoryAttendanceHistoryBoolExp? $_not,
    List<Input_HistoryAttendanceHistoryBoolExp>? $_or,
    Input_BooleanComparisonExp? asServant,
    Input_TimestamptzComparisonExp? datetime,
    Input_UuidComparisonExp? id,
    Input_HistoryMeetingsBoolExp? meeting,
    Input_UuidComparisonExp? meetingId,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_AuthUsersDataBoolExp? recordedByUser,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_BooleanComparisonExp<TRes> get asServant =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get datetime =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get meetingId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get recordedByUser =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_HistoryAttendanceHistoryInsertInput {
  factory Input_HistoryAttendanceHistoryInsertInput({
    bool? asServant,
    DateTime? datetime,
    Input_HistoryMeetingsObjRelInsertInput? meeting,
    UuidValue? meetingId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) => Input_HistoryAttendanceHistoryInsertInput._({
    if (asServant != null) r'asServant': asServant,
    if (datetime != null) r'datetime': datetime,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryAttendanceHistoryInsertInput._(this._$data);

  factory Input_HistoryAttendanceHistoryInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asServant')) {
      final l$asServant = data['asServant'];
      result$data['asServant'] = (l$asServant as bool?);
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : tstzFromString(l$datetime);
    }
    if (data.containsKey('meeting')) {
      final l$meeting = data['meeting'];
      result$data['meeting'] = l$meeting == null
          ? null
          : Input_HistoryMeetingsObjRelInsertInput.fromJson(
              (l$meeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetingId')) {
      final l$meetingId = data['meetingId'];
      result$data['meetingId'] = l$meetingId == null
          ? null
          : stringToUuid(l$meetingId);
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsObjRelInsertInput.fromJson(
              (l$person as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    return Input_HistoryAttendanceHistoryInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get asServant => (_$data['asServant'] as bool?);

  DateTime? get datetime => (_$data['datetime'] as DateTime?);

  Input_HistoryMeetingsObjRelInsertInput? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsObjRelInsertInput?);

  UuidValue? get meetingId => (_$data['meetingId'] as UuidValue?);

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asServant')) {
      final l$asServant = asServant;
      result$data['asServant'] = l$asServant;
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime == null
          ? null
          : tstzToString(l$datetime);
    }
    if (_$data.containsKey('meeting')) {
      final l$meeting = meeting;
      result$data['meeting'] = l$meeting?.toJson();
    }
    if (_$data.containsKey('meetingId')) {
      final l$meetingId = meetingId;
      result$data['meetingId'] = l$meetingId == null
          ? null
          : uuidToString(l$meetingId);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryInsertInput<
    Input_HistoryAttendanceHistoryInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryInsertInput ||
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
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
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
    final l$asServant = asServant;
    final l$datetime = datetime;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('asServant') ? l$asServant : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryInsertInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryInsertInput(
    Input_HistoryAttendanceHistoryInsertInput instance,
    TRes Function(Input_HistoryAttendanceHistoryInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryInsertInput;

  factory CopyWith_Input_HistoryAttendanceHistoryInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryInsertInput;

  TRes call({
    bool? asServant,
    DateTime? datetime,
    Input_HistoryMeetingsObjRelInsertInput? meeting,
    UuidValue? meetingId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  });
  CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> get meeting;
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceHistoryInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? asServant = _undefined,
    Object? datetime = _undefined,
    Object? meeting = _undefined,
    Object? meetingId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryInsertInput._({
      ..._instance._$data,
      if (asServant != _undefined) 'asServant': (asServant as bool?),
      if (datetime != _undefined) 'datetime': (datetime as DateTime?),
      if (meeting != _undefined)
        'meeting': (meeting as Input_HistoryMeetingsObjRelInsertInput?),
      if (meetingId != _undefined) 'meetingId': (meetingId as UuidValue?),
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
    }),
  );

  CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> get meeting {
    final local$meeting = _instance.meeting;
    return local$meeting == null
        ? CopyWith_Input_HistoryMeetingsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsObjRelInsertInput(
            local$meeting,
            (e) => call(meeting: e),
          );
  }

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsObjRelInsertInput(
            local$person,
            (e) => call(person: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryInsertInput(this._res);

  TRes _res;

  call({
    bool? asServant,
    DateTime? datetime,
    Input_HistoryMeetingsObjRelInsertInput? meeting,
    UuidValue? meetingId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) => _res;

  CopyWith_Input_HistoryMeetingsObjRelInsertInput<TRes> get meeting =>
      CopyWith_Input_HistoryMeetingsObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);
}

class Input_HistoryAttendanceHistoryMaxOrderBy {
  factory Input_HistoryAttendanceHistoryMaxOrderBy({
    Enum_OrderBy? datetime,
    Enum_OrderBy? id,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
  }) => Input_HistoryAttendanceHistoryMaxOrderBy._({
    if (datetime != null) r'datetime': datetime,
    if (id != null) r'id': id,
    if (meetingId != null) r'meetingId': meetingId,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
  });

  Input_HistoryAttendanceHistoryMaxOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryMaxOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : fromJson_Enum_OrderBy((l$datetime as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
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
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    return Input_HistoryAttendanceHistoryMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get datetime => (_$data['datetime'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime == null
          ? null
          : toJson_Enum_OrderBy(l$datetime);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
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
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<
    Input_HistoryAttendanceHistoryMaxOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$datetime = datetime;
    final l$id = id;
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    return Object.hashAll([
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy(
    Input_HistoryAttendanceHistoryMaxOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryMaxOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryMaxOrderBy;

  TRes call({
    Enum_OrderBy? datetime,
    Enum_OrderBy? id,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryMaxOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryMaxOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? datetime = _undefined,
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryMaxOrderBy._({
      ..._instance._$data,
      if (datetime != _undefined) 'datetime': (datetime as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (meetingId != _undefined) 'meetingId': (meetingId as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? datetime,
    Enum_OrderBy? id,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
  }) => _res;
}

class Input_HistoryAttendanceHistoryMinOrderBy {
  factory Input_HistoryAttendanceHistoryMinOrderBy({
    Enum_OrderBy? datetime,
    Enum_OrderBy? id,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
  }) => Input_HistoryAttendanceHistoryMinOrderBy._({
    if (datetime != null) r'datetime': datetime,
    if (id != null) r'id': id,
    if (meetingId != null) r'meetingId': meetingId,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
  });

  Input_HistoryAttendanceHistoryMinOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryMinOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : fromJson_Enum_OrderBy((l$datetime as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
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
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    return Input_HistoryAttendanceHistoryMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get datetime => (_$data['datetime'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime == null
          ? null
          : toJson_Enum_OrderBy(l$datetime);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
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
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<
    Input_HistoryAttendanceHistoryMinOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$datetime = datetime;
    final l$id = id;
    final l$meetingId = meetingId;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    return Object.hashAll([
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryMinOrderBy(
    Input_HistoryAttendanceHistoryMinOrderBy instance,
    TRes Function(Input_HistoryAttendanceHistoryMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryMinOrderBy;

  factory CopyWith_Input_HistoryAttendanceHistoryMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryMinOrderBy;

  TRes call({
    Enum_OrderBy? datetime,
    Enum_OrderBy? id,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
  });
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryMinOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? datetime = _undefined,
    Object? id = _undefined,
    Object? meetingId = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryMinOrderBy._({
      ..._instance._$data,
      if (datetime != _undefined) 'datetime': (datetime as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (meetingId != _undefined) 'meetingId': (meetingId as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? datetime,
    Enum_OrderBy? id,
    Enum_OrderBy? meetingId,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
  }) => _res;
}

class Input_HistoryAttendanceHistoryOnConflict {
  factory Input_HistoryAttendanceHistoryOnConflict({
    required Enum_HistoryAttendanceHistoryConstraint constraint,
    List<Enum_HistoryAttendanceHistoryUpdateColumn>? updateColumns,
    Input_HistoryAttendanceHistoryBoolExp? where,
  }) => Input_HistoryAttendanceHistoryOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryAttendanceHistoryOnConflict._(this._$data);

  factory Input_HistoryAttendanceHistoryOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_HistoryAttendanceHistoryConstraint(
          (l$constraint as String),
        );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_HistoryAttendanceHistoryUpdateColumn(
              (e as String),
            ),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceHistoryOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceHistoryConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryAttendanceHistoryConstraint);

  List<Enum_HistoryAttendanceHistoryUpdateColumn>? get updateColumns =>
      (_$data['updateColumns']
          as List<Enum_HistoryAttendanceHistoryUpdateColumn>?);

  Input_HistoryAttendanceHistoryBoolExp? get where =>
      (_$data['where'] as Input_HistoryAttendanceHistoryBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryAttendanceHistoryConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryAttendanceHistoryUpdateColumn>)
              .map((e) => toJson_Enum_HistoryAttendanceHistoryUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryOnConflict<
    Input_HistoryAttendanceHistoryOnConflict
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryOnConflict ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$updateColumns = updateColumns;
    final lOther$updateColumns = other.updateColumns;
    if (_$data.containsKey('updateColumns') !=
        other._$data.containsKey('updateColumns')) {
      return false;
    }
    if (l$updateColumns != null && lOther$updateColumns != null) {
      if (l$updateColumns.length != lOther$updateColumns.length) {
        return false;
      }
      for (int i = 0; i < l$updateColumns.length; i++) {
        final l$updateColumns$entry = l$updateColumns[i];
        final lOther$updateColumns$entry = lOther$updateColumns[i];
        if (l$updateColumns$entry != lOther$updateColumns$entry) {
          return false;
        }
      }
    } else if (l$updateColumns != lOther$updateColumns) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$updateColumns = updateColumns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      _$data.containsKey('updateColumns')
          ? l$updateColumns == null
                ? null
                : Object.hashAll(l$updateColumns.map((v) => v))
          : const {},
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> {
  factory CopyWith_Input_HistoryAttendanceHistoryOnConflict(
    Input_HistoryAttendanceHistoryOnConflict instance,
    TRes Function(Input_HistoryAttendanceHistoryOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceHistoryOnConflict;

  factory CopyWith_Input_HistoryAttendanceHistoryOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceHistoryOnConflict;

  TRes call({
    Enum_HistoryAttendanceHistoryConstraint? constraint,
    List<Enum_HistoryAttendanceHistoryUpdateColumn>? updateColumns,
    Input_HistoryAttendanceHistoryBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceHistoryOnConflict(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceHistoryOnConflict _instance;

  final TRes Function(Input_HistoryAttendanceHistoryOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryAttendanceHistoryOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryAttendanceHistoryConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryAttendanceHistoryUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryAttendanceHistoryBoolExp?),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceHistoryOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceHistoryOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryAttendanceHistoryConstraint? constraint,
    List<Enum_HistoryAttendanceHistoryUpdateColumn>? updateColumns,
    Input_HistoryAttendanceHistoryBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);
}

class Input_HistoryAttendanceHistoryOrderBy {
  factory Input_HistoryAttendanceHistoryOrderBy({
    Enum_OrderBy? asServant,
    Enum_OrderBy? datetime,
    Enum_OrderBy? id,
    Input_HistoryMeetingsOrderBy? meeting,
    Enum_OrderBy? meetingId,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Input_AuthUsersDataOrderBy? recordedByUser,
  }) => Input_HistoryAttendanceHistoryOrderBy._({
    if (asServant != null) r'asServant': asServant,
    if (datetime != null) r'datetime': datetime,
    if (id != null) r'id': id,
    if (meeting != null) r'meeting': meeting,
    if (meetingId != null) r'meetingId': meetingId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (recordedByUser != null) r'recordedByUser': recordedByUser,
  });

  Input_HistoryAttendanceHistoryOrderBy._(this._$data);

  factory Input_HistoryAttendanceHistoryOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('asServant')) {
      final l$asServant = data['asServant'];
      result$data['asServant'] = l$asServant == null
          ? null
          : fromJson_Enum_OrderBy((l$asServant as String));
    }
    if (data.containsKey('datetime')) {
      final l$datetime = data['datetime'];
      result$data['datetime'] = l$datetime == null
          ? null
          : fromJson_Enum_OrderBy((l$datetime as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
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
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$recordedBy as String));
    }
    if (data.containsKey('recordedByUser')) {
      final l$recordedByUser = data['recordedByUser'];
      result$data['recordedByUser'] = l$recordedByUser == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$recordedByUser as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceHistoryOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get asServant => (_$data['asServant'] as Enum_OrderBy?);

  Enum_OrderBy? get datetime => (_$data['datetime'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_HistoryMeetingsOrderBy? get meeting =>
      (_$data['meeting'] as Input_HistoryMeetingsOrderBy?);

  Enum_OrderBy? get meetingId => (_$data['meetingId'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get recordedByUser =>
      (_$data['recordedByUser'] as Input_AuthUsersDataOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('asServant')) {
      final l$asServant = asServant;
      result$data['asServant'] = l$asServant == null
          ? null
          : toJson_Enum_OrderBy(l$asServant);
    }
    if (_$data.containsKey('datetime')) {
      final l$datetime = datetime;
      result$data['datetime'] = l$datetime == null
          ? null
          : toJson_Enum_OrderBy(l$datetime);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
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
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : toJson_Enum_OrderBy(l$recordedBy);
    }
    if (_$data.containsKey('recordedByUser')) {
      final l$recordedByUser = recordedByUser;
      result$data['recordedByUser'] = l$recordedByUser?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceHistoryOrderBy<
    Input_HistoryAttendanceHistoryOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceHistoryOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceHistoryOrderBy ||
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
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (_$data.containsKey('datetime') !=
        other._$data.containsKey('datetime')) {
      return false;
    }
    if (l$datetime != lOther$datetime) {
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
    final l$recordedBy = recordedBy;
    final lOther$recordedBy = other.recordedBy;
    if (_$data.containsKey('recordedBy') !=
        other._$data.containsKey('recordedBy')) {
      return false;
    }
    if (l$recordedBy != lOther$recordedBy) {
      return false;
    }
    final l$recordedByUser = recordedByUser;
    final lOther$recordedByUser = other.recordedByUser;
    if (_$data.containsKey('recordedByUser') !=
        other._$data.containsKey('recordedByUser')) {
      return false;
    }
    if (l$recordedByUser != lOther$recordedByUser) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$asServant = asServant;
    final l$datetime = datetime;
    final l$id = id;
    final l$meeting = meeting;
    final l$meetingId = meetingId;
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$recordedByUser = recordedByUser;
    return Object.hashAll([
      _$data.containsKey('asServant') ? l$asServant : const {},
      _$data.containsKey('datetime') ? l$datetime : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('meeting') ? l$meeting : const {},
      _$data.containsKey('meetingId') ? l$meetingId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('recordedByUser') ? l$recordedByUser : const {},
    ]);
  }
}
