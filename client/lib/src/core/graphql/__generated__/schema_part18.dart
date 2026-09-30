// Part 18 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_DateComparisonExp<TRes> {
  factory CopyWith_Input_DateComparisonExp(
    Input_DateComparisonExp instance,
    TRes Function(Input_DateComparisonExp) then,
  ) = _CopyWithImpl_Input_DateComparisonExp;

  factory CopyWith_Input_DateComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DateComparisonExp;

  TRes call({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  });
}

class _CopyWithImpl_Input_DateComparisonExp<TRes>
    implements CopyWith_Input_DateComparisonExp<TRes> {
  _CopyWithImpl_Input_DateComparisonExp(this._instance, this._then);

  final Input_DateComparisonExp _instance;

  final TRes Function(Input_DateComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_isNull = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) => _then(
    Input_DateComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as DateTime?),
      if ($_gt != _undefined) '_gt': ($_gt as DateTime?),
      if ($_gte != _undefined) '_gte': ($_gte as DateTime?),
      if ($_in != _undefined) '_in': ($_in as List<DateTime>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as DateTime?),
      if ($_lte != _undefined) '_lte': ($_lte as DateTime?),
      if ($_neq != _undefined) '_neq': ($_neq as DateTime?),
      if ($_nin != _undefined) '_nin': ($_nin as List<DateTime>?),
    }),
  );
}

class _CopyWithStubImpl_Input_DateComparisonExp<TRes>
    implements CopyWith_Input_DateComparisonExp<TRes> {
  _CopyWithStubImpl_Input_DateComparisonExp(this._res);

  TRes _res;

  call({
    DateTime? $_eq,
    DateTime? $_gt,
    DateTime? $_gte,
    List<DateTime>? $_in,
    bool? $_isNull,
    DateTime? $_lt,
    DateTime? $_lte,
    DateTime? $_neq,
    List<DateTime>? $_nin,
  }) => _res;
}

class Input_DaterangeComparisonExp {
  factory Input_DaterangeComparisonExp({
    DateTimeRange? $_eq,
    DateTimeRange? $_gt,
    DateTimeRange? $_gte,
    List<DateTimeRange>? $_in,
    bool? $_isNull,
    DateTimeRange? $_lt,
    DateTimeRange? $_lte,
    DateTimeRange? $_neq,
    List<DateTimeRange>? $_nin,
  }) => Input_DaterangeComparisonExp._({
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_in != null) r'_in': $_in,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nin != null) r'_nin': $_nin,
  });

  Input_DaterangeComparisonExp._(this._$data);

  factory Input_DaterangeComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = l$$_eq == null ? null : dateRangeFromString(l$$_eq);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = l$$_gt == null ? null : dateRangeFromString(l$$_gt);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = l$$_gte == null
          ? null
          : dateRangeFromString(l$$_gte);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => dateRangeFromString(e))
          .toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = l$$_lt == null ? null : dateRangeFromString(l$$_lt);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = l$$_lte == null
          ? null
          : dateRangeFromString(l$$_lte);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = l$$_neq == null
          ? null
          : dateRangeFromString(l$$_neq);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => dateRangeFromString(e))
          .toList();
    }
    return Input_DaterangeComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTimeRange? get $_eq => (_$data['_eq'] as DateTimeRange?);

  DateTimeRange? get $_gt => (_$data['_gt'] as DateTimeRange?);

  DateTimeRange? get $_gte => (_$data['_gte'] as DateTimeRange?);

  List<DateTimeRange>? get $_in => (_$data['_in'] as List<DateTimeRange>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  DateTimeRange? get $_lt => (_$data['_lt'] as DateTimeRange?);

  DateTimeRange? get $_lte => (_$data['_lte'] as DateTimeRange?);

  DateTimeRange? get $_neq => (_$data['_neq'] as DateTimeRange?);

  List<DateTimeRange>? get $_nin => (_$data['_nin'] as List<DateTimeRange>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq == null ? null : dateRangeToString(l$$_eq);
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt == null ? null : dateRangeToString(l$$_gt);
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte == null ? null : dateRangeToString(l$$_gte);
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => dateRangeToString(e)).toList();
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt == null ? null : dateRangeToString(l$$_lt);
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte == null ? null : dateRangeToString(l$$_lte);
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq == null ? null : dateRangeToString(l$$_neq);
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => dateRangeToString(e)).toList();
    }
    return result$data;
  }

  CopyWith_Input_DaterangeComparisonExp<Input_DaterangeComparisonExp>
  get copyWith => CopyWith_Input_DaterangeComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DaterangeComparisonExp ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_isNull = $_isNull;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
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
    ]);
  }
}

