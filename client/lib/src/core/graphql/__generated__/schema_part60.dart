// Part 60 of the schema
part of "schema.graphql.dart";

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

abstract class CopyWith_Input_storesAggregateBoolExpCount<TRes> {
  factory CopyWith_Input_storesAggregateBoolExpCount(
    Input_storesAggregateBoolExpCount instance,
    TRes Function(Input_storesAggregateBoolExpCount) then,
  ) = _CopyWithImpl_Input_storesAggregateBoolExpCount;

  factory CopyWith_Input_storesAggregateBoolExpCount.stub(TRes res) =
      _CopyWithStubImpl_Input_storesAggregateBoolExpCount;

  TRes call({
    List<Enum_StoresSelectColumn>? arguments,
    bool? distinct,
    Input_StoresBoolExp? filter,
    Input_IntComparisonExp? predicate,
  });
  CopyWith_Input_StoresBoolExp<TRes> get filter;
  CopyWith_Input_IntComparisonExp<TRes> get predicate;
}

class _CopyWithImpl_Input_storesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_storesAggregateBoolExpCount<TRes> {
  _CopyWithImpl_Input_storesAggregateBoolExpCount(this._instance, this._then);

  final Input_storesAggregateBoolExpCount _instance;

  final TRes Function(Input_storesAggregateBoolExpCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? arguments = _undefined,
    Object? distinct = _undefined,
    Object? filter = _undefined,
    Object? predicate = _undefined,
  }) => _then(
    Input_storesAggregateBoolExpCount._({
      ..._instance._$data,
      if (arguments != _undefined)
        'arguments': (arguments as List<Enum_StoresSelectColumn>?),
      if (distinct != _undefined) 'distinct': (distinct as bool?),
      if (filter != _undefined) 'filter': (filter as Input_StoresBoolExp?),
      if (predicate != _undefined && predicate != null)
        'predicate': (predicate as Input_IntComparisonExp),
    }),
  );

  CopyWith_Input_StoresBoolExp<TRes> get filter {
    final local$filter = _instance.filter;
    return local$filter == null
        ? CopyWith_Input_StoresBoolExp.stub(_then(_instance))
        : CopyWith_Input_StoresBoolExp(local$filter, (e) => call(filter: e));
  }

  CopyWith_Input_IntComparisonExp<TRes> get predicate {
    final local$predicate = _instance.predicate;
    return CopyWith_Input_IntComparisonExp(
      local$predicate,
      (e) => call(predicate: e),
    );
  }
}

