// Part 35 of the schema
part of "schema.graphql.dart";


abstract class CopyWith_Input_JsonbComparisonExp<TRes> {
  factory CopyWith_Input_JsonbComparisonExp(
    Input_JsonbComparisonExp instance,
    TRes Function(Input_JsonbComparisonExp) then,
  ) = _CopyWithImpl_Input_JsonbComparisonExp;

  factory CopyWith_Input_JsonbComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_JsonbComparisonExp;

  TRes call({
    Input_JsonbCastExp? $_cast,
    Json? $_containedIn,
    Json? $_contains,
    Json? $_eq,
    Json? $_gt,
    Json? $_gte,
    String? $_hasKey,
    List<String>? $_hasKeysAll,
    List<String>? $_hasKeysAny,
    List<Json>? $_in,
    bool? $_isNull,
    Json? $_lt,
    Json? $_lte,
    Json? $_neq,
    List<Json>? $_nin,
  });
  CopyWith_Input_JsonbCastExp<TRes> get $_cast;
}

class _CopyWithImpl_Input_JsonbComparisonExp<TRes>
    implements CopyWith_Input_JsonbComparisonExp<TRes> {
  _CopyWithImpl_Input_JsonbComparisonExp(
    this._instance,
    this._then,
  );

  final Input_JsonbComparisonExp _instance;

  final TRes Function(Input_JsonbComparisonExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_cast = _undefined,
    Object? $_containedIn = _undefined,
    Object? $_contains = _undefined,
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_hasKey = _undefined,
    Object? $_hasKeysAll = _undefined,
    Object? $_hasKeysAny = _undefined,
    Object? $_in = _undefined,
    Object? $_isNull = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) =>
      _then(Input_JsonbComparisonExp._({
        ..._instance._$data,
        if ($_cast != _undefined) '_cast': ($_cast as Input_JsonbCastExp?),
        if ($_containedIn != _undefined)
          '_containedIn': ($_containedIn as Json?),
        if ($_contains != _undefined) '_contains': ($_contains as Json?),
        if ($_eq != _undefined) '_eq': ($_eq as Json?),
        if ($_gt != _undefined) '_gt': ($_gt as Json?),
        if ($_gte != _undefined) '_gte': ($_gte as Json?),
        if ($_hasKey != _undefined) '_hasKey': ($_hasKey as String?),
        if ($_hasKeysAll != _undefined)
          '_hasKeysAll': ($_hasKeysAll as List<String>?),
        if ($_hasKeysAny != _undefined)
          '_hasKeysAny': ($_hasKeysAny as List<String>?),
        if ($_in != _undefined) '_in': ($_in as List<Json>?),
        if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
        if ($_lt != _undefined) '_lt': ($_lt as Json?),
        if ($_lte != _undefined) '_lte': ($_lte as Json?),
        if ($_neq != _undefined) '_neq': ($_neq as Json?),
        if ($_nin != _undefined) '_nin': ($_nin as List<Json>?),
      }));

  CopyWith_Input_JsonbCastExp<TRes> get $_cast {
    final local$$_cast = _instance.$_cast;
    return local$$_cast == null
        ? CopyWith_Input_JsonbCastExp.stub(_then(_instance))
        : CopyWith_Input_JsonbCastExp(local$$_cast, (e) => call($_cast: e));
  }
}

class _CopyWithStubImpl_Input_JsonbComparisonExp<TRes>
    implements CopyWith_Input_JsonbComparisonExp<TRes> {
  _CopyWithStubImpl_Input_JsonbComparisonExp(this._res);

  TRes _res;

  call({
    Input_JsonbCastExp? $_cast,
    Json? $_containedIn,
    Json? $_contains,
    Json? $_eq,
    Json? $_gt,
    Json? $_gte,
    String? $_hasKey,
    List<String>? $_hasKeysAll,
    List<String>? $_hasKeysAny,
    List<Json>? $_in,
    bool? $_isNull,
    Json? $_lt,
    Json? $_lte,
    Json? $_neq,
    List<Json>? $_nin,
  }) =>
      _res;

  CopyWith_Input_JsonbCastExp<TRes> get $_cast =>
      CopyWith_Input_JsonbCastExp.stub(_res);
}