abstract class CopyWith_Input_DaterangeComparisonExp<TRes> {
  factory CopyWith_Input_DaterangeComparisonExp(
    Input_DaterangeComparisonExp instance,
    TRes Function(Input_DaterangeComparisonExp) then,
  ) = _CopyWithImpl_Input_DaterangeComparisonExp;

  factory CopyWith_Input_DaterangeComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DaterangeComparisonExp;

  TRes call({
    DateTimeRange? $_eq,
    DateTimeRange? $_gt,
    DateTimeRange? $_gte,
    List<DateTimeRange>? $_in,
    bool? $_isNull,
    DateTimeRange? $_lt,
    DateTimeRange? $_lte,
    DateTimeRange? $_neq,
    List<DateTimeRange>? $_nin,
  });
}

class _CopyWithImpl_Input_DaterangeComparisonExp<TRes>
    implements CopyWith_Input_DaterangeComparisonExp<TRes> {
  _CopyWithImpl_Input_DaterangeComparisonExp(this._instance, this._then);

  final Input_DaterangeComparisonExp _instance;

  final TRes Function(Input_DaterangeComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_isNull = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) => _then(
    Input_DaterangeComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as DateTimeRange?),
      if ($_gt != _undefined) '_gt': ($_gt as DateTimeRange?),
      if ($_gte != _undefined) '_gte': ($_gte as DateTimeRange?),
      if ($_in != _undefined) '_in': ($_in as List<DateTimeRange>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as DateTimeRange?),
      if ($_lte != _undefined) '_lte': ($_lte as DateTimeRange?),
      if ($_neq != _undefined) '_neq': ($_neq as DateTimeRange?),
      if ($_nin != _undefined) '_nin': ($_nin as List<DateTimeRange>?),
    }),
  );
}

class _CopyWithStubImpl_Input_DaterangeComparisonExp<TRes>
    implements CopyWith_Input_DaterangeComparisonExp<TRes> {
  _CopyWithStubImpl_Input_DaterangeComparisonExp(this._res);

  TRes _res;

  call({
    DateTimeRange? $_eq,
    DateTimeRange? $_gt,
    DateTimeRange? $_gte,
    List<DateTimeRange>? $_in,
    bool? $_isNull,
    DateTimeRange? $_lt,
    DateTimeRange? $_lte,
    DateTimeRange? $_neq,
    List<DateTimeRange>? $_nin,
  }) => _res;
}

class Input_DistrictsBoolExp {
  factory Input_DistrictsBoolExp({
    List<Input_DistrictsBoolExp>? $_and,
    Input_DistrictsBoolExp? $_not,
    List<Input_DistrictsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
  }) => Input_DistrictsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_DistrictsBoolExp._(this._$data);

  factory Input_DistrictsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_DistrictsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_DistrictsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_DistrictsBoolExp.fromJson((e as Map<String, dynamic>)),
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
    return Input_DistrictsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_DistrictsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_DistrictsBoolExp>?);

  Input_DistrictsBoolExp? get $_not =>
      (_$data['_not'] as Input_DistrictsBoolExp?);

  List<Input_DistrictsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_DistrictsBoolExp>?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

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
    return result$data;
  }

  CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp> get copyWith =>
      CopyWith_Input_DistrictsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsBoolExp || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$id = id;
    final l$name = name;
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
    ]);
  }
}

abstract class CopyWith_Input_DistrictsBoolExp<TRes> {
  factory CopyWith_Input_DistrictsBoolExp(
    Input_DistrictsBoolExp instance,
    TRes Function(Input_DistrictsBoolExp) then,
  ) = _CopyWithImpl_Input_DistrictsBoolExp;

  factory CopyWith_Input_DistrictsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsBoolExp;

