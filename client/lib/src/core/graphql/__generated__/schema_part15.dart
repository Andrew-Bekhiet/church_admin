// Part 15 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ClassesSumOrderBy<TRes> {
  factory CopyWith_Input_ClassesSumOrderBy(
    Input_ClassesSumOrderBy instance,
    TRes Function(Input_ClassesSumOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesSumOrderBy;

  factory CopyWith_Input_ClassesSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesSumOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesSumOrderBy<TRes>
    implements CopyWith_Input_ClassesSumOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesSumOrderBy(this._instance, this._then);

  final Input_ClassesSumOrderBy _instance;

  final TRes Function(Input_ClassesSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesSumOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesSumOrderBy<TRes>
    implements CopyWith_Input_ClassesSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesUpdates {
  factory Input_ClassesUpdates({
    Input_ClassesIncInput? $_inc,
    Input_ClassesSetInput? $_set,
    required Input_ClassesBoolExp where,
  }) => Input_ClassesUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_ClassesUpdates._(this._$data);

  factory Input_ClassesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_ClassesIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_ClassesSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_ClassesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_ClassesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesIncInput? get $_inc =>
      (_$data['_inc'] as Input_ClassesIncInput?);

  Input_ClassesSetInput? get $_set =>
      (_$data['_set'] as Input_ClassesSetInput?);

  Input_ClassesBoolExp get where => (_$data['where'] as Input_ClassesBoolExp);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_inc')) {
      final l$$_inc = $_inc;
      result$data['_inc'] = l$$_inc?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    final l$where = where;
    result$data['where'] = l$where.toJson();
    return result$data;
  }

  CopyWith_Input_ClassesUpdates<Input_ClassesUpdates> get copyWith =>
      CopyWith_Input_ClassesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesUpdates || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_inc = $_inc;
    final lOther$$_inc = other.$_inc;
    if (_$data.containsKey('_inc') != other._$data.containsKey('_inc')) {
      return false;
    }
    if (l$$_inc != lOther$$_inc) {
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
    final l$$_inc = $_inc;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([
      _$data.containsKey('_inc') ? l$$_inc : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
      l$where,
    ]);
  }
}

abstract class CopyWith_Input_ClassesUpdates<TRes> {
  factory CopyWith_Input_ClassesUpdates(
    Input_ClassesUpdates instance,
    TRes Function(Input_ClassesUpdates) then,
  ) = _CopyWithImpl_Input_ClassesUpdates;

  factory CopyWith_Input_ClassesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesUpdates;

  TRes call({
    Input_ClassesIncInput? $_inc,
    Input_ClassesSetInput? $_set,
    Input_ClassesBoolExp? where,
  });
  CopyWith_Input_ClassesIncInput<TRes> get $_inc;
  CopyWith_Input_ClassesSetInput<TRes> get $_set;
  CopyWith_Input_ClassesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ClassesUpdates<TRes>
    implements CopyWith_Input_ClassesUpdates<TRes> {
  _CopyWithImpl_Input_ClassesUpdates(this._instance, this._then);

  final Input_ClassesUpdates _instance;

  final TRes Function(Input_ClassesUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_ClassesUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_ClassesIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_ClassesSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_ClassesBoolExp),
    }),
  );

  CopyWith_Input_ClassesIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_ClassesIncInput.stub(_then(_instance))
        : CopyWith_Input_ClassesIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_ClassesSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_ClassesSetInput.stub(_then(_instance))
        : CopyWith_Input_ClassesSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_ClassesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_ClassesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_ClassesUpdates<TRes>
    implements CopyWith_Input_ClassesUpdates<TRes> {
  _CopyWithStubImpl_Input_ClassesUpdates(this._res);

  TRes _res;

  call({
    Input_ClassesIncInput? $_inc,
    Input_ClassesSetInput? $_set,
    Input_ClassesBoolExp? where,
  }) => _res;

  CopyWith_Input_ClassesIncInput<TRes> get $_inc =>
      CopyWith_Input_ClassesIncInput.stub(_res);

  CopyWith_Input_ClassesSetInput<TRes> get $_set =>
      CopyWith_Input_ClassesSetInput.stub(_res);

  CopyWith_Input_ClassesBoolExp<TRes> get where =>
      CopyWith_Input_ClassesBoolExp.stub(_res);
}

class Input_ClassesVarPopOrderBy {
  factory Input_ClassesVarPopOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesVarPopOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesVarPopOrderBy._(this._$data);

  factory Input_ClassesVarPopOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_ClassesVarPopOrderBy._(result$data);
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

  CopyWith_Input_ClassesVarPopOrderBy<Input_ClassesVarPopOrderBy>
  get copyWith => CopyWith_Input_ClassesVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesVarPopOrderBy ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ClassesVarPopOrderBy<TRes> {
  factory CopyWith_Input_ClassesVarPopOrderBy(
    Input_ClassesVarPopOrderBy instance,
    TRes Function(Input_ClassesVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesVarPopOrderBy;

  factory CopyWith_Input_ClassesVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesVarPopOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesVarPopOrderBy<TRes>
    implements CopyWith_Input_ClassesVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesVarPopOrderBy(this._instance, this._then);

  final Input_ClassesVarPopOrderBy _instance;

  final TRes Function(Input_ClassesVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesVarPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesVarPopOrderBy<TRes>
    implements CopyWith_Input_ClassesVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesVarSampOrderBy {
  factory Input_ClassesVarSampOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesVarSampOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesVarSampOrderBy._(this._$data);

  factory Input_ClassesVarSampOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_ClassesVarSampOrderBy._(result$data);
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

  CopyWith_Input_ClassesVarSampOrderBy<Input_ClassesVarSampOrderBy>
  get copyWith => CopyWith_Input_ClassesVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesVarSampOrderBy ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ClassesVarSampOrderBy<TRes> {
  factory CopyWith_Input_ClassesVarSampOrderBy(
    Input_ClassesVarSampOrderBy instance,
    TRes Function(Input_ClassesVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesVarSampOrderBy;

  factory CopyWith_Input_ClassesVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesVarSampOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesVarSampOrderBy<TRes>
    implements CopyWith_Input_ClassesVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesVarSampOrderBy(this._instance, this._then);

  final Input_ClassesVarSampOrderBy _instance;

  final TRes Function(Input_ClassesVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesVarSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesVarSampOrderBy<TRes>
    implements CopyWith_Input_ClassesVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_ClassesVarianceOrderBy {
  factory Input_ClassesVarianceOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? serviceStudyYear,
  }) => Input_ClassesVarianceOrderBy._({
    if (color != null) r'color': color,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
  });

  Input_ClassesVarianceOrderBy._(this._$data);

  factory Input_ClassesVarianceOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_ClassesVarianceOrderBy._(result$data);
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

  CopyWith_Input_ClassesVarianceOrderBy<Input_ClassesVarianceOrderBy>
  get copyWith => CopyWith_Input_ClassesVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassesVarianceOrderBy ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ClassesVarianceOrderBy<TRes> {
  factory CopyWith_Input_ClassesVarianceOrderBy(
    Input_ClassesVarianceOrderBy instance,
    TRes Function(Input_ClassesVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_ClassesVarianceOrderBy;

  factory CopyWith_Input_ClassesVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassesVarianceOrderBy;

  TRes call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear});
}

class _CopyWithImpl_Input_ClassesVarianceOrderBy<TRes>
    implements CopyWith_Input_ClassesVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_ClassesVarianceOrderBy(this._instance, this._then);

  final Input_ClassesVarianceOrderBy _instance;

  final TRes Function(Input_ClassesVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? serviceStudyYear = _undefined,
  }) => _then(
    Input_ClassesVarianceOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear': (serviceStudyYear as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassesVarianceOrderBy<TRes>
    implements CopyWith_Input_ClassesVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_ClassesVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color, Enum_OrderBy? serviceStudyYear}) => _res;
}

class Input_CollegesAggregateOrderBy {
  factory Input_CollegesAggregateOrderBy({
    Enum_OrderBy? count,
    Input_CollegesMaxOrderBy? max,
    Input_CollegesMinOrderBy? min,
  }) => Input_CollegesAggregateOrderBy._({
    if (count != null) r'count': count,
    if (max != null) r'max': max,
    if (min != null) r'min': min,
  });

  Input_CollegesAggregateOrderBy._(this._$data);

  factory Input_CollegesAggregateOrderBy.fromJson(Map<String, dynamic> data) {
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
          : Input_CollegesMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_CollegesMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    return Input_CollegesAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_CollegesMaxOrderBy? get max =>
      (_$data['max'] as Input_CollegesMaxOrderBy?);

  Input_CollegesMinOrderBy? get min =>
      (_$data['min'] as Input_CollegesMinOrderBy?);

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

  CopyWith_Input_CollegesAggregateOrderBy<Input_CollegesAggregateOrderBy>
  get copyWith => CopyWith_Input_CollegesAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesAggregateOrderBy ||
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

abstract class CopyWith_Input_CollegesAggregateOrderBy<TRes> {
  factory CopyWith_Input_CollegesAggregateOrderBy(
    Input_CollegesAggregateOrderBy instance,
    TRes Function(Input_CollegesAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_CollegesAggregateOrderBy;

  factory CopyWith_Input_CollegesAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_CollegesMaxOrderBy? max,
    Input_CollegesMinOrderBy? min,
  });
  CopyWith_Input_CollegesMaxOrderBy<TRes> get max;
  CopyWith_Input_CollegesMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_CollegesAggregateOrderBy<TRes>
    implements CopyWith_Input_CollegesAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_CollegesAggregateOrderBy(this._instance, this._then);

  final Input_CollegesAggregateOrderBy _instance;

  final TRes Function(Input_CollegesAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_CollegesAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_CollegesMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_CollegesMinOrderBy?),
    }),
  );

  CopyWith_Input_CollegesMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_CollegesMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_CollegesMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_CollegesMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_CollegesMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_CollegesMinOrderBy(local$min, (e) => call(min: e));
  }
}

class _CopyWithStubImpl_Input_CollegesAggregateOrderBy<TRes>
    implements CopyWith_Input_CollegesAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_CollegesAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_CollegesMaxOrderBy? max,
    Input_CollegesMinOrderBy? min,
  }) => _res;

  CopyWith_Input_CollegesMaxOrderBy<TRes> get max =>
      CopyWith_Input_CollegesMaxOrderBy.stub(_res);

  CopyWith_Input_CollegesMinOrderBy<TRes> get min =>
      CopyWith_Input_CollegesMinOrderBy.stub(_res);
}

class Input_CollegesArrRelInsertInput {
  factory Input_CollegesArrRelInsertInput({
    required List<Input_CollegesInsertInput> data,
    Input_CollegesOnConflict? onConflict,
  }) => Input_CollegesArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_CollegesArrRelInsertInput._(this._$data);

  factory Input_CollegesArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) =>
              Input_CollegesInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_CollegesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_CollegesArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_CollegesInsertInput> get data =>
      (_$data['data'] as List<Input_CollegesInsertInput>);

  Input_CollegesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_CollegesOnConflict?);

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

  CopyWith_Input_CollegesArrRelInsertInput<Input_CollegesArrRelInsertInput>
  get copyWith => CopyWith_Input_CollegesArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesArrRelInsertInput ||
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

abstract class CopyWith_Input_CollegesArrRelInsertInput<TRes> {
  factory CopyWith_Input_CollegesArrRelInsertInput(
    Input_CollegesArrRelInsertInput instance,
    TRes Function(Input_CollegesArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_CollegesArrRelInsertInput;

  factory CopyWith_Input_CollegesArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesArrRelInsertInput;

  TRes call({
    List<Input_CollegesInsertInput>? data,
    Input_CollegesOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_CollegesInsertInput> Function(
      Iterable<CopyWith_Input_CollegesInsertInput<Input_CollegesInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_CollegesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_CollegesArrRelInsertInput<TRes>
    implements CopyWith_Input_CollegesArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_CollegesArrRelInsertInput(this._instance, this._then);

  final Input_CollegesArrRelInsertInput _instance;

  final TRes Function(Input_CollegesArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_CollegesArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_CollegesInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_CollegesOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_CollegesInsertInput> Function(
      Iterable<CopyWith_Input_CollegesInsertInput<Input_CollegesInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map(
        (e) => CopyWith_Input_CollegesInsertInput(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith_Input_CollegesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_CollegesOnConflict.stub(_then(_instance))
        : CopyWith_Input_CollegesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_CollegesArrRelInsertInput<TRes>
    implements CopyWith_Input_CollegesArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_CollegesArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_CollegesInsertInput>? data,
    Input_CollegesOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_CollegesOnConflict<TRes> get onConflict =>
      CopyWith_Input_CollegesOnConflict.stub(_res);
}

class Input_CollegesBoolExp {
  factory Input_CollegesBoolExp({
    List<Input_CollegesBoolExp>? $_and,
    Input_CollegesBoolExp? $_not,
    List<Input_CollegesBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
    Input_UniversitiesBoolExp? university,
    Input_UuidComparisonExp? universityId,
  }) => Input_CollegesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
    if (university != null) r'university': university,
    if (universityId != null) r'universityId': universityId,
  });

  Input_CollegesBoolExp._(this._$data);

  factory Input_CollegesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_CollegesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_CollegesBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_CollegesBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
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
          : Input_PersonsBoolExp.fromJson((l$persons as Map<String, dynamic>));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateBoolExp.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('university')) {
      final l$university = data['university'];
      result$data['university'] = l$university == null
          ? null
          : Input_UniversitiesBoolExp.fromJson(
              (l$university as Map<String, dynamic>),
            );
    }
    if (data.containsKey('universityId')) {
      final l$universityId = data['universityId'];
      result$data['universityId'] = l$universityId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$universityId as Map<String, dynamic>),
            );
    }
    return Input_CollegesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_CollegesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_CollegesBoolExp>?);

  Input_CollegesBoolExp? get $_not =>
      (_$data['_not'] as Input_CollegesBoolExp?);

  List<Input_CollegesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_CollegesBoolExp>?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_PersonsAggregateBoolExp? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateBoolExp?);

  Input_UniversitiesBoolExp? get university =>
      (_$data['university'] as Input_UniversitiesBoolExp?);

  Input_UuidComparisonExp? get universityId =>
      (_$data['universityId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    if (_$data.containsKey('university')) {
      final l$university = university;
      result$data['university'] = l$university?.toJson();
    }
    if (_$data.containsKey('universityId')) {
      final l$universityId = universityId;
      result$data['universityId'] = l$universityId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_CollegesBoolExp<Input_CollegesBoolExp> get copyWith =>
      CopyWith_Input_CollegesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesBoolExp || runtimeType != other.runtimeType) {
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
    final l$persons = persons;
    final lOther$persons = other.persons;
    if (_$data.containsKey('persons') != other._$data.containsKey('persons')) {
      return false;
    }
    if (l$persons != lOther$persons) {
      return false;
    }
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
      return false;
    }
    final l$university = university;
    final lOther$university = other.university;
    if (_$data.containsKey('university') !=
        other._$data.containsKey('university')) {
      return false;
    }
    if (l$university != lOther$university) {
      return false;
    }
    final l$universityId = universityId;
    final lOther$universityId = other.universityId;
    if (_$data.containsKey('universityId') !=
        other._$data.containsKey('universityId')) {
      return false;
    }
    if (l$universityId != lOther$universityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$id = id;
    final l$name = name;
    final l$persons = persons;
    final l$personsAggregate = personsAggregate;
    final l$university = university;
    final l$universityId = universityId;
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
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('university') ? l$university : const {},
      _$data.containsKey('universityId') ? l$universityId : const {},
    ]);
  }
}

abstract class CopyWith_Input_CollegesBoolExp<TRes> {
  factory CopyWith_Input_CollegesBoolExp(
    Input_CollegesBoolExp instance,
    TRes Function(Input_CollegesBoolExp) then,
  ) = _CopyWithImpl_Input_CollegesBoolExp;

  factory CopyWith_Input_CollegesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesBoolExp;

  TRes call({
    List<Input_CollegesBoolExp>? $_and,
    Input_CollegesBoolExp? $_not,
    List<Input_CollegesBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
    Input_UniversitiesBoolExp? university,
    Input_UuidComparisonExp? universityId,
  });
  TRes $_and(
    Iterable<Input_CollegesBoolExp>? Function(
      Iterable<CopyWith_Input_CollegesBoolExp<Input_CollegesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_CollegesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_CollegesBoolExp>? Function(
      Iterable<CopyWith_Input_CollegesBoolExp<Input_CollegesBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
  CopyWith_Input_UniversitiesBoolExp<TRes> get university;
  CopyWith_Input_UuidComparisonExp<TRes> get universityId;
}

class _CopyWithImpl_Input_CollegesBoolExp<TRes>
    implements CopyWith_Input_CollegesBoolExp<TRes> {
  _CopyWithImpl_Input_CollegesBoolExp(this._instance, this._then);

  final Input_CollegesBoolExp _instance;

  final TRes Function(Input_CollegesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
    Object? university = _undefined,
    Object? universityId = _undefined,
  }) => _then(
    Input_CollegesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_CollegesBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_CollegesBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_CollegesBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
      if (university != _undefined)
        'university': (university as Input_UniversitiesBoolExp?),
      if (universityId != _undefined)
        'universityId': (universityId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_CollegesBoolExp>? Function(
      Iterable<CopyWith_Input_CollegesBoolExp<Input_CollegesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_CollegesBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_CollegesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_CollegesBoolExp.stub(_then(_instance))
        : CopyWith_Input_CollegesBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_CollegesBoolExp>? Function(
      Iterable<CopyWith_Input_CollegesBoolExp<Input_CollegesBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_CollegesBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_PersonsBoolExp<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$persons, (e) => call(persons: e));
  }

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateBoolExp(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }

  CopyWith_Input_UniversitiesBoolExp<TRes> get university {
    final local$university = _instance.university;
    return local$university == null
        ? CopyWith_Input_UniversitiesBoolExp.stub(_then(_instance))
        : CopyWith_Input_UniversitiesBoolExp(
            local$university,
            (e) => call(university: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get universityId {
    final local$universityId = _instance.universityId;
    return local$universityId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$universityId,
            (e) => call(universityId: e),
          );
  }
}

class _CopyWithStubImpl_Input_CollegesBoolExp<TRes>
    implements CopyWith_Input_CollegesBoolExp<TRes> {
  _CopyWithStubImpl_Input_CollegesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_CollegesBoolExp>? $_and,
    Input_CollegesBoolExp? $_not,
    List<Input_CollegesBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
    Input_UniversitiesBoolExp? university,
    Input_UuidComparisonExp? universityId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_CollegesBoolExp<TRes> get $_not =>
      CopyWith_Input_CollegesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);

  CopyWith_Input_UniversitiesBoolExp<TRes> get university =>
      CopyWith_Input_UniversitiesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get universityId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_CollegesInsertInput {
  factory Input_CollegesInsertInput({
    String? name,
    Input_PersonsArrRelInsertInput? persons,
    Input_UniversitiesObjRelInsertInput? university,
    UuidValue? universityId,
  }) => Input_CollegesInsertInput._({
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (university != null) r'university': university,
    if (universityId != null) r'universityId': universityId,
  });

  Input_CollegesInsertInput._(this._$data);

  factory Input_CollegesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    if (data.containsKey('university')) {
      final l$university = data['university'];
      result$data['university'] = l$university == null
          ? null
          : Input_UniversitiesObjRelInsertInput.fromJson(
              (l$university as Map<String, dynamic>),
            );
    }
    if (data.containsKey('universityId')) {
      final l$universityId = data['universityId'];
      result$data['universityId'] = l$universityId == null
          ? null
          : stringToUuid(l$universityId);
    }
    return Input_CollegesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Input_UniversitiesObjRelInsertInput? get university =>
      (_$data['university'] as Input_UniversitiesObjRelInsertInput?);

  UuidValue? get universityId => (_$data['universityId'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('university')) {
      final l$university = university;
      result$data['university'] = l$university?.toJson();
    }
    if (_$data.containsKey('universityId')) {
      final l$universityId = universityId;
      result$data['universityId'] = l$universityId == null
          ? null
          : uuidToString(l$universityId);
    }
    return result$data;
  }

  CopyWith_Input_CollegesInsertInput<Input_CollegesInsertInput> get copyWith =>
      CopyWith_Input_CollegesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$university = university;
    final lOther$university = other.university;
    if (_$data.containsKey('university') !=
        other._$data.containsKey('university')) {
      return false;
    }
    if (l$university != lOther$university) {
      return false;
    }
    final l$universityId = universityId;
    final lOther$universityId = other.universityId;
    if (_$data.containsKey('universityId') !=
        other._$data.containsKey('universityId')) {
      return false;
    }
    if (l$universityId != lOther$universityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$persons = persons;
    final l$university = university;
    final l$universityId = universityId;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('university') ? l$university : const {},
      _$data.containsKey('universityId') ? l$universityId : const {},
    ]);
  }
}

abstract class CopyWith_Input_CollegesInsertInput<TRes> {
  factory CopyWith_Input_CollegesInsertInput(
    Input_CollegesInsertInput instance,
    TRes Function(Input_CollegesInsertInput) then,
  ) = _CopyWithImpl_Input_CollegesInsertInput;

  factory CopyWith_Input_CollegesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesInsertInput;

  TRes call({
    String? name,
    Input_PersonsArrRelInsertInput? persons,
    Input_UniversitiesObjRelInsertInput? university,
    UuidValue? universityId,
  });
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
  CopyWith_Input_UniversitiesObjRelInsertInput<TRes> get university;
}

class _CopyWithImpl_Input_CollegesInsertInput<TRes>
    implements CopyWith_Input_CollegesInsertInput<TRes> {
  _CopyWithImpl_Input_CollegesInsertInput(this._instance, this._then);

  final Input_CollegesInsertInput _instance;

  final TRes Function(Input_CollegesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? university = _undefined,
    Object? universityId = _undefined,
  }) => _then(
    Input_CollegesInsertInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsArrRelInsertInput?),
      if (university != _undefined)
        'university': (university as Input_UniversitiesObjRelInsertInput?),
      if (universityId != _undefined)
        'universityId': (universityId as UuidValue?),
    }),
  );

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
          );
  }

  CopyWith_Input_UniversitiesObjRelInsertInput<TRes> get university {
    final local$university = _instance.university;
    return local$university == null
        ? CopyWith_Input_UniversitiesObjRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_UniversitiesObjRelInsertInput(
            local$university,
            (e) => call(university: e),
          );
  }
}