class Input_NameComparisonExp {
  factory Input_NameComparisonExp({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    List<String>? $_in,
    bool? $_isNull,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
  }) =>
      Input_NameComparisonExp._({
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

  Input_NameComparisonExp._(this._$data);

  factory Input_NameComparisonExp.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] =
          (l$$_in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('_isNull')) {
      final l$$_isNull = data['_isNull'];
      result$data['_isNull'] = (l$$_isNull as bool?);
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
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] =
          (l$$_nin as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input_NameComparisonExp._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_eq => (_$data['_eq'] as String?);

  String? get $_gt => (_$data['_gt'] as String?);

  String? get $_gte => (_$data['_gte'] as String?);

  List<String>? get $_in => (_$data['_in'] as List<String>?);

  bool? get $_isNull => (_$data['_isNull'] as bool?);

  String? get $_lt => (_$data['_lt'] as String?);

  String? get $_lte => (_$data['_lte'] as String?);

  String? get $_neq => (_$data['_neq'] as String?);

  List<String>? get $_nin => (_$data['_nin'] as List<String>?);

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
    return result$data;
  }

  CopyWith_Input_NameComparisonExp<Input_NameComparisonExp> get copyWith =>
      CopyWith_Input_NameComparisonExp(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_NameComparisonExp || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_NameComparisonExp<TRes> {
  factory CopyWith_Input_NameComparisonExp(
    Input_NameComparisonExp instance,
    TRes Function(Input_NameComparisonExp) then,
  ) = _CopyWithImpl_Input_NameComparisonExp;

  factory CopyWith_Input_NameComparisonExp.stub(TRes res) =
      _CopyWithStubImpl_Input_NameComparisonExp;

  TRes call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    List<String>? $_in,
    bool? $_isNull,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
  });
}

class _CopyWithImpl_Input_NameComparisonExp<TRes>
    implements CopyWith_Input_NameComparisonExp<TRes> {
  _CopyWithImpl_Input_NameComparisonExp(
    this._instance,
    this._then,
  );

  final Input_NameComparisonExp _instance;

  final TRes Function(Input_NameComparisonExp) _then;

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
  }) =>
      _then(Input_NameComparisonExp._({
        ..._instance._$data,
        if ($_eq != _undefined) '_eq': ($_eq as String?),
        if ($_gt != _undefined) '_gt': ($_gt as String?),
        if ($_gte != _undefined) '_gte': ($_gte as String?),
        if ($_in != _undefined) '_in': ($_in as List<String>?),
        if ($_isNull != _undefined) '_isNull': ($_isNull as bool?),
        if ($_lt != _undefined) '_lt': ($_lt as String?),
        if ($_lte != _undefined) '_lte': ($_lte as String?),
        if ($_neq != _undefined) '_neq': ($_neq as String?),
        if ($_nin != _undefined) '_nin': ($_nin as List<String>?),
      }));
}

class _CopyWithStubImpl_Input_NameComparisonExp<TRes>
    implements CopyWith_Input_NameComparisonExp<TRes> {
  _CopyWithStubImpl_Input_NameComparisonExp(this._res);

  TRes _res;

  call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    List<String>? $_in,
    bool? $_isNull,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
  }) =>
      _res;
}

