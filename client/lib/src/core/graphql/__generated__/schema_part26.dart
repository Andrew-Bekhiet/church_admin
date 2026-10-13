// Part 26 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_GroupsSumOrderBy<TRes> {
  factory CopyWith_Input_GroupsSumOrderBy(
    Input_GroupsSumOrderBy instance,
    TRes Function(Input_GroupsSumOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsSumOrderBy;

  factory CopyWith_Input_GroupsSumOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsSumOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsSumOrderBy<TRes>
    implements CopyWith_Input_GroupsSumOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsSumOrderBy(this._instance, this._then);

  final Input_GroupsSumOrderBy _instance;

  final TRes Function(Input_GroupsSumOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsSumOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsSumOrderBy<TRes>
    implements CopyWith_Input_GroupsSumOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsSumOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsUpdates {
  factory Input_GroupsUpdates({
    Input_GroupsIncInput? $_inc,
    Input_GroupsSetInput? $_set,
    required Input_GroupsBoolExp where,
  }) => Input_GroupsUpdates._({
    if ($_inc != null) r'_inc': $_inc,
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_GroupsUpdates._(this._$data);

  factory Input_GroupsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_GroupsIncInput.fromJson((l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_GroupsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_GroupsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_GroupsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupsIncInput? get $_inc => (_$data['_inc'] as Input_GroupsIncInput?);

  Input_GroupsSetInput? get $_set => (_$data['_set'] as Input_GroupsSetInput?);

  Input_GroupsBoolExp get where => (_$data['where'] as Input_GroupsBoolExp);

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

  CopyWith_Input_GroupsUpdates<Input_GroupsUpdates> get copyWith =>
      CopyWith_Input_GroupsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsUpdates<TRes> {
  factory CopyWith_Input_GroupsUpdates(
    Input_GroupsUpdates instance,
    TRes Function(Input_GroupsUpdates) then,
  ) = _CopyWithImpl_Input_GroupsUpdates;

  factory CopyWith_Input_GroupsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsUpdates;

  TRes call({
    Input_GroupsIncInput? $_inc,
    Input_GroupsSetInput? $_set,
    Input_GroupsBoolExp? where,
  });
  CopyWith_Input_GroupsIncInput<TRes> get $_inc;
  CopyWith_Input_GroupsSetInput<TRes> get $_set;
  CopyWith_Input_GroupsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_GroupsUpdates<TRes>
    implements CopyWith_Input_GroupsUpdates<TRes> {
  _CopyWithImpl_Input_GroupsUpdates(this._instance, this._then);

  final Input_GroupsUpdates _instance;

  final TRes Function(Input_GroupsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_GroupsUpdates._({
      ..._instance._$data,
      if ($_inc != _undefined) '_inc': ($_inc as Input_GroupsIncInput?),
      if ($_set != _undefined) '_set': ($_set as Input_GroupsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_GroupsBoolExp),
    }),
  );

  CopyWith_Input_GroupsIncInput<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith_Input_GroupsIncInput.stub(_then(_instance))
        : CopyWith_Input_GroupsIncInput(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith_Input_GroupsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_GroupsSetInput.stub(_then(_instance))
        : CopyWith_Input_GroupsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_GroupsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_GroupsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_GroupsUpdates<TRes>
    implements CopyWith_Input_GroupsUpdates<TRes> {
  _CopyWithStubImpl_Input_GroupsUpdates(this._res);

  TRes _res;

  call({
    Input_GroupsIncInput? $_inc,
    Input_GroupsSetInput? $_set,
    Input_GroupsBoolExp? where,
  }) => _res;

  CopyWith_Input_GroupsIncInput<TRes> get $_inc =>
      CopyWith_Input_GroupsIncInput.stub(_res);

  CopyWith_Input_GroupsSetInput<TRes> get $_set =>
      CopyWith_Input_GroupsSetInput.stub(_res);

  CopyWith_Input_GroupsBoolExp<TRes> get where =>
      CopyWith_Input_GroupsBoolExp.stub(_res);
}

class Input_GroupsVarPopOrderBy {
  factory Input_GroupsVarPopOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsVarPopOrderBy._({if (color != null) r'color': color});

  Input_GroupsVarPopOrderBy._(this._$data);

  factory Input_GroupsVarPopOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsVarPopOrderBy._(result$data);
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

  CopyWith_Input_GroupsVarPopOrderBy<Input_GroupsVarPopOrderBy> get copyWith =>
      CopyWith_Input_GroupsVarPopOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsVarPopOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_GroupsVarPopOrderBy<TRes> {
  factory CopyWith_Input_GroupsVarPopOrderBy(
    Input_GroupsVarPopOrderBy instance,
    TRes Function(Input_GroupsVarPopOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsVarPopOrderBy;

  factory CopyWith_Input_GroupsVarPopOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsVarPopOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsVarPopOrderBy<TRes>
    implements CopyWith_Input_GroupsVarPopOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsVarPopOrderBy(this._instance, this._then);

  final Input_GroupsVarPopOrderBy _instance;

  final TRes Function(Input_GroupsVarPopOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsVarPopOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsVarPopOrderBy<TRes>
    implements CopyWith_Input_GroupsVarPopOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsVarPopOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsVarSampOrderBy {
  factory Input_GroupsVarSampOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsVarSampOrderBy._({if (color != null) r'color': color});

  Input_GroupsVarSampOrderBy._(this._$data);

  factory Input_GroupsVarSampOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsVarSampOrderBy._(result$data);
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

  CopyWith_Input_GroupsVarSampOrderBy<Input_GroupsVarSampOrderBy>
  get copyWith => CopyWith_Input_GroupsVarSampOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsVarSampOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_GroupsVarSampOrderBy<TRes> {
  factory CopyWith_Input_GroupsVarSampOrderBy(
    Input_GroupsVarSampOrderBy instance,
    TRes Function(Input_GroupsVarSampOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsVarSampOrderBy;

  factory CopyWith_Input_GroupsVarSampOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsVarSampOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsVarSampOrderBy<TRes>
    implements CopyWith_Input_GroupsVarSampOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsVarSampOrderBy(this._instance, this._then);

  final Input_GroupsVarSampOrderBy _instance;

  final TRes Function(Input_GroupsVarSampOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsVarSampOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsVarSampOrderBy<TRes>
    implements CopyWith_Input_GroupsVarSampOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsVarSampOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsVarianceOrderBy {
  factory Input_GroupsVarianceOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsVarianceOrderBy._({if (color != null) r'color': color});

  Input_GroupsVarianceOrderBy._(this._$data);

  factory Input_GroupsVarianceOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsVarianceOrderBy._(result$data);
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

  CopyWith_Input_GroupsVarianceOrderBy<Input_GroupsVarianceOrderBy>
  get copyWith => CopyWith_Input_GroupsVarianceOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsVarianceOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    return Object.hashAll([_$data.containsKey('color') ? l$color : const {}]);
  }
}

abstract class CopyWith_Input_GroupsVarianceOrderBy<TRes> {
  factory CopyWith_Input_GroupsVarianceOrderBy(
    Input_GroupsVarianceOrderBy instance,
    TRes Function(Input_GroupsVarianceOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsVarianceOrderBy;

  factory CopyWith_Input_GroupsVarianceOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsVarianceOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsVarianceOrderBy<TRes>
    implements CopyWith_Input_GroupsVarianceOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsVarianceOrderBy(this._instance, this._then);

  final Input_GroupsVarianceOrderBy _instance;

  final TRes Function(Input_GroupsVarianceOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsVarianceOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsVarianceOrderBy<TRes>
    implements CopyWith_Input_GroupsVarianceOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsVarianceOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_HistoryAttendanceDaysBoolExp {
  factory Input_HistoryAttendanceDaysBoolExp({
    List<Input_HistoryAttendanceDaysBoolExp>? $_and,
    Input_HistoryAttendanceDaysBoolExp? $_not,
    List<Input_HistoryAttendanceDaysBoolExp>? $_or,
    Input_HistoryConfessionHistoryBoolExp? confessionHistory,
    Input_HistoryConfessionHistoryAggregateBoolExp? confessionHistoryAggregate,
    Input_DateComparisonExp? day,
    Input_HistoryKodasHistoryBoolExp? kodasHistory,
    Input_HistoryKodasHistoryAggregateBoolExp? kodasHistoryAggregate,
  }) => Input_HistoryAttendanceDaysBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (confessionHistory != null) r'confessionHistory': confessionHistory,
    if (confessionHistoryAggregate != null)
      r'confessionHistoryAggregate': confessionHistoryAggregate,
    if (day != null) r'day': day,
    if (kodasHistory != null) r'kodasHistory': kodasHistory,
    if (kodasHistoryAggregate != null)
      r'kodasHistoryAggregate': kodasHistoryAggregate,
  });

  Input_HistoryAttendanceDaysBoolExp._(this._$data);

  factory Input_HistoryAttendanceDaysBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceDaysBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_HistoryAttendanceDaysBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_HistoryAttendanceDaysBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = l$confessionHistory == null
          ? null
          : Input_HistoryConfessionHistoryBoolExp.fromJson(
              (l$confessionHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = data['confessionHistoryAggregate'];
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate == null
          ? null
          : Input_HistoryConfessionHistoryAggregateBoolExp.fromJson(
              (l$confessionHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : Input_DateComparisonExp.fromJson((l$day as Map<String, dynamic>));
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = l$kodasHistory == null
          ? null
          : Input_HistoryKodasHistoryBoolExp.fromJson(
              (l$kodasHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = data['kodasHistoryAggregate'];
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate == null
          ? null
          : Input_HistoryKodasHistoryAggregateBoolExp.fromJson(
              (l$kodasHistoryAggregate as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_HistoryAttendanceDaysBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_HistoryAttendanceDaysBoolExp>?);

  Input_HistoryAttendanceDaysBoolExp? get $_not =>
      (_$data['_not'] as Input_HistoryAttendanceDaysBoolExp?);

  List<Input_HistoryAttendanceDaysBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_HistoryAttendanceDaysBoolExp>?);

  Input_HistoryConfessionHistoryBoolExp? get confessionHistory =>
      (_$data['confessionHistory'] as Input_HistoryConfessionHistoryBoolExp?);

  Input_HistoryConfessionHistoryAggregateBoolExp?
  get confessionHistoryAggregate =>
      (_$data['confessionHistoryAggregate']
          as Input_HistoryConfessionHistoryAggregateBoolExp?);

  Input_DateComparisonExp? get day =>
      (_$data['day'] as Input_DateComparisonExp?);

  Input_HistoryKodasHistoryBoolExp? get kodasHistory =>
      (_$data['kodasHistory'] as Input_HistoryKodasHistoryBoolExp?);

  Input_HistoryKodasHistoryAggregateBoolExp? get kodasHistoryAggregate =>
      (_$data['kodasHistoryAggregate']
          as Input_HistoryKodasHistoryAggregateBoolExp?);

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
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = l$confessionHistory?.toJson();
    }
    if (_$data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = confessionHistoryAggregate;
      result$data['confessionHistoryAggregate'] = l$confessionHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day?.toJson();
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = l$kodasHistory?.toJson();
    }
    if (_$data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = kodasHistoryAggregate;
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysBoolExp<
    Input_HistoryAttendanceDaysBoolExp
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysBoolExp ||
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
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (_$data.containsKey('confessionHistory') !=
        other._$data.containsKey('confessionHistory')) {
      return false;
    }
    if (l$confessionHistory != lOther$confessionHistory) {
      return false;
    }
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (_$data.containsKey('confessionHistoryAggregate') !=
        other._$data.containsKey('confessionHistoryAggregate')) {
      return false;
    }
    if (l$confessionHistoryAggregate != lOther$confessionHistoryAggregate) {
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
    final l$kodasHistory = kodasHistory;
    final lOther$kodasHistory = other.kodasHistory;
    if (_$data.containsKey('kodasHistory') !=
        other._$data.containsKey('kodasHistory')) {
      return false;
    }
    if (l$kodasHistory != lOther$kodasHistory) {
      return false;
    }
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final lOther$kodasHistoryAggregate = other.kodasHistoryAggregate;
    if (_$data.containsKey('kodasHistoryAggregate') !=
        other._$data.containsKey('kodasHistoryAggregate')) {
      return false;
    }
    if (l$kodasHistoryAggregate != lOther$kodasHistoryAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$confessionHistory = confessionHistory;
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$day = day;
    final l$kodasHistory = kodasHistory;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
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
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('confessionHistoryAggregate')
          ? l$confessionHistoryAggregate
          : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
      _$data.containsKey('kodasHistoryAggregate')
          ? l$kodasHistoryAggregate
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysBoolExp(
    Input_HistoryAttendanceDaysBoolExp instance,
    TRes Function(Input_HistoryAttendanceDaysBoolExp) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysBoolExp;

  factory CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysBoolExp;

  TRes call({
    List<Input_HistoryAttendanceDaysBoolExp>? $_and,
    Input_HistoryAttendanceDaysBoolExp? $_not,
    List<Input_HistoryAttendanceDaysBoolExp>? $_or,
    Input_HistoryConfessionHistoryBoolExp? confessionHistory,
    Input_HistoryConfessionHistoryAggregateBoolExp? confessionHistoryAggregate,
    Input_DateComparisonExp? day,
    Input_HistoryKodasHistoryBoolExp? kodasHistory,
    Input_HistoryKodasHistoryAggregateBoolExp? kodasHistoryAggregate,
  });
  TRes $_and(
    Iterable<Input_HistoryAttendanceDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysBoolExp<
          Input_HistoryAttendanceDaysBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_HistoryAttendanceDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysBoolExp<
          Input_HistoryAttendanceDaysBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get confessionHistory;
  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
  get confessionHistoryAggregate;
  CopyWith_Input_DateComparisonExp<TRes> get day;
  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get kodasHistory;
  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
  get kodasHistoryAggregate;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysBoolExp(this._instance, this._then);

  final Input_HistoryAttendanceDaysBoolExp _instance;

  final TRes Function(Input_HistoryAttendanceDaysBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? confessionHistory = _undefined,
    Object? confessionHistoryAggregate = _undefined,
    Object? day = _undefined,
    Object? kodasHistory = _undefined,
    Object? kodasHistoryAggregate = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_HistoryAttendanceDaysBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_HistoryAttendanceDaysBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_HistoryAttendanceDaysBoolExp>?),
      if (confessionHistory != _undefined)
        'confessionHistory':
            (confessionHistory as Input_HistoryConfessionHistoryBoolExp?),
      if (confessionHistoryAggregate != _undefined)
        'confessionHistoryAggregate':
            (confessionHistoryAggregate
                as Input_HistoryConfessionHistoryAggregateBoolExp?),
      if (day != _undefined) 'day': (day as Input_DateComparisonExp?),
      if (kodasHistory != _undefined)
        'kodasHistory': (kodasHistory as Input_HistoryKodasHistoryBoolExp?),
      if (kodasHistoryAggregate != _undefined)
        'kodasHistoryAggregate':
            (kodasHistoryAggregate
                as Input_HistoryKodasHistoryAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_HistoryAttendanceDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysBoolExp<
          Input_HistoryAttendanceDaysBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_HistoryAttendanceDaysBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_HistoryAttendanceDaysBoolExp>? Function(
      Iterable<
        CopyWith_Input_HistoryAttendanceDaysBoolExp<
          Input_HistoryAttendanceDaysBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_HistoryAttendanceDaysBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get confessionHistory {
    final local$confessionHistory = _instance.confessionHistory;
    return local$confessionHistory == null
        ? CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryConfessionHistoryBoolExp(
            local$confessionHistory,
            (e) => call(confessionHistory: e),
          );
  }

  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
  get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return local$confessionHistoryAggregate == null
        ? CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp(
            local$confessionHistoryAggregate,
            (e) => call(confessionHistoryAggregate: e),
          );
  }

  CopyWith_Input_DateComparisonExp<TRes> get day {
    final local$day = _instance.day;
    return local$day == null
        ? CopyWith_Input_DateComparisonExp.stub(_then(_instance))
        : CopyWith_Input_DateComparisonExp(local$day, (e) => call(day: e));
  }

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get kodasHistory {
    final local$kodasHistory = _instance.kodasHistory;
    return local$kodasHistory == null
        ? CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryKodasHistoryBoolExp(
            local$kodasHistory,
            (e) => call(kodasHistory: e),
          );
  }

  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
  get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return local$kodasHistoryAggregate == null
        ? CopyWith_Input_HistoryKodasHistoryAggregateBoolExp.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryKodasHistoryAggregateBoolExp(
            local$kodasHistoryAggregate,
            (e) => call(kodasHistoryAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysBoolExp<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysBoolExp(this._res);

  TRes _res;

  call({
    List<Input_HistoryAttendanceDaysBoolExp>? $_and,
    Input_HistoryAttendanceDaysBoolExp? $_not,
    List<Input_HistoryAttendanceDaysBoolExp>? $_or,
    Input_HistoryConfessionHistoryBoolExp? confessionHistory,
    Input_HistoryConfessionHistoryAggregateBoolExp? confessionHistoryAggregate,
    Input_DateComparisonExp? day,
    Input_HistoryKodasHistoryBoolExp? kodasHistory,
    Input_HistoryKodasHistoryAggregateBoolExp? kodasHistoryAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get $_not =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_HistoryConfessionHistoryBoolExp<TRes> get confessionHistory =>
      CopyWith_Input_HistoryConfessionHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp<TRes>
  get confessionHistoryAggregate =>
      CopyWith_Input_HistoryConfessionHistoryAggregateBoolExp.stub(_res);

  CopyWith_Input_DateComparisonExp<TRes> get day =>
      CopyWith_Input_DateComparisonExp.stub(_res);

  CopyWith_Input_HistoryKodasHistoryBoolExp<TRes> get kodasHistory =>
      CopyWith_Input_HistoryKodasHistoryBoolExp.stub(_res);

  CopyWith_Input_HistoryKodasHistoryAggregateBoolExp<TRes>
  get kodasHistoryAggregate =>
      CopyWith_Input_HistoryKodasHistoryAggregateBoolExp.stub(_res);
}

class Input_HistoryAttendanceDaysInsertInput {
  factory Input_HistoryAttendanceDaysInsertInput({
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    DateTime? day,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
  }) => Input_HistoryAttendanceDaysInsertInput._({
    if (confessionHistory != null) r'confessionHistory': confessionHistory,
    if (day != null) r'day': day,
    if (kodasHistory != null) r'kodasHistory': kodasHistory,
  });

  Input_HistoryAttendanceDaysInsertInput._(this._$data);

  factory Input_HistoryAttendanceDaysInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('confessionHistory')) {
      final l$confessionHistory = data['confessionHistory'];
      result$data['confessionHistory'] = l$confessionHistory == null
          ? null
          : Input_HistoryConfessionHistoryArrRelInsertInput.fromJson(
              (l$confessionHistory as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    if (data.containsKey('kodasHistory')) {
      final l$kodasHistory = data['kodasHistory'];
      result$data['kodasHistory'] = l$kodasHistory == null
          ? null
          : Input_HistoryKodasHistoryArrRelInsertInput.fromJson(
              (l$kodasHistory as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryConfessionHistoryArrRelInsertInput? get confessionHistory =>
      (_$data['confessionHistory']
          as Input_HistoryConfessionHistoryArrRelInsertInput?);

  DateTime? get day => (_$data['day'] as DateTime?);

  Input_HistoryKodasHistoryArrRelInsertInput? get kodasHistory =>
      (_$data['kodasHistory'] as Input_HistoryKodasHistoryArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('confessionHistory')) {
      final l$confessionHistory = confessionHistory;
      result$data['confessionHistory'] = l$confessionHistory?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    if (_$data.containsKey('kodasHistory')) {
      final l$kodasHistory = kodasHistory;
      result$data['kodasHistory'] = l$kodasHistory?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysInsertInput<
    Input_HistoryAttendanceDaysInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$confessionHistory = confessionHistory;
    final lOther$confessionHistory = other.confessionHistory;
    if (_$data.containsKey('confessionHistory') !=
        other._$data.containsKey('confessionHistory')) {
      return false;
    }
    if (l$confessionHistory != lOther$confessionHistory) {
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
    final l$kodasHistory = kodasHistory;
    final lOther$kodasHistory = other.kodasHistory;
    if (_$data.containsKey('kodasHistory') !=
        other._$data.containsKey('kodasHistory')) {
      return false;
    }
    if (l$kodasHistory != lOther$kodasHistory) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$confessionHistory = confessionHistory;
    final l$day = day;
    final l$kodasHistory = kodasHistory;
    return Object.hashAll([
      _$data.containsKey('confessionHistory') ? l$confessionHistory : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('kodasHistory') ? l$kodasHistory : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysInsertInput(
    Input_HistoryAttendanceDaysInsertInput instance,
    TRes Function(Input_HistoryAttendanceDaysInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysInsertInput;

  factory CopyWith_Input_HistoryAttendanceDaysInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysInsertInput;

  TRes call({
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    DateTime? day,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
  });
  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
  get confessionHistory;
  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? confessionHistory = _undefined,
    Object? day = _undefined,
    Object? kodasHistory = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysInsertInput._({
      ..._instance._$data,
      if (confessionHistory != _undefined)
        'confessionHistory':
            (confessionHistory
                as Input_HistoryConfessionHistoryArrRelInsertInput?),
      if (day != _undefined) 'day': (day as DateTime?),
      if (kodasHistory != _undefined)
        'kodasHistory':
            (kodasHistory as Input_HistoryKodasHistoryArrRelInsertInput?),
    }),
  );

  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
  get confessionHistory {
    final local$confessionHistory = _instance.confessionHistory;
    return local$confessionHistory == null
        ? CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput(
            local$confessionHistory,
            (e) => call(confessionHistory: e),
          );
  }

  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory {
    final local$kodasHistory = _instance.kodasHistory;
    return local$kodasHistory == null
        ? CopyWith_Input_HistoryKodasHistoryArrRelInsertInput.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryKodasHistoryArrRelInsertInput(
            local$kodasHistory,
            (e) => call(kodasHistory: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryConfessionHistoryArrRelInsertInput? confessionHistory,
    DateTime? day,
    Input_HistoryKodasHistoryArrRelInsertInput? kodasHistory,
  }) => _res;

  CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput<TRes>
  get confessionHistory =>
      CopyWith_Input_HistoryConfessionHistoryArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryKodasHistoryArrRelInsertInput<TRes> get kodasHistory =>
      CopyWith_Input_HistoryKodasHistoryArrRelInsertInput.stub(_res);
}

class Input_HistoryAttendanceDaysObjRelInsertInput {
  factory Input_HistoryAttendanceDaysObjRelInsertInput({
    required Input_HistoryAttendanceDaysInsertInput data,
    Input_HistoryAttendanceDaysOnConflict? onConflict,
  }) => Input_HistoryAttendanceDaysObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_HistoryAttendanceDaysObjRelInsertInput._(this._$data);

  factory Input_HistoryAttendanceDaysObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_HistoryAttendanceDaysInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_HistoryAttendanceDaysOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysInsertInput get data =>
      (_$data['data'] as Input_HistoryAttendanceDaysInsertInput);

  Input_HistoryAttendanceDaysOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_HistoryAttendanceDaysOnConflict?);

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

  CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<
    Input_HistoryAttendanceDaysObjRelInsertInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysObjRelInsertInput ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput(
    Input_HistoryAttendanceDaysObjRelInsertInput instance,
    TRes Function(Input_HistoryAttendanceDaysObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysObjRelInsertInput;

  factory CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysObjRelInsertInput;

  TRes call({
    Input_HistoryAttendanceDaysInsertInput? data,
    Input_HistoryAttendanceDaysOnConflict? onConflict,
  });
  CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> get data;
  CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysObjRelInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysObjRelInsertInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_HistoryAttendanceDaysObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_HistoryAttendanceDaysInsertInput),
          if (onConflict != _undefined)
            'onConflict':
                (onConflict as Input_HistoryAttendanceDaysOnConflict?),
        }),
      );

  CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_HistoryAttendanceDaysInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_HistoryAttendanceDaysOnConflict.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysObjRelInsertInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysInsertInput? data,
    Input_HistoryAttendanceDaysOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysInsertInput<TRes> get data =>
      CopyWith_Input_HistoryAttendanceDaysInsertInput.stub(_res);

  CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> get onConflict =>
      CopyWith_Input_HistoryAttendanceDaysOnConflict.stub(_res);
}

class Input_HistoryAttendanceDaysOnConflict {
  factory Input_HistoryAttendanceDaysOnConflict({
    required Enum_HistoryAttendanceDaysConstraint constraint,
    List<Enum_HistoryAttendanceDaysUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysBoolExp? where,
  }) => Input_HistoryAttendanceDaysOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_HistoryAttendanceDaysOnConflict._(this._$data);

  factory Input_HistoryAttendanceDaysOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_HistoryAttendanceDaysConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) =>
                fromJson_Enum_HistoryAttendanceDaysUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_HistoryAttendanceDaysBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_HistoryAttendanceDaysConstraint get constraint =>
      (_$data['constraint'] as Enum_HistoryAttendanceDaysConstraint);

  List<Enum_HistoryAttendanceDaysUpdateColumn>? get updateColumns =>
      (_$data['updateColumns']
          as List<Enum_HistoryAttendanceDaysUpdateColumn>?);

  Input_HistoryAttendanceDaysBoolExp? get where =>
      (_$data['where'] as Input_HistoryAttendanceDaysBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_HistoryAttendanceDaysConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_HistoryAttendanceDaysUpdateColumn>)
              .map((e) => toJson_Enum_HistoryAttendanceDaysUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysOnConflict<
    Input_HistoryAttendanceDaysOnConflict
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysOnConflict ||
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

abstract class CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysOnConflict(
    Input_HistoryAttendanceDaysOnConflict instance,
    TRes Function(Input_HistoryAttendanceDaysOnConflict) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysOnConflict;

  factory CopyWith_Input_HistoryAttendanceDaysOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysOnConflict;

  TRes call({
    Enum_HistoryAttendanceDaysConstraint? constraint,
    List<Enum_HistoryAttendanceDaysUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysOnConflict(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysOnConflict _instance;

  final TRes Function(Input_HistoryAttendanceDaysOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_HistoryAttendanceDaysConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_HistoryAttendanceDaysUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_HistoryAttendanceDaysBoolExp?),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryAttendanceDaysBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysOnConflict<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOnConflict<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysOnConflict(this._res);

  TRes _res;

  call({
    Enum_HistoryAttendanceDaysConstraint? constraint,
    List<Enum_HistoryAttendanceDaysUpdateColumn>? updateColumns,
    Input_HistoryAttendanceDaysBoolExp? where,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where =>
      CopyWith_Input_HistoryAttendanceDaysBoolExp.stub(_res);
}

class Input_HistoryAttendanceDaysOrderBy {
  factory Input_HistoryAttendanceDaysOrderBy({
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Enum_OrderBy? day,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
  }) => Input_HistoryAttendanceDaysOrderBy._({
    if (confessionHistoryAggregate != null)
      r'confessionHistoryAggregate': confessionHistoryAggregate,
    if (day != null) r'day': day,
    if (kodasHistoryAggregate != null)
      r'kodasHistoryAggregate': kodasHistoryAggregate,
  });

  Input_HistoryAttendanceDaysOrderBy._(this._$data);

  factory Input_HistoryAttendanceDaysOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = data['confessionHistoryAggregate'];
      result$data['confessionHistoryAggregate'] =
          l$confessionHistoryAggregate == null
          ? null
          : Input_HistoryConfessionHistoryAggregateOrderBy.fromJson(
              (l$confessionHistoryAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null
          ? null
          : fromJson_Enum_OrderBy((l$day as String));
    }
    if (data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = data['kodasHistoryAggregate'];
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate == null
          ? null
          : Input_HistoryKodasHistoryAggregateOrderBy.fromJson(
              (l$kodasHistoryAggregate as Map<String, dynamic>),
            );
    }
    return Input_HistoryAttendanceDaysOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryConfessionHistoryAggregateOrderBy?
  get confessionHistoryAggregate =>
      (_$data['confessionHistoryAggregate']
          as Input_HistoryConfessionHistoryAggregateOrderBy?);

  Enum_OrderBy? get day => (_$data['day'] as Enum_OrderBy?);

  Input_HistoryKodasHistoryAggregateOrderBy? get kodasHistoryAggregate =>
      (_$data['kodasHistoryAggregate']
          as Input_HistoryKodasHistoryAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('confessionHistoryAggregate')) {
      final l$confessionHistoryAggregate = confessionHistoryAggregate;
      result$data['confessionHistoryAggregate'] = l$confessionHistoryAggregate
          ?.toJson();
    }
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : toJson_Enum_OrderBy(l$day);
    }
    if (_$data.containsKey('kodasHistoryAggregate')) {
      final l$kodasHistoryAggregate = kodasHistoryAggregate;
      result$data['kodasHistoryAggregate'] = l$kodasHistoryAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysOrderBy<
    Input_HistoryAttendanceDaysOrderBy
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final lOther$confessionHistoryAggregate = other.confessionHistoryAggregate;
    if (_$data.containsKey('confessionHistoryAggregate') !=
        other._$data.containsKey('confessionHistoryAggregate')) {
      return false;
    }
    if (l$confessionHistoryAggregate != lOther$confessionHistoryAggregate) {
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
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    final lOther$kodasHistoryAggregate = other.kodasHistoryAggregate;
    if (_$data.containsKey('kodasHistoryAggregate') !=
        other._$data.containsKey('kodasHistoryAggregate')) {
      return false;
    }
    if (l$kodasHistoryAggregate != lOther$kodasHistoryAggregate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$confessionHistoryAggregate = confessionHistoryAggregate;
    final l$day = day;
    final l$kodasHistoryAggregate = kodasHistoryAggregate;
    return Object.hashAll([
      _$data.containsKey('confessionHistoryAggregate')
          ? l$confessionHistoryAggregate
          : const {},
      _$data.containsKey('day') ? l$day : const {},
      _$data.containsKey('kodasHistoryAggregate')
          ? l$kodasHistoryAggregate
          : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysOrderBy(
    Input_HistoryAttendanceDaysOrderBy instance,
    TRes Function(Input_HistoryAttendanceDaysOrderBy) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysOrderBy;

  factory CopyWith_Input_HistoryAttendanceDaysOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysOrderBy;

  TRes call({
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Enum_OrderBy? day,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
  });
  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
  get confessionHistoryAggregate;
  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
  get kodasHistoryAggregate;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysOrderBy(this._instance, this._then);

  final Input_HistoryAttendanceDaysOrderBy _instance;

  final TRes Function(Input_HistoryAttendanceDaysOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? confessionHistoryAggregate = _undefined,
    Object? day = _undefined,
    Object? kodasHistoryAggregate = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysOrderBy._({
      ..._instance._$data,
      if (confessionHistoryAggregate != _undefined)
        'confessionHistoryAggregate':
            (confessionHistoryAggregate
                as Input_HistoryConfessionHistoryAggregateOrderBy?),
      if (day != _undefined) 'day': (day as Enum_OrderBy?),
      if (kodasHistoryAggregate != _undefined)
        'kodasHistoryAggregate':
            (kodasHistoryAggregate
                as Input_HistoryKodasHistoryAggregateOrderBy?),
    }),
  );

  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
  get confessionHistoryAggregate {
    final local$confessionHistoryAggregate =
        _instance.confessionHistoryAggregate;
    return local$confessionHistoryAggregate == null
        ? CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy(
            local$confessionHistoryAggregate,
            (e) => call(confessionHistoryAggregate: e),
          );
  }

  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
  get kodasHistoryAggregate {
    final local$kodasHistoryAggregate = _instance.kodasHistoryAggregate;
    return local$kodasHistoryAggregate == null
        ? CopyWith_Input_HistoryKodasHistoryAggregateOrderBy.stub(
            _then(_instance),
          )
        : CopyWith_Input_HistoryKodasHistoryAggregateOrderBy(
            local$kodasHistoryAggregate,
            (e) => call(kodasHistoryAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysOrderBy<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysOrderBy<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysOrderBy(this._res);

  TRes _res;

  call({
    Input_HistoryConfessionHistoryAggregateOrderBy? confessionHistoryAggregate,
    Enum_OrderBy? day,
    Input_HistoryKodasHistoryAggregateOrderBy? kodasHistoryAggregate,
  }) => _res;

  CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy<TRes>
  get confessionHistoryAggregate =>
      CopyWith_Input_HistoryConfessionHistoryAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryKodasHistoryAggregateOrderBy<TRes>
  get kodasHistoryAggregate =>
      CopyWith_Input_HistoryKodasHistoryAggregateOrderBy.stub(_res);
}

class Input_HistoryAttendanceDaysPkColumnsInput {
  factory Input_HistoryAttendanceDaysPkColumnsInput({required DateTime day}) =>
      Input_HistoryAttendanceDaysPkColumnsInput._({r'day': day});

  Input_HistoryAttendanceDaysPkColumnsInput._(this._$data);

  factory Input_HistoryAttendanceDaysPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$day = data['day'];
    result$data['day'] = dateFromString(l$day);
    return Input_HistoryAttendanceDaysPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get day => (_$data['day'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$day = day;
    result$data['day'] = dateToString(l$day);
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<
    Input_HistoryAttendanceDaysPkColumnsInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    return Object.hashAll([l$day]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysPkColumnsInput(
    Input_HistoryAttendanceDaysPkColumnsInput instance,
    TRes Function(Input_HistoryAttendanceDaysPkColumnsInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysPkColumnsInput;

  factory CopyWith_Input_HistoryAttendanceDaysPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysPkColumnsInput;

  TRes call({DateTime? day});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysPkColumnsInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? day = _undefined}) => _then(
    Input_HistoryAttendanceDaysPkColumnsInput._({
      ..._instance._$data,
      if (day != _undefined && day != null) 'day': (day as DateTime),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysPkColumnsInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysPkColumnsInput(this._res);

  TRes _res;

  call({DateTime? day}) => _res;
}

class Input_HistoryAttendanceDaysSetInput {
  factory Input_HistoryAttendanceDaysSetInput({DateTime? day}) =>
      Input_HistoryAttendanceDaysSetInput._({if (day != null) r'day': day});

  Input_HistoryAttendanceDaysSetInput._(this._$data);

  factory Input_HistoryAttendanceDaysSetInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    return Input_HistoryAttendanceDaysSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get day => (_$data['day'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysSetInput<
    Input_HistoryAttendanceDaysSetInput
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysSetInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    return Object.hashAll([_$data.containsKey('day') ? l$day : const {}]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysSetInput(
    Input_HistoryAttendanceDaysSetInput instance,
    TRes Function(Input_HistoryAttendanceDaysSetInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysSetInput;

  factory CopyWith_Input_HistoryAttendanceDaysSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysSetInput;

  TRes call({DateTime? day});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysSetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysSetInput(this._instance, this._then);

  final Input_HistoryAttendanceDaysSetInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? day = _undefined}) => _then(
    Input_HistoryAttendanceDaysSetInput._({
      ..._instance._$data,
      if (day != _undefined) 'day': (day as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysSetInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysSetInput(this._res);

  TRes _res;

  call({DateTime? day}) => _res;
}

class Input_HistoryAttendanceDaysStreamCursorInput {
  factory Input_HistoryAttendanceDaysStreamCursorInput({
    required Input_HistoryAttendanceDaysStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_HistoryAttendanceDaysStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_HistoryAttendanceDaysStreamCursorInput._(this._$data);

  factory Input_HistoryAttendanceDaysStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_HistoryAttendanceDaysStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_HistoryAttendanceDaysStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_HistoryAttendanceDaysStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] = l$ordering == null
          ? null
          : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<
    Input_HistoryAttendanceDaysStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_HistoryAttendanceDaysStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysStreamCursorInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initialValue = initialValue;
    final lOther$initialValue = other.initialValue;
    if (l$initialValue != lOther$initialValue) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initialValue = initialValue;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initialValue,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorInput(
    Input_HistoryAttendanceDaysStreamCursorInput instance,
    TRes Function(Input_HistoryAttendanceDaysStreamCursorInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorInput;

  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorInput;

  TRes call({
    Input_HistoryAttendanceDaysStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysStreamCursorInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_HistoryAttendanceDaysStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_HistoryAttendanceDaysStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorInput<TRes>
    implements CopyWith_Input_HistoryAttendanceDaysStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_HistoryAttendanceDaysStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput.stub(_res);
}

class Input_HistoryAttendanceDaysStreamCursorValueInput {
  factory Input_HistoryAttendanceDaysStreamCursorValueInput({DateTime? day}) =>
      Input_HistoryAttendanceDaysStreamCursorValueInput._({
        if (day != null) r'day': day,
      });

  Input_HistoryAttendanceDaysStreamCursorValueInput._(this._$data);

  factory Input_HistoryAttendanceDaysStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('day')) {
      final l$day = data['day'];
      result$data['day'] = l$day == null ? null : dateFromString(l$day);
    }
    return Input_HistoryAttendanceDaysStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get day => (_$data['day'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('day')) {
      final l$day = day;
      result$data['day'] = l$day == null ? null : dateToString(l$day);
    }
    return result$data;
  }

  CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<
    Input_HistoryAttendanceDaysStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysStreamCursorValueInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    return Object.hashAll([_$data.containsKey('day') ? l$day : const {}]);
  }
}

abstract class CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<
  TRes
> {
  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput(
    Input_HistoryAttendanceDaysStreamCursorValueInput instance,
    TRes Function(Input_HistoryAttendanceDaysStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorValueInput;

  factory CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorValueInput;

  TRes call({DateTime? day});
}

class _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_HistoryAttendanceDaysStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_HistoryAttendanceDaysStreamCursorValueInput _instance;

  final TRes Function(Input_HistoryAttendanceDaysStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? day = _undefined}) => _then(
    Input_HistoryAttendanceDaysStreamCursorValueInput._({
      ..._instance._$data,
      if (day != _undefined) 'day': (day as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes>
    implements
        CopyWith_Input_HistoryAttendanceDaysStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_HistoryAttendanceDaysStreamCursorValueInput(
    this._res,
  );

  TRes _res;

  call({DateTime? day}) => _res;
}

class Input_HistoryAttendanceDaysUpdates {
  factory Input_HistoryAttendanceDaysUpdates({
    Input_HistoryAttendanceDaysSetInput? $_set,
    required Input_HistoryAttendanceDaysBoolExp where,
  }) => Input_HistoryAttendanceDaysUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_HistoryAttendanceDaysUpdates._(this._$data);

  factory Input_HistoryAttendanceDaysUpdates.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_HistoryAttendanceDaysSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_HistoryAttendanceDaysBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_HistoryAttendanceDaysUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_HistoryAttendanceDaysSetInput? get $_set =>
      (_$data['_set'] as Input_HistoryAttendanceDaysSetInput?);

  Input_HistoryAttendanceDaysBoolExp get where =>
      (_$data['where'] as Input_HistoryAttendanceDaysBoolExp);

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

  CopyWith_Input_HistoryAttendanceDaysUpdates<
    Input_HistoryAttendanceDaysUpdates
  >
  get copyWith => CopyWith_Input_HistoryAttendanceDaysUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_HistoryAttendanceDaysUpdates ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_HistoryAttendanceDaysUpdates<TRes> {
  factory CopyWith_Input_HistoryAttendanceDaysUpdates(
    Input_HistoryAttendanceDaysUpdates instance,
    TRes Function(Input_HistoryAttendanceDaysUpdates) then,
  ) = _CopyWithImpl_Input_HistoryAttendanceDaysUpdates;

  factory CopyWith_Input_HistoryAttendanceDaysUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_HistoryAttendanceDaysUpdates;

  TRes call({
    Input_HistoryAttendanceDaysSetInput? $_set,
    Input_HistoryAttendanceDaysBoolExp? where,
  });
  CopyWith_Input_HistoryAttendanceDaysSetInput<TRes> get $_set;
  CopyWith_Input_HistoryAttendanceDaysBoolExp<TRes> get where;
}
