// Part 60 of the schema
part of "schema.graphql.dart";

class _CopyWithImpl_Input_StringArrayComparisonExp<TRes>
    implements CopyWith_Input_StringArrayComparisonExp<TRes> {
  _CopyWithImpl_Input_StringArrayComparisonExp(this._instance, this._then);

  final Input_StringArrayComparisonExp _instance;

  final TRes Function(Input_StringArrayComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_containedIn = _undefined,
    Object? $_contains = _undefined,
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
    Input_StringArrayComparisonExp._({
      ..._instance._$data,
      if ($_containedIn != _undefined)
        '_containedIn': ($_containedIn as List<String>?),
      if ($_contains != _undefined) '_contains': ($_contains as List<String>?),
      if ($_eq != _undefined) '_eq': ($_eq as List<String>?),
      if ($_gt != _undefined) '_gt': ($_gt as List<String>?),
      if ($_gte != _undefined) '_gte': ($_gte as List<String>?),
      if ($_in != _undefined) '_in': ($_in as List<List<String>>?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_lt != _undefined) '_lt': ($_lt as List<String>?),
      if ($_lte != _undefined) '_lte': ($_lte as List<String>?),
      if ($_neq != _undefined) '_neq': ($_neq as List<String>?),
      if ($_nin != _undefined) '_nin': ($_nin as List<List<String>>?),
    }),
  );
}

class _CopyWithStubImpl_Input_StringArrayComparisonExp<TRes>
    implements CopyWith_Input_StringArrayComparisonExp<TRes> {
  _CopyWithStubImpl_Input_StringArrayComparisonExp(this._res);

  TRes _res;

  call({
    List<String>? $_containedIn,
    List<String>? $_contains,
    List<String>? $_eq,
    List<String>? $_gt,
    List<String>? $_gte,
    List<List<String>>? $_in,
    bool? $_isNull,
    List<String>? $_lt,
    List<String>? $_lte,
    List<String>? $_neq,
    List<List<String>>? $_nin,
  }) => _res;
}

class Input_StringComparisonExp {
  factory Input_StringComparisonExp({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_ilike,
    List<String>? $_in,
    String? $_iregex,
    bool? $_isNull,
    String? $_like,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    String? $_nilike,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nlike,
    String? $_nregex,
    String? $_nsimilar,
    String? $_regex,
    String? $_similar,
  }) => Input_StringComparisonExp._({
    if ($_eq != null) r'_eq': $_eq,
    if ($_gt != null) r'_gt': $_gt,
    if ($_gte != null) r'_gte': $_gte,
    if ($_ilike != null) r'_ilike': $_ilike,
    if ($_in != null) r'_in': $_in,
    if ($_iregex != null) r'_iregex': $_iregex,
    if ($_isNull != null) r'_isNull': $_isNull,
    if ($_like != null) r'_like': $_like,
    if ($_lt != null) r'_lt': $_lt,
    if ($_lte != null) r'_lte': $_lte,
    if ($_neq != null) r'_neq': $_neq,
    if ($_nilike != null) r'_nilike': $_nilike,
    if ($_nin != null) r'_nin': $_nin,
    if ($_niregex != null) r'_niregex': $_niregex,
    if ($_nlike != null) r'_nlike': $_nlike,
    if ($_nregex != null) r'_nregex': $_nregex,
    if ($_nsimilar != null) r'_nsimilar': $_nsimilar,
    if ($_regex != null) r'_regex': $_regex,
    if ($_similar != null) r'_similar': $_similar,
  });

  Input_StringComparisonExp._(this._$data);