class Input_PersonStatesBoolExp {
  factory Input_PersonStatesBoolExp({
    List<Input_PersonStatesBoolExp>? $_and,
    Input_PersonStatesBoolExp? $_not,
    List<Input_PersonStatesBoolExp>? $_or,
    Input_BigintComparisonExp? color,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) =>
      Input_PersonStatesBoolExp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (color != null) r'color': color,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (persons != null) r'persons': persons,
        if (personsAggregate != null) r'personsAggregate': personsAggregate,
      });

  Input_PersonStatesBoolExp._(this._$data);

  factory Input_PersonStatesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) =>
              Input_PersonStatesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_PersonStatesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) =>
              Input_PersonStatesBoolExp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_BigintComparisonExp.fromJson(
              (l$color as Map<String, dynamic>));
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
              (l$name as Map<String, dynamic>));
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
              (l$personsAggregate as Map<String, dynamic>));
    }
    return Input_PersonStatesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_PersonStatesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_PersonStatesBoolExp>?);

  Input_PersonStatesBoolExp? get $_not =>
      (_$data['_not'] as Input_PersonStatesBoolExp?);

  List<Input_PersonStatesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_PersonStatesBoolExp>?);

  Input_BigintComparisonExp? get color =>
      (_$data['color'] as Input_BigintComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get name =>
      (_$data['name'] as Input_StringComparisonExp?);

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
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
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
    return result$data;
  }

  CopyWith_Input_PersonStatesBoolExp<Input_PersonStatesBoolExp> get copyWith =>
      CopyWith_Input_PersonStatesBoolExp(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesBoolExp ||
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
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$color = color;
    final l$id = id;
    final l$name = name;
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
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonStatesBoolExp<TRes> {
  factory CopyWith_Input_PersonStatesBoolExp(
    Input_PersonStatesBoolExp instance,
    TRes Function(Input_PersonStatesBoolExp) then,
  ) = _CopyWithImpl_Input_PersonStatesBoolExp;

  factory CopyWith_Input_PersonStatesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesBoolExp;

  TRes call({
    List<Input_PersonStatesBoolExp>? $_and,
    Input_PersonStatesBoolExp? $_not,
    List<Input_PersonStatesBoolExp>? $_or,
    Input_BigintComparisonExp? color,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
      Iterable<Input_PersonStatesBoolExp>? Function(
              Iterable<
                  CopyWith_Input_PersonStatesBoolExp<
                      Input_PersonStatesBoolExp>>?)
          _fn);
  CopyWith_Input_PersonStatesBoolExp<TRes> get $_not;
  TRes $_or(
      Iterable<Input_PersonStatesBoolExp>? Function(
              Iterable<
                  CopyWith_Input_PersonStatesBoolExp<
                      Input_PersonStatesBoolExp>>?)
          _fn);
  CopyWith_Input_BigintComparisonExp<TRes> get color;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_PersonStatesBoolExp<TRes>
    implements CopyWith_Input_PersonStatesBoolExp<TRes> {
  _CopyWithImpl_Input_PersonStatesBoolExp(
    this._instance,
    this._then,
  );

  final Input_PersonStatesBoolExp _instance;

  final TRes Function(Input_PersonStatesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) =>
      _then(Input_PersonStatesBoolExp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input_PersonStatesBoolExp>?),
        if ($_not != _undefined) '_not': ($_not as Input_PersonStatesBoolExp?),
        if ($_or != _undefined)
          '_or': ($_or as List<Input_PersonStatesBoolExp>?),
        if (color != _undefined) 'color': (color as Input_BigintComparisonExp?),
        if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
        if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
        if (persons != _undefined)
          'persons': (persons as Input_PersonsBoolExp?),
        if (personsAggregate != _undefined)
          'personsAggregate':
              (personsAggregate as Input_PersonsAggregateBoolExp?),
      }));

  TRes $_and(
          Iterable<Input_PersonStatesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_PersonStatesBoolExp<
                          Input_PersonStatesBoolExp>>?)
              _fn) =>
      call(
          $_and: _fn(
              _instance.$_and?.map((e) => CopyWith_Input_PersonStatesBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_PersonStatesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_PersonStatesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonStatesBoolExp(
            local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input_PersonStatesBoolExp>? Function(
                  Iterable<
                      CopyWith_Input_PersonStatesBoolExp<
                          Input_PersonStatesBoolExp>>?)
              _fn) =>
      call(
          $_or:
              _fn(_instance.$_or?.map((e) => CopyWith_Input_PersonStatesBoolExp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith_Input_BigintComparisonExp<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_BigintComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BigintComparisonExp(
            local$color, (e) => call(color: e));
  }

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
            local$personsAggregate, (e) => call(personsAggregate: e));
  }
}

class _CopyWithStubImpl_Input_PersonStatesBoolExp<TRes>
    implements CopyWith_Input_PersonStatesBoolExp<TRes> {
  _CopyWithStubImpl_Input_PersonStatesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_PersonStatesBoolExp>? $_and,
    Input_PersonStatesBoolExp? $_not,
    List<Input_PersonStatesBoolExp>? $_or,
    Input_BigintComparisonExp? color,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith_Input_PersonStatesBoolExp<TRes> get $_not =>
      CopyWith_Input_PersonStatesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_BigintComparisonExp<TRes> get color =>
      CopyWith_Input_BigintComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_PersonStatesIncInput {
  factory Input_PersonStatesIncInput({int? color}) =>
      Input_PersonStatesIncInput._({
        if (color != null) r'color': color,
      });

  Input_PersonStatesIncInput._(this._$data);

  factory Input_PersonStatesIncInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    return Input_PersonStatesIncInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    return result$data;
  }

  CopyWith_Input_PersonStatesIncInput<Input_PersonStatesIncInput>
      get copyWith => CopyWith_Input_PersonStatesIncInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesIncInput ||
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

abstract class CopyWith_Input_PersonStatesIncInput<TRes> {
  factory CopyWith_Input_PersonStatesIncInput(
    Input_PersonStatesIncInput instance,
    TRes Function(Input_PersonStatesIncInput) then,
  ) = _CopyWithImpl_Input_PersonStatesIncInput;

  factory CopyWith_Input_PersonStatesIncInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesIncInput;

  TRes call({int? color});
}

class _CopyWithImpl_Input_PersonStatesIncInput<TRes>
    implements CopyWith_Input_PersonStatesIncInput<TRes> {
  _CopyWithImpl_Input_PersonStatesIncInput(
    this._instance,
    this._then,
  );

  final Input_PersonStatesIncInput _instance;

  final TRes Function(Input_PersonStatesIncInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? color = _undefined}) =>
      _then(Input_PersonStatesIncInput._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as int?),
      }));
}

