// Part 53 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount<
    TRes> {
  factory CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount(
    Input_historyAttendanceDaysConstraintsAggregateBoolExpCount instance,
    TRes Function(Input_historyAttendanceDaysConstraintsAggregateBoolExpCount)
        then,
  ) = _CopyWithImpl_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount;

  factory CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount.stub(
          TRes res) =
      _CopyWithStubImpl_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount;

  TRes call({
    List<Enum_HistoryAttendanceDaysConstraintsSelectColumn>? arguments,
    bool? distinct,
    Input_HistoryAttendanceDaysConstraintsBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount<
        TRes>
    implements
        CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount<
            TRes> {
  _CopyWithImpl_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount(
    this._instance,
    this._then,
  );

  final Input_historyAttendanceDaysConstraintsAggregateBoolExpCount _instance;

  final TRes Function(
      Input_historyAttendanceDaysConstraintsAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) =>
      _then(Input_historyAttendanceDaysConstraintsAggregateBoolExpCount._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments': (arguments
              as List<Enum_HistoryAttendanceDaysConstraintsSelectColumn>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input_HistoryAttendanceDaysConstraintsBoolExp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input_IntComparisonExp),
      }));

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(
            _then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
        local$predicate, (e) => call(predicate: e));
  }
}