class _CopyWithStubImpl_Input_CollegesInsertInput<TRes>
    implements CopyWith_Input_CollegesInsertInput<TRes> {
  _CopyWithStubImpl_Input_CollegesInsertInput(this._res);

  TRes _res;

  call({
    String? name,
    Input_PersonsArrRelInsertInput? persons,
    Input_UniversitiesObjRelInsertInput? university,
    UuidValue? universityId,
  }) => _res;

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);

  CopyWith_Input_UniversitiesObjRelInsertInput<TRes> get university =>
      CopyWith_Input_UniversitiesObjRelInsertInput.stub(_res);
}

class Input_CollegesMaxOrderBy {
  factory Input_CollegesMaxOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? universityId,
  }) => Input_CollegesMaxOrderBy._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (universityId != null) r'universityId': universityId,
  });

  Input_CollegesMaxOrderBy._(this._$data);

  factory Input_CollegesMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('universityId')) {
      final l$universityId = data['universityId'];
      result$data['universityId'] = l$universityId == null
          ? null
          : fromJson_Enum_OrderBy((l$universityId as String));
    }
    return Input_CollegesMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get universityId => (_$data['universityId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('universityId')) {
      final l$universityId = universityId;
      result$data['universityId'] = l$universityId == null
          ? null
          : toJson_Enum_OrderBy(l$universityId);
    }
    return result$data;
  }

  CopyWith_Input_CollegesMaxOrderBy<Input_CollegesMaxOrderBy> get copyWith =>
      CopyWith_Input_CollegesMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesMaxOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$universityId = universityId;
    final lOther$universityId = other.universityId;
    if (_$data.containsKey('universityId') !=
        other._$data.containsKey('universityId')) {
      return false;
    }
    if (l$universityId != lOther$universityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$universityId = universityId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('universityId') ? l$universityId : const {},
    ]);
  }
}