class _CopyWithStubImpl_Input_PersonStatesIncInput<TRes>
    implements CopyWith_Input_PersonStatesIncInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesIncInput(this._res);

  TRes _res;

  call({int? color}) => _res;
}

class Input_PersonStatesInsertInput {
  factory Input_PersonStatesInsertInput({
    int? color,
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) =>
      Input_PersonStatesInsertInput._({
        if (color != null) r'color': color,
        if (name != null) r'name': name,
        if (persons != null) r'persons': persons,
      });

  Input_PersonStatesInsertInput._(this._$data);

  factory Input_PersonStatesInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>));
    }
    return Input_PersonStatesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('persons')) {
      final l$persons = persons;
      result$data['persons'] = l$persons?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonStatesInsertInput<Input_PersonStatesInsertInput>
      get copyWith => CopyWith_Input_PersonStatesInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesInsertInput ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$name = name;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonStatesInsertInput<TRes> {
  factory CopyWith_Input_PersonStatesInsertInput(
    Input_PersonStatesInsertInput instance,
    TRes Function(Input_PersonStatesInsertInput) then,
  ) = _CopyWithImpl_Input_PersonStatesInsertInput;

  factory CopyWith_Input_PersonStatesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesInsertInput;

  TRes call({
    int? color,
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  });
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_PersonStatesInsertInput<TRes>
    implements CopyWith_Input_PersonStatesInsertInput<TRes> {
  _CopyWithImpl_Input_PersonStatesInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonStatesInsertInput _instance;

  final TRes Function(Input_PersonStatesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
  }) =>
      _then(Input_PersonStatesInsertInput._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as int?),
        if (name != _undefined) 'name': (name as String?),
        if (persons != _undefined)
          'persons': (persons as Input_PersonsArrRelInsertInput?),
      }));

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons {
    final local$persons = _instance.persons;
    return local$persons == null
        ? CopyWith_Input_PersonsArrRelInsertInput.stub(_then(_instance))
        : CopyWith_Input_PersonsArrRelInsertInput(
            local$persons, (e) => call(persons: e));
  }
}

class _CopyWithStubImpl_Input_PersonStatesInsertInput<TRes>
    implements CopyWith_Input_PersonStatesInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesInsertInput(this._res);

  TRes _res;

  call({
    int? color,
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) =>
      _res;

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_PersonStatesObjRelInsertInput {
  factory Input_PersonStatesObjRelInsertInput({
    required Input_PersonStatesInsertInput data,
    Input_PersonStatesOnConflict? onConflict,
  }) =>
      Input_PersonStatesObjRelInsertInput._({
        r'data': data,
        if (onConflict != null) r'onConflict': onConflict,
      });

  Input_PersonStatesObjRelInsertInput._(this._$data);

  factory Input_PersonStatesObjRelInsertInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_PersonStatesInsertInput.fromJson(
        (l$data as Map<String, dynamic>));
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_PersonStatesOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>));
    }
    return Input_PersonStatesObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonStatesInsertInput get data =>
      (_$data['data'] as Input_PersonStatesInsertInput);

  Input_PersonStatesOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_PersonStatesOnConflict?);

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

  CopyWith_Input_PersonStatesObjRelInsertInput<
          Input_PersonStatesObjRelInsertInput>
      get copyWith => CopyWith_Input_PersonStatesObjRelInsertInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesObjRelInsertInput ||
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