class _CopyWithStubImpl_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount<
        TRes>
    implements
        CopyWith_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount<
            TRes> {
  _CopyWithStubImpl_Input_historyAttendanceDaysConstraintsAggregateBoolExpCount(
      this._res);

  TRes _res;

  call({
    List<Enum_HistoryAttendanceDaysConstraintsSelectColumn>? arguments,
    bool? distinct,
    Input_HistoryAttendanceDaysConstraintsBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryAttendanceDaysConstraintsBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyAttendanceHistoryAggregateBoolExpBool_and {
  factory Input_historyAttendanceHistoryAggregateBoolExpBool_and({
    required Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
        arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) =>
      Input_historyAttendanceHistoryAggregateBoolExpBool_and._({
        r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input_historyAttendanceHistoryAggregateBoolExpBool_and._(this._$data);

  factory Input_historyAttendanceHistoryAggregateBoolExpBool_and.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
            (l$arguments as String));
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
        (l$predicate as Map<String, dynamic>));
    return Input_historyAttendanceHistoryAggregateBoolExpBool_and._(
        result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns
      get arguments => (_$data['arguments']
          as Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryAttendanceHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns(
            l$arguments);
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

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<
          Input_historyAttendanceHistoryAggregateBoolExpBool_and>
      get copyWith =>
          CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyAttendanceHistoryAggregateBoolExpBool_and ||
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

abstract class CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<
    TRes> {
  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
    Input_historyAttendanceHistoryAggregateBoolExpBool_and instance,
    TRes Function(Input_historyAttendanceHistoryAggregateBoolExpBool_and) then,
  ) = _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and;

  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and.stub(
          TRes res) =
      _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and;

  TRes call({
    Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns?
        arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  });
  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter;
  CopyWith_Input_BooleanComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes> {
  _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
    this._instance,
    this._then,
  );

  final Input_historyAttendanceHistoryAggregateBoolExpBool_and _instance;

  final TRes Function(Input_historyAttendanceHistoryAggregateBoolExpBool_and)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) =>
      _then(Input_historyAttendanceHistoryAggregateBoolExpBool_and._({
        ..._instance._$data,
        if (arguments != _undefined && arguments != null)
          'arguments': (arguments
              as Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input_HistoryAttendanceHistoryBoolExp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input_BooleanComparisonExp),
      }));

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
        local$predicate, (e) => call(predicate: e));
  }
}

class _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and<
        TRes>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_and<TRes> {
  _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_and(
      this._res);

  TRes _res;

  call({
    Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_andArgumentsColumns?
        arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) =>
      _res;

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);
}

class Input_historyAttendanceHistoryAggregateBoolExpBool_or {
  factory Input_historyAttendanceHistoryAggregateBoolExpBool_or({
    required Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
        arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    required Input_BooleanComparisonExp predicate,
  }) =>
      Input_historyAttendanceHistoryAggregateBoolExpBool_or._({
        r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input_historyAttendanceHistoryAggregateBoolExpBool_or._(this._$data);

  factory Input_historyAttendanceHistoryAggregateBoolExpBool_or.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$arguments = data['arguments'];
    result$data['arguments'] =
        fromJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
            (l$arguments as String));
    if (data.containsKey('distinct')) {
      final l$distinct = data['distinct'];
      result$data['distinct'] = (l$distinct as bool?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input_HistoryAttendanceHistoryBoolExp.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] = Input_BooleanComparisonExp.fromJson(
        (l$predicate as Map<String, dynamic>));
    return Input_historyAttendanceHistoryAggregateBoolExpBool_or._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns
      get arguments => (_$data['arguments']
          as Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns);

  bool? get distinct => (_$data['distinct'] as bool?);

  Input_HistoryAttendanceHistoryBoolExp? get filter =>
      (_$data['filter'] as Input_HistoryAttendanceHistoryBoolExp?);

  Input_BooleanComparisonExp get predicate =>
      (_$data['predicate'] as Input_BooleanComparisonExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$arguments = arguments;
    result$data['arguments'] =
        toJson_Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns(
            l$arguments);
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

  CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<
          Input_historyAttendanceHistoryAggregateBoolExpBool_or>
      get copyWith =>
          CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_historyAttendanceHistoryAggregateBoolExpBool_or ||
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

abstract class CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<
    TRes> {
  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
    Input_historyAttendanceHistoryAggregateBoolExpBool_or instance,
    TRes Function(Input_historyAttendanceHistoryAggregateBoolExpBool_or) then,
  ) = _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or;

  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or.stub(
          TRes res) =
      _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or;

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
  }) =>
      _then(Input_historyAttendanceHistoryAggregateBoolExpBool_or._({
        ..._instance._$data,
        if (arguments != _undefined && arguments != null)
          'arguments': (arguments
              as Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input_HistoryAttendanceHistoryBoolExp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input_BooleanComparisonExp),
      }));

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_BooleanComparisonExp(
        local$predicate, (e) => call(predicate: e));
  }
}

class _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or<
        TRes>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpBool_or<TRes> {
  _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpBool_or(
      this._res);

  TRes _res;

  call({
    Enum_HistoryAttendanceHistorySelectColumnHistoryAttendanceHistoryAggregateBoolExpBool_orArgumentsColumns?
        arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_BooleanComparisonExp? predicate,
  }) =>
      _res;

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
  }) =>
      Input_historyAttendanceHistoryAggregateBoolExpCount._({
        if (arguments != null) r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input_historyAttendanceHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyAttendanceHistoryAggregateBoolExpCount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) =>
              fromJson_Enum_HistoryAttendanceHistorySelectColumn((e as String)))
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
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] =
        Input_IntComparisonExp.fromJson((l$predicate as Map<String, dynamic>));
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
          Input_historyAttendanceHistoryAggregateBoolExpCount>
      get copyWith =>
          CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount(
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
    TRes> {
  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount(
    Input_historyAttendanceHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyAttendanceHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyAttendanceHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount.stub(
          TRes res) =
      _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpCount;

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
  }) =>
      _then(Input_historyAttendanceHistoryAggregateBoolExpCount._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments':
              (arguments as List<Enum_HistoryAttendanceHistorySelectColumn>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input_HistoryAttendanceHistoryBoolExp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input_IntComparisonExp),
      }));

  CopyWith_Input_HistoryAttendanceHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryAttendanceHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceHistoryBoolExp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
        local$predicate, (e) => call(predicate: e));
  }
}

