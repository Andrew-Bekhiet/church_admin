// Part 59 of the schema
part of "schema.graphql.dart";

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

abstract class CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_historyVisitHistoryAggregateBoolExpCount(
    Input_historyVisitHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyVisitHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyVisitHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyVisitHistoryAggregateBoolExpCount.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryVisitHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyVisitHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_historyVisitHistoryAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyVisitHistoryAggregateBoolExpCount _instance;

  final TRes Function(Input_historyVisitHistoryAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_historyVisitHistoryAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_HistoryVisitHistorySelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined)
        'filter': (filter as Input_HistoryVisitHistoryBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
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

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpCount<TRes>
    implements CopyWith_Input_historyVisitHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_HistoryVisitHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_personsAggregateBoolExpBool_and {
  factory Input_personsAggregateBoolExpBool_and({
    required Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
    arguments,
    bool? distinct,
    Input_PersonsBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_personsAggregateBoolExpBool_and._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_personsAggregateBoolExpBool_and._(this._$data);

  factory Input_personsAggregateBoolExpBool_and.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns(
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
          : Input_PersonsBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_personsAggregateBoolExpBool_and._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_PersonsBoolExp? get filter =>
      (_$data['filter'] as Input_PersonsBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns(
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

  CopyWith_Input_personsAggregateBoolExpBool_and<
    Input_personsAggregateBoolExpBool_and
  >
  get copyWith =>
      CopyWith_Input_personsAggregateBoolExpBool_and(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_personsAggregateBoolExpBool_and ||
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

abstract class CopyWith_Input_personsAggregateBoolExpBool_and<TRes> {
  factory CopyWith_Input_personsAggregateBoolExpBool_and(
    Input_personsAggregateBoolExpBool_and instance,
    TRes Function(Input_personsAggregateBoolExpBool_and) then,
  ) = _CopyWithImpl_Input_personsAggregateBoolExpBool_and;

  factory CopyWith_Input_personsAggregateBoolExpBool_and.stub(TRes res) =
      _CopyWithStubImpl_Input_personsAggregateBoolExpBool_and;

  TRes call({
    Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_PersonsBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_PersonsBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_personsAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_personsAggregateBoolExpBool_and<TRes> {
  _CopyWithImpl_Input_personsAggregateBoolExpBool_and(
    this._instance,
    this._then,
  );

  final Input_personsAggregateBoolExpBool_and _instance;

  final TRes Function(Input_personsAggregateBoolExpBool_and) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_personsAggregateBoolExpBool_and._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_PersonsBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_PersonsBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_personsAggregateBoolExpBool_and<TRes>
    implements CopyWith_Input_personsAggregateBoolExpBool_and<TRes> {
  _CopyWithStubImpl_Input_personsAggregateBoolExpBool_and(this._res);

  TRes _res;

  call({
    Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_andArgumentsColumns?
    arguments,
    bool? distinct,
    Input_PersonsBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get filter =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_personsAggregateBoolExpBool_or {
  factory Input_personsAggregateBoolExpBool_or({
    required Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
    arguments,
    bool? distinct,
    Input_PersonsBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) => Input_personsAggregateBoolExpBool_or._({
    r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_personsAggregateBoolExpBool_or._(this._$data);

  factory Input_personsAggregateBoolExpBool_or.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns(
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
          : Input_PersonsBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_personsAggregateBoolExpBool_or._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns
  get arguments =>
      (_$data['arguments']
          as Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_PersonsBoolExp? get filter =>
      (_$data['filter'] as Input_PersonsBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns(
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

  CopyWith_Input_personsAggregateBoolExpBool_or<
    Input_personsAggregateBoolExpBool_or
  >
  get copyWith => CopyWith_Input_personsAggregateBoolExpBool_or(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_personsAggregateBoolExpBool_or ||
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

abstract class CopyWith_Input_personsAggregateBoolExpBool_or<TRes> {
  factory CopyWith_Input_personsAggregateBoolExpBool_or(
    Input_personsAggregateBoolExpBool_or instance,
    TRes Function(Input_personsAggregateBoolExpBool_or) then,
  ) = _CopyWithImpl_Input_personsAggregateBoolExpBool_or;

  factory CopyWith_Input_personsAggregateBoolExpBool_or.stub(TRes res) =
      _CopyWithStubImpl_Input_personsAggregateBoolExpBool_or;

  TRes call({
    Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_PersonsBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_PersonsBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_personsAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_personsAggregateBoolExpBool_or<TRes> {
  _CopyWithImpl_Input_personsAggregateBoolExpBool_or(
    this._instance,
    this._then,
  );

  final Input_personsAggregateBoolExpBool_or _instance;

  final TRes Function(Input_personsAggregateBoolExpBool_or) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_personsAggregateBoolExpBool_or._({
      ..._instance._$data,
      if (arguments != _undefined && arguments != null)
        'arguments':
            (arguments
                as Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_PersonsBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_BooleanComparisonExp),
    }),
  );

  CopyWith_Input_PersonsBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_personsAggregateBoolExpBool_or<TRes>
    implements CopyWith_Input_personsAggregateBoolExpBool_or<TRes> {
  _CopyWithStubImpl_Input_personsAggregateBoolExpBool_or(this._res);

  TRes _res;

  call({
    Enum_PersonsSelectColumnPersonsAggregateBoolExpBool_orArgumentsColumns?
    arguments,
    bool? distinct,
    Input_PersonsBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get filter =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_personsAggregateBoolExpCount {
  factory Input_personsAggregateBoolExpCount({
    List<Enum_PersonsSelectColumn>? arguments,
    bool? distinct,
    Input_PersonsBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_personsAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_personsAggregateBoolExpCount._(this._$data);

  factory Input_personsAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson_Enum_PersonsSelectColumn((e as String)))
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
          : Input_PersonsBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_personsAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_PersonsSelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_PersonsSelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_PersonsBoolExp? get filter =>
      (_$data['filter'] as Input_PersonsBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_PersonsSelectColumn(e))
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

  CopyWith_Input_personsAggregateBoolExpCount<
    Input_personsAggregateBoolExpCount
  >
  get copyWith => CopyWith_Input_personsAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_personsAggregateBoolExpCount ||
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

abstract class CopyWith_Input_personsAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_personsAggregateBoolExpCount(
    Input_personsAggregateBoolExpCount instance,
    TRes Function(Input_personsAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_personsAggregateBoolExpCount;

  factory CopyWith_Input_personsAggregateBoolExpCount.stub(TRes res) =
      _CopyWithStubImpl_Input_personsAggregateBoolExpCount;

  TRes call({
    List<Enum_PersonsSelectColumn>? arguments,
    bool? distinct,
    Input_PersonsBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_PersonsBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_personsAggregateBoolExpCount<TRes>
    implements CopyWith_Input_personsAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_personsAggregateBoolExpCount(this._instance, this._then);

  final Input_personsAggregateBoolExpCount _instance;

  final TRes Function(Input_personsAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_personsAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_PersonsSelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_PersonsBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_PersonsBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_personsAggregateBoolExpCount<TRes>
    implements CopyWith_Input_personsAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_personsAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_PersonsSelectColumn>? arguments,
    bool? distinct,
    Input_PersonsBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_PersonsBoolExp<TRes> get filter =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_st_d_within_geography_input {
  factory Input_st_d_within_geography_input({
    required double distance,
    required Map<String, dynamic> from,
    bool? use_spheroid,
  }) => Input_st_d_within_geography_input._({
    r'distance': distance,
    r'from': from,
    if (use_spheroid != null) r'use_spheroid': use_spheroid,
  });

  Input_st_d_within_geography_input._(this._$data);

  factory Input_st_d_within_geography_input.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$distance = data['distance'];
    result$data['distance'] = (l$distance as num).toDouble();
    final l$from = data['from'];
    result$data['from'] = (l$from as Map<String, dynamic>);
    if (data.containsKey('use_spheroid')) {
      final l$use_spheroid = data['use_spheroid'];
      result$data['use_spheroid'] = (l$use_spheroid as bool?);
    }
    return Input_st_d_within_geography_input._(result$data);
  }

  Map<String, dynamic> _$data;

  double get distance => (_$data['distance'] as double);

  Map<String, dynamic> get from => (_$data['from'] as Map<String, dynamic>);

  bool? get use_spheroid => (_$data['use_spheroid'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$distance = distance;
    result$data['distance'] = l$distance;
    final l$from = from;
    result$data['from'] = l$from;
    if (_$data.containsKey('use_spheroid')) {
      final l$use_spheroid = use_spheroid;
      result$data['use_spheroid'] = l$use_spheroid;
    }
    return result$data;
  }

  CopyWith_Input_st_d_within_geography_input<Input_st_d_within_geography_input>
  get copyWith => CopyWith_Input_st_d_within_geography_input(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_st_d_within_geography_input ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) {
      return false;
    }
    final l$use_spheroid = use_spheroid;
    final lOther$use_spheroid = other.use_spheroid;
    if (_$data.containsKey('use_spheroid') !=
        other._$data.containsKey('use_spheroid')) {
      return false;
    }
    if (l$use_spheroid != lOther$use_spheroid) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$distance = distance;
    final l$from = from;
    final l$use_spheroid = use_spheroid;
    return Object.hashAll([
      l$distance,
      l$from,
      _$data.containsKey('use_spheroid') ? l$use_spheroid : const {},
    ]);
  }
}

abstract class CopyWith_Input_st_d_within_geography_input<TRes> {
  factory CopyWith_Input_st_d_within_geography_input(
    Input_st_d_within_geography_input instance,
    TRes Function(Input_st_d_within_geography_input) then,
  ) = _CopyWithImpl_Input_st_d_within_geography_input;

  factory CopyWith_Input_st_d_within_geography_input.stub(TRes res) =
      _CopyWithStubImpl_Input_st_d_within_geography_input;

  TRes call({double? distance, Map<String, dynamic>? from, bool? use_spheroid});
}

class _CopyWithImpl_Input_st_d_within_geography_input<TRes>
    implements CopyWith_Input_st_d_within_geography_input<TRes> {
  _CopyWithImpl_Input_st_d_within_geography_input(this._instance, this._then);

  final Input_st_d_within_geography_input _instance;

  final TRes Function(Input_st_d_within_geography_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? distance = _undefined,
    Object? from = _undefined,
    Object? use_spheroid = _undefined,
  }) => _then(
    Input_st_d_within_geography_input._({
      ..._instance._$data,
      if (distance != _undefined && distance != null)
        'distance': (distance as double),
      if (from != _undefined && from != null)
        'from': (from as Map<String, dynamic>),
      if (use_spheroid != _undefined) 'use_spheroid': (use_spheroid as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_st_d_within_geography_input<TRes>
    implements CopyWith_Input_st_d_within_geography_input<TRes> {
  _CopyWithStubImpl_Input_st_d_within_geography_input(this._res);

  TRes _res;

  call({double? distance, Map<String, dynamic>? from, bool? use_spheroid}) =>
      _res;
}

class Input_st_d_within_input {
  factory Input_st_d_within_input({
    required double distance,
    required Map<String, dynamic> from,
  }) => Input_st_d_within_input._({r'distance': distance, r'from': from});

  Input_st_d_within_input._(this._$data);

  factory Input_st_d_within_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$distance = data['distance'];
    result$data['distance'] = (l$distance as num).toDouble();
    final l$from = data['from'];
    result$data['from'] = (l$from as Map<String, dynamic>);
    return Input_st_d_within_input._(result$data);
  }

  Map<String, dynamic> _$data;

  double get distance => (_$data['distance'] as double);

  Map<String, dynamic> get from => (_$data['from'] as Map<String, dynamic>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$distance = distance;
    result$data['distance'] = l$distance;
    final l$from = from;
    result$data['from'] = l$from;
    return result$data;
  }

  CopyWith_Input_st_d_within_input<Input_st_d_within_input> get copyWith =>
      CopyWith_Input_st_d_within_input(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_st_d_within_input || runtimeType != other.runtimeType) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$distance = distance;
    final l$from = from;
    return Object.hashAll([l$distance, l$from]);
  }
}

abstract class CopyWith_Input_st_d_within_input<TRes> {
  factory CopyWith_Input_st_d_within_input(
    Input_st_d_within_input instance,
    TRes Function(Input_st_d_within_input) then,
  ) = _CopyWithImpl_Input_st_d_within_input;

  factory CopyWith_Input_st_d_within_input.stub(TRes res) =
      _CopyWithStubImpl_Input_st_d_within_input;

  TRes call({double? distance, Map<String, dynamic>? from});
}

class _CopyWithImpl_Input_st_d_within_input<TRes>
    implements CopyWith_Input_st_d_within_input<TRes> {
  _CopyWithImpl_Input_st_d_within_input(this._instance, this._then);

  final Input_st_d_within_input _instance;

  final TRes Function(Input_st_d_within_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? distance = _undefined, Object? from = _undefined}) =>
      _then(
        Input_st_d_within_input._({
          ..._instance._$data,
          if (distance != _undefined && distance != null)
            'distance': (distance as double),
          if (from != _undefined && from != null)
            'from': (from as Map<String, dynamic>),
        }),
      );
}

class _CopyWithStubImpl_Input_st_d_within_input<TRes>
    implements CopyWith_Input_st_d_within_input<TRes> {
  _CopyWithStubImpl_Input_st_d_within_input(this._res);

  TRes _res;

  call({double? distance, Map<String, dynamic>? from}) => _res;
}

class Input_storesAggregateBoolExpCount {
  factory Input_storesAggregateBoolExpCount({
    List<Enum_StoresSelectColumn>? arguments,
    bool? distinct,
    Input_StoresBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) => Input_storesAggregateBoolExpCount._({
    if (arguments != null) r'arguments': arguments,
    if (distinct != null) r'distinct': distinct,
    if (filter != null) r'filter': filter,
    r'predicate': predicate,
  });

  Input_storesAggregateBoolExpCount._(this._$data);

  factory Input_storesAggregateBoolExpCount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) => fromJson_Enum_StoresSelectColumn((e as String)))
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
          : Input_StoresBoolExp.fromJson((l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_IntComparisonExp.fromJson(
      (l$predicate as Map<String, dynamic>),
    );
    return Input_storesAggregateBoolExpCount._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum_StoresSelectColumn>? get arguments =>
      (_$data['arguments'] as List<Enum_StoresSelectColumn>?);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_StoresBoolExp? get filter => (_$data['filter'] as Input_StoresBoolExp?);

  Input_IntComparisonExp get predicate =>
      (_$data['predicate'] as Input_IntComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('arguments')) {
      final l$arguments = arguments;
      result$data['arguments'] = l$arguments
          ?.map((e) => toJson_Enum_StoresSelectColumn(e))
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

  CopyWith_Input_storesAggregateBoolExpCount<Input_storesAggregateBoolExpCount>
  get copyWith => CopyWith_Input_storesAggregateBoolExpCount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_storesAggregateBoolExpCount ||
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