  TRes call({
    List<Input_DistrictsBoolExp>? $_and,
    Input_DistrictsBoolExp? $_not,
    List<Input_DistrictsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
  });
  TRes $_and(
    Iterable<Input_DistrictsBoolExp>? Function(
      Iterable<CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_DistrictsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_DistrictsBoolExp>? Function(
      Iterable<CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
}

class _CopyWithImpl_Input_DistrictsBoolExp<TRes>
    implements CopyWith_Input_DistrictsBoolExp<TRes> {
  _CopyWithImpl_Input_DistrictsBoolExp(this._instance, this._then);

  final Input_DistrictsBoolExp _instance;

  final TRes Function(Input_DistrictsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) => _then(
    Input_DistrictsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_DistrictsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_DistrictsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_DistrictsBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_DistrictsBoolExp>? Function(
      Iterable<CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_DistrictsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_DistrictsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_DistrictsBoolExp.stub(_then(_instance))
        : CopyWith_Input_DistrictsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_DistrictsBoolExp>? Function(
      Iterable<CopyWith_Input_DistrictsBoolExp<Input_DistrictsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_DistrictsBoolExp(e, (i) => i)),
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
}

class _CopyWithStubImpl_Input_DistrictsBoolExp<TRes>
    implements CopyWith_Input_DistrictsBoolExp<TRes> {
  _CopyWithStubImpl_Input_DistrictsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_DistrictsBoolExp>? $_and,
    Input_DistrictsBoolExp? $_not,
    List<Input_DistrictsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_DistrictsBoolExp<TRes> get $_not =>
      CopyWith_Input_DistrictsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);
}

class Input_DistrictsInsertInput {
  factory Input_DistrictsInsertInput({String? name}) =>
      Input_DistrictsInsertInput._({if (name != null) r'name': name});

  Input_DistrictsInsertInput._(this._$data);

  factory Input_DistrictsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_DistrictsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_DistrictsInsertInput<Input_DistrictsInsertInput>
  get copyWith => CopyWith_Input_DistrictsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsInsertInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith_Input_DistrictsInsertInput<TRes> {
  factory CopyWith_Input_DistrictsInsertInput(
    Input_DistrictsInsertInput instance,
    TRes Function(Input_DistrictsInsertInput) then,
  ) = _CopyWithImpl_Input_DistrictsInsertInput;

  factory CopyWith_Input_DistrictsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsInsertInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_DistrictsInsertInput<TRes>
    implements CopyWith_Input_DistrictsInsertInput<TRes> {
  _CopyWithImpl_Input_DistrictsInsertInput(this._instance, this._then);

  final Input_DistrictsInsertInput _instance;

  final TRes Function(Input_DistrictsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_DistrictsInsertInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsInsertInput<TRes>
    implements CopyWith_Input_DistrictsInsertInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsInsertInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_DistrictsObjRelInsertInput {
  factory Input_DistrictsObjRelInsertInput({
    required Input_DistrictsInsertInput data,
    Input_DistrictsOnConflict? onConflict,
  }) => Input_DistrictsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_DistrictsObjRelInsertInput._(this._$data);

  factory Input_DistrictsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_DistrictsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_DistrictsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_DistrictsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictsInsertInput get data =>
      (_$data['data'] as Input_DistrictsInsertInput);

  Input_DistrictsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_DistrictsOnConflict?);

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

  CopyWith_Input_DistrictsObjRelInsertInput<Input_DistrictsObjRelInsertInput>
  get copyWith => CopyWith_Input_DistrictsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsObjRelInsertInput ||
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

abstract class CopyWith_Input_DistrictsObjRelInsertInput<TRes> {
  factory CopyWith_Input_DistrictsObjRelInsertInput(
    Input_DistrictsObjRelInsertInput instance,
    TRes Function(Input_DistrictsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_DistrictsObjRelInsertInput;

  factory CopyWith_Input_DistrictsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsObjRelInsertInput;

  TRes call({
    Input_DistrictsInsertInput? data,
    Input_DistrictsOnConflict? onConflict,
  });
  CopyWith_Input_DistrictsInsertInput<TRes> get data;
  CopyWith_Input_DistrictsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_DistrictsObjRelInsertInput<TRes>
    implements CopyWith_Input_DistrictsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_DistrictsObjRelInsertInput(this._instance, this._then);

  final Input_DistrictsObjRelInsertInput _instance;

  final TRes Function(Input_DistrictsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_DistrictsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_DistrictsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_DistrictsOnConflict?),
        }),
      );

  CopyWith_Input_DistrictsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_DistrictsInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_DistrictsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_DistrictsOnConflict.stub(_then(_instance))
        : CopyWith_Input_DistrictsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_DistrictsObjRelInsertInput<TRes>
    implements CopyWith_Input_DistrictsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_DistrictsInsertInput? data,
    Input_DistrictsOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_DistrictsInsertInput<TRes> get data =>
      CopyWith_Input_DistrictsInsertInput.stub(_res);

  CopyWith_Input_DistrictsOnConflict<TRes> get onConflict =>
      CopyWith_Input_DistrictsOnConflict.stub(_res);
}

class Input_DistrictsOnConflict {
  factory Input_DistrictsOnConflict({
    required Enum_DistrictsConstraint constraint,
    List<Enum_DistrictsUpdateColumn>? updateColumns,
    Input_DistrictsBoolExp? where,
  }) => Input_DistrictsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_DistrictsOnConflict._(this._$data);

  factory Input_DistrictsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_DistrictsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_DistrictsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_DistrictsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_DistrictsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_DistrictsConstraint get constraint =>
      (_$data['constraint'] as Enum_DistrictsConstraint);

  List<Enum_DistrictsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_DistrictsUpdateColumn>?);

  Input_DistrictsBoolExp? get where =>
      (_$data['where'] as Input_DistrictsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_DistrictsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_DistrictsUpdateColumn>)
              .map((e) => toJson_Enum_DistrictsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DistrictsOnConflict<Input_DistrictsOnConflict> get copyWith =>
      CopyWith_Input_DistrictsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsOnConflict ||
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

abstract class CopyWith_Input_DistrictsOnConflict<TRes> {
  factory CopyWith_Input_DistrictsOnConflict(
    Input_DistrictsOnConflict instance,
    TRes Function(Input_DistrictsOnConflict) then,
  ) = _CopyWithImpl_Input_DistrictsOnConflict;

  factory CopyWith_Input_DistrictsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsOnConflict;

  TRes call({
    Enum_DistrictsConstraint? constraint,
    List<Enum_DistrictsUpdateColumn>? updateColumns,
    Input_DistrictsBoolExp? where,
  });
  CopyWith_Input_DistrictsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DistrictsOnConflict<TRes>
    implements CopyWith_Input_DistrictsOnConflict<TRes> {
  _CopyWithImpl_Input_DistrictsOnConflict(this._instance, this._then);

  final Input_DistrictsOnConflict _instance;

  final TRes Function(Input_DistrictsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_DistrictsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_DistrictsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_DistrictsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_DistrictsBoolExp?),
    }),
  );

  CopyWith_Input_DistrictsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_DistrictsBoolExp.stub(_then(_instance))
        : CopyWith_Input_DistrictsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_DistrictsOnConflict<TRes>
    implements CopyWith_Input_DistrictsOnConflict<TRes> {
  _CopyWithStubImpl_Input_DistrictsOnConflict(this._res);

  TRes _res;

  call({
    Enum_DistrictsConstraint? constraint,
    List<Enum_DistrictsUpdateColumn>? updateColumns,
    Input_DistrictsBoolExp? where,
  }) => _res;

  CopyWith_Input_DistrictsBoolExp<TRes> get where =>
      CopyWith_Input_DistrictsBoolExp.stub(_res);
}

class Input_DistrictsOrderBy {
  factory Input_DistrictsOrderBy({Enum_OrderBy? id, Enum_OrderBy? name}) =>
      Input_DistrictsOrderBy._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input_DistrictsOrderBy._(this._$data);

  factory Input_DistrictsOrderBy.fromJson(Map<String, dynamic> data) {
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
    return Input_DistrictsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

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
    return result$data;
  }

  CopyWith_Input_DistrictsOrderBy<Input_DistrictsOrderBy> get copyWith =>
      CopyWith_Input_DistrictsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsOrderBy || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_DistrictsOrderBy<TRes> {
  factory CopyWith_Input_DistrictsOrderBy(
    Input_DistrictsOrderBy instance,
    TRes Function(Input_DistrictsOrderBy) then,
  ) = _CopyWithImpl_Input_DistrictsOrderBy;

  factory CopyWith_Input_DistrictsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsOrderBy;

  TRes call({Enum_OrderBy? id, Enum_OrderBy? name});
}

class _CopyWithImpl_Input_DistrictsOrderBy<TRes>
    implements CopyWith_Input_DistrictsOrderBy<TRes> {
  _CopyWithImpl_Input_DistrictsOrderBy(this._instance, this._then);

  final Input_DistrictsOrderBy _instance;

  final TRes Function(Input_DistrictsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? name = _undefined}) => _then(
    Input_DistrictsOrderBy._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsOrderBy<TRes>
    implements CopyWith_Input_DistrictsOrderBy<TRes> {
  _CopyWithStubImpl_Input_DistrictsOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? id, Enum_OrderBy? name}) => _res;
}

class Input_DistrictsPkColumnsInput {
  factory Input_DistrictsPkColumnsInput({required UuidValue id}) =>
      Input_DistrictsPkColumnsInput._({r'id': id});

  Input_DistrictsPkColumnsInput._(this._$data);

  factory Input_DistrictsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_DistrictsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_DistrictsPkColumnsInput<Input_DistrictsPkColumnsInput>
  get copyWith => CopyWith_Input_DistrictsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith_Input_DistrictsPkColumnsInput<TRes> {
  factory CopyWith_Input_DistrictsPkColumnsInput(
    Input_DistrictsPkColumnsInput instance,
    TRes Function(Input_DistrictsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_DistrictsPkColumnsInput;

  factory CopyWith_Input_DistrictsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_DistrictsPkColumnsInput<TRes>
    implements CopyWith_Input_DistrictsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_DistrictsPkColumnsInput(this._instance, this._then);

  final Input_DistrictsPkColumnsInput _instance;

  final TRes Function(Input_DistrictsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_DistrictsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsPkColumnsInput<TRes>
    implements CopyWith_Input_DistrictsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_DistrictsSetInput {
  factory Input_DistrictsSetInput({String? name}) =>
      Input_DistrictsSetInput._({if (name != null) r'name': name});

  Input_DistrictsSetInput._(this._$data);

  factory Input_DistrictsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_DistrictsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_DistrictsSetInput<Input_DistrictsSetInput> get copyWith =>
      CopyWith_Input_DistrictsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsSetInput || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith_Input_DistrictsSetInput<TRes> {
  factory CopyWith_Input_DistrictsSetInput(
    Input_DistrictsSetInput instance,
    TRes Function(Input_DistrictsSetInput) then,
  ) = _CopyWithImpl_Input_DistrictsSetInput;

  factory CopyWith_Input_DistrictsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_DistrictsSetInput<TRes>
    implements CopyWith_Input_DistrictsSetInput<TRes> {
  _CopyWithImpl_Input_DistrictsSetInput(this._instance, this._then);

  final Input_DistrictsSetInput _instance;

  final TRes Function(Input_DistrictsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_DistrictsSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsSetInput<TRes>
    implements CopyWith_Input_DistrictsSetInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_DistrictsStreamCursorInput {
  factory Input_DistrictsStreamCursorInput({
    required Input_DistrictsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_DistrictsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_DistrictsStreamCursorInput._(this._$data);

  factory Input_DistrictsStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_DistrictsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_DistrictsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_DistrictsStreamCursorValueInput);

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

  CopyWith_Input_DistrictsStreamCursorInput<Input_DistrictsStreamCursorInput>
  get copyWith => CopyWith_Input_DistrictsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsStreamCursorInput ||
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

abstract class CopyWith_Input_DistrictsStreamCursorInput<TRes> {
  factory CopyWith_Input_DistrictsStreamCursorInput(
    Input_DistrictsStreamCursorInput instance,
    TRes Function(Input_DistrictsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_DistrictsStreamCursorInput;

  factory CopyWith_Input_DistrictsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsStreamCursorInput;

  TRes call({
    Input_DistrictsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_DistrictsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_DistrictsStreamCursorInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_DistrictsStreamCursorInput(this._instance, this._then);

  final Input_DistrictsStreamCursorInput _instance;

  final TRes Function(Input_DistrictsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_DistrictsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_DistrictsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_DistrictsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_DistrictsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_DistrictsStreamCursorInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_DistrictsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_DistrictsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_DistrictsStreamCursorValueInput.stub(_res);
}

class Input_DistrictsStreamCursorValueInput {
  factory Input_DistrictsStreamCursorValueInput({
    UuidValue? id,
    String? name,
  }) => Input_DistrictsStreamCursorValueInput._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
  });

  Input_DistrictsStreamCursorValueInput._(this._$data);

  factory Input_DistrictsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_DistrictsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_DistrictsStreamCursorValueInput<
    Input_DistrictsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_DistrictsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsStreamCursorValueInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_DistrictsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_DistrictsStreamCursorValueInput(
    Input_DistrictsStreamCursorValueInput instance,
    TRes Function(Input_DistrictsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_DistrictsStreamCursorValueInput;

  factory CopyWith_Input_DistrictsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsStreamCursorValueInput;

  TRes call({UuidValue? id, String? name});
}

class _CopyWithImpl_Input_DistrictsStreamCursorValueInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_DistrictsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_DistrictsStreamCursorValueInput _instance;

  final TRes Function(Input_DistrictsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? name = _undefined}) => _then(
    Input_DistrictsStreamCursorValueInput._({
      ..._instance._$data,
      if (id != _undefined) 'id': (id as UuidValue?),
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_DistrictsStreamCursorValueInput<TRes>
    implements CopyWith_Input_DistrictsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_DistrictsStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? id, String? name}) => _res;
}

class Input_DistrictsUpdates {
  factory Input_DistrictsUpdates({
    Input_DistrictsSetInput? $_set,
    required Input_DistrictsBoolExp where,
  }) => Input_DistrictsUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_DistrictsUpdates._(this._$data);

  factory Input_DistrictsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_DistrictsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_DistrictsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_DistrictsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DistrictsSetInput? get $_set =>
      (_$data['_set'] as Input_DistrictsSetInput?);

  Input_DistrictsBoolExp get where =>
      (_$data['where'] as Input_DistrictsBoolExp);

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

  CopyWith_Input_DistrictsUpdates<Input_DistrictsUpdates> get copyWith =>
      CopyWith_Input_DistrictsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DistrictsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_DistrictsUpdates<TRes> {
  factory CopyWith_Input_DistrictsUpdates(
    Input_DistrictsUpdates instance,
    TRes Function(Input_DistrictsUpdates) then,
  ) = _CopyWithImpl_Input_DistrictsUpdates;

  factory CopyWith_Input_DistrictsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_DistrictsUpdates;

  TRes call({Input_DistrictsSetInput? $_set, Input_DistrictsBoolExp? where});
  CopyWith_Input_DistrictsSetInput<TRes> get $_set;
  CopyWith_Input_DistrictsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DistrictsUpdates<TRes>
    implements CopyWith_Input_DistrictsUpdates<TRes> {
  _CopyWithImpl_Input_DistrictsUpdates(this._instance, this._then);

  final Input_DistrictsUpdates _instance;

  final TRes Function(Input_DistrictsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_DistrictsUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_DistrictsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_DistrictsBoolExp),
    }),
  );

  CopyWith_Input_DistrictsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_DistrictsSetInput.stub(_then(_instance))
        : CopyWith_Input_DistrictsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_DistrictsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_DistrictsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_DistrictsUpdates<TRes>
    implements CopyWith_Input_DistrictsUpdates<TRes> {
  _CopyWithStubImpl_Input_DistrictsUpdates(this._res);

  TRes _res;

  call({Input_DistrictsSetInput? $_set, Input_DistrictsBoolExp? where}) => _res;

  CopyWith_Input_DistrictsSetInput<TRes> get $_set =>
      CopyWith_Input_DistrictsSetInput.stub(_res);

  CopyWith_Input_DistrictsBoolExp<TRes> get where =>
      CopyWith_Input_DistrictsBoolExp.stub(_res);
}

class Input_FamiliesAdminsPhonesBoolExp {
  factory Input_FamiliesAdminsPhonesBoolExp({
    List<Input_FamiliesAdminsPhonesBoolExp>? $_and,
    Input_FamiliesAdminsPhonesBoolExp? $_not,
    List<Input_FamiliesAdminsPhonesBoolExp>? $_or,
    Input_JsonComparisonExp? aggregatedPhones,
    Input_UuidComparisonExp? familyId,
  }) => Input_FamiliesAdminsPhonesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (aggregatedPhones != null) r'aggregatedPhones': aggregatedPhones,
    if (familyId != null) r'familyId': familyId,
  });

  Input_FamiliesAdminsPhonesBoolExp._(this._$data);

  factory Input_FamiliesAdminsPhonesBoolExp.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_FamiliesAdminsPhonesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_FamiliesAdminsPhonesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_FamiliesAdminsPhonesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = data['aggregatedPhones'];
      result$data['aggregatedPhones'] = l$aggregatedPhones == null
          ? null
          : Input_JsonComparisonExp.fromJson(
              (l$aggregatedPhones as Map<String, dynamic>),
            );
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    return Input_FamiliesAdminsPhonesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_FamiliesAdminsPhonesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_FamiliesAdminsPhonesBoolExp>?);

  Input_FamiliesAdminsPhonesBoolExp? get $_not =>
      (_$data['_not'] as Input_FamiliesAdminsPhonesBoolExp?);

  List<Input_FamiliesAdminsPhonesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_FamiliesAdminsPhonesBoolExp>?);

  Input_JsonComparisonExp? get aggregatedPhones =>
      (_$data['aggregatedPhones'] as Input_JsonComparisonExp?);

  Input_UuidComparisonExp? get familyId =>
      (_$data['familyId'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = aggregatedPhones;
      result$data['aggregatedPhones'] = l$aggregatedPhones?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_FamiliesAdminsPhonesBoolExp<Input_FamiliesAdminsPhonesBoolExp>
  get copyWith => CopyWith_Input_FamiliesAdminsPhonesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesAdminsPhonesBoolExp ||
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
    final l$aggregatedPhones = aggregatedPhones;
    final lOther$aggregatedPhones = other.aggregatedPhones;
    if (_$data.containsKey('aggregatedPhones') !=
        other._$data.containsKey('aggregatedPhones')) {
      return false;
    }
    if (l$aggregatedPhones != lOther$aggregatedPhones) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$aggregatedPhones = aggregatedPhones;
    final l$familyId = familyId;
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
      _$data.containsKey('aggregatedPhones') ? l$aggregatedPhones : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> {
  factory CopyWith_Input_FamiliesAdminsPhonesBoolExp(
    Input_FamiliesAdminsPhonesBoolExp instance,
    TRes Function(Input_FamiliesAdminsPhonesBoolExp) then,
  ) = _CopyWithImpl_Input_FamiliesAdminsPhonesBoolExp;

  factory CopyWith_Input_FamiliesAdminsPhonesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesAdminsPhonesBoolExp;

  TRes call({
    List<Input_FamiliesAdminsPhonesBoolExp>? $_and,
    Input_FamiliesAdminsPhonesBoolExp? $_not,
    List<Input_FamiliesAdminsPhonesBoolExp>? $_or,
    Input_JsonComparisonExp? aggregatedPhones,
    Input_UuidComparisonExp? familyId,
  });
  TRes $_and(
    Iterable<Input_FamiliesAdminsPhonesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesAdminsPhonesBoolExp<
          Input_FamiliesAdminsPhonesBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_FamiliesAdminsPhonesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesAdminsPhonesBoolExp<
          Input_FamiliesAdminsPhonesBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_JsonComparisonExp<TRes> get aggregatedPhones;
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
}

class _CopyWithImpl_Input_FamiliesAdminsPhonesBoolExp<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> {
  _CopyWithImpl_Input_FamiliesAdminsPhonesBoolExp(this._instance, this._then);

  final Input_FamiliesAdminsPhonesBoolExp _instance;

  final TRes Function(Input_FamiliesAdminsPhonesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? aggregatedPhones = _undefined,
    Object? familyId = _undefined,
  }) => _then(
    Input_FamiliesAdminsPhonesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_FamiliesAdminsPhonesBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_FamiliesAdminsPhonesBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_FamiliesAdminsPhonesBoolExp>?),
      if (aggregatedPhones != _undefined)
        'aggregatedPhones': (aggregatedPhones as Input_JsonComparisonExp?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_FamiliesAdminsPhonesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesAdminsPhonesBoolExp<
          Input_FamiliesAdminsPhonesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_FamiliesAdminsPhonesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_FamiliesAdminsPhonesBoolExp.stub(_then(_instance))
        : CopyWith_Input_FamiliesAdminsPhonesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_FamiliesAdminsPhonesBoolExp>? Function(
      Iterable<
        CopyWith_Input_FamiliesAdminsPhonesBoolExp<
          Input_FamiliesAdminsPhonesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_FamiliesAdminsPhonesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_JsonComparisonExp<TRes> get aggregatedPhones {
    final local$aggregatedPhones = _instance.aggregatedPhones;
    return local$aggregatedPhones == null
        ? CopyWith_Input_JsonComparisonExp.stub(_then(_instance))
        : CopyWith_Input_JsonComparisonExp(
            local$aggregatedPhones,
            (e) => call(aggregatedPhones: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$familyId,
            (e) => call(familyId: e),
          );
  }
}

class _CopyWithStubImpl_Input_FamiliesAdminsPhonesBoolExp<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> {
  _CopyWithStubImpl_Input_FamiliesAdminsPhonesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_FamiliesAdminsPhonesBoolExp>? $_and,
    Input_FamiliesAdminsPhonesBoolExp? $_not,
    List<Input_FamiliesAdminsPhonesBoolExp>? $_or,
    Input_JsonComparisonExp? aggregatedPhones,
    Input_UuidComparisonExp? familyId,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_FamiliesAdminsPhonesBoolExp<TRes> get $_not =>
      CopyWith_Input_FamiliesAdminsPhonesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_JsonComparisonExp<TRes> get aggregatedPhones =>
      CopyWith_Input_JsonComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_FamiliesAdminsPhonesOrderBy {
  factory Input_FamiliesAdminsPhonesOrderBy({
    Enum_OrderBy? aggregatedPhones,
    Enum_OrderBy? familyId,
  }) => Input_FamiliesAdminsPhonesOrderBy._({
    if (aggregatedPhones != null) r'aggregatedPhones': aggregatedPhones,
    if (familyId != null) r'familyId': familyId,
  });

  Input_FamiliesAdminsPhonesOrderBy._(this._$data);

  factory Input_FamiliesAdminsPhonesOrderBy.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = data['aggregatedPhones'];
      result$data['aggregatedPhones'] = l$aggregatedPhones == null
          ? null
          : fromJson_Enum_OrderBy((l$aggregatedPhones as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    return Input_FamiliesAdminsPhonesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get aggregatedPhones =>
      (_$data['aggregatedPhones'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('aggregatedPhones')) {
      final l$aggregatedPhones = aggregatedPhones;
      result$data['aggregatedPhones'] = l$aggregatedPhones == null
          ? null
          : toJson_Enum_OrderBy(l$aggregatedPhones);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    return result$data;
  }

  CopyWith_Input_FamiliesAdminsPhonesOrderBy<Input_FamiliesAdminsPhonesOrderBy>
  get copyWith => CopyWith_Input_FamiliesAdminsPhonesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesAdminsPhonesOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregatedPhones = aggregatedPhones;
    final lOther$aggregatedPhones = other.aggregatedPhones;
    if (_$data.containsKey('aggregatedPhones') !=
        other._$data.containsKey('aggregatedPhones')) {
      return false;
    }
    if (l$aggregatedPhones != lOther$aggregatedPhones) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$aggregatedPhones = aggregatedPhones;
    final l$familyId = familyId;
    return Object.hashAll([
      _$data.containsKey('aggregatedPhones') ? l$aggregatedPhones : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
    ]);
  }
}

abstract class CopyWith_Input_FamiliesAdminsPhonesOrderBy<TRes> {
  factory CopyWith_Input_FamiliesAdminsPhonesOrderBy(
    Input_FamiliesAdminsPhonesOrderBy instance,
    TRes Function(Input_FamiliesAdminsPhonesOrderBy) then,
  ) = _CopyWithImpl_Input_FamiliesAdminsPhonesOrderBy;

  factory CopyWith_Input_FamiliesAdminsPhonesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_FamiliesAdminsPhonesOrderBy;

  TRes call({Enum_OrderBy? aggregatedPhones, Enum_OrderBy? familyId});
}

class _CopyWithImpl_Input_FamiliesAdminsPhonesOrderBy<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesOrderBy<TRes> {
  _CopyWithImpl_Input_FamiliesAdminsPhonesOrderBy(this._instance, this._then);

  final Input_FamiliesAdminsPhonesOrderBy _instance;

  final TRes Function(Input_FamiliesAdminsPhonesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregatedPhones = _undefined,
    Object? familyId = _undefined,
  }) => _then(
    Input_FamiliesAdminsPhonesOrderBy._({
      ..._instance._$data,
      if (aggregatedPhones != _undefined)
        'aggregatedPhones': (aggregatedPhones as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_FamiliesAdminsPhonesOrderBy<TRes>
    implements CopyWith_Input_FamiliesAdminsPhonesOrderBy<TRes> {
  _CopyWithStubImpl_Input_FamiliesAdminsPhonesOrderBy(this._res);

  TRes _res;

  call({Enum_OrderBy? aggregatedPhones, Enum_OrderBy? familyId}) => _res;
}

class Input_FamiliesAdminsPhonesStreamCursorInput {
  factory Input_FamiliesAdminsPhonesStreamCursorInput({
    required Input_FamiliesAdminsPhonesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_FamiliesAdminsPhonesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_FamiliesAdminsPhonesStreamCursorInput._(this._$data);

  factory Input_FamiliesAdminsPhonesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_FamiliesAdminsPhonesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_FamiliesAdminsPhonesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_FamiliesAdminsPhonesStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_FamiliesAdminsPhonesStreamCursorValueInput);

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

  CopyWith_Input_FamiliesAdminsPhonesStreamCursorInput<
    Input_FamiliesAdminsPhonesStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_FamiliesAdminsPhonesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_FamiliesAdminsPhonesStreamCursorInput ||
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