  factory Input_StringComparisonExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as String?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as String?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as String?);
    }
    if (data.containsKey('_ilike')) {
      final l$$_ilike = data['_ilike'];
      result$data['_ilike'] = (l$$_ilike as String?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] = (l$$_in as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('_iregex')) {
      final l$$_iregex = data['_iregex'];
      result$data['_iregex'] = (l$$_iregex as String?);
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
    }
    if (data.containsKey('_like')) {
      final l$$_like = data['_like'];
      result$data['_like'] = (l$$_like as String?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as String?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as String?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as String?);
    }
    if (data.containsKey('_nilike')) {
      final l$$_nilike = data['_nilike'];
      result$data['_nilike'] = (l$$_nilike as String?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] = (l$$_nin as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('_niregex')) {
      final l$$_niregex = data['_niregex'];
      result$data['_niregex'] = (l$$_niregex as String?);
    }
    if (data.containsKey('_nlike')) {
      final l$$_nlike = data['_nlike'];
      result$data['_nlike'] = (l$$_nlike as String?);
    }
    if (data.containsKey('_nregex')) {
      final l$$_nregex = data['_nregex'];
      result$data['_nregex'] = (l$$_nregex as String?);
    }
    if (data.containsKey('_nsimilar')) {
      final l$$_nsimilar = data['_nsimilar'];
      result$data['_nsimilar'] = (l$$_nsimilar as String?);
    }
    if (data.containsKey('_regex')) {
      final l$$_regex = data['_regex'];
      result$data['_regex'] = (l$$_regex as String?);
    }
    if (data.containsKey('_similar')) {
      final l$$_similar = data['_similar'];
      result$data['_similar'] = (l$$_similar as String?);
    }
    return Input_StringComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_eq => (_$data['_eq'] as String?);

  String? get $_gt => (_$data['_gt'] as String?);

  String? get $_gte => (_$data['_gte'] as String?);

  String? get $_ilike => (_$data['_ilike'] as String?);

  List<String>? get $_in => (_$data['_in'] as List<String>?);

  String? get $_iregex => (_$data['_iregex'] as String?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  String? get $_like => (_$data['_like'] as String?);

  String? get $_lt => (_$data['_lt'] as String?);

  String? get $_lte => (_$data['_lte'] as String?);

  String? get $_neq => (_$data['_neq'] as String?);

  String? get $_nilike => (_$data['_nilike'] as String?);

  List<String>? get $_nin => (_$data['_nin'] as List<String>?);

  String? get $_niregex => (_$data['_niregex'] as String?);

  String? get $_nlike => (_$data['_nlike'] as String?);

  String? get $_nregex => (_$data['_nregex'] as String?);

  String? get $_nsimilar => (_$data['_nsimilar'] as String?);

  String? get $_regex => (_$data['_regex'] as String?);

  String? get $_similar => (_$data['_similar'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    if (_$data.containsKey('_ilike')) {
      final l$$_ilike = $_ilike;
      result$data['_ilike'] = l$$_ilike;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_iregex')) {
      final l$$_iregex = $_iregex;
      result$data['_iregex'] = l$$_iregex;
    }
    if (_$data.containsKey('_isNull')) {
      final l$$_isNull = $_isNull;
      result$data['_isNull'] = l$$_isNull;
    }
    if (_$data.containsKey('_like')) {
      final l$$_like = $_like;
      result$data['_like'] = l$$_like;
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
    if (_$data.containsKey('_nilike')) {
      final l$$_nilike = $_nilike;
      result$data['_nilike'] = l$$_nilike;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('_niregex')) {
      final l$$_niregex = $_niregex;
      result$data['_niregex'] = l$$_niregex;
    }
    if (_$data.containsKey('_nlike')) {
      final l$$_nlike = $_nlike;
      result$data['_nlike'] = l$$_nlike;
    }
    if (_$data.containsKey('_nregex')) {
      final l$$_nregex = $_nregex;
      result$data['_nregex'] = l$$_nregex;
    }
    if (_$data.containsKey('_nsimilar')) {
      final l$$_nsimilar = $_nsimilar;
      result$data['_nsimilar'] = l$$_nsimilar;
    }
    if (_$data.containsKey('_regex')) {
      final l$$_regex = $_regex;
      result$data['_regex'] = l$$_regex;
    }
    if (_$data.containsKey('_similar')) {
      final l$$_similar = $_similar;
      result$data['_similar'] = l$$_similar;
    }
    return result$data;
  }

  CopyWith_Input_StringComparisonExp<Input_StringComparisonExp> get copyWith =>
      CopyWith_Input_StringComparisonExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StringComparisonExp ||
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
    final l$$_ilike = $_ilike;
    final lOther$$_ilike = other.$_ilike;
    if (_$data.containsKey('_ilike') != other._$data.containsKey('_ilike')) {
      return false;
    }
    if (l$$_ilike != lOther$$_ilike) {
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
    final l$$_iregex = $_iregex;
    final lOther$$_iregex = other.$_iregex;
    if (_$data.containsKey('_iregex') != other._$data.containsKey('_iregex')) {
      return false;
    }
    if (l$$_iregex != lOther$$_iregex) {
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
    final l$$_like = $_like;
    final lOther$$_like = other.$_like;
    if (_$data.containsKey('_like') != other._$data.containsKey('_like')) {
      return false;
    }
    if (l$$_like != lOther$$_like) {
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
    final l$$_nilike = $_nilike;
    final lOther$$_nilike = other.$_nilike;
    if (_$data.containsKey('_nilike') != other._$data.containsKey('_nilike')) {
      return false;
    }
    if (l$$_nilike != lOther$$_nilike) {
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
    final l$$_niregex = $_niregex;
    final lOther$$_niregex = other.$_niregex;
    if (_$data.containsKey('_niregex') !=
        other._$data.containsKey('_niregex')) {
      return false;
    }
    if (l$$_niregex != lOther$$_niregex) {
      return false;
    }
    final l$$_nlike = $_nlike;
    final lOther$$_nlike = other.$_nlike;
    if (_$data.containsKey('_nlike') != other._$data.containsKey('_nlike')) {
      return false;
    }
    if (l$$_nlike != lOther$$_nlike) {
      return false;
    }
    final l$$_nregex = $_nregex;
    final lOther$$_nregex = other.$_nregex;
    if (_$data.containsKey('_nregex') != other._$data.containsKey('_nregex')) {
      return false;
    }
    if (l$$_nregex != lOther$$_nregex) {
      return false;
    }
    final l$$_nsimilar = $_nsimilar;
    final lOther$$_nsimilar = other.$_nsimilar;
    if (_$data.containsKey('_nsimilar') !=
        other._$data.containsKey('_nsimilar')) {
      return false;
    }
    if (l$$_nsimilar != lOther$$_nsimilar) {
      return false;
    }
    final l$$_regex = $_regex;
    final lOther$$_regex = other.$_regex;
    if (_$data.containsKey('_regex') != other._$data.containsKey('_regex')) {
      return false;
    }
    if (l$$_regex != lOther$$_regex) {
      return false;
    }
    final l$$_similar = $_similar;
    final lOther$$_similar = other.$_similar;
    if (_$data.containsKey('_similar') !=
        other._$data.containsKey('_similar')) {
      return false;
    }
    if (l$$_similar != lOther$$_similar) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_ilike = $_ilike;
    final l$$_in = $_in;
    final l$$_iregex = $_iregex;
    final l$$_isNull = $_isNull;
    final l$$_like = $_like;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nilike = $_nilike;
    final l$$_nin = $_nin;
    final l$$_niregex = $_niregex;
    final l$$_nlike = $_nlike;
    final l$$_nregex = $_nregex;
    final l$$_nsimilar = $_nsimilar;
    final l$$_regex = $_regex;
    final l$$_similar = $_similar;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_ilike') ? l$$_ilike : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
                ? null
                : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_iregex') ? l$$_iregex : const {},
      _$data.containsKey('_isNull') ? l$$_isNull : const {},
      _$data.containsKey('_like') ? l$$_like : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nilike') ? l$$_nilike : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
                ? null
                : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
      _$data.containsKey('_niregex') ? l$$_niregex : const {},
      _$data.containsKey('_nlike') ? l$$_nlike : const {},
      _$data.containsKey('_nregex') ? l$$_nregex : const {},
      _$data.containsKey('_nsimilar') ? l$$_nsimilar : const {},
      _$data.containsKey('_regex') ? l$$_regex : const {},
      _$data.containsKey('_similar') ? l$$_similar : const {},
    ]);
  }
}

abstract class CopyWith_Input_StringComparisonExp<TRes> {
  factory CopyWith_Input_StringComparisonExp(
    Input_StringComparisonExp instance,
    TRes Function(Input_StringComparisonExp) then,
  ) = _CopyWithImpl_Input_StringComparisonExp;

  factory CopyWith_Input_StringComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_StringComparisonExp;

  TRes call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_ilike,
    List<String>? $_in,
    String? $_iregex,
    bool? $_isNull,
    String? $_like,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    String? $_nilike,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nlike,
    String? $_nregex,
    String? $_nsimilar,
    String? $_regex,
    String? $_similar,
  });
}

class _CopyWithImpl_Input_StringComparisonExp<TRes>
    implements CopyWith_Input_StringComparisonExp<TRes> {
  _CopyWithImpl_Input_StringComparisonExp(this._instance, this._then);

  final Input_StringComparisonExp _instance;

  final TRes Function(Input_StringComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_ilike = _undefined,
    Object? $_in = _undefined,
    Object? $_iregex = _undefined,
    Object? $_isNull = _undefined,
    Object? $_like = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nilike = _undefined,
    Object? $_nin = _undefined,
    Object? $_niregex = _undefined,
    Object? $_nlike = _undefined,
    Object? $_nregex = _undefined,
    Object? $_nsimilar = _undefined,
    Object? $_regex = _undefined,
    Object? $_similar = _undefined,
  }) => _then(
    Input_StringComparisonExp._({
      ..._instance._$data,
      if ($_eq != _undefined) '_eq': ($_eq as String?),
      if ($_gt != _undefined) '_gt': ($_gt as String?),
      if ($_gte != _undefined) '_gte': ($_gte as String?),
      if ($_ilike != _undefined) '_ilike': ($_ilike as String?),
      if ($_in != _undefined) '_in': ($_in as List<String>?),
      if ($_iregex != _undefined) '_iregex': ($_iregex as String?),
      if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
      if ($_like != _undefined) '_like': ($_like as String?),
      if ($_lt != _undefined) '_lt': ($_lt as String?),
      if ($_lte != _undefined) '_lte': ($_lte as String?),
      if ($_neq != _undefined) '_neq': ($_neq as String?),
      if ($_nilike != _undefined) '_nilike': ($_nilike as String?),
      if ($_nin != _undefined) '_nin': ($_nin as List<String>?),
      if ($_niregex != _undefined) '_niregex': ($_niregex as String?),
      if ($_nlike != _undefined) '_nlike': ($_nlike as String?),
      if ($_nregex != _undefined) '_nregex': ($_nregex as String?),
      if ($_nsimilar != _undefined) '_nsimilar': ($_nsimilar as String?),
      if ($_regex != _undefined) '_regex': ($_regex as String?),
      if ($_similar != _undefined) '_similar': ($_similar as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_StringComparisonExp<TRes>
    implements CopyWith_Input_StringComparisonExp<TRes> {
  _CopyWithStubImpl_Input_StringComparisonExp(this._res);

  TRes _res;

  call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    String? $_ilike,
    List<String>? $_in,
    String? $_iregex,
    bool? $_isNull,
    String? $_like,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    String? $_nilike,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nlike,
    String? $_nregex,
    String? $_nsimilar,
    String? $_regex,
    String? $_similar,
  }) => _res;
}

class Input_StudyYearsBoolExp {
  factory Input_StudyYearsBoolExp({
    List<Input_StudyYearsBoolExp>? $_and,
    Input_StudyYearsBoolExp? $_not,
    List<Input_StudyYearsBoolExp>? $_or,
    Input_ClassesBoolExp? classes,
    Input_ClassesAggregateBoolExp? classesAggregate,
    Input_StringComparisonExp? id,
    Input_HistoryMeetingsBoolExp? meetings,
    Input_StringComparisonExp? name,
    Input_SmallintComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => Input_StudyYearsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (classes != null) r'classes': classes,
    if (classesAggregate != null) r'classesAggregate': classesAggregate,
    if (id != null) r'id': id,
    if (meetings != null) r'meetings': meetings,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_StudyYearsBoolExp._(this._$data);

  factory Input_StudyYearsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_StudyYearsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_StudyYearsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_StudyYearsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassesBoolExp.fromJson((l$classes as Map<String, dynamic>));
    }
    if (data.containsKey('classesAggregate')) {
      final l$classesAggregate = data['classesAggregate'];
      result$data['classesAggregate'] = l$classesAggregate == null
          ? null
          : Input_ClassesAggregateBoolExp.fromJson(
              (l$classesAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_StringComparisonExp.fromJson((l$id as Map<String, dynamic>));
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
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : Input_SmallintComparisonExp.fromJson(
              (l$order as Map<String, dynamic>),
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
    return Input_StudyYearsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_StudyYearsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_StudyYearsBoolExp>?);

  Input_StudyYearsBoolExp? get $_not =>
      (_$data['_not'] as Input_StudyYearsBoolExp?);

  List<Input_StudyYearsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_StudyYearsBoolExp>?);

  Input_ClassesBoolExp? get classes =>
      (_$data['classes'] as Input_ClassesBoolExp?);

  Input_ClassesAggregateBoolExp? get classesAggregate =>
      (_$data['classesAggregate'] as Input_ClassesAggregateBoolExp?);

  Input_StringComparisonExp? get id =>
      (_$data['id'] as Input_StringComparisonExp?);

  Input_HistoryMeetingsBoolExp? get meetings =>
      (_$data['meetings'] as Input_HistoryMeetingsBoolExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

  Input_SmallintComparisonExp? get order =>
      (_$data['order'] as Input_SmallintComparisonExp?);

  Input_PersonsBoolExp? get persons =>
      (_$data['persons'] as Input_PersonsBoolExp?);

  Input_PersonsAggregateBoolExp? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateBoolExp?);

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
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('classesAggregate')) {
      final l$classesAggregate = classesAggregate;
      result$data['classesAggregate'] = l$classesAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('meetings')) {
      final l$meetings = meetings;
      result$data['meetings'] = l$meetings?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.toJson();
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StudyYearsBoolExp<Input_StudyYearsBoolExp> get copyWith =>
      CopyWith_Input_StudyYearsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsBoolExp || runtimeType != other.runtimeType) {
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
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
      return false;
    }
    final l$classesAggregate = classesAggregate;
    final lOther$classesAggregate = other.classesAggregate;
    if (_$data.containsKey('classesAggregate') !=
        other._$data.containsKey('classesAggregate')) {
      return false;
    }
    if (l$classesAggregate != lOther$classesAggregate) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$classes = classes;
    final l$classesAggregate = classesAggregate;
    final l$id = id;
    final l$meetings = meetings;
    final l$name = name;
    final l$order = order;
    final l$persons = persons;
    final l$personsAggregate = personsAggregate;
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
      _$data.containsKey('classes') ? l$classes : const {},
      _$data.containsKey('classesAggregate') ? l$classesAggregate : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('meetings') ? l$meetings : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_StudyYearsBoolExp<TRes> {
  factory CopyWith_Input_StudyYearsBoolExp(
    Input_StudyYearsBoolExp instance,
    TRes Function(Input_StudyYearsBoolExp) then,
  ) = _CopyWithImpl_Input_StudyYearsBoolExp;

  factory CopyWith_Input_StudyYearsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsBoolExp;

  TRes call({
    List<Input_StudyYearsBoolExp>? $_and,
    Input_StudyYearsBoolExp? $_not,
    List<Input_StudyYearsBoolExp>? $_or,
    Input_ClassesBoolExp? classes,
    Input_ClassesAggregateBoolExp? classesAggregate,
    Input_StringComparisonExp? id,
    Input_HistoryMeetingsBoolExp? meetings,
    Input_StringComparisonExp? name,
    Input_SmallintComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_StudyYearsBoolExp>? Function(
      Iterable<CopyWith_Input_StudyYearsBoolExp<Input_StudyYearsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_StudyYearsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_StudyYearsBoolExp>? Function(
      Iterable<CopyWith_Input_StudyYearsBoolExp<Input_StudyYearsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_ClassesBoolExp<TRes> get classes;
  CopyWith_Input_ClassesAggregateBoolExp<TRes> get classesAggregate;
  CopyWith_Input_StringComparisonExp<TRes> get id;
  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meetings;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_SmallintComparisonExp<TRes> get order;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_StudyYearsBoolExp<TRes>
    implements CopyWith_Input_StudyYearsBoolExp<TRes> {
  _CopyWithImpl_Input_StudyYearsBoolExp(this._instance, this._then);

  final Input_StudyYearsBoolExp _instance;

  final TRes Function(Input_StudyYearsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? classes = _undefined,
    Object? classesAggregate = _undefined,
    Object? id = _undefined,
    Object? meetings = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_StudyYearsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_StudyYearsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_StudyYearsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_StudyYearsBoolExp>?),
      if (classes != _undefined) 'classes': (classes as Input_ClassesBoolExp?),
      if (classesAggregate != _undefined)
        'classesAggregate':
            (classesAggregate as Input_ClassesAggregateBoolExp?),
      if (id != _undefined) 'id': (id as Input_StringComparisonExp?),
      if (meetings != _undefined)
        'meetings': (meetings as Input_HistoryMeetingsBoolExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (order != _undefined) 'order': (order as Input_SmallintComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_StudyYearsBoolExp>? Function(
      Iterable<CopyWith_Input_StudyYearsBoolExp<Input_StudyYearsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_StudyYearsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_StudyYearsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_StudyYearsBoolExp>? Function(
      Iterable<CopyWith_Input_StudyYearsBoolExp<Input_StudyYearsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_StudyYearsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_ClassesBoolExp<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesBoolExp(local$classes, (e) => call(classes: e));
  }

  CopyWith_Input_ClassesAggregateBoolExp<TRes> get classesAggregate {
    final local$classesAggregate = _instance.classesAggregate;
    return local$classesAggregate == null
        ? CopyWith_Input_ClassesAggregateBoolExp.stub(_then(_instance))
        : CopyWith_Input_ClassesAggregateBoolExp(
            local$classesAggregate,
            (e) => call(classesAggregate: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Input_HistoryMeetingsBoolExp.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsBoolExp(
            local$meetings,
            (e) => call(meetings: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(local$name, (e) => call(name: e));
  }

  CopyWith_Input_SmallintComparisonExp<TRes> get order {
    final local$order = _instance.order;
    return local$order == null
        ? CopyWith_Input_SmallintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_SmallintComparisonExp(
            local$order,
            (e) => call(order: e),
          );
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
}

class _CopyWithStubImpl_Input_StudyYearsBoolExp<TRes>
    implements CopyWith_Input_StudyYearsBoolExp<TRes> {
  _CopyWithStubImpl_Input_StudyYearsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_StudyYearsBoolExp>? $_and,
    Input_StudyYearsBoolExp? $_not,
    List<Input_StudyYearsBoolExp>? $_or,
    Input_ClassesBoolExp? classes,
    Input_ClassesAggregateBoolExp? classesAggregate,
    Input_StringComparisonExp? id,
    Input_HistoryMeetingsBoolExp? meetings,
    Input_StringComparisonExp? name,
    Input_SmallintComparisonExp? order,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_StudyYearsBoolExp<TRes> get $_not =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_ClassesBoolExp<TRes> get classes =>
      CopyWith_Input_ClassesBoolExp.stub(_res);

  CopyWith_Input_ClassesAggregateBoolExp<TRes> get classesAggregate =>
      CopyWith_Input_ClassesAggregateBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get id =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_HistoryMeetingsBoolExp<TRes> get meetings =>
      CopyWith_Input_HistoryMeetingsBoolExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_SmallintComparisonExp<TRes> get order =>
      CopyWith_Input_SmallintComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_StudyYearsInsertInput {
  factory Input_StudyYearsInsertInput({
    Input_ClassesArrRelInsertInput? classes,
    Input_HistoryMeetingsArrRelInsertInput? meetings,
    String? name,
    int? order,
    Input_PersonsArrRelInsertInput? persons,
  }) => Input_StudyYearsInsertInput._({
    if (classes != null) r'classes': classes,
    if (meetings != null) r'meetings': meetings,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
    if (persons != null) r'persons': persons,
  });

  Input_StudyYearsInsertInput._(this._$data);

  factory Input_StudyYearsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('classes')) {
      final l$classes = data['classes'];
      result$data['classes'] = l$classes == null
          ? null
          : Input_ClassesArrRelInsertInput.fromJson(
              (l$classes as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetings')) {
      final l$meetings = data['meetings'];
      result$data['meetings'] = l$meetings == null
          ? null
          : Input_HistoryMeetingsArrRelInsertInput.fromJson(
              (l$meetings as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as int?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_StudyYearsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesArrRelInsertInput? get classes =>
      (_$data['classes'] as Input_ClassesArrRelInsertInput?);

  Input_HistoryMeetingsArrRelInsertInput? get meetings =>
      (_$data['meetings'] as Input_HistoryMeetingsArrRelInsertInput?);

  String? get name => (_$data['name'] as String?);

  int? get order => (_$data['order'] as int?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('classes')) {
      final l$classes = classes;
      result$data['classes'] = l$classes?.toJson();
    }
    if (_$data.containsKey('meetings')) {
      final l$meetings = meetings;
      result$data['meetings'] = l$meetings?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StudyYearsInsertInput<Input_StudyYearsInsertInput>
  get copyWith => CopyWith_Input_StudyYearsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsInsertInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$classes = classes;
    final lOther$classes = other.classes;
    if (_$data.containsKey('classes') != other._$data.containsKey('classes')) {
      return false;
    }
    if (l$classes != lOther$classes) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$classes = classes;
    final l$meetings = meetings;
    final l$name = name;
    final l$order = order;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('classes') ? l$classes : const {},
      _$data.containsKey('meetings') ? l$meetings : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_StudyYearsInsertInput<TRes> {
  factory CopyWith_Input_StudyYearsInsertInput(
    Input_StudyYearsInsertInput instance,
    TRes Function(Input_StudyYearsInsertInput) then,
  ) = _CopyWithImpl_Input_StudyYearsInsertInput;

  factory CopyWith_Input_StudyYearsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsInsertInput;

  TRes call({
    Input_ClassesArrRelInsertInput? classes,
    Input_HistoryMeetingsArrRelInsertInput? meetings,
    String? name,
    int? order,
    Input_PersonsArrRelInsertInput? persons,
  });
  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes;
  CopyWith_Input_HistoryMeetingsArrRelInsertInput<TRes> get meetings;
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_StudyYearsInsertInput<TRes>
    implements CopyWith_Input_StudyYearsInsertInput<TRes> {
  _CopyWithImpl_Input_StudyYearsInsertInput(this._instance, this._then);

  final Input_StudyYearsInsertInput _instance;

  final TRes Function(Input_StudyYearsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? classes = _undefined,
    Object? meetings = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? persons = _undefined,
  }) => _then(
    Input_StudyYearsInsertInput._({
      ..._instance._$data,
      if (classes != _undefined)
        'classes': (classes as Input_ClassesArrRelInsertInput?),
      if (meetings != _undefined)
        'meetings': (meetings as Input_HistoryMeetingsArrRelInsertInput?),
      if (name != _undefined) 'name': (name as String?),
      if (order != _undefined) 'order': (order as int?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsArrRelInsertInput?),
    }),
  );

  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes {
    final local$classes = _instance.classes;
    return local$classes == null
        ? CopyWith_Input_ClassesArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_ClassesArrRelInsertInput(
            local$classes,
            (e) => call(classes: e),
          );
  }

  CopyWith_Input_HistoryMeetingsArrRelInsertInput<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Input_HistoryMeetingsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsArrRelInsertInput(
            local$meetings,
            (e) => call(meetings: e),
          );
  }

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsArrRelInsertInput(
            local$persons,
            (e) => call(persons: e),
          );
  }
}

class _CopyWithStubImpl_Input_StudyYearsInsertInput<TRes>
    implements CopyWith_Input_StudyYearsInsertInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsInsertInput(this._res);

  TRes _res;

  call({
    Input_ClassesArrRelInsertInput? classes,
    Input_HistoryMeetingsArrRelInsertInput? meetings,
    String? name,
    int? order,
    Input_PersonsArrRelInsertInput? persons,
  }) => _res;

  CopyWith_Input_ClassesArrRelInsertInput<TRes> get classes =>
      CopyWith_Input_ClassesArrRelInsertInput.stub(_res);

  CopyWith_Input_HistoryMeetingsArrRelInsertInput<TRes> get meetings =>
      CopyWith_Input_HistoryMeetingsArrRelInsertInput.stub(_res);

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_StudyYearsObjRelInsertInput {
  factory Input_StudyYearsObjRelInsertInput({
    required Input_StudyYearsInsertInput data,
    Input_StudyYearsOnConflict? onConflict,
  }) => Input_StudyYearsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_StudyYearsObjRelInsertInput._(this._$data);

  factory Input_StudyYearsObjRelInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_StudyYearsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_StudyYearsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_StudyYearsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StudyYearsInsertInput get data =>
      (_$data['data'] as Input_StudyYearsInsertInput);

  Input_StudyYearsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_StudyYearsOnConflict?);

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

  CopyWith_Input_StudyYearsObjRelInsertInput<Input_StudyYearsObjRelInsertInput>
  get copyWith => CopyWith_Input_StudyYearsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsObjRelInsertInput ||
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

abstract class CopyWith_Input_StudyYearsObjRelInsertInput<TRes> {
  factory CopyWith_Input_StudyYearsObjRelInsertInput(
    Input_StudyYearsObjRelInsertInput instance,
    TRes Function(Input_StudyYearsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_StudyYearsObjRelInsertInput;

  factory CopyWith_Input_StudyYearsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsObjRelInsertInput;

  TRes call({
    Input_StudyYearsInsertInput? data,
    Input_StudyYearsOnConflict? onConflict,
  });
  CopyWith_Input_StudyYearsInsertInput<TRes> get data;
  CopyWith_Input_StudyYearsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_StudyYearsObjRelInsertInput<TRes>
    implements CopyWith_Input_StudyYearsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_StudyYearsObjRelInsertInput(this._instance, this._then);

  final Input_StudyYearsObjRelInsertInput _instance;

  final TRes Function(Input_StudyYearsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_StudyYearsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_StudyYearsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_StudyYearsOnConflict?),
        }),
      );

  CopyWith_Input_StudyYearsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_StudyYearsInsertInput(
      local$data,
      (e) => call(data: e),
    );
  }

  CopyWith_Input_StudyYearsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_StudyYearsOnConflict.stub(_then(_instance))
        : CopyWith_Input_StudyYearsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_StudyYearsObjRelInsertInput<TRes>
    implements CopyWith_Input_StudyYearsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_StudyYearsInsertInput? data,
    Input_StudyYearsOnConflict? onConflict,
  }) => _res;

  CopyWith_Input_StudyYearsInsertInput<TRes> get data =>
      CopyWith_Input_StudyYearsInsertInput.stub(_res);

  CopyWith_Input_StudyYearsOnConflict<TRes> get onConflict =>
      CopyWith_Input_StudyYearsOnConflict.stub(_res);
}

class Input_StudyYearsOnConflict {
  factory Input_StudyYearsOnConflict({
    required Enum_StudyYearsConstraint constraint,
    List<Enum_StudyYearsUpdateColumn>? updateColumns,
    Input_StudyYearsBoolExp? where,
  }) => Input_StudyYearsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_StudyYearsOnConflict._(this._$data);

  factory Input_StudyYearsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_StudyYearsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_StudyYearsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_StudyYearsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_StudyYearsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_StudyYearsConstraint get constraint =>
      (_$data['constraint'] as Enum_StudyYearsConstraint);

  List<Enum_StudyYearsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_StudyYearsUpdateColumn>?);

  Input_StudyYearsBoolExp? get where =>
      (_$data['where'] as Input_StudyYearsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_StudyYearsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_StudyYearsUpdateColumn>)
              .map((e) => toJson_Enum_StudyYearsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StudyYearsOnConflict<Input_StudyYearsOnConflict>
  get copyWith => CopyWith_Input_StudyYearsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsOnConflict ||
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

abstract class CopyWith_Input_StudyYearsOnConflict<TRes> {
  factory CopyWith_Input_StudyYearsOnConflict(
    Input_StudyYearsOnConflict instance,
    TRes Function(Input_StudyYearsOnConflict) then,
  ) = _CopyWithImpl_Input_StudyYearsOnConflict;

  factory CopyWith_Input_StudyYearsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsOnConflict;

  TRes call({
    Enum_StudyYearsConstraint? constraint,
    List<Enum_StudyYearsUpdateColumn>? updateColumns,
    Input_StudyYearsBoolExp? where,
  });
  CopyWith_Input_StudyYearsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_StudyYearsOnConflict<TRes>
    implements CopyWith_Input_StudyYearsOnConflict<TRes> {
  _CopyWithImpl_Input_StudyYearsOnConflict(this._instance, this._then);

  final Input_StudyYearsOnConflict _instance;

  final TRes Function(Input_StudyYearsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_StudyYearsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_StudyYearsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_StudyYearsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_StudyYearsBoolExp?),
    }),
  );

  CopyWith_Input_StudyYearsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_StudyYearsBoolExp.stub(_then(_instance))
        : CopyWith_Input_StudyYearsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_StudyYearsOnConflict<TRes>
    implements CopyWith_Input_StudyYearsOnConflict<TRes> {
  _CopyWithStubImpl_Input_StudyYearsOnConflict(this._res);

  TRes _res;

  call({
    Enum_StudyYearsConstraint? constraint,
    List<Enum_StudyYearsUpdateColumn>? updateColumns,
    Input_StudyYearsBoolExp? where,
  }) => _res;

  CopyWith_Input_StudyYearsBoolExp<TRes> get where =>
      CopyWith_Input_StudyYearsBoolExp.stub(_res);
}

class Input_StudyYearsOrderBy {
  factory Input_StudyYearsOrderBy({
    Input_ClassesAggregateOrderBy? classesAggregate,
    Enum_OrderBy? id,
    Input_HistoryMeetingsAggregateOrderBy? meetingsAggregate,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_StudyYearsOrderBy._({
    if (classesAggregate != null) r'classesAggregate': classesAggregate,
    if (id != null) r'id': id,
    if (meetingsAggregate != null) r'meetingsAggregate': meetingsAggregate,
    if (name != null) r'name': name,
    if (order != null) r'order': order,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_StudyYearsOrderBy._(this._$data);

  factory Input_StudyYearsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('classesAggregate')) {
      final l$classesAggregate = data['classesAggregate'];
      result$data['classesAggregate'] = l$classesAggregate == null
          ? null
          : Input_ClassesAggregateOrderBy.fromJson(
              (l$classesAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('meetingsAggregate')) {
      final l$meetingsAggregate = data['meetingsAggregate'];
      result$data['meetingsAggregate'] = l$meetingsAggregate == null
          ? null
          : Input_HistoryMeetingsAggregateOrderBy.fromJson(
              (l$meetingsAggregate as Map<String, dynamic>),
            );
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_OrderBy((l$order as String));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_StudyYearsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ClassesAggregateOrderBy? get classesAggregate =>
      (_$data['classesAggregate'] as Input_ClassesAggregateOrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Input_HistoryMeetingsAggregateOrderBy? get meetingsAggregate =>
      (_$data['meetingsAggregate'] as Input_HistoryMeetingsAggregateOrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Enum_OrderBy? get order => (_$data['order'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('classesAggregate')) {
      final l$classesAggregate = classesAggregate;
      result$data['classesAggregate'] = l$classesAggregate?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('meetingsAggregate')) {
      final l$meetingsAggregate = meetingsAggregate;
      result$data['meetingsAggregate'] = l$meetingsAggregate?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name == null ? null : toJson_Enum_OrderBy(l$name);
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_OrderBy(l$order);
    }
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StudyYearsOrderBy<Input_StudyYearsOrderBy> get copyWith =>
      CopyWith_Input_StudyYearsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsOrderBy || runtimeType != other.runtimeType) {
      return false;
    }
    final l$classesAggregate = classesAggregate;
    final lOther$classesAggregate = other.classesAggregate;
    if (_$data.containsKey('classesAggregate') !=
        other._$data.containsKey('classesAggregate')) {
      return false;
    }
    if (l$classesAggregate != lOther$classesAggregate) {
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
    final l$meetingsAggregate = meetingsAggregate;
    final lOther$meetingsAggregate = other.meetingsAggregate;
    if (_$data.containsKey('meetingsAggregate') !=
        other._$data.containsKey('meetingsAggregate')) {
      return false;
    }
    if (l$meetingsAggregate != lOther$meetingsAggregate) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != lOther$order) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$classesAggregate = classesAggregate;
    final l$id = id;
    final l$meetingsAggregate = meetingsAggregate;
    final l$name = name;
    final l$order = order;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('classesAggregate') ? l$classesAggregate : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('meetingsAggregate') ? l$meetingsAggregate : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('order') ? l$order : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_StudyYearsOrderBy<TRes> {
  factory CopyWith_Input_StudyYearsOrderBy(
    Input_StudyYearsOrderBy instance,
    TRes Function(Input_StudyYearsOrderBy) then,
  ) = _CopyWithImpl_Input_StudyYearsOrderBy;

  factory CopyWith_Input_StudyYearsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsOrderBy;

  TRes call({
    Input_ClassesAggregateOrderBy? classesAggregate,
    Enum_OrderBy? id,
    Input_HistoryMeetingsAggregateOrderBy? meetingsAggregate,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate;
  CopyWith_Input_HistoryMeetingsAggregateOrderBy<TRes> get meetingsAggregate;
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_StudyYearsOrderBy<TRes>
    implements CopyWith_Input_StudyYearsOrderBy<TRes> {
  _CopyWithImpl_Input_StudyYearsOrderBy(this._instance, this._then);

  final Input_StudyYearsOrderBy _instance;

  final TRes Function(Input_StudyYearsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? classesAggregate = _undefined,
    Object? id = _undefined,
    Object? meetingsAggregate = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_StudyYearsOrderBy._({
      ..._instance._$data,
      if (classesAggregate != _undefined)
        'classesAggregate':
            (classesAggregate as Input_ClassesAggregateOrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (meetingsAggregate != _undefined)
        'meetingsAggregate':
            (meetingsAggregate as Input_HistoryMeetingsAggregateOrderBy?),
      if (name != _undefined) 'name': (name as Enum_OrderBy?),
      if (order != _undefined) 'order': (order as Enum_OrderBy?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateOrderBy?),
    }),
  );

  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate {
    final local$classesAggregate = _instance.classesAggregate;
    return local$classesAggregate == null
        ? CopyWith_Input_ClassesAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_ClassesAggregateOrderBy(
            local$classesAggregate,
            (e) => call(classesAggregate: e),
          );
  }

  CopyWith_Input_HistoryMeetingsAggregateOrderBy<TRes> get meetingsAggregate {
    final local$meetingsAggregate = _instance.meetingsAggregate;
    return local$meetingsAggregate == null
        ? CopyWith_Input_HistoryMeetingsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_HistoryMeetingsAggregateOrderBy(
            local$meetingsAggregate,
            (e) => call(meetingsAggregate: e),
          );
  }

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateOrderBy(
            local$personsAggregate,
            (e) => call(personsAggregate: e),
          );
  }
}

class _CopyWithStubImpl_Input_StudyYearsOrderBy<TRes>
    implements CopyWith_Input_StudyYearsOrderBy<TRes> {
  _CopyWithStubImpl_Input_StudyYearsOrderBy(this._res);

  TRes _res;

  call({
    Input_ClassesAggregateOrderBy? classesAggregate,
    Enum_OrderBy? id,
    Input_HistoryMeetingsAggregateOrderBy? meetingsAggregate,
    Enum_OrderBy? name,
    Enum_OrderBy? order,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => _res;

  CopyWith_Input_ClassesAggregateOrderBy<TRes> get classesAggregate =>
      CopyWith_Input_ClassesAggregateOrderBy.stub(_res);

  CopyWith_Input_HistoryMeetingsAggregateOrderBy<TRes> get meetingsAggregate =>
      CopyWith_Input_HistoryMeetingsAggregateOrderBy.stub(_res);

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_StudyYearsPkColumnsInput {
  factory Input_StudyYearsPkColumnsInput({required int order}) =>
      Input_StudyYearsPkColumnsInput._({r'order': order});

  Input_StudyYearsPkColumnsInput._(this._$data);

  factory Input_StudyYearsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$order = data['order'];
    result$data['order'] = (l$order as int);
    return Input_StudyYearsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get order => (_$data['order'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$order = order;
    result$data['order'] = l$order;
    return result$data;
  }

  CopyWith_Input_StudyYearsPkColumnsInput<Input_StudyYearsPkColumnsInput>
  get copyWith => CopyWith_Input_StudyYearsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    return Object.hashAll([l$order]);
  }
}

abstract class CopyWith_Input_StudyYearsPkColumnsInput<TRes> {
  factory CopyWith_Input_StudyYearsPkColumnsInput(
    Input_StudyYearsPkColumnsInput instance,
    TRes Function(Input_StudyYearsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_StudyYearsPkColumnsInput;

  factory CopyWith_Input_StudyYearsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsPkColumnsInput;

  TRes call({int? order});
}

class _CopyWithImpl_Input_StudyYearsPkColumnsInput<TRes>
    implements CopyWith_Input_StudyYearsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_StudyYearsPkColumnsInput(this._instance, this._then);

  final Input_StudyYearsPkColumnsInput _instance;

  final TRes Function(Input_StudyYearsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined}) => _then(
    Input_StudyYearsPkColumnsInput._({
      ..._instance._$data,
      if (order != _undefined && order != null) 'order': (order as int),
    }),
  );
}

class _CopyWithStubImpl_Input_StudyYearsPkColumnsInput<TRes>
    implements CopyWith_Input_StudyYearsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsPkColumnsInput(this._res);

  TRes _res;

  call({int? order}) => _res;
}

class Input_StudyYearsSetInput {
  factory Input_StudyYearsSetInput({String? name}) =>
      Input_StudyYearsSetInput._({if (name != null) r'name': name});

  Input_StudyYearsSetInput._(this._$data);

  factory Input_StudyYearsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_StudyYearsSetInput._(result$data);
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

  CopyWith_Input_StudyYearsSetInput<Input_StudyYearsSetInput> get copyWith =>
      CopyWith_Input_StudyYearsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsSetInput ||
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

abstract class CopyWith_Input_StudyYearsSetInput<TRes> {
  factory CopyWith_Input_StudyYearsSetInput(
    Input_StudyYearsSetInput instance,
    TRes Function(Input_StudyYearsSetInput) then,
  ) = _CopyWithImpl_Input_StudyYearsSetInput;

  factory CopyWith_Input_StudyYearsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StudyYearsSetInput;

  TRes call({String? name});
}

class _CopyWithImpl_Input_StudyYearsSetInput<TRes>
    implements CopyWith_Input_StudyYearsSetInput<TRes> {
  _CopyWithImpl_Input_StudyYearsSetInput(this._instance, this._then);

  final Input_StudyYearsSetInput _instance;

  final TRes Function(Input_StudyYearsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(
    Input_StudyYearsSetInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_StudyYearsSetInput<TRes>
    implements CopyWith_Input_StudyYearsSetInput<TRes> {
  _CopyWithStubImpl_Input_StudyYearsSetInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input_StudyYearsStreamCursorInput {
  factory Input_StudyYearsStreamCursorInput({
    required Input_StudyYearsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_StudyYearsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_StudyYearsStreamCursorInput._(this._$data);

  factory Input_StudyYearsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_StudyYearsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_StudyYearsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_StudyYearsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_StudyYearsStreamCursorValueInput);

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

  CopyWith_Input_StudyYearsStreamCursorInput<Input_StudyYearsStreamCursorInput>
  get copyWith => CopyWith_Input_StudyYearsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StudyYearsStreamCursorInput ||
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