abstract class CopyWith_Input_CollegesMaxOrderBy<TRes> {
  factory CopyWith_Input_CollegesMaxOrderBy(
    Input_CollegesMaxOrderBy instance,
    TRes Function(Input_CollegesMaxOrderBy) then,
  ) = _CopyWithImpl_Input_CollegesMaxOrderBy;

  factory CopyWith_Input_CollegesMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesMaxOrderBy;

  TRes call({Enum_OrderBy? id, Enum_OrderBy? name, Enum_OrderBy? universityId});
}

class _CopyWithImpl_Input_CollegesMaxOrderBy<TRes>
    implements CopyWith_Input_CollegesMaxOrderBy<TRes> {
  _CopyWithImpl_Input_CollegesMaxOrderBy(this._instance, this._then);

  final Input_CollegesMaxOrderBy _instance;

  final TRes Function(Input_CollegesMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? universityId = _undefined,
  }) => _then(
    Input_CollegesMaxOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (universityId != _undefined)
        'universityId': (universityId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_CollegesMaxOrderBy<TRes>
    implements CopyWith_Input_CollegesMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_CollegesMaxOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? id, Enum_OrderBy? name, Enum_OrderBy? universityId}) =>
      _res;
}

class Input_CollegesMinOrderBy {
  factory Input_CollegesMinOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Enum_OrderBy? universityId,
  }) => Input_CollegesMinOrderBy._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (universityId != null) r'universityId': universityId,
  });

  Input_CollegesMinOrderBy._(this._$data);

  factory Input_CollegesMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('universityId')) {
      final l$universityId = data['universityId'];
      result$data['universityId'] = l$universityId == null
          ? null
          : fromJson_Enum_OrderBy((l$universityId as String));
    }
    return Input_CollegesMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get universityId => (_$data['universityId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('universityId')) {
      final l$universityId = universityId;
      result$data['universityId'] = l$universityId == null
          ? null
          : toJson_Enum_OrderBy(l$universityId);
    }
    return result$data;
  }

  CopyWith_Input_CollegesMinOrderBy<Input_CollegesMinOrderBy> get copyWith =>
      CopyWith_Input_CollegesMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesMinOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$universityId = universityId;
    final lOther$universityId = other.universityId;
    if (_$data.containsKey('universityId') !=
        other._$data.containsKey('universityId')) {
      return false;
    }
    if (l$universityId != lOther$universityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$universityId = universityId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('universityId') ? l$universityId : const {},
    ]);
  }
}