class _CopyWithStubImpl_Input_storesAggregateBoolExpCount<TRes>
    implements CopyWith_Input_storesAggregateBoolExpCount<TRes> {
  _CopyWithStubImpl_Input_storesAggregateBoolExpCount(this._res);

  TRes _res;

  call({
    List<Enum_StoresSelectColumn>? arguments,
    bool? distinct,
    Input_StoresBoolExp? filter,
    Input_IntComparisonExp? predicate,
  }) => _res;

  CopyWith_Input_StoresBoolExp<TRes> get filter =>
      CopyWith_Input_StoresBoolExp.stub(_res);

  CopyWith_Input_IntComparisonExp<TRes> get predicate =>
      CopyWith_Input_IntComparisonExp.stub(_res);
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

String toJson_Enum_AreasConstraint(Enum_AreasConstraint e) {
  switch (e) {
    case Enum_AreasConstraint.areas_pkey:
      return r'areas_pkey';
    case Enum_AreasConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AreasConstraint fromJson_Enum_AreasConstraint(String value) {
  switch (value) {
    case r'areas_pkey':
      return Enum_AreasConstraint.areas_pkey;
    default:
      return Enum_AreasConstraint.$unknown;
  }
}

enum Enum_AreasSelectColumn {
  blurhash,
  bounds,
  color,
  id,
  name,
  photoUpdatedAt,
  $unknown;

  factory Enum_AreasSelectColumn.fromJson(String value) =>
      fromJson_Enum_AreasSelectColumn(value);

  String toJson() => toJson_Enum_AreasSelectColumn(this);
}

String toJson_Enum_AreasSelectColumn(Enum_AreasSelectColumn e) {
  switch (e) {
    case Enum_AreasSelectColumn.blurhash:
      return r'blurhash';
    case Enum_AreasSelectColumn.bounds:
      return r'bounds';
    case Enum_AreasSelectColumn.color:
      return r'color';
    case Enum_AreasSelectColumn.id:
      return r'id';
    case Enum_AreasSelectColumn.name:
      return r'name';
    case Enum_AreasSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_AreasSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AreasSelectColumn fromJson_Enum_AreasSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_AreasSelectColumn.blurhash;
    case r'bounds':
      return Enum_AreasSelectColumn.bounds;
    case r'color':
      return Enum_AreasSelectColumn.color;
    case r'id':
      return Enum_AreasSelectColumn.id;
    case r'name':
      return Enum_AreasSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_AreasSelectColumn.photoUpdatedAt;
    default:
      return Enum_AreasSelectColumn.$unknown;
  }
}

enum Enum_AreasStreetsConstraint {
  areas_streets_pk,
  $unknown;

  factory Enum_AreasStreetsConstraint.fromJson(String value) =>
      fromJson_Enum_AreasStreetsConstraint(value);

  String toJson() => toJson_Enum_AreasStreetsConstraint(this);
}

String toJson_Enum_AreasStreetsConstraint(Enum_AreasStreetsConstraint e) {
  switch (e) {
    case Enum_AreasStreetsConstraint.areas_streets_pk:
      return r'areas_streets_pk';
    case Enum_AreasStreetsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AreasStreetsConstraint fromJson_Enum_AreasStreetsConstraint(String value) {
  switch (value) {
    case r'areas_streets_pk':
      return Enum_AreasStreetsConstraint.areas_streets_pk;
    default:
      return Enum_AreasStreetsConstraint.$unknown;
  }
}

enum Enum_AreasStreetsSelectColumn {
  areaId,
  streetId,
  $unknown;

  factory Enum_AreasStreetsSelectColumn.fromJson(String value) =>
      fromJson_Enum_AreasStreetsSelectColumn(value);

  String toJson() => toJson_Enum_AreasStreetsSelectColumn(this);
}

String toJson_Enum_AreasStreetsSelectColumn(Enum_AreasStreetsSelectColumn e) {
  switch (e) {
    case Enum_AreasStreetsSelectColumn.areaId:
      return r'areaId';
    case Enum_AreasStreetsSelectColumn.streetId:
      return r'streetId';
    case Enum_AreasStreetsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AreasStreetsSelectColumn fromJson_Enum_AreasStreetsSelectColumn(
  String value,
) {
  switch (value) {
    case r'areaId':
      return Enum_AreasStreetsSelectColumn.areaId;
    case r'streetId':
      return Enum_AreasStreetsSelectColumn.streetId;
    default:
      return Enum_AreasStreetsSelectColumn.$unknown;
  }
}

enum Enum_AreasStreetsUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_AreasStreetsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AreasStreetsUpdateColumn(value);

  String toJson() => toJson_Enum_AreasStreetsUpdateColumn(this);
}

String toJson_Enum_AreasStreetsUpdateColumn(Enum_AreasStreetsUpdateColumn e) {
  switch (e) {
    case Enum_AreasStreetsUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_AreasStreetsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AreasStreetsUpdateColumn fromJson_Enum_AreasStreetsUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_AreasStreetsUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_AreasStreetsUpdateColumn.$unknown;
  }
}

enum Enum_AreasUpdateColumn {
  bounds,
  color,
  name,
  $unknown;

  factory Enum_AreasUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AreasUpdateColumn(value);

  String toJson() => toJson_Enum_AreasUpdateColumn(this);
}

String toJson_Enum_AreasUpdateColumn(Enum_AreasUpdateColumn e) {
  switch (e) {
    case Enum_AreasUpdateColumn.bounds:
      return r'bounds';
    case Enum_AreasUpdateColumn.color:
      return r'color';
    case Enum_AreasUpdateColumn.name:
      return r'name';
    case Enum_AreasUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AreasUpdateColumn fromJson_Enum_AreasUpdateColumn(String value) {
  switch (value) {
    case r'bounds':
      return Enum_AreasUpdateColumn.bounds;
    case r'color':
      return Enum_AreasUpdateColumn.color;
    case r'name':
      return Enum_AreasUpdateColumn.name;
    default:
      return Enum_AreasUpdateColumn.$unknown;
  }
}

enum Enum_AuthUsersAdminOnConstraint {
  users_admin_on_area,
  users_admin_on_group,
  users_admin_on_pkey,
  users_admin_on_service,
  $unknown;

  factory Enum_AuthUsersAdminOnConstraint.fromJson(String value) =>
      fromJson_Enum_AuthUsersAdminOnConstraint(value);

  String toJson() => toJson_Enum_AuthUsersAdminOnConstraint(this);
}

String toJson_Enum_AuthUsersAdminOnConstraint(
  Enum_AuthUsersAdminOnConstraint e,
) {
  switch (e) {
    case Enum_AuthUsersAdminOnConstraint.users_admin_on_area:
      return r'users_admin_on_area';
    case Enum_AuthUsersAdminOnConstraint.users_admin_on_group:
      return r'users_admin_on_group';
    case Enum_AuthUsersAdminOnConstraint.users_admin_on_pkey:
      return r'users_admin_on_pkey';
    case Enum_AuthUsersAdminOnConstraint.users_admin_on_service:
      return r'users_admin_on_service';
    case Enum_AuthUsersAdminOnConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersAdminOnConstraint fromJson_Enum_AuthUsersAdminOnConstraint(
  String value,
) {
  switch (value) {
    case r'users_admin_on_area':
      return Enum_AuthUsersAdminOnConstraint.users_admin_on_area;
    case r'users_admin_on_group':
      return Enum_AuthUsersAdminOnConstraint.users_admin_on_group;
    case r'users_admin_on_pkey':
      return Enum_AuthUsersAdminOnConstraint.users_admin_on_pkey;
    case r'users_admin_on_service':
      return Enum_AuthUsersAdminOnConstraint.users_admin_on_service;
    default:
      return Enum_AuthUsersAdminOnConstraint.$unknown;
  }
}

enum Enum_AuthUsersAdminOnSelectColumn {
  adminOnArea,
  adminOnGroup,
  adminOnService,
  areaAdminOnUsers,
  areaAllowEdit,
  areaAllowExport,
  groupAdminOnUsers,
  groupAllowEdit,
  groupAllowExport,
  groupAllowRecordAttendance,
  groupAllowRecordServantsAttendance,
  groupWriteRelatedFamilies,
  permissionId,
  serviceAdminOnUsers,
  serviceAllowEdit,
  serviceAllowExport,
  serviceAllowRecordAttendance,
  serviceAllowRecordServantsAttendance,
  serviceGender,
  serviceStudyYear,
  serviceWriteRelatedFamilies,
  uid,
  $unknown;

  factory Enum_AuthUsersAdminOnSelectColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersAdminOnSelectColumn(value);

  String toJson() => toJson_Enum_AuthUsersAdminOnSelectColumn(this);
}

String toJson_Enum_AuthUsersAdminOnSelectColumn(
  Enum_AuthUsersAdminOnSelectColumn e,
) {
  switch (e) {
    case Enum_AuthUsersAdminOnSelectColumn.adminOnArea:
      return r'adminOnArea';
    case Enum_AuthUsersAdminOnSelectColumn.adminOnGroup:
      return r'adminOnGroup';
    case Enum_AuthUsersAdminOnSelectColumn.adminOnService:
      return r'adminOnService';
    case Enum_AuthUsersAdminOnSelectColumn.areaAdminOnUsers:
      return r'areaAdminOnUsers';
    case Enum_AuthUsersAdminOnSelectColumn.areaAllowEdit:
      return r'areaAllowEdit';
    case Enum_AuthUsersAdminOnSelectColumn.areaAllowExport:
      return r'areaAllowExport';
    case Enum_AuthUsersAdminOnSelectColumn.groupAdminOnUsers:
      return r'groupAdminOnUsers';
    case Enum_AuthUsersAdminOnSelectColumn.groupAllowEdit:
      return r'groupAllowEdit';
    case Enum_AuthUsersAdminOnSelectColumn.groupAllowExport:
      return r'groupAllowExport';
    case Enum_AuthUsersAdminOnSelectColumn.groupAllowRecordAttendance:
      return r'groupAllowRecordAttendance';
    case Enum_AuthUsersAdminOnSelectColumn.groupAllowRecordServantsAttendance:
      return r'groupAllowRecordServantsAttendance';
    case Enum_AuthUsersAdminOnSelectColumn.groupWriteRelatedFamilies:
      return r'groupWriteRelatedFamilies';
    case Enum_AuthUsersAdminOnSelectColumn.permissionId:
      return r'permissionId';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAdminOnUsers:
      return r'serviceAdminOnUsers';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAllowEdit:
      return r'serviceAllowEdit';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAllowExport:
      return r'serviceAllowExport';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAllowRecordAttendance:
      return r'serviceAllowRecordAttendance';
    case Enum_AuthUsersAdminOnSelectColumn.serviceAllowRecordServantsAttendance:
      return r'serviceAllowRecordServantsAttendance';
    case Enum_AuthUsersAdminOnSelectColumn.serviceGender:
      return r'serviceGender';
    case Enum_AuthUsersAdminOnSelectColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_AuthUsersAdminOnSelectColumn.serviceWriteRelatedFamilies:
      return r'serviceWriteRelatedFamilies';
    case Enum_AuthUsersAdminOnSelectColumn.uid:
      return r'uid';
    case Enum_AuthUsersAdminOnSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersAdminOnSelectColumn fromJson_Enum_AuthUsersAdminOnSelectColumn(
  String value,
) {
  switch (value) {
    case r'adminOnArea':
      return Enum_AuthUsersAdminOnSelectColumn.adminOnArea;
    case r'adminOnGroup':
      return Enum_AuthUsersAdminOnSelectColumn.adminOnGroup;
    case r'adminOnService':
      return Enum_AuthUsersAdminOnSelectColumn.adminOnService;
    case r'areaAdminOnUsers':
      return Enum_AuthUsersAdminOnSelectColumn.areaAdminOnUsers;
    case r'areaAllowEdit':
      return Enum_AuthUsersAdminOnSelectColumn.areaAllowEdit;
    case r'areaAllowExport':
      return Enum_AuthUsersAdminOnSelectColumn.areaAllowExport;
    case r'groupAdminOnUsers':
      return Enum_AuthUsersAdminOnSelectColumn.groupAdminOnUsers;
    case r'groupAllowEdit':
      return Enum_AuthUsersAdminOnSelectColumn.groupAllowEdit;
    case r'groupAllowExport':
      return Enum_AuthUsersAdminOnSelectColumn.groupAllowExport;
    case r'groupAllowRecordAttendance':
      return Enum_AuthUsersAdminOnSelectColumn.groupAllowRecordAttendance;
    case r'groupAllowRecordServantsAttendance':
      return Enum_AuthUsersAdminOnSelectColumn
          .groupAllowRecordServantsAttendance;
    case r'groupWriteRelatedFamilies':
      return Enum_AuthUsersAdminOnSelectColumn.groupWriteRelatedFamilies;
    case r'permissionId':
      return Enum_AuthUsersAdminOnSelectColumn.permissionId;
    case r'serviceAdminOnUsers':
      return Enum_AuthUsersAdminOnSelectColumn.serviceAdminOnUsers;
    case r'serviceAllowEdit':
      return Enum_AuthUsersAdminOnSelectColumn.serviceAllowEdit;
    case r'serviceAllowExport':
      return Enum_AuthUsersAdminOnSelectColumn.serviceAllowExport;
    case r'serviceAllowRecordAttendance':
      return Enum_AuthUsersAdminOnSelectColumn.serviceAllowRecordAttendance;
    case r'serviceAllowRecordServantsAttendance':
      return Enum_AuthUsersAdminOnSelectColumn
          .serviceAllowRecordServantsAttendance;
    case r'serviceGender':
      return Enum_AuthUsersAdminOnSelectColumn.serviceGender;
    case r'serviceStudyYear':
      return Enum_AuthUsersAdminOnSelectColumn.serviceStudyYear;
    case r'serviceWriteRelatedFamilies':
      return Enum_AuthUsersAdminOnSelectColumn.serviceWriteRelatedFamilies;
    case r'uid':
      return Enum_AuthUsersAdminOnSelectColumn.uid;
    default:
      return Enum_AuthUsersAdminOnSelectColumn.$unknown;
  }
}

enum Enum_AuthUsersAdminOnUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_AuthUsersAdminOnUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersAdminOnUpdateColumn(value);

  String toJson() => toJson_Enum_AuthUsersAdminOnUpdateColumn(this);
}

String toJson_Enum_AuthUsersAdminOnUpdateColumn(
  Enum_AuthUsersAdminOnUpdateColumn e,
) {
  switch (e) {
    case Enum_AuthUsersAdminOnUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_AuthUsersAdminOnUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersAdminOnUpdateColumn fromJson_Enum_AuthUsersAdminOnUpdateColumn(
  String value,
) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_AuthUsersAdminOnUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_AuthUsersAdminOnUpdateColumn.$unknown;
  }
}

enum Enum_AuthUsersDataSelectColumn {
  blurhash,
  email,
  name,
  photoUpdatedAt,
  uid,
  $unknown;

  factory Enum_AuthUsersDataSelectColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersDataSelectColumn(value);

  String toJson() => toJson_Enum_AuthUsersDataSelectColumn(this);
}

String toJson_Enum_AuthUsersDataSelectColumn(Enum_AuthUsersDataSelectColumn e) {
  switch (e) {
    case Enum_AuthUsersDataSelectColumn.blurhash:
      return r'blurhash';
    case Enum_AuthUsersDataSelectColumn.email:
      return r'email';
    case Enum_AuthUsersDataSelectColumn.name:
      return r'name';
    case Enum_AuthUsersDataSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_AuthUsersDataSelectColumn.uid:
      return r'uid';
    case Enum_AuthUsersDataSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersDataSelectColumn fromJson_Enum_AuthUsersDataSelectColumn(
  String value,
) {
  switch (value) {
    case r'blurhash':
      return Enum_AuthUsersDataSelectColumn.blurhash;
    case r'email':
      return Enum_AuthUsersDataSelectColumn.email;
    case r'name':
      return Enum_AuthUsersDataSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_AuthUsersDataSelectColumn.photoUpdatedAt;
    case r'uid':
      return Enum_AuthUsersDataSelectColumn.uid;
    default:
      return Enum_AuthUsersDataSelectColumn.$unknown;
  }
}

enum Enum_AuthUsersPermissionsConstraint {
  users_permissions_pkey,
  users_permissions_uid_permission_key,
  $unknown;

  factory Enum_AuthUsersPermissionsConstraint.fromJson(String value) =>
      fromJson_Enum_AuthUsersPermissionsConstraint(value);

  String toJson() => toJson_Enum_AuthUsersPermissionsConstraint(this);
}

String toJson_Enum_AuthUsersPermissionsConstraint(
  Enum_AuthUsersPermissionsConstraint e,
) {
  switch (e) {
    case Enum_AuthUsersPermissionsConstraint.users_permissions_pkey:
      return r'users_permissions_pkey';
    case Enum_AuthUsersPermissionsConstraint
        .users_permissions_uid_permission_key:
      return r'users_permissions_uid_permission_key';
    case Enum_AuthUsersPermissionsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersPermissionsConstraint
fromJson_Enum_AuthUsersPermissionsConstraint(String value) {
  switch (value) {
    case r'users_permissions_pkey':
      return Enum_AuthUsersPermissionsConstraint.users_permissions_pkey;
    case r'users_permissions_uid_permission_key':
      return Enum_AuthUsersPermissionsConstraint
          .users_permissions_uid_permission_key;
    default:
      return Enum_AuthUsersPermissionsConstraint.$unknown;
  }
}

enum Enum_AuthUsersPermissionsSelectColumn {
  permission,
  uid,
  $unknown;

  factory Enum_AuthUsersPermissionsSelectColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersPermissionsSelectColumn(value);

  String toJson() => toJson_Enum_AuthUsersPermissionsSelectColumn(this);
}

String toJson_Enum_AuthUsersPermissionsSelectColumn(
  Enum_AuthUsersPermissionsSelectColumn e,
) {
  switch (e) {
    case Enum_AuthUsersPermissionsSelectColumn.permission:
      return r'permission';
    case Enum_AuthUsersPermissionsSelectColumn.uid:
      return r'uid';
    case Enum_AuthUsersPermissionsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersPermissionsSelectColumn
fromJson_Enum_AuthUsersPermissionsSelectColumn(String value) {
  switch (value) {
    case r'permission':
      return Enum_AuthUsersPermissionsSelectColumn.permission;
    case r'uid':
      return Enum_AuthUsersPermissionsSelectColumn.uid;
    default:
      return Enum_AuthUsersPermissionsSelectColumn.$unknown;
  }
}

enum Enum_AuthUsersPermissionsUpdateColumn {
  $_PLACEHOLDER,
  $unknown;

  factory Enum_AuthUsersPermissionsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_AuthUsersPermissionsUpdateColumn(value);

  String toJson() => toJson_Enum_AuthUsersPermissionsUpdateColumn(this);
}

String toJson_Enum_AuthUsersPermissionsUpdateColumn(
  Enum_AuthUsersPermissionsUpdateColumn e,
) {
  switch (e) {
    case Enum_AuthUsersPermissionsUpdateColumn.$_PLACEHOLDER:
      return r'_PLACEHOLDER';
    case Enum_AuthUsersPermissionsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_AuthUsersPermissionsUpdateColumn
fromJson_Enum_AuthUsersPermissionsUpdateColumn(String value) {
  switch (value) {
    case r'_PLACEHOLDER':
      return Enum_AuthUsersPermissionsUpdateColumn.$_PLACEHOLDER;
    default:
      return Enum_AuthUsersPermissionsUpdateColumn.$unknown;
  }
}

enum Enum_ChurchesConstraint {
  churches_name_key,
  churches_pkey,
  $unknown;

  factory Enum_ChurchesConstraint.fromJson(String value) =>
      fromJson_Enum_ChurchesConstraint(value);

  String toJson() => toJson_Enum_ChurchesConstraint(this);
}

String toJson_Enum_ChurchesConstraint(Enum_ChurchesConstraint e) {
  switch (e) {
    case Enum_ChurchesConstraint.churches_name_key:
      return r'churches_name_key';
    case Enum_ChurchesConstraint.churches_pkey:
      return r'churches_pkey';
    case Enum_ChurchesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchesConstraint fromJson_Enum_ChurchesConstraint(String value) {
  switch (value) {
    case r'churches_name_key':
      return Enum_ChurchesConstraint.churches_name_key;
    case r'churches_pkey':
      return Enum_ChurchesConstraint.churches_pkey;
    default:
      return Enum_ChurchesConstraint.$unknown;
  }
}

enum Enum_ChurchesSelectColumn {
  id,
  isHidden,
  name,
  $unknown;

  factory Enum_ChurchesSelectColumn.fromJson(String value) =>
      fromJson_Enum_ChurchesSelectColumn(value);

  String toJson() => toJson_Enum_ChurchesSelectColumn(this);
}

String toJson_Enum_ChurchesSelectColumn(Enum_ChurchesSelectColumn e) {
  switch (e) {
    case Enum_ChurchesSelectColumn.id:
      return r'id';
    case Enum_ChurchesSelectColumn.isHidden:
      return r'isHidden';
    case Enum_ChurchesSelectColumn.name:
      return r'name';
    case Enum_ChurchesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchesSelectColumn fromJson_Enum_ChurchesSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_ChurchesSelectColumn.id;
    case r'isHidden':
      return Enum_ChurchesSelectColumn.isHidden;
    case r'name':
      return Enum_ChurchesSelectColumn.name;
    default:
      return Enum_ChurchesSelectColumn.$unknown;
  }
}

enum Enum_ChurchesUpdateColumn {
  name,
  $unknown;

  factory Enum_ChurchesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_ChurchesUpdateColumn(value);

  String toJson() => toJson_Enum_ChurchesUpdateColumn(this);
}

String toJson_Enum_ChurchesUpdateColumn(Enum_ChurchesUpdateColumn e) {
  switch (e) {
    case Enum_ChurchesUpdateColumn.name:
      return r'name';
    case Enum_ChurchesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ChurchesUpdateColumn fromJson_Enum_ChurchesUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_ChurchesUpdateColumn.name;
    default:
      return Enum_ChurchesUpdateColumn.$unknown;
  }
}

enum Enum_ClassesConstraint {
  classes_pkey,
  $unknown;

  factory Enum_ClassesConstraint.fromJson(String value) =>
      fromJson_Enum_ClassesConstraint(value);

  String toJson() => toJson_Enum_ClassesConstraint(this);
}

String toJson_Enum_ClassesConstraint(Enum_ClassesConstraint e) {
  switch (e) {
    case Enum_ClassesConstraint.classes_pkey:
      return r'classes_pkey';
    case Enum_ClassesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesConstraint fromJson_Enum_ClassesConstraint(String value) {
  switch (value) {
    case r'classes_pkey':
      return Enum_ClassesConstraint.classes_pkey;
    default:
      return Enum_ClassesConstraint.$unknown;
  }
}

enum Enum_ClassesPersonsSelectColumn {
  classId,
  personId,
  $unknown;

  factory Enum_ClassesPersonsSelectColumn.fromJson(String value) =>
      fromJson_Enum_ClassesPersonsSelectColumn(value);

  String toJson() => toJson_Enum_ClassesPersonsSelectColumn(this);
}

String toJson_Enum_ClassesPersonsSelectColumn(
  Enum_ClassesPersonsSelectColumn e,
) {
  switch (e) {
    case Enum_ClassesPersonsSelectColumn.classId:
      return r'classId';
    case Enum_ClassesPersonsSelectColumn.personId:
      return r'personId';
    case Enum_ClassesPersonsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesPersonsSelectColumn fromJson_Enum_ClassesPersonsSelectColumn(
  String value,
) {
  switch (value) {
    case r'classId':
      return Enum_ClassesPersonsSelectColumn.classId;
    case r'personId':
      return Enum_ClassesPersonsSelectColumn.personId;
    default:
      return Enum_ClassesPersonsSelectColumn.$unknown;
  }
}

enum Enum_ClassesSelectColumn {
  blurhash,
  color,
  id,
  name,
  photoUpdatedAt,
  serviceGender,
  serviceId,
  serviceStudyYear,
  $unknown;

  factory Enum_ClassesSelectColumn.fromJson(String value) =>
      fromJson_Enum_ClassesSelectColumn(value);

  String toJson() => toJson_Enum_ClassesSelectColumn(this);
}

String toJson_Enum_ClassesSelectColumn(Enum_ClassesSelectColumn e) {
  switch (e) {
    case Enum_ClassesSelectColumn.blurhash:
      return r'blurhash';
    case Enum_ClassesSelectColumn.color:
      return r'color';
    case Enum_ClassesSelectColumn.id:
      return r'id';
    case Enum_ClassesSelectColumn.name:
      return r'name';
    case Enum_ClassesSelectColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_ClassesSelectColumn.serviceGender:
      return r'serviceGender';
    case Enum_ClassesSelectColumn.serviceId:
      return r'serviceId';
    case Enum_ClassesSelectColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_ClassesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesSelectColumn fromJson_Enum_ClassesSelectColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_ClassesSelectColumn.blurhash;
    case r'color':
      return Enum_ClassesSelectColumn.color;
    case r'id':
      return Enum_ClassesSelectColumn.id;
    case r'name':
      return Enum_ClassesSelectColumn.name;
    case r'photoUpdatedAt':
      return Enum_ClassesSelectColumn.photoUpdatedAt;
    case r'serviceGender':
      return Enum_ClassesSelectColumn.serviceGender;
    case r'serviceId':
      return Enum_ClassesSelectColumn.serviceId;
    case r'serviceStudyYear':
      return Enum_ClassesSelectColumn.serviceStudyYear;
    default:
      return Enum_ClassesSelectColumn.$unknown;
  }
}

enum Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns {
  serviceGender,
  $unknown;

  factory Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
        this,
      );
}

String
toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns e,
) {
  switch (e) {
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'serviceGender':
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
          .serviceGender;
    default:
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_andArgumentsColumns
          .$unknown;
  }
}

enum Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns {
  serviceGender,
  $unknown;

  factory Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns.fromJson(
    String value,
  ) =>
      fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
        value,
      );

  String toJson() =>
      toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
        this,
      );
}

String
toJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
  Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns e,
) {
  switch (e) {
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
        .serviceGender:
      return r'serviceGender';
    case Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
        .$unknown:
      return r'$unknown';
  }
}

Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
fromJson_Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns(
  String value,
) {
  switch (value) {
    case r'serviceGender':
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
          .serviceGender;
    default:
      return Enum_ClassesSelectColumnClassesAggregateBoolExpBool_orArgumentsColumns
          .$unknown;
  }
}

enum Enum_ClassesUpdateColumn {
  blurhash,
  color,
  name,
  photoUpdatedAt,
  serviceGender,
  serviceId,
  serviceStudyYear,
  $unknown;

  factory Enum_ClassesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_ClassesUpdateColumn(value);

  String toJson() => toJson_Enum_ClassesUpdateColumn(this);
}

String toJson_Enum_ClassesUpdateColumn(Enum_ClassesUpdateColumn e) {
  switch (e) {
    case Enum_ClassesUpdateColumn.blurhash:
      return r'blurhash';
    case Enum_ClassesUpdateColumn.color:
      return r'color';
    case Enum_ClassesUpdateColumn.name:
      return r'name';
    case Enum_ClassesUpdateColumn.photoUpdatedAt:
      return r'photoUpdatedAt';
    case Enum_ClassesUpdateColumn.serviceGender:
      return r'serviceGender';
    case Enum_ClassesUpdateColumn.serviceId:
      return r'serviceId';
    case Enum_ClassesUpdateColumn.serviceStudyYear:
      return r'serviceStudyYear';
    case Enum_ClassesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_ClassesUpdateColumn fromJson_Enum_ClassesUpdateColumn(String value) {
  switch (value) {
    case r'blurhash':
      return Enum_ClassesUpdateColumn.blurhash;
    case r'color':
      return Enum_ClassesUpdateColumn.color;
    case r'name':
      return Enum_ClassesUpdateColumn.name;
    case r'photoUpdatedAt':
      return Enum_ClassesUpdateColumn.photoUpdatedAt;
    case r'serviceGender':
      return Enum_ClassesUpdateColumn.serviceGender;
    case r'serviceId':
      return Enum_ClassesUpdateColumn.serviceId;
    case r'serviceStudyYear':
      return Enum_ClassesUpdateColumn.serviceStudyYear;
    default:
      return Enum_ClassesUpdateColumn.$unknown;
  }
}

enum Enum_CollegesConstraint {
  colleges_name_key,
  colleges_pkey,
  $unknown;

  factory Enum_CollegesConstraint.fromJson(String value) =>
      fromJson_Enum_CollegesConstraint(value);

  String toJson() => toJson_Enum_CollegesConstraint(this);
}

String toJson_Enum_CollegesConstraint(Enum_CollegesConstraint e) {
  switch (e) {
    case Enum_CollegesConstraint.colleges_name_key:
      return r'colleges_name_key';
    case Enum_CollegesConstraint.colleges_pkey:
      return r'colleges_pkey';
    case Enum_CollegesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_CollegesConstraint fromJson_Enum_CollegesConstraint(String value) {
  switch (value) {
    case r'colleges_name_key':
      return Enum_CollegesConstraint.colleges_name_key;
    case r'colleges_pkey':
      return Enum_CollegesConstraint.colleges_pkey;
    default:
      return Enum_CollegesConstraint.$unknown;
  }
}

enum Enum_CollegesSelectColumn {
  id,
  name,
  universityId,
  $unknown;

  factory Enum_CollegesSelectColumn.fromJson(String value) =>
      fromJson_Enum_CollegesSelectColumn(value);

  String toJson() => toJson_Enum_CollegesSelectColumn(this);
}

String toJson_Enum_CollegesSelectColumn(Enum_CollegesSelectColumn e) {
  switch (e) {
    case Enum_CollegesSelectColumn.id:
      return r'id';
    case Enum_CollegesSelectColumn.name:
      return r'name';
    case Enum_CollegesSelectColumn.universityId:
      return r'universityId';
    case Enum_CollegesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_CollegesSelectColumn fromJson_Enum_CollegesSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_CollegesSelectColumn.id;
    case r'name':
      return Enum_CollegesSelectColumn.name;
    case r'universityId':
      return Enum_CollegesSelectColumn.universityId;
    default:
      return Enum_CollegesSelectColumn.$unknown;
  }
}

enum Enum_CollegesUpdateColumn {
  name,
  $unknown;

  factory Enum_CollegesUpdateColumn.fromJson(String value) =>
      fromJson_Enum_CollegesUpdateColumn(value);

  String toJson() => toJson_Enum_CollegesUpdateColumn(this);
}

String toJson_Enum_CollegesUpdateColumn(Enum_CollegesUpdateColumn e) {
  switch (e) {
    case Enum_CollegesUpdateColumn.name:
      return r'name';
    case Enum_CollegesUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_CollegesUpdateColumn fromJson_Enum_CollegesUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_CollegesUpdateColumn.name;
    default:
      return Enum_CollegesUpdateColumn.$unknown;
  }
}

enum Enum_CursorOrdering {
  ASC,
  DESC,
  $unknown;

  factory Enum_CursorOrdering.fromJson(String value) =>
      fromJson_Enum_CursorOrdering(value);

  String toJson() => toJson_Enum_CursorOrdering(this);
}

String toJson_Enum_CursorOrdering(Enum_CursorOrdering e) {
  switch (e) {
    case Enum_CursorOrdering.ASC:
      return r'ASC';
    case Enum_CursorOrdering.DESC:
      return r'DESC';
    case Enum_CursorOrdering.$unknown:
      return r'$unknown';
  }
}

Enum_CursorOrdering fromJson_Enum_CursorOrdering(String value) {
  switch (value) {
    case r'ASC':
      return Enum_CursorOrdering.ASC;
    case r'DESC':
      return Enum_CursorOrdering.DESC;
    default:
      return Enum_CursorOrdering.$unknown;
  }
}

enum Enum_DistrictsConstraint {
  districts_pk,
  districts_unique_name,
  $unknown;

  factory Enum_DistrictsConstraint.fromJson(String value) =>
      fromJson_Enum_DistrictsConstraint(value);

  String toJson() => toJson_Enum_DistrictsConstraint(this);
}

String toJson_Enum_DistrictsConstraint(Enum_DistrictsConstraint e) {
  switch (e) {
    case Enum_DistrictsConstraint.districts_pk:
      return r'districts_pk';
    case Enum_DistrictsConstraint.districts_unique_name:
      return r'districts_unique_name';
    case Enum_DistrictsConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictsConstraint fromJson_Enum_DistrictsConstraint(String value) {
  switch (value) {
    case r'districts_pk':
      return Enum_DistrictsConstraint.districts_pk;
    case r'districts_unique_name':
      return Enum_DistrictsConstraint.districts_unique_name;
    default:
      return Enum_DistrictsConstraint.$unknown;
  }
}

enum Enum_DistrictsSelectColumn {
  id,
  name,
  $unknown;

  factory Enum_DistrictsSelectColumn.fromJson(String value) =>
      fromJson_Enum_DistrictsSelectColumn(value);

  String toJson() => toJson_Enum_DistrictsSelectColumn(this);
}

String toJson_Enum_DistrictsSelectColumn(Enum_DistrictsSelectColumn e) {
  switch (e) {
    case Enum_DistrictsSelectColumn.id:
      return r'id';
    case Enum_DistrictsSelectColumn.name:
      return r'name';
    case Enum_DistrictsSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictsSelectColumn fromJson_Enum_DistrictsSelectColumn(String value) {
  switch (value) {
    case r'id':
      return Enum_DistrictsSelectColumn.id;
    case r'name':
      return Enum_DistrictsSelectColumn.name;
    default:
      return Enum_DistrictsSelectColumn.$unknown;
  }
}

enum Enum_DistrictsUpdateColumn {
  name,
  $unknown;

  factory Enum_DistrictsUpdateColumn.fromJson(String value) =>
      fromJson_Enum_DistrictsUpdateColumn(value);

  String toJson() => toJson_Enum_DistrictsUpdateColumn(this);
}

String toJson_Enum_DistrictsUpdateColumn(Enum_DistrictsUpdateColumn e) {
  switch (e) {
    case Enum_DistrictsUpdateColumn.name:
      return r'name';
    case Enum_DistrictsUpdateColumn.$unknown:
      return r'$unknown';
  }
}

Enum_DistrictsUpdateColumn fromJson_Enum_DistrictsUpdateColumn(String value) {
  switch (value) {
    case r'name':
      return Enum_DistrictsUpdateColumn.name;
    default:
      return Enum_DistrictsUpdateColumn.$unknown;
  }
}

enum Enum_FamiliesAdminsPhonesSelectColumn {
  aggregatedPhones,
  familyId,
  $unknown;

  factory Enum_FamiliesAdminsPhonesSelectColumn.fromJson(String value) =>
      fromJson_Enum_FamiliesAdminsPhonesSelectColumn(value);

  String toJson() => toJson_Enum_FamiliesAdminsPhonesSelectColumn(this);
}

String toJson_Enum_FamiliesAdminsPhonesSelectColumn(
  Enum_FamiliesAdminsPhonesSelectColumn e,
) {
  switch (e) {
    case Enum_FamiliesAdminsPhonesSelectColumn.aggregatedPhones:
      return r'aggregatedPhones';
    case Enum_FamiliesAdminsPhonesSelectColumn.familyId:
      return r'familyId';
    case Enum_FamiliesAdminsPhonesSelectColumn.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesAdminsPhonesSelectColumn
fromJson_Enum_FamiliesAdminsPhonesSelectColumn(String value) {
  switch (value) {
    case r'aggregatedPhones':
      return Enum_FamiliesAdminsPhonesSelectColumn.aggregatedPhones;
    case r'familyId':
      return Enum_FamiliesAdminsPhonesSelectColumn.familyId;
    default:
      return Enum_FamiliesAdminsPhonesSelectColumn.$unknown;
  }
}

enum Enum_FamiliesConstraint {
  families_pkey,
  $unknown;

  factory Enum_FamiliesConstraint.fromJson(String value) =>
      fromJson_Enum_FamiliesConstraint(value);

  String toJson() => toJson_Enum_FamiliesConstraint(this);
}

String toJson_Enum_FamiliesConstraint(Enum_FamiliesConstraint e) {
  switch (e) {
    case Enum_FamiliesConstraint.families_pkey:
      return r'families_pkey';
    case Enum_FamiliesConstraint.$unknown:
      return r'$unknown';
  }
}

Enum_FamiliesConstraint fromJson_Enum_FamiliesConstraint(String value) {
  switch (value) {
    case r'families_pkey':
      return Enum_FamiliesConstraint.families_pkey;
    default:
      return Enum_FamiliesConstraint.$unknown;
  }
}

enum Enum_FamiliesFamiliesConstraint {
  families_families_pkey,
  families_families_rel_id_key,
  $unknown;

  factory Enum_FamiliesFamiliesConstraint.fromJson(String value) =>
      fromJson_Enum_FamiliesFamiliesConstraint(value);

  String toJson() => toJson_Enum_FamiliesFamiliesConstraint(this);
}