class _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpCount<
        TRes>
    implements
        CopyWith_Input_historyAttendanceHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyAttendanceHistoryAggregateBoolExpCount(
      this._res);

  TRes _res;

  call({
    List<Enum_HistoryAttendanceHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryAttendanceHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) =>
      _res;

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
  }) =>
      Input_historyCallHistoryAggregateBoolExpCount._({
        if (arguments != null) r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input_historyCallHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyCallHistoryAggregateBoolExpCount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) =>
              fromJson_Enum_HistoryCallHistorySelectColumn((e as String)))
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
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] =
        Input_IntComparisonExp.fromJson((l$predicate as Map<String, dynamic>));
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
          Input_historyCallHistoryAggregateBoolExpCount>
      get copyWith => CopyWith_Input_historyCallHistoryAggregateBoolExpCount(
            this,
            (i) => i,
          );

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
          TRes res) =
      _CopyWithStubImpl_Input_historyCallHistoryAggregateBoolExpCount;

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
  }) =>
      _then(Input_historyCallHistoryAggregateBoolExpCount._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments':
              (arguments as List<Enum_HistoryCallHistorySelectColumn>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input_HistoryCallHistoryBoolExp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input_IntComparisonExp),
      }));

  CopyWith_Input_HistoryCallHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryCallHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryCallHistoryBoolExp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
        local$predicate, (e) => call(predicate: e));
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
  }) =>
      _res;

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
  }) =>
      Input_historyConfessionHistoryAggregateBoolExpCount._({
        if (arguments != null) r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input_historyConfessionHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyConfessionHistoryAggregateBoolExpCount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) =>
              fromJson_Enum_HistoryConfessionHistorySelectColumn((e as String)))
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
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] =
        Input_IntComparisonExp.fromJson((l$predicate as Map<String, dynamic>));
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
          Input_historyConfessionHistoryAggregateBoolExpCount>
      get copyWith =>
          CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount(
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
    TRes> {
  factory CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount(
    Input_historyConfessionHistoryAggregateBoolExpCount instance,
    TRes Function(Input_historyConfessionHistoryAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_historyConfessionHistoryAggregateBoolExpCount;

  factory CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount.stub(
          TRes res) =
      _CopyWithStubImpl_Input_historyConfessionHistoryAggregateBoolExpCount;

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
  }) =>
      _then(Input_historyConfessionHistoryAggregateBoolExpCount._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments':
              (arguments as List<Enum_HistoryConfessionHistorySelectColumn>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input_HistoryConfessionHistoryBoolExp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input_IntComparisonExp),
      }));

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryConfessionHistoryBoolExp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
        local$predicate, (e) => call(predicate: e));
  }
}

class _CopyWithStubImpl_Input_historyConfessionHistoryAggregateBoolExpCount<
        TRes>
    implements
        CopyWith_Input_historyConfessionHistoryAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_historyConfessionHistoryAggregateBoolExpCount(
      this._res);

  TRes _res;

  call({
    List<Enum_HistoryConfessionHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryConfessionHistoryBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) =>
      _res;

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
  }) =>
      Input_historyEditHistoryAggregateBoolExpCount._({
        if (arguments != null) r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input_historyEditHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyEditHistoryAggregateBoolExpCount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) =>
              fromJson_Enum_HistoryEditHistorySelectColumn((e as String)))
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
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] =
        Input_IntComparisonExp.fromJson((l$predicate as Map<String, dynamic>));
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
          Input_historyEditHistoryAggregateBoolExpCount>
      get copyWith => CopyWith_Input_historyEditHistoryAggregateBoolExpCount(
            this,
            (i) => i,
          );

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
          TRes res) =
      _CopyWithStubImpl_Input_historyEditHistoryAggregateBoolExpCount;

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
  }) =>
      _then(Input_historyEditHistoryAggregateBoolExpCount._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments':
              (arguments as List<Enum_HistoryEditHistorySelectColumn>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input_HistoryEditHistoryBoolExp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input_IntComparisonExp),
      }));

  CopyWith_Input_HistoryEditHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryEditHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryEditHistoryBoolExp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
        local$predicate, (e) => call(predicate: e));
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
  }) =>
      _res;

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
  }) =>
      Input_historyKodasHistoryAggregateBoolExpCount._({
        if (arguments != null) r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input_historyKodasHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyKodasHistoryAggregateBoolExpCount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) =>
              fromJson_Enum_HistoryKodasHistorySelectColumn((e as String)))
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
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] =
        Input_IntComparisonExp.fromJson((l$predicate as Map<String, dynamic>));
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
          Input_historyKodasHistoryAggregateBoolExpCount>
      get copyWith => CopyWith_Input_historyKodasHistoryAggregateBoolExpCount(
            this,
            (i) => i,
          );

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
          TRes res) =
      _CopyWithStubImpl_Input_historyKodasHistoryAggregateBoolExpCount;

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
  }) =>
      _then(Input_historyKodasHistoryAggregateBoolExpCount._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments':
              (arguments as List<Enum_HistoryKodasHistorySelectColumn>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input_HistoryKodasHistoryBoolExp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input_IntComparisonExp),
      }));

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryBoolExp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
        local$predicate, (e) => call(predicate: e));
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
  }) =>
      _res;

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_historyVisitHistoryAggregateBoolExpCount {
  factory Input_historyVisitHistoryAggregateBoolExpCount({
    List<Enum_HistoryVisitHistorySelectColumn>? arguments,
    bool? distinct,
    Input_HistoryVisitHistoryBoolExp? filter,
    required Input_IntComparisonExp predicate,
  }) =>
      Input_historyVisitHistoryAggregateBoolExpCount._({
        if (arguments != null) r'arguments': arguments,
        if (distinct != null) r'distinct': distinct,
        if (filter != null) r'filter': filter,
        r'predicate': predicate,
      });

  Input_historyVisitHistoryAggregateBoolExpCount._(this._$data);

  factory Input_historyVisitHistoryAggregateBoolExpCount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('arguments')) {
      final l$arguments = data['arguments'];
      result$data['arguments'] = (l$arguments as List<dynamic>?)
          ?.map((e) =>
              fromJson_Enum_HistoryVisitHistorySelectColumn((e as String)))
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
              (l$filter as Map<String, dynamic>));
    }
    final l$predicate = data['predicate'];
    result$data['predicate'] =
        Input_IntComparisonExp.fromJson((l$predicate as Map<String, dynamic>));
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
          Input_historyVisitHistoryAggregateBoolExpCount>
      get copyWith => CopyWith_Input_historyVisitHistoryAggregateBoolExpCount(
            this,
            (i) => i,
          );

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
          TRes res) =
      _CopyWithStubImpl_Input_historyVisitHistoryAggregateBoolExpCount;

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
  }) =>
      _then(Input_historyVisitHistoryAggregateBoolExpCount._({
        ..._instance._$data,
        if (arguments != _undefined)
          'arguments':
              (arguments as List<Enum_HistoryVisitHistorySelectColumn>?),
        if (distinct != _undefined) 'distinct': (distinct as bool?),
        if (filter != _undefined)
          'filter': (filter as Input_HistoryVisitHistoryBoolExp?),
        if (predicate != _undefined && predicate != null)
          'predicate': (predicate as Input_IntComparisonExp),
      }));

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryVisitHistoryBoolExp(
            local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
        local$predicate, (e) => call(predicate: e));
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
  }) =>
      _res;

  CopyWith_Input_HistoryVisitHistoryBoolExp<TRes> get filter =>
      CopyWith_Input_HistoryVisitHistoryBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
}