abstract class CopyWith_Input_PersonStatesObjRelInsertInput<TRes> {
  factory CopyWith_Input_PersonStatesObjRelInsertInput(
    Input_PersonStatesObjRelInsertInput instance,
    TRes Function(Input_PersonStatesObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_PersonStatesObjRelInsertInput;

  factory CopyWith_Input_PersonStatesObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesObjRelInsertInput;

  TRes call({
    Input_PersonStatesInsertInput? data,
    Input_PersonStatesOnConflict? onConflict,
  });
  CopyWith_Input_PersonStatesInsertInput<TRes> get data;
  CopyWith_Input_PersonStatesOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_PersonStatesObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonStatesObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_PersonStatesObjRelInsertInput(
    this._instance,
    this._then,
  );

  final Input_PersonStatesObjRelInsertInput _instance;

  final TRes Function(Input_PersonStatesObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? onConflict = _undefined,
  }) =>
      _then(Input_PersonStatesObjRelInsertInput._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input_PersonStatesInsertInput),
        if (onConflict != _undefined)
          'onConflict': (onConflict as Input_PersonStatesOnConflict?),
      }));

  CopyWith_Input_PersonStatesInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_PersonStatesInsertInput(
        local$data, (e) => call(data: e));
  }

  CopyWith_Input_PersonStatesOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_PersonStatesOnConflict.stub(_then(_instance))
        : CopyWith_Input_PersonStatesOnConflict(
            local$onConflict, (e) => call(onConflict: e));
  }
}

class _CopyWithStubImpl_Input_PersonStatesObjRelInsertInput<TRes>
    implements CopyWith_Input_PersonStatesObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesObjRelInsertInput(this._res);

  TRes _res;

  call({
    Input_PersonStatesInsertInput? data,
    Input_PersonStatesOnConflict? onConflict,
  }) =>
      _res;

  CopyWith_Input_PersonStatesInsertInput<TRes> get data =>
      CopyWith_Input_PersonStatesInsertInput.stub(_res);

  CopyWith_Input_PersonStatesOnConflict<TRes> get onConflict =>
      CopyWith_Input_PersonStatesOnConflict.stub(_res);
}

class Input_PersonStatesOnConflict {
  factory Input_PersonStatesOnConflict({
    required Enum_PersonStatesConstraint constraint,
    List<Enum_PersonStatesUpdateColumn>? updateColumns,
    Input_PersonStatesBoolExp? where,
  }) =>
      Input_PersonStatesOnConflict._({
        r'constraint': constraint,
        if (updateColumns != null) r'updateColumns': updateColumns,
        if (where != null) r'where': where,
      });

  Input_PersonStatesOnConflict._(this._$data);

  factory Input_PersonStatesOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson_Enum_PersonStatesConstraint((l$constraint as String));
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_PersonStatesUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_PersonStatesBoolExp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    return Input_PersonStatesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_PersonStatesConstraint get constraint =>
      (_$data['constraint'] as Enum_PersonStatesConstraint);