abstract class CopyWith_Input_CollegesMinOrderBy<TRes> {
  factory CopyWith_Input_CollegesMinOrderBy(
    Input_CollegesMinOrderBy instance,
    TRes Function(Input_CollegesMinOrderBy) then,
  ) = _CopyWithImpl_Input_CollegesMinOrderBy;

  factory CopyWith_Input_CollegesMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesMinOrderBy;

  TRes call({Enum_OrderBy? id, Enum_OrderBy? name, Enum_OrderBy? universityId});
}

class _CopyWithImpl_Input_CollegesMinOrderBy<TRes>
    implements CopyWith_Input_CollegesMinOrderBy<TRes> {
  _CopyWithImpl_Input_CollegesMinOrderBy(this._instance, this._then);

  final Input_CollegesMinOrderBy _instance;

  final TRes Function(Input_CollegesMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? universityId = _undefined,
  }) => _then(
    Input_CollegesMinOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (universityId != _undefined)
        'universityId': (universityId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_CollegesMinOrderBy<TRes>
    implements CopyWith_Input_CollegesMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_CollegesMinOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? id, Enum_OrderBy? name, Enum_OrderBy? universityId}) =>
      _res;
}

class Input_CollegesObjRelInsertInput {
  factory Input_CollegesObjRelInsertInput({
    required Input_CollegesInsertInput data,
    Input_CollegesOnConflict? onConflict,
  }) => Input_CollegesObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_CollegesObjRelInsertInput._(this._$data);