class Input_st_d_within_geography_input {
  factory Input_st_d_within_geography_input({
    required double distance,
    required Map<String, dynamic> from,
    bool? use_spheroid,
  }) =>
      Input_st_d_within_geography_input._({
        r'distance': distance,
        r'from': from,
        if (use_spheroid != null) r'use_spheroid': use_spheroid,
      });

  Input_st_d_within_geography_input._(this._$data);

  factory Input_st_d_within_geography_input.fromJson(
      Map<String, dynamic> data) {
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
      get copyWith => CopyWith_Input_st_d_within_geography_input(
            this,
            (i) => i,
          );

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

  TRes call({
    double? distance,
    Map<String, dynamic>? from,
    bool? use_spheroid,
  });
}

class _CopyWithImpl_Input_st_d_within_geography_input<TRes>
    implements CopyWith_Input_st_d_within_geography_input<TRes> {
  _CopyWithImpl_Input_st_d_within_geography_input(
    this._instance,
    this._then,
  );

  final Input_st_d_within_geography_input _instance;

  final TRes Function(Input_st_d_within_geography_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? distance = _undefined,
    Object? from = _undefined,
    Object? use_spheroid = _undefined,
  }) =>
      _then(Input_st_d_within_geography_input._({
        ..._instance._$data,
        if (distance != _undefined && distance != null)
          'distance': (distance as double),
        if (from != _undefined && from != null)
          'from': (from as Map<String, dynamic>),
        if (use_spheroid != _undefined) 'use_spheroid': (use_spheroid as bool?),
      }));
}

class _CopyWithStubImpl_Input_st_d_within_geography_input<TRes>
    implements CopyWith_Input_st_d_within_geography_input<TRes> {
  _CopyWithStubImpl_Input_st_d_within_geography_input(this._res);

  TRes _res;

  call({
    double? distance,
    Map<String, dynamic>? from,
    bool? use_spheroid,
  }) =>
      _res;
}

class Input_st_d_within_input {
  factory Input_st_d_within_input({
    required double distance,
    required Map<String, dynamic> from,
  }) =>
      Input_st_d_within_input._({
        r'distance': distance,
        r'from': from,
      });

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
      CopyWith_Input_st_d_within_input(
        this,
        (i) => i,
      );

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
    return Object.hashAll([
      l$distance,
      l$from,
    ]);
  }
}