  List<Enum_PersonStatesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_PersonStatesUpdateColumn>?);

  Input_PersonStatesBoolExp? get where =>
      (_$data['where'] as Input_PersonStatesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] =
        toJson_Enum_PersonStatesConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_PersonStatesUpdateColumn>)
              .map((e) => toJson_Enum_PersonStatesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_PersonStatesOnConflict<Input_PersonStatesOnConflict>
      get copyWith => CopyWith_Input_PersonStatesOnConflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesOnConflict ||
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

abstract class CopyWith_Input_PersonStatesOnConflict<TRes> {
  factory CopyWith_Input_PersonStatesOnConflict(
    Input_PersonStatesOnConflict instance,
    TRes Function(Input_PersonStatesOnConflict) then,
  ) = _CopyWithImpl_Input_PersonStatesOnConflict;

  factory CopyWith_Input_PersonStatesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesOnConflict;

  TRes call({
    Enum_PersonStatesConstraint? constraint,
    List<Enum_PersonStatesUpdateColumn>? updateColumns,
    Input_PersonStatesBoolExp? where,
  });
  CopyWith_Input_PersonStatesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_PersonStatesOnConflict<TRes>
    implements CopyWith_Input_PersonStatesOnConflict<TRes> {
  _CopyWithImpl_Input_PersonStatesOnConflict(
    this._instance,
    this._then,
  );

  final Input_PersonStatesOnConflict _instance;

  final TRes Function(Input_PersonStatesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input_PersonStatesOnConflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum_PersonStatesConstraint),
        if (updateColumns != _undefined && updateColumns != null)
          'updateColumns':
              (updateColumns as List<Enum_PersonStatesUpdateColumn>),
        if (where != _undefined) 'where': (where as Input_PersonStatesBoolExp?),
      }));

  CopyWith_Input_PersonStatesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_PersonStatesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonStatesBoolExp(
            local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_PersonStatesOnConflict<TRes>
    implements CopyWith_Input_PersonStatesOnConflict<TRes> {
  _CopyWithStubImpl_Input_PersonStatesOnConflict(this._res);

  TRes _res;

  call({
    Enum_PersonStatesConstraint? constraint,
    List<Enum_PersonStatesUpdateColumn>? updateColumns,
    Input_PersonStatesBoolExp? where,
  }) =>
      _res;

  CopyWith_Input_PersonStatesBoolExp<TRes> get where =>
      CopyWith_Input_PersonStatesBoolExp.stub(_res);
}

class Input_PersonStatesOrderBy {
  factory Input_PersonStatesOrderBy({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) =>
      Input_PersonStatesOrderBy._({
        if (color != null) r'color': color,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (personsAggregate != null) r'personsAggregate': personsAggregate,
      });

  Input_PersonStatesOrderBy._(this._$data);

  factory Input_PersonStatesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] =
          l$color == null ? null : fromJson_Enum_OrderBy((l$color as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson_Enum_OrderBy((l$name as String));
    }
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>));
    }
    return Input_PersonStatesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get color => (_$data['color'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson_Enum_OrderBy(l$color);
    }
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
    return result$data;
  }

  CopyWith_Input_PersonStatesOrderBy<Input_PersonStatesOrderBy> get copyWith =>
      CopyWith_Input_PersonStatesOrderBy(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesOrderBy ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$color = color;
    final l$id = id;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonStatesOrderBy<TRes> {
  factory CopyWith_Input_PersonStatesOrderBy(
    Input_PersonStatesOrderBy instance,
    TRes Function(Input_PersonStatesOrderBy) then,
  ) = _CopyWithImpl_Input_PersonStatesOrderBy;

  factory CopyWith_Input_PersonStatesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesOrderBy;

  TRes call({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  });
  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_PersonStatesOrderBy<TRes>
    implements CopyWith_Input_PersonStatesOrderBy<TRes> {
  _CopyWithImpl_Input_PersonStatesOrderBy(
    this._instance,
    this._then,
  );

  final Input_PersonStatesOrderBy _instance;

  final TRes Function(Input_PersonStatesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? personsAggregate = _undefined,
  }) =>
      _then(Input_PersonStatesOrderBy._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as Enum_OrderBy?),
        if (id != _undefined) 'id': (id as Enum_OrderBy?),
        if (name != _undefined) 'name': (name as Enum_OrderBy?),
        if (personsAggregate != _undefined)
          'personsAggregate':
              (personsAggregate as Input_PersonsAggregateOrderBy?),
      }));

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate {
    final local$personsAggregate = _instance.personsAggregate;
    return local$personsAggregate == null
        ? CopyWith_Input_PersonsAggregateOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsAggregateOrderBy(
            local$personsAggregate, (e) => call(personsAggregate: e));
  }
}

class _CopyWithStubImpl_Input_PersonStatesOrderBy<TRes>
    implements CopyWith_Input_PersonStatesOrderBy<TRes> {
  _CopyWithStubImpl_Input_PersonStatesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? color,
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) =>
      _res;

  CopyWith_Input_PersonsAggregateOrderBy<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateOrderBy.stub(_res);
}

class Input_PersonStatesPkColumnsInput {
  factory Input_PersonStatesPkColumnsInput({required UuidValue id}) =>
      Input_PersonStatesPkColumnsInput._({
        r'id': id,
      });

  Input_PersonStatesPkColumnsInput._(this._$data);