  factory Input_CollegesObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_CollegesInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_CollegesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_CollegesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_CollegesInsertInput get data =>
      (_$data['data'] as Input_CollegesInsertInput);

  Input_CollegesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_CollegesOnConflict?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('onConflict')) {
      final l$onConflict = onConflict;
      result$data['onConflict'] = l$onConflict?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_CollegesObjRelInsertInput<Input_CollegesObjRelInsertInput>
  get copyWith => CopyWith_Input_CollegesObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesObjRelInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
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
      l$data,
      _$data.containsKey('onConflict') ? l$onConflict : const {},
    ]);
  }
}

abstract class CopyWith_Input_CollegesObjRelInsertInput<TRes> {
  factory CopyWith_Input_CollegesObjRelInsertInput(
    Input_CollegesObjRelInsertInput instance,
    TRes Function(Input_CollegesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_CollegesObjRelInsertInput;

  factory CopyWith_Input_CollegesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesObjRelInsertInput;

  TRes call({
    Input_CollegesInsertInput? data,
    Input_CollegesOnConflict? onConflict,
  });
  CopyWith_Input_CollegesInsertInput<TRes> get data;
  CopyWith_Input_CollegesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_CollegesObjRelInsertInput<TRes>
    implements CopyWith_Input_CollegesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_CollegesObjRelInsertInput(this._instance, this._then);

  final Input_CollegesObjRelInsertInput _instance;

  final TRes Function(Input_CollegesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_CollegesObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_CollegesInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_CollegesOnConflict?),
        }),
      );

  CopyWith_Input_CollegesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_CollegesInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_CollegesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_CollegesOnConflict.stub(_then(_instance))
        : CopyWith_Input_CollegesOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_CollegesObjRelInsertInput<TRes>
    implements CopyWith_Input_CollegesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_CollegesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_CollegesInsertInput? data,
    Input_CollegesOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_CollegesInsertInput<TRes> get data =>
      CopyWith_Input_CollegesInsertInput.stub(_res);

  CopyWith_Input_CollegesOnConflict<TRes> get onConflict =>
      CopyWith_Input_CollegesOnConflict.stub(_res);
}