abstract class CopyWith_Input_st_d_within_input<TRes> {
  factory CopyWith_Input_st_d_within_input(
    Input_st_d_within_input instance,
    TRes Function(Input_st_d_within_input) then,
  ) = _CopyWithImpl_Input_st_d_within_input;

  factory CopyWith_Input_st_d_within_input.stub(TRes res) =
      _CopyWithStubImpl_Input_st_d_within_input;

  TRes call({
    double? distance,
    Map<String, dynamic>? from,
  });
}

class _CopyWithImpl_Input_st_d_within_input<TRes>
    implements CopyWith_Input_st_d_within_input<TRes> {
  _CopyWithImpl_Input_st_d_within_input(
    this._instance,
    this._then,
  );

  final Input_st_d_within_input _instance;

  final TRes Function(Input_st_d_within_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? distance = _undefined,
    Object? from = _undefined,
  }) =>
      _then(Input_st_d_within_input._({
        ..._instance._$data,
        if (distance != _undefined && distance != null)
          'distance': (distance as double),
        if (from != _undefined && from != null)
          'from': (from as Map<String, dynamic>),
      }));
}

class _CopyWithStubImpl_Input_st_d_within_input<TRes>
    implements CopyWith_Input_st_d_within_input<TRes> {
  _CopyWithStubImpl_Input_st_d_within_input(this._res);

  TRes _res;

  call({
    double? distance,
    Map<String, dynamic>? from,
  }) =>
      _res;
}

enum Enum_AddressesConstraint {
  addresses_family_id_idx,
  addresses_pk,
  addresses_store_id_idx,
  $unknown;

  factory Enum_AddressesConstraint.fromJson(String value) =>
      fromJson_Enum_AddressesConstraint(value);

  String toJson() => toJson_Enum_AddressesConstraint(this);
}