  factory Input_PersonStatesPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_PersonStatesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_PersonStatesPkColumnsInput<Input_PersonStatesPkColumnsInput>
      get copyWith => CopyWith_Input_PersonStatesPkColumnsInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesPkColumnsInput ||
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

abstract class CopyWith_Input_PersonStatesPkColumnsInput<TRes> {
  factory CopyWith_Input_PersonStatesPkColumnsInput(
    Input_PersonStatesPkColumnsInput instance,
    TRes Function(Input_PersonStatesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_PersonStatesPkColumnsInput;

  factory CopyWith_Input_PersonStatesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_PersonStatesPkColumnsInput<TRes>
    implements CopyWith_Input_PersonStatesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_PersonStatesPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_PersonStatesPkColumnsInput _instance;

  final TRes Function(Input_PersonStatesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input_PersonStatesPkColumnsInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as UuidValue),
      }));
}

class _CopyWithStubImpl_Input_PersonStatesPkColumnsInput<TRes>
    implements CopyWith_Input_PersonStatesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_PersonStatesSetInput {
  factory Input_PersonStatesSetInput({
    int? color,
    String? name,
  }) =>
      Input_PersonStatesSetInput._({
        if (color != null) r'color': color,
        if (name != null) r'name': name,
      });

  Input_PersonStatesSetInput._(this._$data);

  factory Input_PersonStatesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_PersonStatesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith_Input_PersonStatesSetInput<Input_PersonStatesSetInput>
      get copyWith => CopyWith_Input_PersonStatesSetInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesSetInput ||
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
    final l$color = color;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonStatesSetInput<TRes> {
  factory CopyWith_Input_PersonStatesSetInput(
    Input_PersonStatesSetInput instance,
    TRes Function(Input_PersonStatesSetInput) then,
  ) = _CopyWithImpl_Input_PersonStatesSetInput;

  factory CopyWith_Input_PersonStatesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesSetInput;

  TRes call({
    int? color,
    String? name,
  });
}

class _CopyWithImpl_Input_PersonStatesSetInput<TRes>
    implements CopyWith_Input_PersonStatesSetInput<TRes> {
  _CopyWithImpl_Input_PersonStatesSetInput(
    this._instance,
    this._then,
  );

  final Input_PersonStatesSetInput _instance;

  final TRes Function(Input_PersonStatesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input_PersonStatesSetInput._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as int?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl_Input_PersonStatesSetInput<TRes>
    implements CopyWith_Input_PersonStatesSetInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesSetInput(this._res);

  TRes _res;

  call({
    int? color,
    String? name,
  }) =>
      _res;
}

class Input_PersonStatesStreamCursorInput {
  factory Input_PersonStatesStreamCursorInput({
    required Input_PersonStatesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      Input_PersonStatesStreamCursorInput._({
        r'initialValue': initialValue,
        if (ordering != null) r'ordering': ordering,
      });

  Input_PersonStatesStreamCursorInput._(this._$data);

  factory Input_PersonStatesStreamCursorInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_PersonStatesStreamCursorValueInput.fromJson(
            (l$initialValue as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_PersonStatesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonStatesStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_PersonStatesStreamCursorValueInput);

  Enum_CursorOrdering? get ordering =>
      (_$data['ordering'] as Enum_CursorOrdering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initialValue = initialValue;
    result$data['initialValue'] = l$initialValue.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson_Enum_CursorOrdering(l$ordering);
    }
    return result$data;
  }

  CopyWith_Input_PersonStatesStreamCursorInput<
          Input_PersonStatesStreamCursorInput>
      get copyWith => CopyWith_Input_PersonStatesStreamCursorInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesStreamCursorInput ||
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

abstract class CopyWith_Input_PersonStatesStreamCursorInput<TRes> {
  factory CopyWith_Input_PersonStatesStreamCursorInput(
    Input_PersonStatesStreamCursorInput instance,
    TRes Function(Input_PersonStatesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_PersonStatesStreamCursorInput;

  factory CopyWith_Input_PersonStatesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesStreamCursorInput;

  TRes call({
    Input_PersonStatesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_PersonStatesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonStatesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_PersonStatesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_PersonStatesStreamCursorInput _instance;

  final TRes Function(Input_PersonStatesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input_PersonStatesStreamCursorInput._({
        ..._instance._$data,
        if (initialValue != _undefined && initialValue != null)
          'initialValue':
              (initialValue as Input_PersonStatesStreamCursorValueInput),
        if (ordering != _undefined)
          'ordering': (ordering as Enum_CursorOrdering?),
      }));

  CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_PersonStatesStreamCursorValueInput(
        local$initialValue, (e) => call(initialValue: e));
  }
}

class _CopyWithStubImpl_Input_PersonStatesStreamCursorInput<TRes>
    implements CopyWith_Input_PersonStatesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_PersonStatesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) =>
      _res;

  CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_PersonStatesStreamCursorValueInput.stub(_res);
}

class Input_PersonStatesStreamCursorValueInput {
  factory Input_PersonStatesStreamCursorValueInput({
    int? color,
    UuidValue? id,
    String? name,
  }) =>
      Input_PersonStatesStreamCursorValueInput._({
        if (color != null) r'color': color,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input_PersonStatesStreamCursorValueInput._(this._$data);

  factory Input_PersonStatesStreamCursorValueInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input_PersonStatesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get color => (_$data['color'] as int?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
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

  CopyWith_Input_PersonStatesStreamCursorValueInput<
          Input_PersonStatesStreamCursorValueInput>
      get copyWith => CopyWith_Input_PersonStatesStreamCursorValueInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesStreamCursorValueInput ||
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
    final l$color = color;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_PersonStatesStreamCursorValueInput(
    Input_PersonStatesStreamCursorValueInput instance,
    TRes Function(Input_PersonStatesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_PersonStatesStreamCursorValueInput;

  factory CopyWith_Input_PersonStatesStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesStreamCursorValueInput;

  TRes call({
    int? color,
    UuidValue? id,
    String? name,
  });
}

class _CopyWithImpl_Input_PersonStatesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_PersonStatesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_PersonStatesStreamCursorValueInput _instance;

  final TRes Function(Input_PersonStatesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? color = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input_PersonStatesStreamCursorValueInput._({
        ..._instance._$data,
        if (color != _undefined) 'color': (color as int?),
        if (id != _undefined) 'id': (id as UuidValue?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl_Input_PersonStatesStreamCursorValueInput<TRes>
    implements CopyWith_Input_PersonStatesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_PersonStatesStreamCursorValueInput(this._res);

  TRes _res;

  call({
    int? color,
    UuidValue? id,
    String? name,
  }) =>
      _res;
}

class Input_PersonStatesUpdates {
  factory Input_PersonStatesUpdates({
    Input_PersonStatesIncInput? $_inc,
    Input_PersonStatesSetInput? $_set,
    required Input_PersonStatesBoolExp where,
  }) =>
      Input_PersonStatesUpdates._({
        if ($_inc != null) r'_inc': $_inc,
        if ($_set != null) r'_set': $_set,
        r'where': where,
      });

  Input_PersonStatesUpdates._(this._$data);

  factory Input_PersonStatesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input_PersonStatesIncInput.fromJson(
              (l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_PersonStatesSetInput.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] =
        Input_PersonStatesBoolExp.fromJson((l$where as Map<String, dynamic>));
    return Input_PersonStatesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_PersonStatesIncInput? get $_inc =>
      (_$data['_inc'] as Input_PersonStatesIncInput?);

  Input_PersonStatesSetInput? get $_set =>
      (_$data['_set'] as Input_PersonStatesSetInput?);

  Input_PersonStatesBoolExp get where =>
      (_$data['where'] as Input_PersonStatesBoolExp);

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

  CopyWith_Input_PersonStatesUpdates<Input_PersonStatesUpdates> get copyWith =>
      CopyWith_Input_PersonStatesUpdates(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_PersonStatesUpdates ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_PersonStatesUpdates<TRes> {
  factory CopyWith_Input_PersonStatesUpdates(
    Input_PersonStatesUpdates instance,
    TRes Function(Input_PersonStatesUpdates) then,
  ) = _CopyWithImpl_Input_PersonStatesUpdates;

  factory CopyWith_Input_PersonStatesUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_PersonStatesUpdates;

  TRes call({
    Input_PersonStatesIncInput? $_inc,
    Input_PersonStatesSetInput? $_set,
    Input_PersonStatesBoolExp? where,
  });
  CopyWith_Input_PersonStatesIncInput<TRes> get $_inc;
  CopyWith_Input_PersonStatesSetInput<TRes> get $_set;
  CopyWith_Input_PersonStatesBoolExp<TRes> get where;
}
