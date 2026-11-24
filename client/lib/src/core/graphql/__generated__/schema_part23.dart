// Part 23 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_FathersUpdates<TRes> {
  factory CopyWith_Input_FathersUpdates(
    Input_FathersUpdates instance,
    TRes Function(Input_FathersUpdates) then,
  ) = _CopyWithImpl_Input_FathersUpdates;

  factory CopyWith_Input_FathersUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_FathersUpdates;

  TRes call({Input_FathersSetInput? $_set, Input_FathersBoolExp? where});
  CopyWith_Input_FathersSetInput<TRes> get $_set;
  CopyWith_Input_FathersBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_FathersUpdates<TRes>
    implements CopyWith_Input_FathersUpdates<TRes> {
  _CopyWithImpl_Input_FathersUpdates(this._instance, this._then);

  final Input_FathersUpdates _instance;

  final TRes Function(Input_FathersUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_FathersUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_FathersSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_FathersBoolExp),
    }),
  );

  CopyWith_Input_FathersSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_FathersSetInput.stub(_then(_instance))
        : CopyWith_Input_FathersSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_FathersBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_FathersBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_FathersUpdates<TRes>
    implements CopyWith_Input_FathersUpdates<TRes> {
  _CopyWithStubImpl_Input_FathersUpdates(this._res);

  TRes _res;

  call({Input_FathersSetInput? $_set, Input_FathersBoolExp? where}) => _res;

  CopyWith_Input_FathersSetInput<TRes> get $_set =>
      CopyWith_Input_FathersSetInput.stub(_res);

  CopyWith_Input_FathersBoolExp<TRes> get where =>
      CopyWith_Input_FathersBoolExp.stub(_res);
}

class Input_GeographyCastExp {
  factory Input_GeographyCastExp({Input_GeometryComparisonExp? geometry}) =>
      Input_GeographyCastExp._({if (geometry != null) r'geometry': geometry});

  Input_GeographyCastExp._(this._$data);

  factory Input_GeographyCastExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('geometry')) {
      final l$geometry = data['geometry'];
      result$data['geometry'] = l$geometry == null
          ? null
          : Input_GeometryComparisonExp.fromJson(
              (l$geometry as Map<String, dynamic>),
            );
    }
    return Input_GeographyCastExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GeometryComparisonExp? get geometry =>
      (_$data['geometry'] as Input_GeometryComparisonExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('geometry')) {
      final l$geometry = geometry;
      result$data['geometry'] = l$geometry?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_GeographyCastExp<Input_GeographyCastExp> get copyWith =>
      CopyWith_Input_GeographyCastExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GeographyCastExp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$geometry = geometry;
    final lOther$geometry = other.geometry;
    if (_$data.containsKey('geometry') !=
        other._$data.containsKey('geometry')) {
      return false;
    }
    if (l$geometry != lOther$geometry) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$geometry = geometry;
    return Object.hashAll([
      _$data.containsKey('geometry') ? l$geometry : const {},
    ]);
  }
}

abstract class CopyWith_Input_GeographyCastExp<TRes> {
  factory CopyWith_Input_GeographyCastExp(
    Input_GeographyCastExp instance,
    TRes Function(Input_GeographyCastExp) then,
  ) = _CopyWithImpl_Input_GeographyCastExp;

  factory CopyWith_Input_GeographyCastExp.stub(TRes res) =
      _CopyWithStubImpl_Input_GeographyCastExp;

  TRes call({Input_GeometryComparisonExp? geometry});
  CopyWith_Input_GeometryComparisonExp<TRes> get geometry;
}

class _CopyWithImpl_Input_GeographyCastExp<TRes>
    implements CopyWith_Input_GeographyCastExp<TRes> {
  _CopyWithImpl_Input_GeographyCastExp(this._instance, this._then);

  final Input_GeographyCastExp _instance;

  final TRes Function(Input_GeographyCastExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? geometry = _undefined}) => _then(
    Input_GeographyCastExp._({
      ..._instance._$data,
      if (geometry != _undefined)
        'geometry': (geometry as Input_GeometryComparisonExp?),
    }),
  );

  CopyWith_Input_GeometryComparisonExp<TRes> get geometry {
    final local$geometry = _instance.geometry;
    return local$geometry == null
        ? CopyWith_Input_GeometryComparisonExp.stub(_then(_instance))
        : CopyWith_Input_GeometryComparisonExp(
            local$geometry,
            (e) => call(geometry: e),
          );
  }
}

class _CopyWithStubImpl_Input_GeographyCastExp<TRes>
    implements CopyWith_Input_GeographyCastExp<TRes> {
  _CopyWithStubImpl_Input_GeographyCastExp(this._res);

  TRes _res;

  call({Input_GeometryComparisonExp? geometry}) => _res;

  CopyWith_Input_GeometryComparisonExp<TRes> get geometry =>
      CopyWith_Input_GeometryComparisonExp.stub(_res);
}

