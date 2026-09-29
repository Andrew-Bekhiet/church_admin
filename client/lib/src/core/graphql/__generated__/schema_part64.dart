// Part 64 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<
  TRes
> {
  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
    Input_historyAttendanceHistoryAggregateBoolExpBool_or instance,
    TRes Function(Input_historyAttendanceHistoryAggregateBoolExpBool_or) then,
  ) = _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or;

  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or;

  TRes call({
    Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes> {
  _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
    this._instance,
    this._then,
  );

  final Input_historyAttendanceHistoryAggregateBoolExpBool_or _instance;

  final TRes Function(Input_historyAttendanceHistoryAggregateBoolExpBool_or)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyAttendanceHistoryAggregateBoolExpBool_or._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryAttendanceHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or<
  TRes
>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes> {
  _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
    this._res,
  );

  TRes _res;

  call({
    Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_historyAttendanceHistoryAggregateBoolExpCount {
  factory Input_historyAttendanceHistoryAggregateBoolExpCount({
    List<Enum_HistoryAttendanceHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyAttendanceHistoryAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyAttendanceHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyAttendanceHistoryAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryAttendanceHistorySelectColumn(
              (e as String),
            ),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyAttendanceHistoryAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryAttendanceHistorySelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryAttendanceHistorySelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryAttendanceHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryAttendanceHistorySelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<
    Input_historyAttendanceHistoryAggregateBoolExpCount
  >
  get copyWith => CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyAttendanceHistoryAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<
  TRes
> {
  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount(
    Input_historyAttendanceHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyAttendanceHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryAttendanceHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyAttendanceHistoryAggregateBoolExpCount _instance;

  final TRes Function(Input_historyAttendanceHistoryAggregateBoolExpCount)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyAttendanceHistoryAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments':
            (arguments as List<Enum_HistoryAttendanceHistorySelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryAttendanceHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpCount<
  TRes
>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpCount(
    this._res,
  );

  TRes _res;

  call({
    List<Enum_HistoryAttendanceHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyCallHistoryAggregateBoolExpCount {
  factory Input_historyCallHistoryAggregateBoolExpCount({
    List<Enum_HistoryCallHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryCallHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyCallHistoryAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyCallHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyCallHistoryAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryCallHistorySelectColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryCallHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyCallHistoryAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryCallHistorySelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryCallHistorySelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryCallHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryCallHistoryBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryCallHistorySelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyCallHistoryAggregateBoolExpCount<
    Input_historyCallHistoryAggregateBoolExpCount
  >
  get copyWith =>
      CopyWith_Input_historyCallHistoryAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyCallHistoryAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_historyCallHistoryAggregateBoolExpCount(
    Input_historyCallHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyCallHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyCallHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyCallHistoryAggregateBoolExpCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyCallHistoryAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryCallHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryCallHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyCallHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_historyCallHistoryAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyCallHistoryAggregateBoolExpCount _instance;

  final TRes Function(Input_historyCallHistoryAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyCallHistoryAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_HistoryCallHistorySelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryCallHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryCallHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyCallHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyCallHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyCallHistoryAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_HistoryCallHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryCallHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryCallHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyConfessionHistoryAggregateBoolExpCount {
  factory Input_historyConfessionHistoryAggregateBoolExpCount({
    List<Enum_HistoryConfessionHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryConfessionHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyConfessionHistoryAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyConfessionHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyConfessionHistoryAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryConfessionHistorySelectColumn(
              (e as String),
            ),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryConfessionHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyConfessionHistoryAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryConfessionHistorySelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryConfessionHistorySelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryConfessionHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryConfessionHistoryBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryConfessionHistorySelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount<
    Input_historyConfessionHistoryAggregateBoolExpCount
  >
  get copyWith => CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyConfessionHistoryAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount<
  TRes
> {
  factory CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount(
    Input_historyConfessionHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyConfessionHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyConfessionHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyConfessionHistoryAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryConfessionHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryConfessionHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyConfessionHistoryAggregateBoolExpCount<TRes>
    implements
        CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_historyConfessionHistoryAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyConfessionHistoryAggregateBoolExpCount _instance;

  final TRes Function(Input_historyConfessionHistoryAggregateBoolExpCount)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyConfessionHistoryAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments':
            (arguments as List<Enum_HistoryConfessionHistorySelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryConfessionHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryConfessionHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyConfessionHistoryAggregateBoolExpCount<
  TRes
>
    implements
        CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyConfessionHistoryAggregateBoolExpCount(
    this._res,
  );

  TRes _res;

  call({
    List<Enum_HistoryConfessionHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryConfessionHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyEditHistoryAggregateBoolExpCount {
  factory Input_historyEditHistoryAggregateBoolExpCount({
    List<Enum_HistoryEditHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryEditHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyEditHistoryAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyEditHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyEditHistoryAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryEditHistorySelectColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyEditHistoryAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryEditHistorySelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryEditHistorySelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryEditHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryEditHistoryBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryEditHistorySelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyEditHistoryAggregateBoolExpCount<
    Input_historyEditHistoryAggregateBoolExpCount
  >
  get copyWith =>
      CopyWith_Input_historyEditHistoryAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyEditHistoryAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyEditHistoryAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_historyEditHistoryAggregateBoolExpCount(
    Input_historyEditHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyEditHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyEditHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyEditHistoryAggregateBoolExpCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyEditHistoryAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryEditHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryEditHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyEditHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyEditHistoryAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_historyEditHistoryAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyEditHistoryAggregateBoolExpCount _instance;

  final TRes Function(Input_historyEditHistoryAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyEditHistoryAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_HistoryEditHistorySelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryEditHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyEditHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyEditHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyEditHistoryAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_HistoryEditHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryEditHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryEditHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyKodasHistoryAggregateBoolExpCount {
  factory Input_historyKodasHistoryAggregateBoolExpCount({
    List<Enum_HistoryKodasHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryKodasHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyKodasHistoryAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyKodasHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyKodasHistoryAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryKodasHistorySelectColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryKodasHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyKodasHistoryAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryKodasHistorySelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryKodasHistorySelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryKodasHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryKodasHistoryBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryKodasHistorySelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyKodasHistoryAggregateBoolExpCount<
    Input_historyKodasHistoryAggregateBoolExpCount
  >
  get copyWith =>
      CopyWith_Input_historyKodasHistoryAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyKodasHistoryAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyKodasHistoryAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_historyKodasHistoryAggregateBoolExpCount(
    Input_historyKodasHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyKodasHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyKodasHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyKodasHistoryAggregateBoolExpCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyKodasHistoryAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryKodasHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryKodasHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyKodasHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyKodasHistoryAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_historyKodasHistoryAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyKodasHistoryAggregateBoolExpCount _instance;

  final TRes Function(Input_historyKodasHistoryAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyKodasHistoryAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_HistoryKodasHistorySelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryKodasHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyKodasHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyKodasHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyKodasHistoryAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_HistoryKodasHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryKodasHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyMeetingDaysAggregateBoolExpBool_and {
  factory Input_historyMeetingDaysAggregateBoolExpBool_and({
    required Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns
    arguments,
    bool? distinct,
    Input_HistoryMeetingDaysBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_historyMeetingDaysAggregateBoolExpBool_and._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyMeetingDaysAggregateBoolExpBool_and._(this._$data);

  factory Input_historyMeetingDaysAggregateBoolExpBool_and.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryMeetingDaysBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyMeetingDaysAggregateBoolExpBool_and._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryMeetingDaysBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryMeetingDaysBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and<
    Input_historyMeetingDaysAggregateBoolExpBool_and
  >
  get copyWith =>
      CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyMeetingDaysAggregateBoolExpBool_and ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and<TRes> {
  factory CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and(
    Input_historyMeetingDaysAggregateBoolExpBool_and instance,
    TRes Function(Input_historyMeetingDaysAggregateBoolExpBool_and) then,
  ) = _CopyWithImpl_Input_historyMeetingDaysAggregateBoolExpBool_and;

  factory CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyMeetingDaysAggregateBoolExpBool_and;

  TRes call({
    Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryMeetingDaysBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyMeetingDaysAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and<TRes> {
  _CopyWithImpl_Input_historyMeetingDaysAggregateBoolExpBool_and(
    this._instance,
    this._then,
  );

  final Input_historyMeetingDaysAggregateBoolExpBool_and _instance;

  final TRes Function(Input_historyMeetingDaysAggregateBoolExpBool_and) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyMeetingDaysAggregateBoolExpBool_and._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryMeetingDaysBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyMeetingDaysAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_and<TRes> {
  _CopyWithStubImpl_Input_historyMeetingDaysAggregateBoolExpBool_and(this._res);

  TRes _res;

  call({
    Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryMeetingDaysBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_historyMeetingDaysAggregateBoolExpBool_or {
  factory Input_historyMeetingDaysAggregateBoolExpBool_or({
    required Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns
    arguments,
    bool? distinct,
    Input_HistoryMeetingDaysBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_historyMeetingDaysAggregateBoolExpBool_or._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyMeetingDaysAggregateBoolExpBool_or._(this._$data);

  factory Input_historyMeetingDaysAggregateBoolExpBool_or.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryMeetingDaysBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyMeetingDaysAggregateBoolExpBool_or._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryMeetingDaysBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryMeetingDaysBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or<
    Input_historyMeetingDaysAggregateBoolExpBool_or
  >
  get copyWith =>
      CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyMeetingDaysAggregateBoolExpBool_or ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or<TRes> {
  factory CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or(
    Input_historyMeetingDaysAggregateBoolExpBool_or instance,
    TRes Function(Input_historyMeetingDaysAggregateBoolExpBool_or) then,
  ) = _CopyWithImpl_Input_historyMeetingDaysAggregateBoolExpBool_or;

  factory CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyMeetingDaysAggregateBoolExpBool_or;

  TRes call({
    Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryMeetingDaysBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyMeetingDaysAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or<TRes> {
  _CopyWithImpl_Input_historyMeetingDaysAggregateBoolExpBool_or(
    this._instance,
    this._then,
  );

  final Input_historyMeetingDaysAggregateBoolExpBool_or _instance;

  final TRes Function(Input_historyMeetingDaysAggregateBoolExpBool_or) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyMeetingDaysAggregateBoolExpBool_or._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryMeetingDaysBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyMeetingDaysAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_historyMeetingDaysAggregateBoolExpBool_or<TRes> {
  _CopyWithStubImpl_Input_historyMeetingDaysAggregateBoolExpBool_or(this._res);

  TRes _res;

  call({
    Enum_HistoryMeetingDaysSelectColumnHistoryMeetingDaysAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryMeetingDaysBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_historyMeetingDaysAggregateBoolExpCount {
  factory Input_historyMeetingDaysAggregateBoolExpCount({
    List<Enum_HistoryMeetingDaysSelectColumn>? arguments,
    bool? distinct,
    Input_HistoryMeetingDaysBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyMeetingDaysAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyMeetingDaysAggregateBoolExpCount._(this._$data);

  factory Input_historyMeetingDaysAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryMeetingDaysSelectColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryMeetingDaysBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyMeetingDaysAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryMeetingDaysSelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryMeetingDaysSelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryMeetingDaysBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryMeetingDaysBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryMeetingDaysSelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyMeetingDaysAggregateBoolExpCount<
    Input_historyMeetingDaysAggregateBoolExpCount
  >
  get copyWith =>
      CopyWith_Input_historyMeetingDaysAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyMeetingDaysAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyMeetingDaysAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_historyMeetingDaysAggregateBoolExpCount(
    Input_historyMeetingDaysAggregateBoolExpCount instance,
    TRes Function(Input_historyMeetingDaysAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyMeetingDaysAggregateBoolExpCount;

  factory CopyWith_Input_historyMeetingDaysAggregateBoolExpCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyMeetingDaysAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryMeetingDaysSelectColumn>? arguments,
    bool? distinct,
    Input_HistoryMeetingDaysBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyMeetingDaysAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyMeetingDaysAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_historyMeetingDaysAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyMeetingDaysAggregateBoolExpCount _instance;

  final TRes Function(Input_historyMeetingDaysAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyMeetingDaysAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_HistoryMeetingDaysSelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryMeetingDaysBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingDaysBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyMeetingDaysAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyMeetingDaysAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyMeetingDaysAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_HistoryMeetingDaysSelectColumn>? arguments,
    bool? distinct,
    Input_HistoryMeetingDaysBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryMeetingDaysBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryMeetingDaysBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyVisitHistoryAggregateBoolExpBool_and {
  factory Input_historyVisitHistoryAggregateBoolExpBool_and({
    required Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns
    arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_historyVisitHistoryAggregateBoolExpBool_and._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyVisitHistoryAggregateBoolExpBool_and._(this._$data);

  factory Input_historyVisitHistoryAggregateBoolExpBool_and.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryVisitHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyVisitHistoryAggregateBoolExpBool_and._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryVisitHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryVisitHistoryBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and<
    Input_historyVisitHistoryAggregateBoolExpBool_and
  >
  get copyWith => CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyVisitHistoryAggregateBoolExpBool_and ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and<
  TRes
> {
  factory CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and(
    Input_historyVisitHistoryAggregateBoolExpBool_and instance,
    TRes Function(Input_historyVisitHistoryAggregateBoolExpBool_and) then,
  ) = _CopyWithImpl_Input_historyVisitHistoryAggregateBoolExpBool_and;

  factory CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpBool_and;

  TRes call({
    Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyVisitHistoryAggregateBoolExpBool_and<TRes>
    implements
        CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and<TRes> {
  _CopyWithImpl_Input_historyVisitHistoryAggregateBoolExpBool_and(
    this._instance,
    this._then,
  );

  final Input_historyVisitHistoryAggregateBoolExpBool_and _instance;

  final TRes Function(Input_historyVisitHistoryAggregateBoolExpBool_and) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyVisitHistoryAggregateBoolExpBool_and._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryVisitHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpBool_and<TRes>
    implements
        CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_and<TRes> {
  _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpBool_and(
    this._res,
  );

  TRes _res;

  call({
    Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_historyVisitHistoryAggregateBoolExpBool_or {
  factory Input_historyVisitHistoryAggregateBoolExpBool_or({
    required Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns
    arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_historyVisitHistoryAggregateBoolExpBool_or._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyVisitHistoryAggregateBoolExpBool_or._(this._$data);

  factory Input_historyVisitHistoryAggregateBoolExpBool_or.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns(
          (l$arguments as String),
        );
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryVisitHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyVisitHistoryAggregateBoolExpBool_or._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryVisitHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryVisitHistoryBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns(
          l$arguments,
        );
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or<
    Input_historyVisitHistoryAggregateBoolExpBool_or
  >
  get copyWith =>
      CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyVisitHistoryAggregateBoolExpBool_or ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      l$arguments,
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}

abstract class CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or<TRes> {
  factory CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or(
    Input_historyVisitHistoryAggregateBoolExpBool_or instance,
    TRes Function(Input_historyVisitHistoryAggregateBoolExpBool_or) then,
  ) = _CopyWithImpl_Input_historyVisitHistoryAggregateBoolExpBool_or;

  factory CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpBool_or;

  TRes call({
    Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyVisitHistoryAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or<TRes> {
  _CopyWithImpl_Input_historyVisitHistoryAggregateBoolExpBool_or(
    this._instance,
    this._then,
  );

  final Input_historyVisitHistoryAggregateBoolExpBool_or _instance;

  final TRes Function(Input_historyVisitHistoryAggregateBoolExpBool_or) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyVisitHistoryAggregateBoolExpBool_or._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryVisitHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryBoolExp(
            local$filter,
            (e) => call(filter: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_historyVisitHistoryAggregateBoolExpBool_or<TRes> {
  _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpBool_or(this._res);

  TRes _res;

  call({
    Enum_HistoryVisitHistorySelectColumnHistoryVisitHistoryAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_historyVisitHistoryAggregateBoolExpCount {
  factory Input_historyVisitHistoryAggregateBoolExpCount({
    List<Enum_HistoryVisitHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_historyVisitHistoryAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_historyVisitHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyVisitHistoryAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map(
            (e) => fromJson_Enum_HistoryVisitHistorySelectColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryVisitHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_historyVisitHistoryAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_HistoryVisitHistorySelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_HistoryVisitHistorySelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryVisitHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryVisitHistoryBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_HistoryVisitHistorySelectColumn(e))
          .toList();
    }
    if (_$data.containsKey('distinct')) {
      final l$distinct = distinct;
      result$data['distinct'] = l$distinct;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    final l$predicate = predicate;
    result$data['predicate'] = l$predicate.toJson();
    return result$data;
  }

  CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<
    Input_historyVisitHistoryAggregateBoolExpCount
  >
  get copyWith =>
      CopyWith_Input_historyVisitHistoryAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyVisitHistoryAggregateBoolExpCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$arguments = arguments;
    final lOther$arguments = other.arguments;
    if (_$data.containsKey('arguments') !=
        other._$data.containsKey('arguments')) {
      return false;
    }
    if (l$arguments != null && lOther$arguments != null) {
      if (l$arguments.length != lOther$arguments.length) {
        return false;
      }
      for (int i = 0; i < l$arguments.length; i++) {
        final l$arguments$entry = l$arguments[i];
        final lOther$arguments$entry = lOther$arguments[i];
        if (l$arguments$entry != lOther$arguments$entry) {
          return false;
        }
      }
    } else if (l$arguments != lOther$arguments) {
      return false;
    }
    final l$distinct = distinct;
    final lOther$distinct = other.distinct;
    if (_$data.containsKey('distinct') !=
        other._$data.containsKey('distinct')) {
      return false;
    }
    if (l$distinct != lOther$distinct) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$predicate = predicate;
    final lOther$predicate = other.predicate;
    if (l$predicate != lOther$predicate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$arguments = arguments;
    final l$distinct = distinct;
    final l$filter = filter;
    final l$predicate = predicate;
    return Object.hashAll([
      _$data.containsKey('arguments')
          ? l$arguments == null
                ? null
                : Object.hashAll(l$arguments.map((v) => v))
          : const {},
      _$data.containsKey('distinct') ? l$distinct : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      l$predicate,
    ]);
  }
}
