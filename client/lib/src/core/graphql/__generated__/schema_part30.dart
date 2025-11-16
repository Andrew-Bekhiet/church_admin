// Part 30 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_HistoryEditHistoryStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryEditHistoryStreamCursorInput(
    Input_HistoryEditHistoryStreamCursorInput instance,
    TRes Function(Input_HistoryEditHistoryStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryEditHistoryStreamCursorInput;

  factory CopyWith_Input_HistoryEditHistoryStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryEditHistoryStreamCursorInput;

  TRes call({
    Input_HistoryEditHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryEditHistoryStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryEditHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryEditHistoryStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryEditHistoryStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryEditHistoryStreamCursorInput _instance;

  final TRes Function(Input_HistoryEditHistoryStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryEditHistoryStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryEditHistoryStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryEditHistoryStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryEditHistoryStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryEditHistoryStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryEditHistoryStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryEditHistoryStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryEditHistoryStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryEditHistoryStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryEditHistoryStreamCursorValueInput.stub(_res);
}

class Input_HistoryEditHistoryStreamCursorValueInput {
  factory Input_HistoryEditHistoryStreamCursorValueInput({
    UuidValue? recordId,
    UuidValue? recordedBy,
    String? table,
    DateTime? time,
  }) => Input_HistoryEditHistoryStreamCursorValueInput._({
    if (recordId != null) r'recordId': recordId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (table != null) r'table': table,
    if (time != null) r'time': time,
  });

  Input_HistoryEditHistoryStreamCursorValueInput._(this._$data);

  factory Input_HistoryEditHistoryStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('recordId')) {
      final l$recordId = data['recordId'];
      result$data['recordId'] = l$recordId == null
          ? null
          : stringToUuid(l$recordId);
    }
    if (data.containsKey('recordedBy')) {
      final l$recordedBy = data['recordedBy'];
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : stringToUuid(l$recordedBy);
    }
    if (data.containsKey('table')) {
      final l$table = data['table'];
      result$data['table'] = (l$table as String?);
    }
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null ? null : tstzFromString(l$time);
    }
    return Input_HistoryEditHistoryStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get recordId => (_$data['recordId'] as UuidValue?);

  UuidValue? get recordedBy => (_$data['recordedBy'] as UuidValue?);

  String? get table => (_$data['table'] as String?);

  DateTime? get time => (_$data['time'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('recordId')) {
      final l$recordId = recordId;
      result$data['recordId'] = l$recordId == null
          ? null
          : uuidToString(l$recordId);
    }
    if (_$data.containsKey('recordedBy')) {
      final l$recordedBy = recordedBy;
      result$data['recordedBy'] = l$recordedBy == null
          ? null
          : uuidToString(l$recordedBy);
    }
    if (_$data.containsKey('table')) {
      final l$table = table;
      result$data['table'] = l$table;
    }
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : tstzToString(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryEditHistoryStreamCursorValueInput<
    Input_HistoryEditHistoryStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_HistoryEditHistoryStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryEditHistoryStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recordId = recordId;
    final lOther$recordId = other.recordId;
    if (_$data.containsKey('recordId') !=
        other._$data.containsKey('recordId')) {
      return false;
    }
    if (l$recordId != lOther$recordId) {
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
    final l$table = table;
    final lOther$table = other.table;
    if (_$data.containsKey('table') != other._$data.containsKey('table')) {
      return false;
    }
    if (l$table != lOther$table) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$recordId = recordId;
    final l$recordedBy = recordedBy;
    final l$table = table;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('recordId') ? l$recordId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('table') ? l$table : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryEditHistoryStreamCursorValueInput<TRes> {
  factory CopyWith_Input_HistoryEditHistoryStreamCursorValueInput(
    Input_HistoryEditHistoryStreamCursorValueInput instance,
    TRes Function(Input_HistoryEditHistoryStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryEditHistoryStreamCursorValueInput;

  factory CopyWith_Input_HistoryEditHistoryStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryEditHistoryStreamCursorValueInput;

  TRes call({
    UuidValue? recordId,
    UuidValue? recordedBy,
    String? table,
    DateTime? time,
  });
}

class _CopyWithImpl_Input_HistoryEditHistoryStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryEditHistoryStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryEditHistoryStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryEditHistoryStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryEditHistoryStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recordId = _undefined,
    Object? recordedBy = _undefined,
    Object? table = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryEditHistoryStreamCursorValueInput._({
      ..._instance._$data,
      if (recordId != _undefined) 'recordId': (recordId as UuidValue?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as UuidValue?),
      if (table != _undefined) 'table': (table as String?),
      if (time != _undefined) 'time': (time as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryEditHistoryStreamCursorValueInput<TRes>
    implements CopyWith_Input_HistoryEditHistoryStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryEditHistoryStreamCursorValueInput(this._res);

  TRes _res;

  call({
    UuidValue? recordId,
    UuidValue? recordedBy,
    String? table,
    DateTime? time,
  }) => _res;
}

class Input_HistoryKodasHistoryAggregateBoolExp {
  factory Input_HistoryKodasHistoryAggregateBoolExp({
    Input_historyKodasHistoryAggregateBoolExpCount? count,
  }) => Input_HistoryKodasHistoryAggregateBoolExp._({
    if (count != null) r'count': count,
  });

  Input_HistoryKodasHistoryAggregateBoolExp._(this._$data);

  factory Input_HistoryKodasHistoryAggregateBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_historyKodasHistoryAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_HistoryKodasHistoryAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_historyKodasHistoryAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_historyKodasHistoryAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<
    Input_HistoryKodasHistoryAggregateBoolExp
  >
  get copyWith =>
      CopyWith_Input_HistoryKodasHistoryAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryAggregateBoolExp ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([_$data.containsKey('count') ? l$count : const {}]);
  }
}

abstract class CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryAggregateBoolExp(
    Input_HistoryKodasHistoryAggregateBoolExp instance,
    TRes Function(Input_HistoryKodasHistoryAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryAggregateBoolExp;

  factory CopyWith_Input_HistoryKodasHistoryAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryAggregateBoolExp;

  TRes call({Input_historyKodasHistoryAggregateBoolExpCount? count});
  CopyWith_Input_historyKodasHistoryAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryAggregateBoolExp(
    this._instance,
    this._then,
  );

  final Input_HistoryKodasHistoryAggregateBoolExp _instance;

  final TRes Function(Input_HistoryKodasHistoryAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) => _then(
    Input_HistoryKodasHistoryAggregateBoolExp._({
      ..._instance._$data,
      if (count != _undefined)
        'count': (count as Input_historyKodasHistoryAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_historyKodasHistoryAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_historyKodasHistoryAggregateBoolExpCount.stub(
            _then(_instance),
          )
        : CopyWith_Input_historyKodasHistoryAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
    implements CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryAggregateBoolExp(this._res);

  TRes _res;

  call({Input_historyKodasHistoryAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_historyKodasHistoryAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_historyKodasHistoryAggregateBoolExpCount.stub(_res);
}

class Input_HistoryKodasHistoryAggregateOrderBy {
  factory Input_HistoryKodasHistoryAggregateOrderBy({
    Enum_OrderBy? count,
    Input_HistoryKodasHistoryMaxOrderBy? max,
    Input_HistoryKodasHistoryMinOrderBy? min,
  }) => Input_HistoryKodasHistoryAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_HistoryKodasHistoryAggregateOrderBy._(this._$data);

  factory Input_HistoryKodasHistoryAggregateOrderBy.fromJson(
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
          : Input_HistoryKodasHistoryMaxOrderBy.fromJson(
              (l$max as Map<String, dynamic>),
            );
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_HistoryKodasHistoryMinOrderBy.fromJson(
              (l$min as Map<String, dynamic>),
            );
    }
    return Input_HistoryKodasHistoryAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_HistoryKodasHistoryMaxOrderBy? get max =>
      (_$data['max'] as Input_HistoryKodasHistoryMaxOrderBy?);

  Input_HistoryKodasHistoryMinOrderBy? get min =>
      (_$data['min'] as Input_HistoryKodasHistoryMinOrderBy?);

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

  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<
    Input_HistoryKodasHistoryAggregateOrderBy
  >
  get copyWith =>
      CopyWith_Input_HistoryKodasHistoryAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryAggregateOrderBy ||
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

abstract class CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryAggregateOrderBy(
    Input_HistoryKodasHistoryAggregateOrderBy instance,
    TRes Function(Input_HistoryKodasHistoryAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryAggregateOrderBy;

  factory CopyWith_Input_HistoryKodasHistoryAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_HistoryKodasHistoryMaxOrderBy? max,
    Input_HistoryKodasHistoryMinOrderBy? min,
  });
  CopyWith_Input_HistoryKodasHistoryMaxOrderBy<TRes> get max;
  CopyWith_Input_HistoryKodasHistoryMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_HistoryKodasHistoryAggregateOrderBy _instance;

  final TRes Function(Input_HistoryKodasHistoryAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined)
        'max': (max as Input_HistoryKodasHistoryMaxOrderBy?),
      if (min != _undefined)
        'min': (min as Input_HistoryKodasHistoryMinOrderBy?),
    }),
  );

  CopyWith_Input_HistoryKodasHistoryMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_HistoryKodasHistoryMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_HistoryKodasHistoryMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_HistoryKodasHistoryMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_HistoryKodasHistoryMaxOrderBy? max,
    Input_HistoryKodasHistoryMinOrderBy? min,
  }) => _res;

  CopyWith_Input_HistoryKodasHistoryMaxOrderBy<TRes> get max =>
      CopyWith_Input_HistoryKodasHistoryMaxOrderBy.stub(_res);

  CopyWith_Input_HistoryKodasHistoryMinOrderBy<TRes> get min =>
      CopyWith_Input_HistoryKodasHistoryMinOrderBy.stub(_res);
}

class Input_HistoryKodasHistoryArrRelInsertInput {
  factory Input_HistoryKodasHistoryArrRelInsertInput({
    required List<Input_HistoryKodasHistoryInsertInput> data,
    Input_HistoryKodasHistoryOnConflict? onConflict,
  }) => Input_HistoryKodasHistoryArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryKodasHistoryArrRelInsertInput._(this._$data);

  factory Input_HistoryKodasHistoryArrRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_HistoryKodasHistoryInsertInput.fromJson(
            (e as Map<String, dynamic>),
          ),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryKodasHistoryOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryKodasHistoryArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryKodasHistoryInsertInput> get data =>
      (_$data['data'] as List<Input_HistoryKodasHistoryInsertInput>);

  Input_HistoryKodasHistoryOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryKodasHistoryOnConflict?);

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

  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<
    Input_HistoryKodasHistoryArrRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryKodasHistoryArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryArrRelInsertInput ||
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

abstract class CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryArrRelInsertInput(
    Input_HistoryKodasHistoryArrRelInsertInput instance,
    TRes Function(Input_HistoryKodasHistoryArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryArrRelInsertInput;

  factory CopyWith_Input_HistoryKodasHistoryArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryArrRelInsertInput;

  TRes call({
    List<Input_HistoryKodasHistoryInsertInput>? data,
    Input_HistoryKodasHistoryOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_HistoryKodasHistoryInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryKodasHistoryInsertInput<
          Input_HistoryKodasHistoryInsertInput
        >
      >,
    )
    _fn,
  );
  CopyWith_Input_HistoryKodasHistoryOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryKodasHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryArrRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryKodasHistoryArrRelInsertInput _instance;

  final TRes Function(Input_HistoryKodasHistoryArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryKodasHistoryArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_HistoryKodasHistoryInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_HistoryKodasHistoryOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_HistoryKodasHistoryInsertInput> Function(
      Iterable<
        CopyWith_Input_HistoryKodasHistoryInsertInput<
          Input_HistoryKodasHistoryInsertInput
        >
      >,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_HistoryKodasHistoryInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_HistoryKodasHistoryOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryKodasHistoryOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryArrRelInsertInput<TRes>
    implements CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_HistoryKodasHistoryInsertInput>? data,
    Input_HistoryKodasHistoryOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_HistoryKodasHistoryOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryKodasHistoryOnConflict.stub(_res);
}

class Input_HistoryKodasHistoryBoolExp {
  factory Input_HistoryKodasHistoryBoolExp({
    List<Input_HistoryKodasHistoryBoolExp>? $_and,
    Input_HistoryKodasHistoryBoolExp? $_not,
    List<Input_HistoryKodasHistoryBoolExp>? $_or,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_UuidComparisonExp? id,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => Input_HistoryKodasHistoryBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (day != null) r'day': day,
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryKodasHistoryBoolExp._(this._$data);

  factory Input_HistoryKodasHistoryBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryKodasHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryKodasHistoryBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryKodasHistoryBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysBoolExp.fromJson(
              (l$day as Map<String, dynamic>),
            );
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : Input_DateComparisonExp.fromJson((l$dayId as Map<String, dynamic>));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
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
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : Input_DateComparisonExp.fromJson((l$time as Map<String, dynamic>));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataBoolExp.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_HistoryKodasHistoryBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryKodasHistoryBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryKodasHistoryBoolExp>?);

  Input_HistoryKodasHistoryBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryKodasHistoryBoolExp?);

  List<Input_HistoryKodasHistoryBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryKodasHistoryBoolExp>?);

  Input_HistoryAttendanceDaysBoolExp? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysBoolExp?);

  Input_DateComparisonExp? get dayId =>
      (_$data['dayId'] as Input_DateComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get recordedBy =>
      (_$data['recordedBy'] as Input_UuidComparisonExp?);

  Input_DateComparisonExp? get time =>
      (_$data['time'] as Input_DateComparisonExp?);

  Input_AuthUsersDataBoolExp? get user =>
      (_$data['user'] as Input_AuthUsersDataBoolExp?);

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
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
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
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time?.toJson();
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryKodasHistoryBoolExp<Input_HistoryKodasHistoryBoolExp>
  get copyWith => CopyWith_Input_HistoryKodasHistoryBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryBoolExp ||
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
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
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
    final l$dayId = dayId;
    final l$id = id;
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    final l$user = user;
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
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryBoolExp(
    Input_HistoryKodasHistoryBoolExp instance,
    TRes Function(Input_HistoryKodasHistoryBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryBoolExp;

  factory CopyWith_Input_HistoryKodasHistoryBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryBoolExp;

  TRes call({
    List<Input_HistoryKodasHistoryBoolExp>? $_and,
    Input_HistoryKodasHistoryBoolExp? $_not,
    List<Input_HistoryKodasHistoryBoolExp>? $_or,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_UuidComparisonExp? id,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  });
  TRes $_and(
    Iterable<Input_HistoryKodasHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryKodasHistoryBoolExp<
          Input_HistoryKodasHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryKodasHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryKodasHistoryBoolExp<
          Input_HistoryKodasHistoryBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get day;
  CopyWith_Input_DateComparisonExp<TRes> get dayId;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy;
  CopyWith_Input_DateComparisonExp<TRes> get time;
  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user;
}

class _CopyWithImpl_Input_HistoryKodasHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryBoolExp(this._instance, this._then);

  final Input_HistoryKodasHistoryBoolExp _instance;

  final TRes Function(Input_HistoryKodasHistoryBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
    Object? user = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryKodasHistoryBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryKodasHistoryBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryKodasHistoryBoolExp>?),
      if (day != _undefined)
        'day': (day as Input_HistoryAttendanceDaysBoolExp?),
      if (dayId != _undefined) 'dayId': (dayId as Input_DateComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (recordedBy != _undefined)
        'recordedBy': (recordedBy as Input_UuidComparisonExp?),
      if (time != _undefined) 'time': (time as Input_DateComparisonExp?),
      if (user != _undefined) 'user': (user as Input_AuthUsersDataBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryKodasHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryKodasHistoryBoolExp<
          Input_HistoryKodasHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryKodasHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryKodasHistoryBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryKodasHistoryBoolExp<
          Input_HistoryKodasHistoryBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryKodasHistoryBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysBoolExp(
            local$day,
            (e) => call(day: e),
          );
  }

  CopyWith_Input_DateComparisonExp<TRes> get dayId {
    final local$dayId = _instance.dayId;
    return local$dayId == null
        ? CopyWith_Input_DateComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DateComparisonExp(local$dayId, (e) => call(dayId: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
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

  CopyWith_Input_DateComparisonExp<TRes> get time {
    final local$time = _instance.time;
    return local$time == null
        ? CopyWith_Input_DateComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DateComparisonExp(local$time, (e) => call(time: e));
  }

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith_Input_AuthUsersDataBoolExp.stub(_then(_instance))
        : CopyWith_Input_AuthUsersDataBoolExp(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryBoolExp<TRes>
    implements CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryKodasHistoryBoolExp>? $_and,
    Input_HistoryKodasHistoryBoolExp? $_not,
    List<Input_HistoryKodasHistoryBoolExp>? $_or,
    Input_HistoryAttendanceDaysBoolExp? day,
    Input_DateComparisonExp? dayId,
    Input_UuidComparisonExp? id,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_UuidComparisonExp? recordedBy,
    Input_DateComparisonExp? time,
    Input_AuthUsersDataBoolExp? user,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);

  CopyWith_Input_DateComparisonExp<TRes> get dayId =>
      CopyWith_Input_DateComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get recordedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_DateComparisonExp<TRes> get time =>
      CopyWith_Input_DateComparisonExp.stub(_res);

  CopyWith_Input_AuthUsersDataBoolExp<TRes> get user =>
      CopyWith_Input_AuthUsersDataBoolExp.stub(_res);
}

class Input_HistoryKodasHistoryInsertInput {
  factory Input_HistoryKodasHistoryInsertInput({
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) => Input_HistoryKodasHistoryInsertInput._({
    if (day != null) r'day': day,
    if (dayId != null) r'dayId': dayId,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
  });

  Input_HistoryKodasHistoryInsertInput._(this._$data);

  factory Input_HistoryKodasHistoryInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysObjRelInsertInput.fromJson(
              (l$day as Map<String, dynamic>),
            );
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null ? null : dateFromString(l$dayId);
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
    return Input_HistoryKodasHistoryInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysObjRelInsertInput? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysObjRelInsertInput?);

  DateTime? get dayId => (_$data['dayId'] as DateTime?);

  Input_PersonsObjRelInsertInput? get person =>
      (_$data['person'] as Input_PersonsObjRelInsertInput?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null ? null : dateToString(l$dayId);
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

  CopyWith_Input_HistoryKodasHistoryInsertInput<
    Input_HistoryKodasHistoryInsertInput
  >
  get copyWith => CopyWith_Input_HistoryKodasHistoryInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryInsertInput ||
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
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$day = day;
    final l$dayId = dayId;
    final l$person = person;
    final l$personId = personId;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryKodasHistoryInsertInput<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryInsertInput(
    Input_HistoryKodasHistoryInsertInput instance,
    TRes Function(Input_HistoryKodasHistoryInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryInsertInput;

  factory CopyWith_Input_HistoryKodasHistoryInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryInsertInput;

  TRes call({
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  });
  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day;
  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person;
}

class _CopyWithImpl_Input_HistoryKodasHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryKodasHistoryInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryKodasHistoryInsertInput _instance;

  final TRes Function(Input_HistoryKodasHistoryInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? dayId = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryInsertInput._({
      ..._instance._$data,
      if (day != _undefined)
        'day': (day as Input_HistoryAttendanceDaysObjRelInsertInput?),
      if (dayId != _undefined) 'dayId': (dayId as DateTime?),
      if (person != _undefined)
        'person': (person as Input_PersonsObjRelInsertInput?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput(
            local$day,
            (e) => call(day: e),
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

class _CopyWithStubImpl_Input_HistoryKodasHistoryInsertInput<TRes>
    implements CopyWith_Input_HistoryKodasHistoryInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysObjRelInsertInput? day,
    DateTime? dayId,
    Input_PersonsObjRelInsertInput? person,
    UuidValue? personId,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> get day =>
      CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput.stub(_res);

  CopyWith_Input_PersonsObjRelInsertInput<TRes> get person =>
      CopyWith_Input_PersonsObjRelInsertInput.stub(_res);
}

class Input_HistoryKodasHistoryMaxOrderBy {
  factory Input_HistoryKodasHistoryMaxOrderBy({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => Input_HistoryKodasHistoryMaxOrderBy._({
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryKodasHistoryMaxOrderBy._(this._$data);

  factory Input_HistoryKodasHistoryMaxOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
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
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    return Input_HistoryKodasHistoryMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null
          ? null
          : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
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
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryKodasHistoryMaxOrderBy<
    Input_HistoryKodasHistoryMaxOrderBy
  >
  get copyWith => CopyWith_Input_HistoryKodasHistoryMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$id = id;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryKodasHistoryMaxOrderBy<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryMaxOrderBy(
    Input_HistoryKodasHistoryMaxOrderBy instance,
    TRes Function(Input_HistoryKodasHistoryMaxOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryMaxOrderBy;

  factory CopyWith_Input_HistoryKodasHistoryMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryMaxOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryKodasHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryMaxOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryMaxOrderBy(this._instance, this._then);

  final Input_HistoryKodasHistoryMaxOrderBy _instance;

  final TRes Function(Input_HistoryKodasHistoryMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryMaxOrderBy._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryMaxOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryKodasHistoryMinOrderBy {
  factory Input_HistoryKodasHistoryMinOrderBy({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => Input_HistoryKodasHistoryMinOrderBy._({
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
  });

  Input_HistoryKodasHistoryMinOrderBy._(this._$data);

  factory Input_HistoryKodasHistoryMinOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
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
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    return Input_HistoryKodasHistoryMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null
          ? null
          : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
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
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    return result$data;
  }

  CopyWith_Input_HistoryKodasHistoryMinOrderBy<
    Input_HistoryKodasHistoryMinOrderBy
  >
  get copyWith => CopyWith_Input_HistoryKodasHistoryMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$dayId = dayId;
    final l$id = id;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    return Object.hashAll([
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryKodasHistoryMinOrderBy<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryMinOrderBy(
    Input_HistoryKodasHistoryMinOrderBy instance,
    TRes Function(Input_HistoryKodasHistoryMinOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryMinOrderBy;

  factory CopyWith_Input_HistoryKodasHistoryMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryMinOrderBy;

  TRes call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  });
}

class _CopyWithImpl_Input_HistoryKodasHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryMinOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryMinOrderBy(this._instance, this._then);

  final Input_HistoryKodasHistoryMinOrderBy _instance;

  final TRes Function(Input_HistoryKodasHistoryMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dayId = _undefined,
    Object? id = _undefined,
    Object? personId = _undefined,
    Object? recordedBy = _undefined,
    Object? time = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryMinOrderBy._({
      ..._instance._$data,
      if (dayId != _undefined) 'dayId': (dayId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (recordedBy != _undefined) 'recordedBy': (recordedBy as Enum_OrderBy?),
      if (time != _undefined) 'time': (time as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryMinOrderBy<TRes>
    implements CopyWith_Input_HistoryKodasHistoryMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
  }) => _res;
}

class Input_HistoryKodasHistoryOnConflict {
  factory Input_HistoryKodasHistoryOnConflict({
    required Enum_HistoryKodasHistoryConstraint constraint,
    List<Enum_HistoryKodasHistoryUpdateColumn>? updateColumns,
    Input_HistoryKodasHistoryBoolExp? where,
  }) => Input_HistoryKodasHistoryOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryKodasHistoryOnConflict._(this._$data);

  factory Input_HistoryKodasHistoryOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HistoryKodasHistoryConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_HistoryKodasHistoryUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryKodasHistoryBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryKodasHistoryOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryKodasHistoryConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryKodasHistoryConstraint);

  List<Enum_HistoryKodasHistoryUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_HistoryKodasHistoryUpdateColumn>?);

  Input_HistoryKodasHistoryBoolExp? get where =>
      (_$data['where'] as Input_HistoryKodasHistoryBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryKodasHistoryConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryKodasHistoryUpdateColumn>)
              .map((e) => toJson_Enum_HistoryKodasHistoryUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryKodasHistoryOnConflict<
    Input_HistoryKodasHistoryOnConflict
  >
  get copyWith => CopyWith_Input_HistoryKodasHistoryOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryOnConflict ||
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

abstract class CopyWith_Input_HistoryKodasHistoryOnConflict<TRes> {
  factory CopyWith_Input_HistoryKodasHistoryOnConflict(
    Input_HistoryKodasHistoryOnConflict instance,
    TRes Function(Input_HistoryKodasHistoryOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryKodasHistoryOnConflict;

  factory CopyWith_Input_HistoryKodasHistoryOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryKodasHistoryOnConflict;

  TRes call({
    Enum_HistoryKodasHistoryConstraint? constraint,
    List<Enum_HistoryKodasHistoryUpdateColumn>? updateColumns,
    Input_HistoryKodasHistoryBoolExp? where,
  });
  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryKodasHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryKodasHistoryOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryKodasHistoryOnConflict(this._instance, this._then);

  final Input_HistoryKodasHistoryOnConflict _instance;

  final TRes Function(Input_HistoryKodasHistoryOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryKodasHistoryOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryKodasHistoryConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryKodasHistoryUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryKodasHistoryBoolExp?),
    }),
  );

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryKodasHistoryOnConflict<TRes>
    implements CopyWith_Input_HistoryKodasHistoryOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryKodasHistoryOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryKodasHistoryConstraint? constraint,
    List<Enum_HistoryKodasHistoryUpdateColumn>? updateColumns,
    Input_HistoryKodasHistoryBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get where =>
      CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_res);
}

class Input_HistoryKodasHistoryOrderBy {
  factory Input_HistoryKodasHistoryOrderBy({
    Input_HistoryAttendanceDaysOrderBy? day,
    Enum_OrderBy? dayId,
    Enum_OrderBy? id,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Enum_OrderBy? recordedBy,
    Enum_OrderBy? time,
    Input_AuthUsersDataOrderBy? user,
  }) => Input_HistoryKodasHistoryOrderBy._({
    if (day != null) r'day': day,
    if (dayId != null) r'dayId': dayId,
    if (id != null) r'id': id,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (recordedBy != null) r'recordedBy': recordedBy,
    if (time != null) r'time': time,
    if (user != null) r'user': user,
  });

  Input_HistoryKodasHistoryOrderBy._(this._$data);

  factory Input_HistoryKodasHistoryOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_HistoryAttendanceDaysOrderBy.fromJson(
              (l$day as Map<String, dynamic>),
            );
    }
    if (data.containsKey('dayId')) {
      final l$dayId = data['dayId'];
      result$data['dayId'] = l$dayId == null
          ? null
          : fromJson_Enum_OrderBy((l$dayId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
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
    if (data.containsKey('time')) {
      final l$time = data['time'];
      result$data['time'] = l$time == null
          ? null
          : fromJson_Enum_OrderBy((l$time as String));
    }
    if (data.containsKey('user')) {
      final l$user = data['user'];
      result$data['user'] = l$user == null
          ? null
          : Input_AuthUsersDataOrderBy.fromJson(
              (l$user as Map<String, dynamic>),
            );
    }
    return Input_HistoryKodasHistoryOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysOrderBy? get day =>
      (_$data['day'] as Input_HistoryAttendanceDaysOrderBy?);

  Enum_OrderBy? get dayId => (_$data['dayId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get recordedBy => (_$data['recordedBy'] as Enum_OrderBy?);

  Enum_OrderBy? get time => (_$data['time'] as Enum_OrderBy?);

  Input_AuthUsersDataOrderBy? get user =>
      (_$data['user'] as Input_AuthUsersDataOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('dayId')) {
      final l$dayId = dayId;
      result$data['dayId'] = l$dayId == null
          ? null
          : toJson_Enum_OrderBy(l$dayId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
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
    if (_$data.containsKey('time')) {
      final l$time = time;
      result$data['time'] = l$time == null ? null : toJson_Enum_OrderBy(l$time);
    }
    if (_$data.containsKey('user')) {
      final l$user = user;
      result$data['user'] = l$user?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryKodasHistoryOrderBy<Input_HistoryKodasHistoryOrderBy>
  get copyWith => CopyWith_Input_HistoryKodasHistoryOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryKodasHistoryOrderBy ||
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
    final l$dayId = dayId;
    final lOther$dayId = other.dayId;
    if (_$data.containsKey('dayId') != other._$data.containsKey('dayId')) {
      return false;
    }
    if (l$dayId != lOther$dayId) {
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
    final l$time = time;
    final lOther$time = other.time;
    if (_$data.containsKey('time') != other._$data.containsKey('time')) {
      return false;
    }
    if (l$time != lOther$time) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (_$data.containsKey('user') != other._$data.containsKey('user')) {
      return false;
    }
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$dayId = dayId;
    final l$id = id;
    final l$person = person;
    final l$personId = personId;
    final l$recordedBy = recordedBy;
    final l$time = time;
    final l$user = user;
    return Object.hashAll([
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('dayId') ? l$dayId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('recordedBy') ? l$recordedBy : const {},
      _$data.containsKey('time') ? l$time : const {},
      _$data.containsKey('user') ? l$user : const {},
    ]);
  }
}