class Input_GeographyComparisonExp {
  factory Input_GeographyComparisonExp({
    Input_GeographyCastExp? $_cast,
    Map<String, dynamic>? $_eq,
    Map<String, dynamic>? $_gt,
    Map<String, dynamic>? $_gte,
    List<Map<String, dynamic>>? $_in,
    bool? $_isNull,
    Map<String, dynamic>? $_lt,
    Map<String, dynamic>? $_lte,
    Map<String, dynamic>? $_neq,
    List<Map<String, dynamic>>? $_nin,
    Input_st_d_within_geography_input? $_stDWithin,
    Map<String, dynamic>? $_stIntersects,
  }) => Input_GeographyComparisonExp._({
    if ($_cast != null) r'_cast': $_cast,
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_in != null) r'_in': $_in,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nin != null) r'_nin': $_nin,
    if ($_stDWithin != null) r'_stDWithin': $_stDWithin,
    if ($_stIntersects != null) r'_stIntersects': $_stIntersects,
  });

  Input_GeographyComparisonExp._(this._$data);

  factory Input_GeographyComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_cast')) {
      final l$$_cast = data['_cast'];
      result$data['_cast'] = l$$_cast == null
          ? null
          : Input_GeographyCastExp.fromJson((l$$_cast as Map<String, dynamic>));
    }
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as Map<String, dynamic>?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as Map<String, dynamic>?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as Map<String, dynamic>?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as Map<String, dynamic>?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as Map<String, dynamic>?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as Map<String, dynamic>?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>))
          .toList();
    }
    if (data.containsKey('_stDWithin')) {
      final l$$_stDWithin = data['_stDWithin'];
      result$data['_stDWithin'] = l$$_stDWithin == null
          ? null
          : Input_st_d_within_geography_input.fromJson(
              (l$$_stDWithin as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_stIntersects')) {
      final l$$_stIntersects = data['_stIntersects'];
      result$data['_stIntersects'] =
          (l$$_stIntersects as Map<String, dynamic>?);
    }
    return Input_GeographyComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GeographyCastExp? get $_cast =>
      (_$data['_cast'] as Input_GeographyCastExp?);

  Map<String, dynamic>? get $_eq => (_$data['_eq'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_gt => (_$data['_gt'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_gte => (_$data['_gte'] as Map<String, dynamic>?);

  List<Map<String, dynamic>>? get $_in =>
      (_$data['_in'] as List<Map<String, dynamic>>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  Map<String, dynamic>? get $_lt => (_$data['_lt'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_lte => (_$data['_lte'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_neq => (_$data['_neq'] as Map<String, dynamic>?);

  List<Map<String, dynamic>>? get $_nin =>
      (_$data['_nin'] as List<Map<String, dynamic>>?);

  Input_st_d_within_geography_input? get $_stDWithin =>
      (_$data['_stDWithin'] as Input_st_d_within_geography_input?);

  Map<String, dynamic>? get $_stIntersects =>
      (_$data['_stIntersects'] as Map<String, dynamic>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_cast')) {
      final l$$_cast = $_cast;
      result$data['_cast'] = l$$_cast?.toJson();
    }
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('_stDWithin')) {
      final l$$_stDWithin = $_stDWithin;
      result$data['_stDWithin'] = l$$_stDWithin?.toJson();
    }
    if (_$data.containsKey('_stIntersects')) {
      final l$$_stIntersects = $_stIntersects;
      result$data['_stIntersects'] = l$$_stIntersects;
    }
    return result$data;
  }

  CopyWith_Input_GeographyComparisonExp<Input_GeographyComparisonExp>
  get copyWith => CopyWith_Input_GeographyComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GeographyComparisonExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cast = $_cast;
    final lOther$$_cast = other.$_cast;
    if (_$data.containsKey('_cast') != other._$data.containsKey('_cast')) {
      return false;
    }
    if (l$$_cast != lOther$$_cast) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_isNull = $_isNull;
    final lOther$$_isNull = other.$_isNull;
    if (_$data.containsKey('_isNull') != other._$data.containsKey('_isNull')) {
      return false;
    }
    if (l$$_isNull != lOther$$_isNull) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    final l$$_stDWithin = $_stDWithin;
    final lOther$$_stDWithin = other.$_stDWithin;
    if (_$data.containsKey('_stDWithin') !=
        other._$data.containsKey('_stDWithin')) {
      return false;
    }
    if (l$$_stDWithin != lOther$$_stDWithin) {
      return false;
    }
    final l$$_stIntersects = $_stIntersects;
    final lOther$$_stIntersects = other.$_stIntersects;
    if (_$data.containsKey('_stIntersects') !=
        other._$data.containsKey('_stIntersects')) {
      return false;
    }
    if (l$$_stIntersects != lOther$$_stIntersects) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_cast = $_cast;
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_isNull = $_isNull;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    final l$$_stDWithin = $_stDWithin;
    final l$$_stIntersects = $_stIntersects;
    return Object.hashAll([
      _$data.containsKey('_cast') ? l$$_cast : const {},
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
                ? null
                : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_isNull') ? l$$_isNull : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
                ? null
                : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
      _$data.containsKey('_stDWithin') ? l$$_stDWithin : const {},
      _$data.containsKey('_stIntersects') ? l$$_stIntersects : const {},
    ]);
  }
}

abstract class CopyWith_Input_GeographyComparisonExp<TRes> {
  factory CopyWith_Input_GeographyComparisonExp(
    Input_GeographyComparisonExp instance,
    TRes Function(Input_GeographyComparisonExp) then,
  ) = _CopyWithImpl_Input_GeographyComparisonExp;

  factory CopyWith_Input_GeographyComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_GeographyComparisonExp;

  TRes call({
    Input_GeographyCastExp? $_cast,
    Map<String, dynamic>? $_eq,
    Map<String, dynamic>? $_gt,
    Map<String, dynamic>? $_gte,
    List<Map<String, dynamic>>? $_in,
    bool? $_isNull,
    Map<String, dynamic>? $_lt,
    Map<String, dynamic>? $_lte,
    Map<String, dynamic>? $_neq,
    List<Map<String, dynamic>>? $_nin,
    Input_st_d_within_geography_input? $_stDWithin,
    Map<String, dynamic>? $_stIntersects,
  });
  CopyWith_Input_GeographyCastExp<TRes> get $_cast;
  CopyWith_Input_st_d_within_geography_input<TRes> get $_stDWithin;
}

class _CopyWithImpl_Input_GeographyComparisonExp<TRes>
    implements CopyWith_Input_GeographyComparisonExp<TRes> {
  _CopyWithImpl_Input_GeographyComparisonExp(this._instance, this._then);

  final Input_GeographyComparisonExp _instance;

  final TRes Function(Input_GeographyComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_cast = _undefined,
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_isNull = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
    Object? $_stDWithin = _undefined,
    Object? $_stIntersects = _undefined,
  }) => _then(
    Input_GeographyComparisonExp._({
      ..._instance._$data,
      if ($_cast != _undefined) '_cast': ($_cast as Input_GeographyCastExp?),
      if ($_eq != _undefined) '_eq': ($_eq as Map<String, dynamic>?),
      if ($_gt != _undefined) '_gt': ($_gt as Map<String, dynamic>?),
      if ($_gte != _undefined) '_gte': ($_gte as Map<String, dynamic>?),
      if ($_in != _undefined) '_in': ($_in as List<Map<String, dynamic>>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as Map<String, dynamic>?),
      if ($_lte != _undefined) '_lte': ($_lte as Map<String, dynamic>?),
      if ($_neq != _undefined) '_neq': ($_neq as Map<String, dynamic>?),
      if ($_nin != _undefined) '_nin': ($_nin as List<Map<String, dynamic>>?),
      if ($_stDWithin != _undefined)
        '_stDWithin': ($_stDWithin as Input_st_d_within_geography_input?),
      if ($_stIntersects != _undefined)
        '_stIntersects': ($_stIntersects as Map<String, dynamic>?),
    }),
  );

  CopyWith_Input_GeographyCastExp<TRes> get $_cast {
    final local$$_cast = _instance.$_cast;
    return local$$_cast == null
        ? CopyWith_Input_GeographyCastExp.stub(_then(_instance))
        : CopyWith_Input_GeographyCastExp(local$$_cast, (e) => call($_cast: e));
  }

  CopyWith_Input_st_d_within_geography_input<TRes> get $_stDWithin {
    final local$$_stDWithin = _instance.$_stDWithin;
    return local$$_stDWithin == null
        ? CopyWith_Input_st_d_within_geography_input.stub(_then(_instance))
        : CopyWith_Input_st_d_within_geography_input(
            local$$_stDWithin,
            (e) => call($_stDWithin: e),
          );
  }
}

class _CopyWithStubImpl_Input_GeographyComparisonExp<TRes>
    implements CopyWith_Input_GeographyComparisonExp<TRes> {
  _CopyWithStubImpl_Input_GeographyComparisonExp(this._res);

  TRes _res;

  call({
    Input_GeographyCastExp? $_cast,
    Map<String, dynamic>? $_eq,
    Map<String, dynamic>? $_gt,
    Map<String, dynamic>? $_gte,
    List<Map<String, dynamic>>? $_in,
    bool? $_isNull,
    Map<String, dynamic>? $_lt,
    Map<String, dynamic>? $_lte,
    Map<String, dynamic>? $_neq,
    List<Map<String, dynamic>>? $_nin,
    Input_st_d_within_geography_input? $_stDWithin,
    Map<String, dynamic>? $_stIntersects,
  }) => _res;

  CopyWith_Input_GeographyCastExp<TRes> get $_cast =>
      CopyWith_Input_GeographyCastExp.stub(_res);

  CopyWith_Input_st_d_within_geography_input<TRes> get $_stDWithin =>
      CopyWith_Input_st_d_within_geography_input.stub(_res);
}

class Input_GeometryCastExp {
  factory Input_GeometryCastExp({Input_GeographyComparisonExp? geography}) =>
      Input_GeometryCastExp._({if (geography != null) r'geography': geography});

  Input_GeometryCastExp._(this._$data);

  factory Input_GeometryCastExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('geography')) {
      final l$geography = data['geography'];
      result$data['geography'] = l$geography == null
          ? null
          : Input_GeographyComparisonExp.fromJson(
              (l$geography as Map<String, dynamic>),
            );
    }
    return Input_GeometryCastExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GeographyComparisonExp? get geography =>
      (_$data['geography'] as Input_GeographyComparisonExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('geography')) {
      final l$geography = geography;
      result$data['geography'] = l$geography?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_GeometryCastExp<Input_GeometryCastExp> get copyWith =>
      CopyWith_Input_GeometryCastExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GeometryCastExp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$geography = geography;
    final lOther$geography = other.geography;
    if (_$data.containsKey('geography') !=
        other._$data.containsKey('geography')) {
      return false;
    }
    if (l$geography != lOther$geography) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$geography = geography;
    return Object.hashAll([
      _$data.containsKey('geography') ? l$geography : const {},
    ]);
  }
}

abstract class CopyWith_Input_GeometryCastExp<TRes> {
  factory CopyWith_Input_GeometryCastExp(
    Input_GeometryCastExp instance,
    TRes Function(Input_GeometryCastExp) then,
  ) = _CopyWithImpl_Input_GeometryCastExp;

  factory CopyWith_Input_GeometryCastExp.stub(TRes res) =
      _CopyWithStubImpl_Input_GeometryCastExp;

  TRes call({Input_GeographyComparisonExp? geography});
  CopyWith_Input_GeographyComparisonExp<TRes> get geography;
}

class _CopyWithImpl_Input_GeometryCastExp<TRes>
    implements CopyWith_Input_GeometryCastExp<TRes> {
  _CopyWithImpl_Input_GeometryCastExp(this._instance, this._then);

  final Input_GeometryCastExp _instance;

  final TRes Function(Input_GeometryCastExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? geography = _undefined}) => _then(
    Input_GeometryCastExp._({
      ..._instance._$data,
      if (geography != _undefined)
        'geography': (geography as Input_GeographyComparisonExp?),
    }),
  );

  CopyWith_Input_GeographyComparisonExp<TRes> get geography {
    final local$geography = _instance.geography;
    return local$geography == null
        ? CopyWith_Input_GeographyComparisonExp.stub(_then(_instance))
        : CopyWith_Input_GeographyComparisonExp(
            local$geography,
            (e) => call(geography: e),
          );
  }
}

class _CopyWithStubImpl_Input_GeometryCastExp<TRes>
    implements CopyWith_Input_GeometryCastExp<TRes> {
  _CopyWithStubImpl_Input_GeometryCastExp(this._res);

  TRes _res;

  call({Input_GeographyComparisonExp? geography}) => _res;

  CopyWith_Input_GeographyComparisonExp<TRes> get geography =>
      CopyWith_Input_GeographyComparisonExp.stub(_res);
}

class Input_GeometryComparisonExp {
  factory Input_GeometryComparisonExp({
    Input_GeometryCastExp? $_cast,
    Map<String, dynamic>? $_eq,
    Map<String, dynamic>? $_gt,
    Map<String, dynamic>? $_gte,
    List<Map<String, dynamic>>? $_in,
    bool? $_isNull,
    Map<String, dynamic>? $_lt,
    Map<String, dynamic>? $_lte,
    Map<String, dynamic>? $_neq,
    List<Map<String, dynamic>>? $_nin,
    Input_st_d_within_input? $_st3dDWithin,
    Map<String, dynamic>? $_st3dIntersects,
    Map<String, dynamic>? $_stContains,
    Map<String, dynamic>? $_stCrosses,
    Input_st_d_within_input? $_stDWithin,
    Map<String, dynamic>? $_stEquals,
    Map<String, dynamic>? $_stIntersects,
    Map<String, dynamic>? $_stOverlaps,
    Map<String, dynamic>? $_stTouches,
    Map<String, dynamic>? $_stWithin,
  }) => Input_GeometryComparisonExp._({
    if ($_cast != null) r'_cast': $_cast,
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_in != null) r'_in': $_in,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nin != null) r'_nin': $_nin,
    if ($_st3dDWithin != null) r'_st3dDWithin': $_st3dDWithin,
    if ($_st3dIntersects != null) r'_st3dIntersects': $_st3dIntersects,
    if ($_stContains != null) r'_stContains': $_stContains,
    if ($_stCrosses != null) r'_stCrosses': $_stCrosses,
    if ($_stDWithin != null) r'_stDWithin': $_stDWithin,
    if ($_stEquals != null) r'_stEquals': $_stEquals,
    if ($_stIntersects != null) r'_stIntersects': $_stIntersects,
    if ($_stOverlaps != null) r'_stOverlaps': $_stOverlaps,
    if ($_stTouches != null) r'_stTouches': $_stTouches,
    if ($_stWithin != null) r'_stWithin': $_stWithin,
  });

  Input_GeometryComparisonExp._(this._$data);

  factory Input_GeometryComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_cast')) {
      final l$$_cast = data['_cast'];
      result$data['_cast'] = l$$_cast == null
          ? null
          : Input_GeometryCastExp.fromJson((l$$_cast as Map<String, dynamic>));
    }
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as Map<String, dynamic>?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as Map<String, dynamic>?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as Map<String, dynamic>?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as Map<String, dynamic>?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as Map<String, dynamic>?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as Map<String, dynamic>?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>))
          .toList();
    }
    if (data.containsKey('_st3dDWithin')) {
      final l$$_st3dDWithin = data['_st3dDWithin'];
      result$data['_st3dDWithin'] = l$$_st3dDWithin == null
          ? null
          : Input_st_d_within_input.fromJson(
              (l$$_st3dDWithin as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_st3dIntersects')) {
      final l$$_st3dIntersects = data['_st3dIntersects'];
      result$data['_st3dIntersects'] =
          (l$$_st3dIntersects as Map<String, dynamic>?);
    }
    if (data.containsKey('_stContains')) {
      final l$$_stContains = data['_stContains'];
      result$data['_stContains'] = (l$$_stContains as Map<String, dynamic>?);
    }
    if (data.containsKey('_stCrosses')) {
      final l$$_stCrosses = data['_stCrosses'];
      result$data['_stCrosses'] = (l$$_stCrosses as Map<String, dynamic>?);
    }
    if (data.containsKey('_stDWithin')) {
      final l$$_stDWithin = data['_stDWithin'];
      result$data['_stDWithin'] = l$$_stDWithin == null
          ? null
          : Input_st_d_within_input.fromJson(
              (l$$_stDWithin as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_stEquals')) {
      final l$$_stEquals = data['_stEquals'];
      result$data['_stEquals'] = (l$$_stEquals as Map<String, dynamic>?);
    }
    if (data.containsKey('_stIntersects')) {
      final l$$_stIntersects = data['_stIntersects'];
      result$data['_stIntersects'] =
          (l$$_stIntersects as Map<String, dynamic>?);
    }
    if (data.containsKey('_stOverlaps')) {
      final l$$_stOverlaps = data['_stOverlaps'];
      result$data['_stOverlaps'] = (l$$_stOverlaps as Map<String, dynamic>?);
    }
    if (data.containsKey('_stTouches')) {
      final l$$_stTouches = data['_stTouches'];
      result$data['_stTouches'] = (l$$_stTouches as Map<String, dynamic>?);
    }
    if (data.containsKey('_stWithin')) {
      final l$$_stWithin = data['_stWithin'];
      result$data['_stWithin'] = (l$$_stWithin as Map<String, dynamic>?);
    }
    return Input_GeometryComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GeometryCastExp? get $_cast =>
      (_$data['_cast'] as Input_GeometryCastExp?);

  Map<String, dynamic>? get $_eq => (_$data['_eq'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_gt => (_$data['_gt'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_gte => (_$data['_gte'] as Map<String, dynamic>?);

  List<Map<String, dynamic>>? get $_in =>
      (_$data['_in'] as List<Map<String, dynamic>>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  Map<String, dynamic>? get $_lt => (_$data['_lt'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_lte => (_$data['_lte'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_neq => (_$data['_neq'] as Map<String, dynamic>?);

  List<Map<String, dynamic>>? get $_nin =>
      (_$data['_nin'] as List<Map<String, dynamic>>?);

  Input_st_d_within_input? get $_st3dDWithin =>
      (_$data['_st3dDWithin'] as Input_st_d_within_input?);

  Map<String, dynamic>? get $_st3dIntersects =>
      (_$data['_st3dIntersects'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_stContains =>
      (_$data['_stContains'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_stCrosses =>
      (_$data['_stCrosses'] as Map<String, dynamic>?);

  Input_st_d_within_input? get $_stDWithin =>
      (_$data['_stDWithin'] as Input_st_d_within_input?);

  Map<String, dynamic>? get $_stEquals =>
      (_$data['_stEquals'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_stIntersects =>
      (_$data['_stIntersects'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_stOverlaps =>
      (_$data['_stOverlaps'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_stTouches =>
      (_$data['_stTouches'] as Map<String, dynamic>?);

  Map<String, dynamic>? get $_stWithin =>
      (_$data['_stWithin'] as Map<String, dynamic>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_cast')) {
      final l$$_cast = $_cast;
      result$data['_cast'] = l$$_cast?.toJson();
    }
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('_st3dDWithin')) {
      final l$$_st3dDWithin = $_st3dDWithin;
      result$data['_st3dDWithin'] = l$$_st3dDWithin?.toJson();
    }
    if (_$data.containsKey('_st3dIntersects')) {
      final l$$_st3dIntersects = $_st3dIntersects;
      result$data['_st3dIntersects'] = l$$_st3dIntersects;
    }
    if (_$data.containsKey('_stContains')) {
      final l$$_stContains = $_stContains;
      result$data['_stContains'] = l$$_stContains;
    }
    if (_$data.containsKey('_stCrosses')) {
      final l$$_stCrosses = $_stCrosses;
      result$data['_stCrosses'] = l$$_stCrosses;
    }
    if (_$data.containsKey('_stDWithin')) {
      final l$$_stDWithin = $_stDWithin;
      result$data['_stDWithin'] = l$$_stDWithin?.toJson();
    }
    if (_$data.containsKey('_stEquals')) {
      final l$$_stEquals = $_stEquals;
      result$data['_stEquals'] = l$$_stEquals;
    }
    if (_$data.containsKey('_stIntersects')) {
      final l$$_stIntersects = $_stIntersects;
      result$data['_stIntersects'] = l$$_stIntersects;
    }
    if (_$data.containsKey('_stOverlaps')) {
      final l$$_stOverlaps = $_stOverlaps;
      result$data['_stOverlaps'] = l$$_stOverlaps;
    }
    if (_$data.containsKey('_stTouches')) {
      final l$$_stTouches = $_stTouches;
      result$data['_stTouches'] = l$$_stTouches;
    }
    if (_$data.containsKey('_stWithin')) {
      final l$$_stWithin = $_stWithin;
      result$data['_stWithin'] = l$$_stWithin;
    }
    return result$data;
  }

  CopyWith_Input_GeometryComparisonExp<Input_GeometryComparisonExp>
  get copyWith => CopyWith_Input_GeometryComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GeometryComparisonExp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_cast = $_cast;
    final lOther$$_cast = other.$_cast;
    if (_$data.containsKey('_cast') != other._$data.containsKey('_cast')) {
      return false;
    }
    if (l$$_cast != lOther$$_cast) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_isNull = $_isNull;
    final lOther$$_isNull = other.$_isNull;
    if (_$data.containsKey('_isNull') != other._$data.containsKey('_isNull')) {
      return false;
    }
    if (l$$_isNull != lOther$$_isNull) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    final l$$_st3dDWithin = $_st3dDWithin;
    final lOther$$_st3dDWithin = other.$_st3dDWithin;
    if (_$data.containsKey('_st3dDWithin') !=
        other._$data.containsKey('_st3dDWithin')) {
      return false;
    }
    if (l$$_st3dDWithin != lOther$$_st3dDWithin) {
      return false;
    }
    final l$$_st3dIntersects = $_st3dIntersects;
    final lOther$$_st3dIntersects = other.$_st3dIntersects;
    if (_$data.containsKey('_st3dIntersects') !=
        other._$data.containsKey('_st3dIntersects')) {
      return false;
    }
    if (l$$_st3dIntersects != lOther$$_st3dIntersects) {
      return false;
    }
    final l$$_stContains = $_stContains;
    final lOther$$_stContains = other.$_stContains;
    if (_$data.containsKey('_stContains') !=
        other._$data.containsKey('_stContains')) {
      return false;
    }
    if (l$$_stContains != lOther$$_stContains) {
      return false;
    }
    final l$$_stCrosses = $_stCrosses;
    final lOther$$_stCrosses = other.$_stCrosses;
    if (_$data.containsKey('_stCrosses') !=
        other._$data.containsKey('_stCrosses')) {
      return false;
    }
    if (l$$_stCrosses != lOther$$_stCrosses) {
      return false;
    }
    final l$$_stDWithin = $_stDWithin;
    final lOther$$_stDWithin = other.$_stDWithin;
    if (_$data.containsKey('_stDWithin') !=
        other._$data.containsKey('_stDWithin')) {
      return false;
    }
    if (l$$_stDWithin != lOther$$_stDWithin) {
      return false;
    }
    final l$$_stEquals = $_stEquals;
    final lOther$$_stEquals = other.$_stEquals;
    if (_$data.containsKey('_stEquals') !=
        other._$data.containsKey('_stEquals')) {
      return false;
    }
    if (l$$_stEquals != lOther$$_stEquals) {
      return false;
    }
    final l$$_stIntersects = $_stIntersects;
    final lOther$$_stIntersects = other.$_stIntersects;
    if (_$data.containsKey('_stIntersects') !=
        other._$data.containsKey('_stIntersects')) {
      return false;
    }
    if (l$$_stIntersects != lOther$$_stIntersects) {
      return false;
    }
    final l$$_stOverlaps = $_stOverlaps;
    final lOther$$_stOverlaps = other.$_stOverlaps;
    if (_$data.containsKey('_stOverlaps') !=
        other._$data.containsKey('_stOverlaps')) {
      return false;
    }
    if (l$$_stOverlaps != lOther$$_stOverlaps) {
      return false;
    }
    final l$$_stTouches = $_stTouches;
    final lOther$$_stTouches = other.$_stTouches;
    if (_$data.containsKey('_stTouches') !=
        other._$data.containsKey('_stTouches')) {
      return false;
    }
    if (l$$_stTouches != lOther$$_stTouches) {
      return false;
    }
    final l$$_stWithin = $_stWithin;
    final lOther$$_stWithin = other.$_stWithin;
    if (_$data.containsKey('_stWithin') !=
        other._$data.containsKey('_stWithin')) {
      return false;
    }
    if (l$$_stWithin != lOther$$_stWithin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_cast = $_cast;
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_isNull = $_isNull;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    final l$$_st3dDWithin = $_st3dDWithin;
    final l$$_st3dIntersects = $_st3dIntersects;
    final l$$_stContains = $_stContains;
    final l$$_stCrosses = $_stCrosses;
    final l$$_stDWithin = $_stDWithin;
    final l$$_stEquals = $_stEquals;
    final l$$_stIntersects = $_stIntersects;
    final l$$_stOverlaps = $_stOverlaps;
    final l$$_stTouches = $_stTouches;
    final l$$_stWithin = $_stWithin;
    return Object.hashAll([
      _$data.containsKey('_cast') ? l$$_cast : const {},
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
                ? null
                : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_isNull') ? l$$_isNull : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
                ? null
                : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
      _$data.containsKey('_st3dDWithin') ? l$$_st3dDWithin : const {},
      _$data.containsKey('_st3dIntersects') ? l$$_st3dIntersects : const {},
      _$data.containsKey('_stContains') ? l$$_stContains : const {},
      _$data.containsKey('_stCrosses') ? l$$_stCrosses : const {},
      _$data.containsKey('_stDWithin') ? l$$_stDWithin : const {},
      _$data.containsKey('_stEquals') ? l$$_stEquals : const {},
      _$data.containsKey('_stIntersects') ? l$$_stIntersects : const {},
      _$data.containsKey('_stOverlaps') ? l$$_stOverlaps : const {},
      _$data.containsKey('_stTouches') ? l$$_stTouches : const {},
      _$data.containsKey('_stWithin') ? l$$_stWithin : const {},
    ]);
  }
}

abstract class CopyWith_Input_GeometryComparisonExp<TRes> {
  factory CopyWith_Input_GeometryComparisonExp(
    Input_GeometryComparisonExp instance,
    TRes Function(Input_GeometryComparisonExp) then,
  ) = _CopyWithImpl_Input_GeometryComparisonExp;

  factory CopyWith_Input_GeometryComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_GeometryComparisonExp;

  TRes call({
    Input_GeometryCastExp? $_cast,
    Map<String, dynamic>? $_eq,
    Map<String, dynamic>? $_gt,
    Map<String, dynamic>? $_gte,
    List<Map<String, dynamic>>? $_in,
    bool? $_isNull,
    Map<String, dynamic>? $_lt,
    Map<String, dynamic>? $_lte,
    Map<String, dynamic>? $_neq,
    List<Map<String, dynamic>>? $_nin,
    Input_st_d_within_input? $_st3dDWithin,
    Map<String, dynamic>? $_st3dIntersects,
    Map<String, dynamic>? $_stContains,
    Map<String, dynamic>? $_stCrosses,
    Input_st_d_within_input? $_stDWithin,
    Map<String, dynamic>? $_stEquals,
    Map<String, dynamic>? $_stIntersects,
    Map<String, dynamic>? $_stOverlaps,
    Map<String, dynamic>? $_stTouches,
    Map<String, dynamic>? $_stWithin,
  });
  CopyWith_Input_GeometryCastExp<TRes> get $_cast;
  CopyWith_Input_st_d_within_input<TRes> get $_st3dDWithin;
  CopyWith_Input_st_d_within_input<TRes> get $_stDWithin;
}

class _CopyWithImpl_Input_GeometryComparisonExp<TRes>
    implements CopyWith_Input_GeometryComparisonExp<TRes> {
  _CopyWithImpl_Input_GeometryComparisonExp(this._instance, this._then);

  final Input_GeometryComparisonExp _instance;

  final TRes Function(Input_GeometryComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_cast = _undefined,
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_isNull = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
    Object? $_st3dDWithin = _undefined,
    Object? $_st3dIntersects = _undefined,
    Object? $_stContains = _undefined,
    Object? $_stCrosses = _undefined,
    Object? $_stDWithin = _undefined,
    Object? $_stEquals = _undefined,
    Object? $_stIntersects = _undefined,
    Object? $_stOverlaps = _undefined,
    Object? $_stTouches = _undefined,
    Object? $_stWithin = _undefined,
  }) => _then(
    Input_GeometryComparisonExp._({
      ..._instance._$data,
      if ($_cast != _undefined) '_cast': ($_cast as Input_GeometryCastExp?),
      if ($_eq != _undefined) '_eq': ($_eq as Map<String, dynamic>?),
      if ($_gt != _undefined) '_gt': ($_gt as Map<String, dynamic>?),
      if ($_gte != _undefined) '_gte': ($_gte as Map<String, dynamic>?),
      if ($_in != _undefined) '_in': ($_in as List<Map<String, dynamic>>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as Map<String, dynamic>?),
      if ($_lte != _undefined) '_lte': ($_lte as Map<String, dynamic>?),
      if ($_neq != _undefined) '_neq': ($_neq as Map<String, dynamic>?),
      if ($_nin != _undefined) '_nin': ($_nin as List<Map<String, dynamic>>?),
      if ($_st3dDWithin != _undefined)
        '_st3dDWithin': ($_st3dDWithin as Input_st_d_within_input?),
      if ($_st3dIntersects != _undefined)
        '_st3dIntersects': ($_st3dIntersects as Map<String, dynamic>?),
      if ($_stContains != _undefined)
        '_stContains': ($_stContains as Map<String, dynamic>?),
      if ($_stCrosses != _undefined)
        '_stCrosses': ($_stCrosses as Map<String, dynamic>?),
      if ($_stDWithin != _undefined)
        '_stDWithin': ($_stDWithin as Input_st_d_within_input?),
      if ($_stEquals != _undefined)
        '_stEquals': ($_stEquals as Map<String, dynamic>?),
      if ($_stIntersects != _undefined)
        '_stIntersects': ($_stIntersects as Map<String, dynamic>?),
      if ($_stOverlaps != _undefined)
        '_stOverlaps': ($_stOverlaps as Map<String, dynamic>?),
      if ($_stTouches != _undefined)
        '_stTouches': ($_stTouches as Map<String, dynamic>?),
      if ($_stWithin != _undefined)
        '_stWithin': ($_stWithin as Map<String, dynamic>?),
    }),
  );

  CopyWith_Input_GeometryCastExp<TRes> get $_cast {
    final local$$_cast = _instance.$_cast;
    return local$$_cast == null
        ? CopyWith_Input_GeometryCastExp.stub(_then(_instance))
        : CopyWith_Input_GeometryCastExp(local$$_cast, (e) => call($_cast: e));
  }

  CopyWith_Input_st_d_within_input<TRes> get $_st3dDWithin {
    final local$$_st3dDWithin = _instance.$_st3dDWithin;
    return local$$_st3dDWithin == null
        ? CopyWith_Input_st_d_within_input.stub(_then(_instance))
        : CopyWith_Input_st_d_within_input(
            local$$_st3dDWithin,
            (e) => call($_st3dDWithin: e),
          );
  }

  CopyWith_Input_st_d_within_input<TRes> get $_stDWithin {
    final local$$_stDWithin = _instance.$_stDWithin;
    return local$$_stDWithin == null
        ? CopyWith_Input_st_d_within_input.stub(_then(_instance))
        : CopyWith_Input_st_d_within_input(
            local$$_stDWithin,
            (e) => call($_stDWithin: e),
          );
  }
}

class _CopyWithStubImpl_Input_GeometryComparisonExp<TRes>
    implements CopyWith_Input_GeometryComparisonExp<TRes> {
  _CopyWithStubImpl_Input_GeometryComparisonExp(this._res);

  TRes _res;

  call({
    Input_GeometryCastExp? $_cast,
    Map<String, dynamic>? $_eq,
    Map<String, dynamic>? $_gt,
    Map<String, dynamic>? $_gte,
    List<Map<String, dynamic>>? $_in,
    bool? $_isNull,
    Map<String, dynamic>? $_lt,
    Map<String, dynamic>? $_lte,
    Map<String, dynamic>? $_neq,
    List<Map<String, dynamic>>? $_nin,
    Input_st_d_within_input? $_st3dDWithin,
    Map<String, dynamic>? $_st3dIntersects,
    Map<String, dynamic>? $_stContains,
    Map<String, dynamic>? $_stCrosses,
    Input_st_d_within_input? $_stDWithin,
    Map<String, dynamic>? $_stEquals,
    Map<String, dynamic>? $_stIntersects,
    Map<String, dynamic>? $_stOverlaps,
    Map<String, dynamic>? $_stTouches,
    Map<String, dynamic>? $_stWithin,
  }) => _res;

  CopyWith_Input_GeometryCastExp<TRes> get $_cast =>
      CopyWith_Input_GeometryCastExp.stub(_res);

  CopyWith_Input_st_d_within_input<TRes> get $_st3dDWithin =>
      CopyWith_Input_st_d_within_input.stub(_res);

  CopyWith_Input_st_d_within_input<TRes> get $_stDWithin =>
      CopyWith_Input_st_d_within_input.stub(_res);
}

class Input_GroupsAggregateBoolExp {
  factory Input_GroupsAggregateBoolExp({
    Input_groupsAggregateBoolExpCount? count,
  }) => Input_GroupsAggregateBoolExp._({if (count != null) r'count': count});

  Input_GroupsAggregateBoolExp._(this._$data);

  factory Input_GroupsAggregateBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = l$count == null
          ? null
          : Input_groupsAggregateBoolExpCount.fromJson(
              (l$count as Map<String, dynamic>),
            );
    }
    return Input_GroupsAggregateBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_groupsAggregateBoolExpCount? get count =>
      (_$data['count'] as Input_groupsAggregateBoolExpCount?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = l$count?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_GroupsAggregateBoolExp<Input_GroupsAggregateBoolExp>
  get copyWith => CopyWith_Input_GroupsAggregateBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsAggregateBoolExp ||
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

abstract class CopyWith_Input_GroupsAggregateBoolExp<TRes> {
  factory CopyWith_Input_GroupsAggregateBoolExp(
    Input_GroupsAggregateBoolExp instance,
    TRes Function(Input_GroupsAggregateBoolExp) then,
  ) = _CopyWithImpl_Input_GroupsAggregateBoolExp;

  factory CopyWith_Input_GroupsAggregateBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsAggregateBoolExp;

  TRes call({Input_groupsAggregateBoolExpCount? count});
  CopyWith_Input_groupsAggregateBoolExpCount<TRes> get count;
}

class _CopyWithImpl_Input_GroupsAggregateBoolExp<TRes>
    implements CopyWith_Input_GroupsAggregateBoolExp<TRes> {
  _CopyWithImpl_Input_GroupsAggregateBoolExp(this._instance, this._then);

  final Input_GroupsAggregateBoolExp _instance;

  final TRes Function(Input_GroupsAggregateBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) => _then(
    Input_GroupsAggregateBoolExp._({
      ..._instance._$data,
      if (count != _undefined)
        'count': (count as Input_groupsAggregateBoolExpCount?),
    }),
  );

  CopyWith_Input_groupsAggregateBoolExpCount<TRes> get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith_Input_groupsAggregateBoolExpCount.stub(_then(_instance))
        : CopyWith_Input_groupsAggregateBoolExpCount(
            local$count,
            (e) => call(count: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsAggregateBoolExp<TRes>
    implements CopyWith_Input_GroupsAggregateBoolExp<TRes> {
  _CopyWithStubImpl_Input_GroupsAggregateBoolExp(this._res);

  TRes _res;

  call({Input_groupsAggregateBoolExpCount? count}) => _res;

  CopyWith_Input_groupsAggregateBoolExpCount<TRes> get count =>
      CopyWith_Input_groupsAggregateBoolExpCount.stub(_res);
}

class Input_GroupsAggregateOrderBy {
  factory Input_GroupsAggregateOrderBy({
    Input_GroupsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_GroupsMaxOrderBy? max,
    Input_GroupsMinOrderBy? min,
    Input_GroupsStddevOrderBy? stddev,
    Input_GroupsStddevPopOrderBy? stddevPop,
    Input_GroupsStddevSampOrderBy? stddevSamp,
    Input_GroupsSumOrderBy? sum,
    Input_GroupsVarPopOrderBy? varPop,
    Input_GroupsVarSampOrderBy? varSamp,
    Input_GroupsVarianceOrderBy? variance,
  }) => Input_GroupsAggregateOrderBy._({
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

  Input_GroupsAggregateOrderBy._(this._$data);

  factory Input_GroupsAggregateOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avg')) {
      final l$avg = data['avg'];
      result$data['avg'] = l$avg == null
          ? null
          : Input_GroupsAvgOrderBy.fromJson((l$avg as Map<String, dynamic>));
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
          : Input_GroupsMaxOrderBy.fromJson((l$max as Map<String, dynamic>));
    }
    if (data.containsKey('min')) {
      final l$min = data['min'];
      result$data['min'] = l$min == null
          ? null
          : Input_GroupsMinOrderBy.fromJson((l$min as Map<String, dynamic>));
    }
    if (data.containsKey('stddev')) {
      final l$stddev = data['stddev'];
      result$data['stddev'] = l$stddev == null
          ? null
          : Input_GroupsStddevOrderBy.fromJson(
              (l$stddev as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevPop')) {
      final l$stddevPop = data['stddevPop'];
      result$data['stddevPop'] = l$stddevPop == null
          ? null
          : Input_GroupsStddevPopOrderBy.fromJson(
              (l$stddevPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('stddevSamp')) {
      final l$stddevSamp = data['stddevSamp'];
      result$data['stddevSamp'] = l$stddevSamp == null
          ? null
          : Input_GroupsStddevSampOrderBy.fromJson(
              (l$stddevSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('sum')) {
      final l$sum = data['sum'];
      result$data['sum'] = l$sum == null
          ? null
          : Input_GroupsSumOrderBy.fromJson((l$sum as Map<String, dynamic>));
    }
    if (data.containsKey('varPop')) {
      final l$varPop = data['varPop'];
      result$data['varPop'] = l$varPop == null
          ? null
          : Input_GroupsVarPopOrderBy.fromJson(
              (l$varPop as Map<String, dynamic>),
            );
    }
    if (data.containsKey('varSamp')) {
      final l$varSamp = data['varSamp'];
      result$data['varSamp'] = l$varSamp == null
          ? null
          : Input_GroupsVarSampOrderBy.fromJson(
              (l$varSamp as Map<String, dynamic>),
            );
    }
    if (data.containsKey('variance')) {
      final l$variance = data['variance'];
      result$data['variance'] = l$variance == null
          ? null
          : Input_GroupsVarianceOrderBy.fromJson(
              (l$variance as Map<String, dynamic>),
            );
    }
    return Input_GroupsAggregateOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_GroupsAvgOrderBy? get avg => (_$data['avg'] as Input_GroupsAvgOrderBy?);

  Enum_OrderBy? get count => (_$data['count'] as Enum_OrderBy?);

  Input_GroupsMaxOrderBy? get max => (_$data['max'] as Input_GroupsMaxOrderBy?);

  Input_GroupsMinOrderBy? get min => (_$data['min'] as Input_GroupsMinOrderBy?);

  Input_GroupsStddevOrderBy? get stddev =>
      (_$data['stddev'] as Input_GroupsStddevOrderBy?);

  Input_GroupsStddevPopOrderBy? get stddevPop =>
      (_$data['stddevPop'] as Input_GroupsStddevPopOrderBy?);

  Input_GroupsStddevSampOrderBy? get stddevSamp =>
      (_$data['stddevSamp'] as Input_GroupsStddevSampOrderBy?);

  Input_GroupsSumOrderBy? get sum => (_$data['sum'] as Input_GroupsSumOrderBy?);

  Input_GroupsVarPopOrderBy? get varPop =>
      (_$data['varPop'] as Input_GroupsVarPopOrderBy?);

  Input_GroupsVarSampOrderBy? get varSamp =>
      (_$data['varSamp'] as Input_GroupsVarSampOrderBy?);

  Input_GroupsVarianceOrderBy? get variance =>
      (_$data['variance'] as Input_GroupsVarianceOrderBy?);

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

  CopyWith_Input_GroupsAggregateOrderBy<Input_GroupsAggregateOrderBy>
  get copyWith => CopyWith_Input_GroupsAggregateOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsAggregateOrderBy ||
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

abstract class CopyWith_Input_GroupsAggregateOrderBy<TRes> {
  factory CopyWith_Input_GroupsAggregateOrderBy(
    Input_GroupsAggregateOrderBy instance,
    TRes Function(Input_GroupsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsAggregateOrderBy;

  factory CopyWith_Input_GroupsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsAggregateOrderBy;

  TRes call({
    Input_GroupsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_GroupsMaxOrderBy? max,
    Input_GroupsMinOrderBy? min,
    Input_GroupsStddevOrderBy? stddev,
    Input_GroupsStddevPopOrderBy? stddevPop,
    Input_GroupsStddevSampOrderBy? stddevSamp,
    Input_GroupsSumOrderBy? sum,
    Input_GroupsVarPopOrderBy? varPop,
    Input_GroupsVarSampOrderBy? varSamp,
    Input_GroupsVarianceOrderBy? variance,
  });
  CopyWith_Input_GroupsAvgOrderBy<TRes> get avg;
  CopyWith_Input_GroupsMaxOrderBy<TRes> get max;
  CopyWith_Input_GroupsMinOrderBy<TRes> get min;
  CopyWith_Input_GroupsStddevOrderBy<TRes> get stddev;
  CopyWith_Input_GroupsStddevPopOrderBy<TRes> get stddevPop;
  CopyWith_Input_GroupsStddevSampOrderBy<TRes> get stddevSamp;
  CopyWith_Input_GroupsSumOrderBy<TRes> get sum;
  CopyWith_Input_GroupsVarPopOrderBy<TRes> get varPop;
  CopyWith_Input_GroupsVarSampOrderBy<TRes> get varSamp;
  CopyWith_Input_GroupsVarianceOrderBy<TRes> get variance;
}

class _CopyWithImpl_Input_GroupsAggregateOrderBy<TRes>
    implements CopyWith_Input_GroupsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsAggregateOrderBy(this._instance, this._then);

  final Input_GroupsAggregateOrderBy _instance;

  final TRes Function(Input_GroupsAggregateOrderBy) _then;

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
    Input_GroupsAggregateOrderBy._({
      ..._instance._$data,
      if (avg != _undefined) 'avg': (avg as Input_GroupsAvgOrderBy?),
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_GroupsMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_GroupsMinOrderBy?),
      if (stddev != _undefined)
        'stddev': (stddev as Input_GroupsStddevOrderBy?),
      if (stddevPop != _undefined)
        'stddevPop': (stddevPop as Input_GroupsStddevPopOrderBy?),
      if (stddevSamp != _undefined)
        'stddevSamp': (stddevSamp as Input_GroupsStddevSampOrderBy?),
      if (sum != _undefined) 'sum': (sum as Input_GroupsSumOrderBy?),
      if (varPop != _undefined)
        'varPop': (varPop as Input_GroupsVarPopOrderBy?),
      if (varSamp != _undefined)
        'varSamp': (varSamp as Input_GroupsVarSampOrderBy?),
      if (variance != _undefined)
        'variance': (variance as Input_GroupsVarianceOrderBy?),
    }),
  );

  CopyWith_Input_GroupsAvgOrderBy<TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith_Input_GroupsAvgOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsAvgOrderBy(local$avg, (e) => call(avg: e));
  }

  CopyWith_Input_GroupsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_GroupsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsMaxOrderBy(local$max, (e) => call(max: e));
  }

  CopyWith_Input_GroupsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_GroupsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsMinOrderBy(local$min, (e) => call(min: e));
  }

  CopyWith_Input_GroupsStddevOrderBy<TRes> get stddev {
    final local$stddev = _instance.stddev;
    return local$stddev == null
        ? CopyWith_Input_GroupsStddevOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsStddevOrderBy(
            local$stddev,
            (e) => call(stddev: e),
          );
  }

  CopyWith_Input_GroupsStddevPopOrderBy<TRes> get stddevPop {
    final local$stddevPop = _instance.stddevPop;
    return local$stddevPop == null
        ? CopyWith_Input_GroupsStddevPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsStddevPopOrderBy(
            local$stddevPop,
            (e) => call(stddevPop: e),
          );
  }

  CopyWith_Input_GroupsStddevSampOrderBy<TRes> get stddevSamp {
    final local$stddevSamp = _instance.stddevSamp;
    return local$stddevSamp == null
        ? CopyWith_Input_GroupsStddevSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsStddevSampOrderBy(
            local$stddevSamp,
            (e) => call(stddevSamp: e),
          );
  }

  CopyWith_Input_GroupsSumOrderBy<TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith_Input_GroupsSumOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsSumOrderBy(local$sum, (e) => call(sum: e));
  }

  CopyWith_Input_GroupsVarPopOrderBy<TRes> get varPop {
    final local$varPop = _instance.varPop;
    return local$varPop == null
        ? CopyWith_Input_GroupsVarPopOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsVarPopOrderBy(
            local$varPop,
            (e) => call(varPop: e),
          );
  }

  CopyWith_Input_GroupsVarSampOrderBy<TRes> get varSamp {
    final local$varSamp = _instance.varSamp;
    return local$varSamp == null
        ? CopyWith_Input_GroupsVarSampOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsVarSampOrderBy(
            local$varSamp,
            (e) => call(varSamp: e),
          );
  }

  CopyWith_Input_GroupsVarianceOrderBy<TRes> get variance {
    final local$variance = _instance.variance;
    return local$variance == null
        ? CopyWith_Input_GroupsVarianceOrderBy.stub(_then(_instance))
        : CopyWith_Input_GroupsVarianceOrderBy(
            local$variance,
            (e) => call(variance: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsAggregateOrderBy<TRes>
    implements CopyWith_Input_GroupsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Input_GroupsAvgOrderBy? avg,
    Enum_OrderBy? count,
    Input_GroupsMaxOrderBy? max,
    Input_GroupsMinOrderBy? min,
    Input_GroupsStddevOrderBy? stddev,
    Input_GroupsStddevPopOrderBy? stddevPop,
    Input_GroupsStddevSampOrderBy? stddevSamp,
    Input_GroupsSumOrderBy? sum,
    Input_GroupsVarPopOrderBy? varPop,
    Input_GroupsVarSampOrderBy? varSamp,
    Input_GroupsVarianceOrderBy? variance,
  }) => _res;

  CopyWith_Input_GroupsAvgOrderBy<TRes> get avg =>
      CopyWith_Input_GroupsAvgOrderBy.stub(_res);

  CopyWith_Input_GroupsMaxOrderBy<TRes> get max =>
      CopyWith_Input_GroupsMaxOrderBy.stub(_res);

  CopyWith_Input_GroupsMinOrderBy<TRes> get min =>
      CopyWith_Input_GroupsMinOrderBy.stub(_res);

  CopyWith_Input_GroupsStddevOrderBy<TRes> get stddev =>
      CopyWith_Input_GroupsStddevOrderBy.stub(_res);

  CopyWith_Input_GroupsStddevPopOrderBy<TRes> get stddevPop =>
      CopyWith_Input_GroupsStddevPopOrderBy.stub(_res);

  CopyWith_Input_GroupsStddevSampOrderBy<TRes> get stddevSamp =>
      CopyWith_Input_GroupsStddevSampOrderBy.stub(_res);

  CopyWith_Input_GroupsSumOrderBy<TRes> get sum =>
      CopyWith_Input_GroupsSumOrderBy.stub(_res);

  CopyWith_Input_GroupsVarPopOrderBy<TRes> get varPop =>
      CopyWith_Input_GroupsVarPopOrderBy.stub(_res);

  CopyWith_Input_GroupsVarSampOrderBy<TRes> get varSamp =>
      CopyWith_Input_GroupsVarSampOrderBy.stub(_res);

  CopyWith_Input_GroupsVarianceOrderBy<TRes> get variance =>
      CopyWith_Input_GroupsVarianceOrderBy.stub(_res);
}

class Input_GroupsArrRelInsertInput {
  factory Input_GroupsArrRelInsertInput({
    required List<Input_GroupsInsertInput> data,
    Input_GroupsOnConflict? onConflict,
  }) => Input_GroupsArrRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_GroupsArrRelInsertInput._(this._$data);

  factory Input_GroupsArrRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = (l$data as List<dynamic>)
        .map(
          (e) => Input_GroupsInsertInput.fromJson((e as Map<String, dynamic>)),
        )
        .toList();
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_GroupsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_GroupsArrRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_GroupsInsertInput> get data =>
      (_$data['data'] as List<Input_GroupsInsertInput>);

  Input_GroupsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_GroupsOnConflict?);

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

  CopyWith_Input_GroupsArrRelInsertInput<Input_GroupsArrRelInsertInput>
  get copyWith => CopyWith_Input_GroupsArrRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsArrRelInsertInput ||
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

abstract class CopyWith_Input_GroupsArrRelInsertInput<TRes> {
  factory CopyWith_Input_GroupsArrRelInsertInput(
    Input_GroupsArrRelInsertInput instance,
    TRes Function(Input_GroupsArrRelInsertInput) then,
  ) = _CopyWithImpl_Input_GroupsArrRelInsertInput;

  factory CopyWith_Input_GroupsArrRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsArrRelInsertInput;

  TRes call({
    List<Input_GroupsInsertInput>? data,
    Input_GroupsOnConflict? onConflict,
  });
  TRes data(
    Iterable<Input_GroupsInsertInput> Function(
      Iterable<CopyWith_Input_GroupsInsertInput<Input_GroupsInsertInput>>,
    )
    _fn,
  );
  CopyWith_Input_GroupsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_GroupsArrRelInsertInput<TRes>
    implements CopyWith_Input_GroupsArrRelInsertInput<TRes> {
  _CopyWithImpl_Input_GroupsArrRelInsertInput(this._instance, this._then);

  final Input_GroupsArrRelInsertInput _instance;

  final TRes Function(Input_GroupsArrRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_GroupsArrRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as List<Input_GroupsInsertInput>),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_GroupsOnConflict?),
        }),
      );

  TRes data(
    Iterable<Input_GroupsInsertInput> Function(
      Iterable<CopyWith_Input_GroupsInsertInput<Input_GroupsInsertInput>>,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data.map((e) => CopyWith_Input_GroupsInsertInput(e, (i) => i)),
    ).toList(),
  );

  CopyWith_Input_GroupsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_GroupsOnConflict.stub(_then(_instance))
        : CopyWith_Input_GroupsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_GroupsArrRelInsertInput<TRes>
    implements CopyWith_Input_GroupsArrRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_GroupsArrRelInsertInput(this._res);

  TRes _res;

  call({
    List<Input_GroupsInsertInput>? data,
    Input_GroupsOnConflict? onConflict,
  }) => _res;

  data(_fn) => _res;

  CopyWith_Input_GroupsOnConflict<TRes> get onConflict =>
      CopyWith_Input_GroupsOnConflict.stub(_res);
}

class Input_GroupsAvgOrderBy {
  factory Input_GroupsAvgOrderBy({Enum_OrderBy? color}) =>
      Input_GroupsAvgOrderBy._({if (color != null) r'color': color});

  Input_GroupsAvgOrderBy._(this._$data);

  factory Input_GroupsAvgOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson_Enum_OrderBy((l$color as String));
    }
    return Input_GroupsAvgOrderBy._(result$data);
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

  CopyWith_Input_GroupsAvgOrderBy<Input_GroupsAvgOrderBy> get copyWith =>
      CopyWith_Input_GroupsAvgOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsAvgOrderBy || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_GroupsAvgOrderBy<TRes> {
  factory CopyWith_Input_GroupsAvgOrderBy(
    Input_GroupsAvgOrderBy instance,
    TRes Function(Input_GroupsAvgOrderBy) then,
  ) = _CopyWithImpl_Input_GroupsAvgOrderBy;

  factory CopyWith_Input_GroupsAvgOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_GroupsAvgOrderBy;

  TRes call({Enum_OrderBy? color});
}

class _CopyWithImpl_Input_GroupsAvgOrderBy<TRes>
    implements CopyWith_Input_GroupsAvgOrderBy<TRes> {
  _CopyWithImpl_Input_GroupsAvgOrderBy(this._instance, this._then);

  final Input_GroupsAvgOrderBy _instance;

  final TRes Function(Input_GroupsAvgOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) => _then(
    Input_GroupsAvgOrderBy._({
      ..._instance._$data,
      if (color != _undefined) 'color': (color as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_GroupsAvgOrderBy<TRes>
    implements CopyWith_Input_GroupsAvgOrderBy<TRes> {
  _CopyWithStubImpl_Input_GroupsAvgOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? color}) => _res;
}

class Input_GroupsBoolExp {
  factory Input_GroupsBoolExp({
    List<Input_GroupsBoolExp>? $_and,
    Input_GroupsBoolExp? $_not,
    List<Input_GroupsBoolExp>? $_or,
    Input_AuthUsersAdminOnBoolExp? adminUsers,
    Input_StringComparisonExp? blurhash,
    Input_BigintComparisonExp? color,
    Input_HistoryMeetingsBoolExp? defaultMeeting,
    Input_UuidComparisonExp? defaultMeetingId,
    Input_HistoryEditHistoryBoolExp? editHistroy,
    Input_HistoryEditHistoryAggregateBoolExp? editHistroyAggregate,
    Input_UuidComparisonExp? id,
    Input_HistoryLatestEditsBoolExp? lastEdit,
    Input_HistoryMeetingsBoolExp? meetings,
    Input_StringComparisonExp? name,
    Input_PersonsGroupsBoolExp? persons,
    Input_TimestamptzComparisonExp? photoUpdatedAt,
    Input_ServicesBoolExp? service,
    Input_UuidComparisonExp? serviceId,
    Input_BooleanComparisonExp? userCanEdit,
    Input_DaterangeComparisonExp? validity,
  }) => Input_GroupsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (adminUsers != null) r'adminUsers': adminUsers,
    if (blurhash != null) r'blurhash': blurhash,
    if (color != null) r'color': color,
    if (defaultMeeting != null) r'defaultMeeting': defaultMeeting,
    if (defaultMeetingId != null) r'defaultMeetingId': defaultMeetingId,
    if (editHistroy != null) r'editHistroy': editHistroy,
    if (editHistroyAggregate != null)
      r'editHistroyAggregate': editHistroyAggregate,
    if (id != null) r'id': id,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (meetings != null) r'meetings': meetings,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (service != null) r'service': service,
    if (serviceId != null) r'serviceId': serviceId,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
    if (validity != null) r'validity': validity,
  });

  Input_GroupsBoolExp._(this._$data);

  factory Input_GroupsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_GroupsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_GroupsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_GroupsBoolExp.fromJson((e as Map<String, dynamic>)),
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
    if (data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = data['defaultMeeting'];
      result$data['defaultMeeting'] = l$defaultMeeting == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$defaultMeeting as Map<String, dynamic>),
            );
    }
    if (data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = data['defaultMeetingId'];
      result$data['defaultMeetingId'] = l$defaultMeetingId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$defaultMeetingId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistroy')) {
      final l$editHistroy = data['editHistroy'];
      result$data['editHistroy'] = l$editHistroy == null
          ? null
          : Input_HistoryEditHistoryBoolExp.fromJson(
              (l$editHistroy as Map<String, dynamic>),
            );
    }
    if (data.containsKey('editHistroyAggregate')) {
      final l$editHistroyAggregate = data['editHistroyAggregate'];
      result$data['editHistroyAggregate'] = l$editHistroyAggregate == null
          ? null
          : Input_HistoryEditHistoryAggregateBoolExp.fromJson(
              (l$editHistroyAggregate as Map<String, dynamic>),
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
    if (data.containsKey('meetings')) {
      final l$meetings = data['meetings'];
      result$data['meetings'] = l$meetings == null
          ? null
          : Input_HistoryMeetingsBoolExp.fromJson(
              (l$meetings as Map<String, dynamic>),
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
          : Input_PersonsGroupsBoolExp.fromJson(
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
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$serviceId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('validity')) {
      final l$validity = data['validity'];
      result$data['validity'] = l$validity == null
          ? null
          : Input_DaterangeComparisonExp.fromJson(
              (l$validity as Map<String, dynamic>),
            );
    }
    return Input_GroupsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_GroupsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_GroupsBoolExp>?);

  Input_GroupsBoolExp? get $_not => (_$data['_not'] as Input_GroupsBoolExp?);

  List<Input_GroupsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_GroupsBoolExp>?);

  Input_AuthUsersAdminOnBoolExp? get adminUsers =>
      (_$data['adminUsers'] as Input_AuthUsersAdminOnBoolExp?);

  Input_StringComparisonExp? get blurhash =>
      (_$data['blurhash'] as Input_StringComparisonExp?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_HistoryMeetingsBoolExp? get defaultMeeting =>
      (_$data['defaultMeeting'] as Input_HistoryMeetingsBoolExp?);

  Input_UuidComparisonExp? get defaultMeetingId =>
      (_$data['defaultMeetingId'] as Input_UuidComparisonExp?);

  Input_HistoryEditHistoryBoolExp? get editHistroy =>
      (_$data['editHistroy'] as Input_HistoryEditHistoryBoolExp?);

  Input_HistoryEditHistoryAggregateBoolExp? get editHistroyAggregate =>
      (_$data['editHistroyAggregate']
          as Input_HistoryEditHistoryAggregateBoolExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_HistoryLatestEditsBoolExp? get lastEdit =>
      (_$data['lastEdit'] as Input_HistoryLatestEditsBoolExp?);

  Input_HistoryMeetingsBoolExp? get meetings =>
      (_$data['meetings'] as Input_HistoryMeetingsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_PersonsGroupsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsGroupsBoolExp?);

  Input_TimestamptzComparisonExp? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_TimestamptzComparisonExp?);

  Input_ServicesBoolExp? get service =>
      (_$data['service'] as Input_ServicesBoolExp?);

  Input_UuidComparisonExp? get serviceId =>
      (_$data['serviceId'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get userCanEdit =>
      (_$data['userCanEdit'] as Input_BooleanComparisonExp?);

  Input_DaterangeComparisonExp? get validity =>
      (_$data['validity'] as Input_DaterangeComparisonExp?);

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
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('defaultMeeting')) {
      final l$defaultMeeting = defaultMeeting;
      result$data['defaultMeeting'] = l$defaultMeeting?.toJson();
    }
    if (_$data.containsKey('defaultMeetingId')) {
      final l$defaultMeetingId = defaultMeetingId;
      result$data['defaultMeetingId'] = l$defaultMeetingId?.toJson();
    }
    if (_$data.containsKey('editHistroy')) {
      final l$editHistroy = editHistroy;
      result$data['editHistroy'] = l$editHistroy?.toJson();
    }
    if (_$data.containsKey('editHistroyAggregate')) {
      final l$editHistroyAggregate = editHistroyAggregate;
      result$data['editHistroyAggregate'] = l$editHistroyAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('meetings')) {
      final l$meetings = meetings;
      result$data['meetings'] = l$meetings?.toJson();
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
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    if (_$data.containsKey('validity')) {
      final l$validity = validity;
      result$data['validity'] = l$validity?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_GroupsBoolExp<Input_GroupsBoolExp> get copyWith =>
      CopyWith_Input_GroupsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_GroupsBoolExp || runtimeType != other.runtimeType) {
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
    final l$defaultMeeting = defaultMeeting;
    final lOther$defaultMeeting = other.defaultMeeting;
    if (_$data.containsKey('defaultMeeting') !=
        other._$data.containsKey('defaultMeeting')) {
      return false;
    }
    if (l$defaultMeeting != lOther$defaultMeeting) {
      return false;
    }
    final l$defaultMeetingId = defaultMeetingId;
    final lOther$defaultMeetingId = other.defaultMeetingId;
    if (_$data.containsKey('defaultMeetingId') !=
        other._$data.containsKey('defaultMeetingId')) {
      return false;
    }
    if (l$defaultMeetingId != lOther$defaultMeetingId) {
      return false;
    }
    final l$editHistroy = editHistroy;
    final lOther$editHistroy = other.editHistroy;
    if (_$data.containsKey('editHistroy') !=
        other._$data.containsKey('editHistroy')) {
      return false;
    }
    if (l$editHistroy != lOther$editHistroy) {
      return false;
    }
    final l$editHistroyAggregate = editHistroyAggregate;
    final lOther$editHistroyAggregate = other.editHistroyAggregate;
    if (_$data.containsKey('editHistroyAggregate') !=
        other._$data.containsKey('editHistroyAggregate')) {
      return false;
    }
    if (l$editHistroyAggregate != lOther$editHistroyAggregate) {
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
    final l$meetings = meetings;
    final lOther$meetings = other.meetings;
    if (_$data.containsKey('meetings') !=
        other._$data.containsKey('meetings')) {
      return false;
    }
    if (l$meetings != lOther$meetings) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$userCanEdit = userCanEdit;
    final lOther$userCanEdit = other.userCanEdit;
    if (_$data.containsKey('userCanEdit') !=
        other._$data.containsKey('userCanEdit')) {
      return false;
    }
    if (l$userCanEdit != lOther$userCanEdit) {
      return false;
    }
    final l$validity = validity;
    final lOther$validity = other.validity;
    if (_$data.containsKey('validity') !=
        other._$data.containsKey('validity')) {
      return false;
    }
    if (l$validity != lOther$validity) {
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
    final l$blurhash = blurhash;
    final l$color = color;
    final l$defaultMeeting = defaultMeeting;
    final l$defaultMeetingId = defaultMeetingId;
    final l$editHistroy = editHistroy;
    final l$editHistroyAggregate = editHistroyAggregate;
    final l$id = id;
    final l$lastEdit = lastEdit;
    final l$meetings = meetings;
    final l$name = name;
    final l$persons = persons;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$service = service;
    final l$serviceId = serviceId;
    final l$userCanEdit = userCanEdit;
    final l$validity = validity;
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
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('defaultMeeting') ? l$defaultMeeting : const {},
      _$data.containsKey('defaultMeetingId') ? l$defaultMeetingId : const {},
      _$data.containsKey('editHistroy') ? l$editHistroy : const {},
      _$data.containsKey('editHistroyAggregate')
          ? l$editHistroyAggregate
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('meetings') ? l$meetings : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
      _$data.containsKey('validity') ? l$validity : const {},
    ]);
  }
}