String toJson_Enum_AddressesConstraint(Enum_AddressesConstraint e) {
  switch (e) {
    case Enum_AddressesConstraint.addresses_family_id_idx:
      return r'addresses_family_id_idx';
    case Enum_AddressesConstraint.addresses_pk:
      return r'addresses_pk';
    case Enum_AddressesConstraint.addresses_store_id_idx:
      return r'addresses_store_id_idx';
    case Enum_AddressesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AddressesConstraint fromJson_Enum_AddressesConstraint(String value) {
  switch (value) {
    case r'addresses_family_id_idx':
      return Enum_AddressesConstraint.addresses_family_id_idx;
    case r'addresses_pk':
      return Enum_AddressesConstraint.addresses_pk;
    case r'addresses_store_id_idx':
      return Enum_AddressesConstraint.addresses_store_id_idx;
    default:
      return Enum_AddressesConstraint.$unknown;
  }
}

enum Enum_AddressesSelectColumn {
  apartmentNumber,
  areaId,
  countryIsoCode,
  districtId,
  familyId,
  geolocation,
  houseNumber,
  id,
  specialLandmark,
  storeId,
  storeyNumber,
  streetId,
  substreetName,
  $unknown;

  factory Enum_AddressesSelectColumn.fromJson(String value) =>
      fromJson_Enum_AddressesSelectColumn(value);

  String toJson() => toJson_Enum_AddressesSelectColumn(this);
}

String toJson_Enum_AddressesSelectColumn(Enum_AddressesSelectColumn e) {
  switch (e) {
    case Enum_AddressesSelectColumn.apartmentNumber:
      return r'apartmentNumber';
    case Enum_AddressesSelectColumn.areaId:
      return r'areaId';
    case Enum_AddressesSelectColumn.countryIsoCode:
      return r'countryIsoCode';
    case Enum_AddressesSelectColumn.districtId:
      return r'districtId';
    case Enum_AddressesSelectColumn.familyId:
      return r'familyId';
    case Enum_AddressesSelectColumn.geolocation:
      return r'geolocation';
    case Enum_AddressesSelectColumn.houseNumber:
      return r'houseNumber';
    case Enum_AddressesSelectColumn.id:
      return r'id';
    case Enum_AddressesSelectColumn.specialLandmark:
      return r'specialLandmark';
    case Enum_AddressesSelectColumn.storeId:
      return r'storeId';
    case Enum_AddressesSelectColumn.storeyNumber:
      return r'storeyNumber';
    case Enum_AddressesSelectColumn.streetId:
      return r'streetId';
    case Enum_AddressesSelectColumn.substreetName:
      return r'substreetName';
    case Enum_AddressesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AddressesSelectColumn fromJson_Enum_AddressesSelectColumn(String value) {
  switch (value) {
    case r'apartmentNumber':
      return Enum_AddressesSelectColumn.apartmentNumber;
    case r'areaId':
      return Enum_AddressesSelectColumn.areaId;
    case r'countryIsoCode':
      return Enum_AddressesSelectColumn.countryIsoCode;
    case r'districtId':
      return Enum_AddressesSelectColumn.districtId;
    case r'familyId':
      return Enum_AddressesSelectColumn.familyId;
    case r'geolocation':
      return Enum_AddressesSelectColumn.geolocation;
    case r'houseNumber':
      return Enum_AddressesSelectColumn.houseNumber;
    case r'id':
      return Enum_AddressesSelectColumn.id;
    case r'specialLandmark':
      return Enum_AddressesSelectColumn.specialLandmark;
    case r'storeId':
      return Enum_AddressesSelectColumn.storeId;
    case r'storeyNumber':
      return Enum_AddressesSelectColumn.storeyNumber;
    case r'streetId':
      return Enum_AddressesSelectColumn.streetId;
    case r'substreetName':
      return Enum_AddressesSelectColumn.substreetName;
    default:
      return Enum_AddressesSelectColumn.$unknown;
  }
}

enum Enum_AddressesUpdateColumn {
  apartmentNumber,
  areaId,
  countryIsoCode,
  districtId,
  familyId,
  geolocation,
  houseNumber,
  specialLandmark,
  storeId,
  storeyNumber,
  streetId,
  substreetName,
  $unknown;

  factory Enum_AddressesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AddressesUpdateColumn(value);

  String toJson() => toJson_Enum_AddressesUpdateColumn(this);
}

String toJson_Enum_AddressesUpdateColumn(Enum_AddressesUpdateColumn e) {
  switch (e) {
    case Enum_AddressesUpdateColumn.apartmentNumber:
      return r'apartmentNumber';
    case Enum_AddressesUpdateColumn.areaId:
      return r'areaId';
    case Enum_AddressesUpdateColumn.countryIsoCode:
      return r'countryIsoCode';
    case Enum_AddressesUpdateColumn.districtId:
      return r'districtId';
    case Enum_AddressesUpdateColumn.familyId:
      return r'familyId';
    case Enum_AddressesUpdateColumn.geolocation:
      return r'geolocation';
    case Enum_AddressesUpdateColumn.houseNumber:
      return r'houseNumber';
    case Enum_AddressesUpdateColumn.specialLandmark:
      return r'specialLandmark';
    case Enum_AddressesUpdateColumn.storeId:
      return r'storeId';
    case Enum_AddressesUpdateColumn.storeyNumber:
      return r'storeyNumber';
    case Enum_AddressesUpdateColumn.streetId:
      return r'streetId';
    case Enum_AddressesUpdateColumn.substreetName:
      return r'substreetName';
    case Enum_AddressesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AddressesUpdateColumn fromJson_Enum_AddressesUpdateColumn(String value) {
  switch (value) {
    case r'apartmentNumber':
      return Enum_AddressesUpdateColumn.apartmentNumber;
    case r'areaId':
      return Enum_AddressesUpdateColumn.areaId;
    case r'countryIsoCode':
      return Enum_AddressesUpdateColumn.countryIsoCode;
    case r'districtId':
      return Enum_AddressesUpdateColumn.districtId;
    case r'familyId':
      return Enum_AddressesUpdateColumn.familyId;
    case r'geolocation':
      return Enum_AddressesUpdateColumn.geolocation;
    case r'houseNumber':
      return Enum_AddressesUpdateColumn.houseNumber;
    case r'specialLandmark':
      return Enum_AddressesUpdateColumn.specialLandmark;
    case r'storeId':
      return Enum_AddressesUpdateColumn.storeId;
    case r'storeyNumber':
      return Enum_AddressesUpdateColumn.storeyNumber;
    case r'streetId':
      return Enum_AddressesUpdateColumn.streetId;
    case r'substreetName':
      return Enum_AddressesUpdateColumn.substreetName;
    default:
      return Enum_AddressesUpdateColumn.$unknown;
  }
}

enum Enum_AreasConstraint {
  areas_pkey,
  $unknown;

  factory Enum_AreasConstraint.fromJson(String value) =>
      fromJson_Enum_AreasConstraint(value);

  String toJson() => toJson_Enum_AreasConstraint(this);
}