class Input_CollegesOnConflict {
  factory Input_CollegesOnConflict({
    required Enum_CollegesConstraint constraint,
    List<Enum_CollegesUpdateColumn>? updateColumns,
    Input_CollegesBoolExp? where,
  }) => Input_CollegesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_CollegesOnConflict._(this._$data);

  factory Input_CollegesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_CollegesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_CollegesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_CollegesBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_CollegesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_CollegesConstraint get constraint =>
      (_$data['constraint'] as Enum_CollegesConstraint);

  List<Enum_CollegesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_CollegesUpdateColumn>?);

  Input_CollegesBoolExp? get where =>
      (_$data['where'] as Input_CollegesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_CollegesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_CollegesUpdateColumn>)
              .map((e) => toJson_Enum_CollegesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_CollegesOnConflict<Input_CollegesOnConflict> get copyWith =>
      CopyWith_Input_CollegesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesOnConflict ||
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

abstract class CopyWith_Input_CollegesOnConflict<TRes> {
  factory CopyWith_Input_CollegesOnConflict(
    Input_CollegesOnConflict instance,
    TRes Function(Input_CollegesOnConflict) then,
  ) = _CopyWithImpl_Input_CollegesOnConflict;

  factory CopyWith_Input_CollegesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_CollegesOnConflict;

  TRes call({
    Enum_CollegesConstraint? constraint,
    List<Enum_CollegesUpdateColumn>? updateColumns,
    Input_CollegesBoolExp? where,
  });
  CopyWith_Input_CollegesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_CollegesOnConflict<TRes>
    implements CopyWith_Input_CollegesOnConflict<TRes> {
  _CopyWithImpl_Input_CollegesOnConflict(this._instance, this._then);

  final Input_CollegesOnConflict _instance;

  final TRes Function(Input_CollegesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_CollegesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_CollegesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_CollegesUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_CollegesBoolExp?),
    }),
  );

  CopyWith_Input_CollegesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_CollegesBoolExp.stub(_then(_instance))
        : CopyWith_Input_CollegesBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_CollegesOnConflict<TRes>
    implements CopyWith_Input_CollegesOnConflict<TRes> {
  _CopyWithStubImpl_Input_CollegesOnConflict(this._res);

  TRes _res;

  call({
    Enum_CollegesConstraint? constraint,
    List<Enum_CollegesUpdateColumn>? updateColumns,
    Input_CollegesBoolExp? where,
  }) => _res;

  CopyWith_Input_CollegesBoolExp<TRes> get where =>
      CopyWith_Input_CollegesBoolExp.stub(_res);
}

class Input_CollegesOrderBy {
  factory Input_CollegesOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
    Input_UniversitiesOrderBy? university,
    Enum_OrderBy? universityId,
  }) => Input_CollegesOrderBy._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
    if (university != null) r'university': university,
    if (universityId != null) r'universityId': universityId,
  });

  Input_CollegesOrderBy._(this._$data);

  factory Input_CollegesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('university')) {
      final l$university = data['university'];
      result$data['university'] = l$university == null
          ? null
          : Input_UniversitiesOrderBy.fromJson(
              (l$university as Map<String, dynamic>),
            );
    }
    if (data.containsKey('universityId')) {
      final l$universityId = data['universityId'];
      result$data['universityId'] = l$universityId == null
          ? null
          : fromJson_Enum_OrderBy((l$universityId as String));
    }
    return Input_CollegesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Input_UniversitiesOrderBy? get university =>
      (_$data['university'] as Input_UniversitiesOrderBy?);

  Enum_OrderBy? get universityId => (_$data['universityId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    if (_$data.containsKey('university')) {
      final l$university = university;
      result$data['university'] = l$university?.toJson();
    }
    if (_$data.containsKey('universityId')) {
      final l$universityId = universityId;
      result$data['universityId'] = l$universityId == null
          ? null
          : toJson_Enum_OrderBy(l$universityId);
    }
    return result$data;
  }

  CopyWith_Input_CollegesOrderBy<Input_CollegesOrderBy> get copyWith =>
      CopyWith_Input_CollegesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_CollegesOrderBy || runtimeType != other.runtimeType) {
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
    final l$personsAggregate = personsAggregate;
    final lOther$personsAggregate = other.personsAggregate;
    if (_$data.containsKey('personsAggregate') !=
        other._$data.containsKey('personsAggregate')) {
      return false;
    }
    if (l$personsAggregate != lOther$personsAggregate) {
      return false;
    }
    final l$university = university;
    final lOther$university = other.university;
    if (_$data.containsKey('university') !=
        other._$data.containsKey('university')) {
      return false;
    }
    if (l$university != lOther$university) {
      return false;
    }
    final l$universityId = universityId;
    final lOther$universityId = other.universityId;
    if (_$data.containsKey('universityId') !=
        other._$data.containsKey('universityId')) {
      return false;
    }
    if (l$universityId != lOther$universityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    final l$university = university;
    final l$universityId = universityId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
      _$data.containsKey('university') ? l$university : const {},
      _$data.containsKey('universityId') ? l$universityId : const {},
    ]);
  }
}
