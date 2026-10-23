// Part 46 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_AreaFilterColor<TRes> {
  factory CopyWith_Input_AreaFilterColor(
    Input_AreaFilterColor instance,
    TRes Function(Input_AreaFilterColor) then,
  ) = _CopyWithImpl_Input_AreaFilterColor;

  factory CopyWith_Input_AreaFilterColor.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaFilterColor;

  TRes call({
    bool? isNil,
    int? eq,
    int? notEq,
    List<int?>? $in,
    int? lessThan,
    int? greaterThan,
    int? lessThanOrEqual,
    int? greaterThanOrEqual,
    int? isDistinctFrom,
    int? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_AreaFilterColor<TRes>
    implements CopyWith_Input_AreaFilterColor<TRes> {
  _CopyWithImpl_Input_AreaFilterColor(this._instance, this._then);

  final Input_AreaFilterColor _instance;

  final TRes Function(Input_AreaFilterColor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_AreaFilterColor._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as int?),
      if (notEq != _undefined) 'notEq': (notEq as int?),
      if ($in != _undefined) 'in': ($in as List<int?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as int?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as int?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as int?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as int?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as int?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as int?),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaFilterColor<TRes>
    implements CopyWith_Input_AreaFilterColor<TRes> {
  _CopyWithStubImpl_Input_AreaFilterColor(this._res);

  TRes _res;

  call({
    bool? isNil,
    int? eq,
    int? notEq,
    List<int?>? $in,
    int? lessThan,
    int? greaterThan,
    int? lessThanOrEqual,
    int? greaterThanOrEqual,
    int? isDistinctFrom,
    int? isNotDistinctFrom,
  }) => _res;
}

class Input_AreaFilterBounds {
  factory Input_AreaFilterBounds({
    bool? isNil,
    Json? eq,
    Json? notEq,
    List<Json?>? $in,
    Json? lessThan,
    Json? greaterThan,
    Json? lessThanOrEqual,
    Json? greaterThanOrEqual,
    Json? isDistinctFrom,
    Json? isNotDistinctFrom,
  }) => Input_AreaFilterBounds._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_AreaFilterBounds._(this._$data);

  factory Input_AreaFilterBounds.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as Json?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as Json?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as Json?))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as Json?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as Json?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as Json?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as Json?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as Json?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as Json?);
    }
    return Input_AreaFilterBounds._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  Json? get eq => (_$data['eq'] as Json?);

  Json? get notEq => (_$data['notEq'] as Json?);

  List<Json?>? get $in => (_$data['in'] as List<Json?>?);

  Json? get lessThan => (_$data['lessThan'] as Json?);

  Json? get greaterThan => (_$data['greaterThan'] as Json?);

  Json? get lessThanOrEqual => (_$data['lessThanOrEqual'] as Json?);

  Json? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as Json?);

  Json? get isDistinctFrom => (_$data['isDistinctFrom'] as Json?);

  Json? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as Json?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_AreaFilterBounds<Input_AreaFilterBounds> get copyWith =>
      CopyWith_Input_AreaFilterBounds(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaFilterBounds || runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreaFilterBounds<TRes> {
  factory CopyWith_Input_AreaFilterBounds(
    Input_AreaFilterBounds instance,
    TRes Function(Input_AreaFilterBounds) then,
  ) = _CopyWithImpl_Input_AreaFilterBounds;

  factory CopyWith_Input_AreaFilterBounds.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaFilterBounds;

  TRes call({
    bool? isNil,
    Json? eq,
    Json? notEq,
    List<Json?>? $in,
    Json? lessThan,
    Json? greaterThan,
    Json? lessThanOrEqual,
    Json? greaterThanOrEqual,
    Json? isDistinctFrom,
    Json? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_AreaFilterBounds<TRes>
    implements CopyWith_Input_AreaFilterBounds<TRes> {
  _CopyWithImpl_Input_AreaFilterBounds(this._instance, this._then);

  final Input_AreaFilterBounds _instance;

  final TRes Function(Input_AreaFilterBounds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_AreaFilterBounds._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as Json?),
      if (notEq != _undefined) 'notEq': (notEq as Json?),
      if ($in != _undefined) 'in': ($in as List<Json?>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as Json?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as Json?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as Json?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as Json?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as Json?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as Json?),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaFilterBounds<TRes>
    implements CopyWith_Input_AreaFilterBounds<TRes> {
  _CopyWithStubImpl_Input_AreaFilterBounds(this._res);

  TRes _res;

  call({
    bool? isNil,
    Json? eq,
    Json? notEq,
    List<Json?>? $in,
    Json? lessThan,
    Json? greaterThan,
    Json? lessThanOrEqual,
    Json? greaterThanOrEqual,
    Json? isDistinctFrom,
    Json? isNotDistinctFrom,
  }) => _res;
}

class Input_AreaFilterName {
  factory Input_AreaFilterName({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => Input_AreaFilterName._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (contains != null) r'contains': contains,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
    if (stringEndsWith != null) r'stringEndsWith': stringEndsWith,
    if (stringStartsWith != null) r'stringStartsWith': stringStartsWith,
    if (like != null) r'like': like,
    if (ilike != null) r'ilike': ilike,
  });

  Input_AreaFilterName._(this._$data);

  factory Input_AreaFilterName.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('contains')) {
      final l$contains = data['contains'];
      result$data['contains'] = (l$contains as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    if (data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = data['stringEndsWith'];
      result$data['stringEndsWith'] = (l$stringEndsWith as String?);
    }
    if (data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = data['stringStartsWith'];
      result$data['stringStartsWith'] = (l$stringStartsWith as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('ilike')) {
      final l$ilike = data['ilike'];
      result$data['ilike'] = (l$ilike as String?);
    }
    return Input_AreaFilterName._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get contains => (_$data['contains'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  String? get stringEndsWith => (_$data['stringEndsWith'] as String?);

  String? get stringStartsWith => (_$data['stringStartsWith'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get ilike => (_$data['ilike'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('contains')) {
      final l$contains = contains;
      result$data['contains'] = l$contains;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    if (_$data.containsKey('stringEndsWith')) {
      final l$stringEndsWith = stringEndsWith;
      result$data['stringEndsWith'] = l$stringEndsWith;
    }
    if (_$data.containsKey('stringStartsWith')) {
      final l$stringStartsWith = stringStartsWith;
      result$data['stringStartsWith'] = l$stringStartsWith;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('ilike')) {
      final l$ilike = ilike;
      result$data['ilike'] = l$ilike;
    }
    return result$data;
  }

  CopyWith_Input_AreaFilterName<Input_AreaFilterName> get copyWith =>
      CopyWith_Input_AreaFilterName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaFilterName || runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$contains = contains;
    final lOther$contains = other.contains;
    if (_$data.containsKey('contains') !=
        other._$data.containsKey('contains')) {
      return false;
    }
    if (l$contains != lOther$contains) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    final l$stringEndsWith = stringEndsWith;
    final lOther$stringEndsWith = other.stringEndsWith;
    if (_$data.containsKey('stringEndsWith') !=
        other._$data.containsKey('stringEndsWith')) {
      return false;
    }
    if (l$stringEndsWith != lOther$stringEndsWith) {
      return false;
    }
    final l$stringStartsWith = stringStartsWith;
    final lOther$stringStartsWith = other.stringStartsWith;
    if (_$data.containsKey('stringStartsWith') !=
        other._$data.containsKey('stringStartsWith')) {
      return false;
    }
    if (l$stringStartsWith != lOther$stringStartsWith) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$ilike = ilike;
    final lOther$ilike = other.ilike;
    if (_$data.containsKey('ilike') != other._$data.containsKey('ilike')) {
      return false;
    }
    if (l$ilike != lOther$ilike) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$contains = contains;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final l$stringEndsWith = stringEndsWith;
    final l$stringStartsWith = stringStartsWith;
    final l$like = like;
    final l$ilike = ilike;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('contains') ? l$contains : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
      _$data.containsKey('stringEndsWith') ? l$stringEndsWith : const {},
      _$data.containsKey('stringStartsWith') ? l$stringStartsWith : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('ilike') ? l$ilike : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreaFilterName<TRes> {
  factory CopyWith_Input_AreaFilterName(
    Input_AreaFilterName instance,
    TRes Function(Input_AreaFilterName) then,
  ) = _CopyWithImpl_Input_AreaFilterName;

  factory CopyWith_Input_AreaFilterName.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaFilterName;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  });
}

class _CopyWithImpl_Input_AreaFilterName<TRes>
    implements CopyWith_Input_AreaFilterName<TRes> {
  _CopyWithImpl_Input_AreaFilterName(this._instance, this._then);

  final Input_AreaFilterName _instance;

  final TRes Function(Input_AreaFilterName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? contains = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
    Object? stringEndsWith = _undefined,
    Object? stringStartsWith = _undefined,
    Object? like = _undefined,
    Object? ilike = _undefined,
  }) => _then(
    Input_AreaFilterName._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (contains != _undefined) 'contains': (contains as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
      if (stringEndsWith != _undefined)
        'stringEndsWith': (stringEndsWith as String?),
      if (stringStartsWith != _undefined)
        'stringStartsWith': (stringStartsWith as String?),
      if (like != _undefined) 'like': (like as String?),
      if (ilike != _undefined) 'ilike': (ilike as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaFilterName<TRes>
    implements CopyWith_Input_AreaFilterName<TRes> {
  _CopyWithStubImpl_Input_AreaFilterName(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? contains,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
    String? stringEndsWith,
    String? stringStartsWith,
    String? like,
    String? ilike,
  }) => _res;
}

class Input_AreaFilterId {
  factory Input_AreaFilterId({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_AreaFilterId._({
    if (isNil != null) r'isNil': isNil,
    if (eq != null) r'eq': eq,
    if (notEq != null) r'notEq': notEq,
    if ($in != null) r'in': $in,
    if (lessThan != null) r'lessThan': lessThan,
    if (greaterThan != null) r'greaterThan': greaterThan,
    if (lessThanOrEqual != null) r'lessThanOrEqual': lessThanOrEqual,
    if (greaterThanOrEqual != null) r'greaterThanOrEqual': greaterThanOrEqual,
    if (isDistinctFrom != null) r'isDistinctFrom': isDistinctFrom,
    if (isNotDistinctFrom != null) r'isNotDistinctFrom': isNotDistinctFrom,
  });

  Input_AreaFilterId._(this._$data);

  factory Input_AreaFilterId.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isNil')) {
      final l$isNil = data['isNil'];
      result$data['isNil'] = (l$isNil as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('notEq')) {
      final l$notEq = data['notEq'];
      result$data['notEq'] = (l$notEq as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('lessThan')) {
      final l$lessThan = data['lessThan'];
      result$data['lessThan'] = (l$lessThan as String?);
    }
    if (data.containsKey('greaterThan')) {
      final l$greaterThan = data['greaterThan'];
      result$data['greaterThan'] = (l$greaterThan as String?);
    }
    if (data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = data['lessThanOrEqual'];
      result$data['lessThanOrEqual'] = (l$lessThanOrEqual as String?);
    }
    if (data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = data['greaterThanOrEqual'];
      result$data['greaterThanOrEqual'] = (l$greaterThanOrEqual as String?);
    }
    if (data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = data['isDistinctFrom'];
      result$data['isDistinctFrom'] = (l$isDistinctFrom as String?);
    }
    if (data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = data['isNotDistinctFrom'];
      result$data['isNotDistinctFrom'] = (l$isNotDistinctFrom as String?);
    }
    return Input_AreaFilterId._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  String? get lessThan => (_$data['lessThan'] as String?);

  String? get greaterThan => (_$data['greaterThan'] as String?);

  String? get lessThanOrEqual => (_$data['lessThanOrEqual'] as String?);

  String? get greaterThanOrEqual => (_$data['greaterThanOrEqual'] as String?);

  String? get isDistinctFrom => (_$data['isDistinctFrom'] as String?);

  String? get isNotDistinctFrom => (_$data['isNotDistinctFrom'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isNil')) {
      final l$isNil = isNil;
      result$data['isNil'] = l$isNil;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('notEq')) {
      final l$notEq = notEq;
      result$data['notEq'] = l$notEq;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lessThan')) {
      final l$lessThan = lessThan;
      result$data['lessThan'] = l$lessThan;
    }
    if (_$data.containsKey('greaterThan')) {
      final l$greaterThan = greaterThan;
      result$data['greaterThan'] = l$greaterThan;
    }
    if (_$data.containsKey('lessThanOrEqual')) {
      final l$lessThanOrEqual = lessThanOrEqual;
      result$data['lessThanOrEqual'] = l$lessThanOrEqual;
    }
    if (_$data.containsKey('greaterThanOrEqual')) {
      final l$greaterThanOrEqual = greaterThanOrEqual;
      result$data['greaterThanOrEqual'] = l$greaterThanOrEqual;
    }
    if (_$data.containsKey('isDistinctFrom')) {
      final l$isDistinctFrom = isDistinctFrom;
      result$data['isDistinctFrom'] = l$isDistinctFrom;
    }
    if (_$data.containsKey('isNotDistinctFrom')) {
      final l$isNotDistinctFrom = isNotDistinctFrom;
      result$data['isNotDistinctFrom'] = l$isNotDistinctFrom;
    }
    return result$data;
  }

  CopyWith_Input_AreaFilterId<Input_AreaFilterId> get copyWith =>
      CopyWith_Input_AreaFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaFilterId || runtimeType != other.runtimeType) {
      return false;
    }
    final l$isNil = isNil;
    final lOther$isNil = other.isNil;
    if (_$data.containsKey('isNil') != other._$data.containsKey('isNil')) {
      return false;
    }
    if (l$isNil != lOther$isNil) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$notEq = notEq;
    final lOther$notEq = other.notEq;
    if (_$data.containsKey('notEq') != other._$data.containsKey('notEq')) {
      return false;
    }
    if (l$notEq != lOther$notEq) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (_$data.containsKey('lessThan') !=
        other._$data.containsKey('lessThan')) {
      return false;
    }
    if (l$lessThan != lOther$lessThan) {
      return false;
    }
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (_$data.containsKey('greaterThan') !=
        other._$data.containsKey('greaterThan')) {
      return false;
    }
    if (l$greaterThan != lOther$greaterThan) {
      return false;
    }
    final l$lessThanOrEqual = lessThanOrEqual;
    final lOther$lessThanOrEqual = other.lessThanOrEqual;
    if (_$data.containsKey('lessThanOrEqual') !=
        other._$data.containsKey('lessThanOrEqual')) {
      return false;
    }
    if (l$lessThanOrEqual != lOther$lessThanOrEqual) {
      return false;
    }
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final lOther$greaterThanOrEqual = other.greaterThanOrEqual;
    if (_$data.containsKey('greaterThanOrEqual') !=
        other._$data.containsKey('greaterThanOrEqual')) {
      return false;
    }
    if (l$greaterThanOrEqual != lOther$greaterThanOrEqual) {
      return false;
    }
    final l$isDistinctFrom = isDistinctFrom;
    final lOther$isDistinctFrom = other.isDistinctFrom;
    if (_$data.containsKey('isDistinctFrom') !=
        other._$data.containsKey('isDistinctFrom')) {
      return false;
    }
    if (l$isDistinctFrom != lOther$isDistinctFrom) {
      return false;
    }
    final l$isNotDistinctFrom = isNotDistinctFrom;
    final lOther$isNotDistinctFrom = other.isNotDistinctFrom;
    if (_$data.containsKey('isNotDistinctFrom') !=
        other._$data.containsKey('isNotDistinctFrom')) {
      return false;
    }
    if (l$isNotDistinctFrom != lOther$isNotDistinctFrom) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isNil = isNil;
    final l$eq = eq;
    final l$notEq = notEq;
    final l$$in = $in;
    final l$lessThan = lessThan;
    final l$greaterThan = greaterThan;
    final l$lessThanOrEqual = lessThanOrEqual;
    final l$greaterThanOrEqual = greaterThanOrEqual;
    final l$isDistinctFrom = isDistinctFrom;
    final l$isNotDistinctFrom = isNotDistinctFrom;
    return Object.hashAll([
      _$data.containsKey('isNil') ? l$isNil : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('notEq') ? l$notEq : const {},
      _$data.containsKey('in')
          ? l$$in == null
                ? null
                : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lessThan') ? l$lessThan : const {},
      _$data.containsKey('greaterThan') ? l$greaterThan : const {},
      _$data.containsKey('lessThanOrEqual') ? l$lessThanOrEqual : const {},
      _$data.containsKey('greaterThanOrEqual')
          ? l$greaterThanOrEqual
          : const {},
      _$data.containsKey('isDistinctFrom') ? l$isDistinctFrom : const {},
      _$data.containsKey('isNotDistinctFrom') ? l$isNotDistinctFrom : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreaFilterId<TRes> {
  factory CopyWith_Input_AreaFilterId(
    Input_AreaFilterId instance,
    TRes Function(Input_AreaFilterId) then,
  ) = _CopyWithImpl_Input_AreaFilterId;

  factory CopyWith_Input_AreaFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaFilterId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_AreaFilterId<TRes>
    implements CopyWith_Input_AreaFilterId<TRes> {
  _CopyWithImpl_Input_AreaFilterId(this._instance, this._then);

  final Input_AreaFilterId _instance;

  final TRes Function(Input_AreaFilterId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isNil = _undefined,
    Object? eq = _undefined,
    Object? notEq = _undefined,
    Object? $in = _undefined,
    Object? lessThan = _undefined,
    Object? greaterThan = _undefined,
    Object? lessThanOrEqual = _undefined,
    Object? greaterThanOrEqual = _undefined,
    Object? isDistinctFrom = _undefined,
    Object? isNotDistinctFrom = _undefined,
  }) => _then(
    Input_AreaFilterId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String>?),
      if (lessThan != _undefined) 'lessThan': (lessThan as String?),
      if (greaterThan != _undefined) 'greaterThan': (greaterThan as String?),
      if (lessThanOrEqual != _undefined)
        'lessThanOrEqual': (lessThanOrEqual as String?),
      if (greaterThanOrEqual != _undefined)
        'greaterThanOrEqual': (greaterThanOrEqual as String?),
      if (isDistinctFrom != _undefined)
        'isDistinctFrom': (isDistinctFrom as String?),
      if (isNotDistinctFrom != _undefined)
        'isNotDistinctFrom': (isNotDistinctFrom as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_AreaFilterId<TRes>
    implements CopyWith_Input_AreaFilterId<TRes> {
  _CopyWithStubImpl_Input_AreaFilterId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_AreaFilterInput {
  factory Input_AreaFilterInput({
    List<Input_AreaFilterInput>? and,
    List<Input_AreaFilterInput>? or,
    List<Input_AreaFilterInput>? not,
    Input_AreaFilterId? id,
    Input_AreaFilterName? name,
    Input_AreaFilterBounds? bounds,
    Input_AreaFilterColor? color,
    Input_AreaFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_AreaFilterBlurhash? blurhash,
    Input_AddressFilterInput? addresses,
    Input_AreaStreetFilterInput? areaStreets,
    Input_StreetFilterInput? streets,
    Input_UserFilterInput? admins,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_AreaFilterLastEdit? lastEdit,
    Input_AreaFilterLastEditUserName? lastEditUserName,
    Input_AreaFilterLastVisit? lastVisit,
    Input_AreaFilterLastVisitUserName? lastVisitUserName,
    Input_AreaFilterUserCanEdit? userCanEdit,
    Input_AreaFilterWithinPolygon? withinPolygon,
    Input_AreaFilterContainsPoint? containsPoint,
  }) => Input_AreaFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (bounds != null) r'bounds': bounds,
    if (color != null) r'color': color,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (blurhash != null) r'blurhash': blurhash,
    if (addresses != null) r'addresses': addresses,
    if (areaStreets != null) r'areaStreets': areaStreets,
    if (streets != null) r'streets': streets,
    if (admins != null) r'admins': admins,
    if (latestEdit != null) r'latestEdit': latestEdit,
    if (edits != null) r'edits': edits,
    if (latestVisit != null) r'latestVisit': latestVisit,
    if (visits != null) r'visits': visits,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (lastEditUserName != null) r'lastEditUserName': lastEditUserName,
    if (lastVisit != null) r'lastVisit': lastVisit,
    if (lastVisitUserName != null) r'lastVisitUserName': lastVisitUserName,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
    if (withinPolygon != null) r'withinPolygon': withinPolygon,
    if (containsPoint != null) r'containsPoint': containsPoint,
  });

  Input_AreaFilterInput._(this._$data);

  factory Input_AreaFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_AreaFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_AreaFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_AreaFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_AreaFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_AreaFilterName.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('bounds')) {
      final l$bounds = data['bounds'];
      result$data['bounds'] = l$bounds == null
          ? null
          : Input_AreaFilterBounds.fromJson((l$bounds as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_AreaFilterColor.fromJson((l$color as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_AreaFilterPhotoUpdatedAt.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_AreaFilterBlurhash.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('addresses')) {
      final l$addresses = data['addresses'];
      result$data['addresses'] = l$addresses == null
          ? null
          : Input_AddressFilterInput.fromJson(
              (l$addresses as Map<String, dynamic>),
            );
    }
    if (data.containsKey('areaStreets')) {
      final l$areaStreets = data['areaStreets'];
      result$data['areaStreets'] = l$areaStreets == null
          ? null
          : Input_AreaStreetFilterInput.fromJson(
              (l$areaStreets as Map<String, dynamic>),
            );
    }
    if (data.containsKey('streets')) {
      final l$streets = data['streets'];
      result$data['streets'] = l$streets == null
          ? null
          : Input_StreetFilterInput.fromJson(
              (l$streets as Map<String, dynamic>),
            );
    }
    if (data.containsKey('admins')) {
      final l$admins = data['admins'];
      result$data['admins'] = l$admins == null
          ? null
          : Input_UserFilterInput.fromJson((l$admins as Map<String, dynamic>));
    }
    if (data.containsKey('latestEdit')) {
      final l$latestEdit = data['latestEdit'];
      result$data['latestEdit'] = l$latestEdit == null
          ? null
          : Input_LatestEditFilterInput.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('edits')) {
      final l$edits = data['edits'];
      result$data['edits'] = l$edits == null
          ? null
          : Input_EditFilterInput.fromJson((l$edits as Map<String, dynamic>));
    }
    if (data.containsKey('latestVisit')) {
      final l$latestVisit = data['latestVisit'];
      result$data['latestVisit'] = l$latestVisit == null
          ? null
          : Input_LatestVisitFilterInput.fromJson(
              (l$latestVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('visits')) {
      final l$visits = data['visits'];
      result$data['visits'] = l$visits == null
          ? null
          : Input_VisitFilterInput.fromJson((l$visits as Map<String, dynamic>));
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_AreaFilterLastEdit.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEditUserName')) {
      final l$lastEditUserName = data['lastEditUserName'];
      result$data['lastEditUserName'] = l$lastEditUserName == null
          ? null
          : Input_AreaFilterLastEditUserName.fromJson(
              (l$lastEditUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : Input_AreaFilterLastVisit.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisitUserName')) {
      final l$lastVisitUserName = data['lastVisitUserName'];
      result$data['lastVisitUserName'] = l$lastVisitUserName == null
          ? null
          : Input_AreaFilterLastVisitUserName.fromJson(
              (l$lastVisitUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_AreaFilterUserCanEdit.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('withinPolygon')) {
      final l$withinPolygon = data['withinPolygon'];
      result$data['withinPolygon'] = l$withinPolygon == null
          ? null
          : Input_AreaFilterWithinPolygon.fromJson(
              (l$withinPolygon as Map<String, dynamic>),
            );
    }
    if (data.containsKey('containsPoint')) {
      final l$containsPoint = data['containsPoint'];
      result$data['containsPoint'] = l$containsPoint == null
          ? null
          : Input_AreaFilterContainsPoint.fromJson(
              (l$containsPoint as Map<String, dynamic>),
            );
    }
    return Input_AreaFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_AreaFilterInput>? get and =>
      (_$data['and'] as List<Input_AreaFilterInput>?);

  List<Input_AreaFilterInput>? get or =>
      (_$data['or'] as List<Input_AreaFilterInput>?);

  List<Input_AreaFilterInput>? get not =>
      (_$data['not'] as List<Input_AreaFilterInput>?);

  Input_AreaFilterId? get id => (_$data['id'] as Input_AreaFilterId?);

  Input_AreaFilterName? get name => (_$data['name'] as Input_AreaFilterName?);

  Input_AreaFilterBounds? get bounds =>
      (_$data['bounds'] as Input_AreaFilterBounds?);

  Input_AreaFilterColor? get color =>
      (_$data['color'] as Input_AreaFilterColor?);

  Input_AreaFilterPhotoUpdatedAt? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_AreaFilterPhotoUpdatedAt?);

  Input_AreaFilterBlurhash? get blurhash =>
      (_$data['blurhash'] as Input_AreaFilterBlurhash?);

  Input_AddressFilterInput? get addresses =>
      (_$data['addresses'] as Input_AddressFilterInput?);

  Input_AreaStreetFilterInput? get areaStreets =>
      (_$data['areaStreets'] as Input_AreaStreetFilterInput?);

  Input_StreetFilterInput? get streets =>
      (_$data['streets'] as Input_StreetFilterInput?);

  Input_UserFilterInput? get admins =>
      (_$data['admins'] as Input_UserFilterInput?);

  Input_LatestEditFilterInput? get latestEdit =>
      (_$data['latestEdit'] as Input_LatestEditFilterInput?);

  Input_EditFilterInput? get edits =>
      (_$data['edits'] as Input_EditFilterInput?);

  Input_LatestVisitFilterInput? get latestVisit =>
      (_$data['latestVisit'] as Input_LatestVisitFilterInput?);

  Input_VisitFilterInput? get visits =>
      (_$data['visits'] as Input_VisitFilterInput?);

  Input_AreaFilterLastEdit? get lastEdit =>
      (_$data['lastEdit'] as Input_AreaFilterLastEdit?);

  Input_AreaFilterLastEditUserName? get lastEditUserName =>
      (_$data['lastEditUserName'] as Input_AreaFilterLastEditUserName?);

  Input_AreaFilterLastVisit? get lastVisit =>
      (_$data['lastVisit'] as Input_AreaFilterLastVisit?);

  Input_AreaFilterLastVisitUserName? get lastVisitUserName =>
      (_$data['lastVisitUserName'] as Input_AreaFilterLastVisitUserName?);

  Input_AreaFilterUserCanEdit? get userCanEdit =>
      (_$data['userCanEdit'] as Input_AreaFilterUserCanEdit?);

  Input_AreaFilterWithinPolygon? get withinPolygon =>
      (_$data['withinPolygon'] as Input_AreaFilterWithinPolygon?);

  Input_AreaFilterContainsPoint? get containsPoint =>
      (_$data['containsPoint'] as Input_AreaFilterContainsPoint?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('not')) {
      final l$not = not;
      result$data['not'] = l$not?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    if (_$data.containsKey('bounds')) {
      final l$bounds = bounds;
      result$data['bounds'] = l$bounds?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = photoUpdatedAt;
      result$data['photoUpdatedAt'] = l$photoUpdatedAt?.toJson();
    }
    if (_$data.containsKey('blurhash')) {
      final l$blurhash = blurhash;
      result$data['blurhash'] = l$blurhash?.toJson();
    }
    if (_$data.containsKey('addresses')) {
      final l$addresses = addresses;
      result$data['addresses'] = l$addresses?.toJson();
    }
    if (_$data.containsKey('areaStreets')) {
      final l$areaStreets = areaStreets;
      result$data['areaStreets'] = l$areaStreets?.toJson();
    }
    if (_$data.containsKey('streets')) {
      final l$streets = streets;
      result$data['streets'] = l$streets?.toJson();
    }
    if (_$data.containsKey('admins')) {
      final l$admins = admins;
      result$data['admins'] = l$admins?.toJson();
    }
    if (_$data.containsKey('latestEdit')) {
      final l$latestEdit = latestEdit;
      result$data['latestEdit'] = l$latestEdit?.toJson();
    }
    if (_$data.containsKey('edits')) {
      final l$edits = edits;
      result$data['edits'] = l$edits?.toJson();
    }
    if (_$data.containsKey('latestVisit')) {
      final l$latestVisit = latestVisit;
      result$data['latestVisit'] = l$latestVisit?.toJson();
    }
    if (_$data.containsKey('visits')) {
      final l$visits = visits;
      result$data['visits'] = l$visits?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('lastEditUserName')) {
      final l$lastEditUserName = lastEditUserName;
      result$data['lastEditUserName'] = l$lastEditUserName?.toJson();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit?.toJson();
    }
    if (_$data.containsKey('lastVisitUserName')) {
      final l$lastVisitUserName = lastVisitUserName;
      result$data['lastVisitUserName'] = l$lastVisitUserName?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    if (_$data.containsKey('withinPolygon')) {
      final l$withinPolygon = withinPolygon;
      result$data['withinPolygon'] = l$withinPolygon?.toJson();
    }
    if (_$data.containsKey('containsPoint')) {
      final l$containsPoint = containsPoint;
      result$data['containsPoint'] = l$containsPoint?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AreaFilterInput<Input_AreaFilterInput> get copyWith =>
      CopyWith_Input_AreaFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$not = not;
    final lOther$not = other.not;
    if (_$data.containsKey('not') != other._$data.containsKey('not')) {
      return false;
    }
    if (l$not != null && lOther$not != null) {
      if (l$not.length != lOther$not.length) {
        return false;
      }
      for (int i = 0; i < l$not.length; i++) {
        final l$not$entry = l$not[i];
        final lOther$not$entry = lOther$not[i];
        if (l$not$entry != lOther$not$entry) {
          return false;
        }
      }
    } else if (l$not != lOther$not) {
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
    final l$bounds = bounds;
    final lOther$bounds = other.bounds;
    if (_$data.containsKey('bounds') != other._$data.containsKey('bounds')) {
      return false;
    }
    if (l$bounds != lOther$bounds) {
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
    final l$photoUpdatedAt = photoUpdatedAt;
    final lOther$photoUpdatedAt = other.photoUpdatedAt;
    if (_$data.containsKey('photoUpdatedAt') !=
        other._$data.containsKey('photoUpdatedAt')) {
      return false;
    }
    if (l$photoUpdatedAt != lOther$photoUpdatedAt) {
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
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (_$data.containsKey('addresses') !=
        other._$data.containsKey('addresses')) {
      return false;
    }
    if (l$addresses != lOther$addresses) {
      return false;
    }
    final l$areaStreets = areaStreets;
    final lOther$areaStreets = other.areaStreets;
    if (_$data.containsKey('areaStreets') !=
        other._$data.containsKey('areaStreets')) {
      return false;
    }
    if (l$areaStreets != lOther$areaStreets) {
      return false;
    }
    final l$streets = streets;
    final lOther$streets = other.streets;
    if (_$data.containsKey('streets') != other._$data.containsKey('streets')) {
      return false;
    }
    if (l$streets != lOther$streets) {
      return false;
    }
    final l$admins = admins;
    final lOther$admins = other.admins;
    if (_$data.containsKey('admins') != other._$data.containsKey('admins')) {
      return false;
    }
    if (l$admins != lOther$admins) {
      return false;
    }
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (_$data.containsKey('latestEdit') !=
        other._$data.containsKey('latestEdit')) {
      return false;
    }
    if (l$latestEdit != lOther$latestEdit) {
      return false;
    }
    final l$edits = edits;
    final lOther$edits = other.edits;
    if (_$data.containsKey('edits') != other._$data.containsKey('edits')) {
      return false;
    }
    if (l$edits != lOther$edits) {
      return false;
    }
    final l$latestVisit = latestVisit;
    final lOther$latestVisit = other.latestVisit;
    if (_$data.containsKey('latestVisit') !=
        other._$data.containsKey('latestVisit')) {
      return false;
    }
    if (l$latestVisit != lOther$latestVisit) {
      return false;
    }
    final l$visits = visits;
    final lOther$visits = other.visits;
    if (_$data.containsKey('visits') != other._$data.containsKey('visits')) {
      return false;
    }
    if (l$visits != lOther$visits) {
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
    final l$lastEditUserName = lastEditUserName;
    final lOther$lastEditUserName = other.lastEditUserName;
    if (_$data.containsKey('lastEditUserName') !=
        other._$data.containsKey('lastEditUserName')) {
      return false;
    }
    if (l$lastEditUserName != lOther$lastEditUserName) {
      return false;
    }
    final l$lastVisit = lastVisit;
    final lOther$lastVisit = other.lastVisit;
    if (_$data.containsKey('lastVisit') !=
        other._$data.containsKey('lastVisit')) {
      return false;
    }
    if (l$lastVisit != lOther$lastVisit) {
      return false;
    }
    final l$lastVisitUserName = lastVisitUserName;
    final lOther$lastVisitUserName = other.lastVisitUserName;
    if (_$data.containsKey('lastVisitUserName') !=
        other._$data.containsKey('lastVisitUserName')) {
      return false;
    }
    if (l$lastVisitUserName != lOther$lastVisitUserName) {
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
    final l$withinPolygon = withinPolygon;
    final lOther$withinPolygon = other.withinPolygon;
    if (_$data.containsKey('withinPolygon') !=
        other._$data.containsKey('withinPolygon')) {
      return false;
    }
    if (l$withinPolygon != lOther$withinPolygon) {
      return false;
    }
    final l$containsPoint = containsPoint;
    final lOther$containsPoint = other.containsPoint;
    if (_$data.containsKey('containsPoint') !=
        other._$data.containsKey('containsPoint')) {
      return false;
    }
    if (l$containsPoint != lOther$containsPoint) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$id = id;
    final l$name = name;
    final l$bounds = bounds;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$addresses = addresses;
    final l$areaStreets = areaStreets;
    final l$streets = streets;
    final l$admins = admins;
    final l$latestEdit = latestEdit;
    final l$edits = edits;
    final l$latestVisit = latestVisit;
    final l$visits = visits;
    final l$lastEdit = lastEdit;
    final l$lastEditUserName = lastEditUserName;
    final l$lastVisit = lastVisit;
    final l$lastVisitUserName = lastVisitUserName;
    final l$userCanEdit = userCanEdit;
    final l$withinPolygon = withinPolygon;
    final l$containsPoint = containsPoint;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
                ? null
                : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
                ? null
                : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('not')
          ? l$not == null
                ? null
                : Object.hashAll(l$not.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('bounds') ? l$bounds : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('addresses') ? l$addresses : const {},
      _$data.containsKey('areaStreets') ? l$areaStreets : const {},
      _$data.containsKey('streets') ? l$streets : const {},
      _$data.containsKey('admins') ? l$admins : const {},
      _$data.containsKey('latestEdit') ? l$latestEdit : const {},
      _$data.containsKey('edits') ? l$edits : const {},
      _$data.containsKey('latestVisit') ? l$latestVisit : const {},
      _$data.containsKey('visits') ? l$visits : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('lastEditUserName') ? l$lastEditUserName : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
      _$data.containsKey('lastVisitUserName') ? l$lastVisitUserName : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
      _$data.containsKey('withinPolygon') ? l$withinPolygon : const {},
      _$data.containsKey('containsPoint') ? l$containsPoint : const {},
    ]);
  }
}

abstract class CopyWith_Input_AreaFilterInput<TRes> {
  factory CopyWith_Input_AreaFilterInput(
    Input_AreaFilterInput instance,
    TRes Function(Input_AreaFilterInput) then,
  ) = _CopyWithImpl_Input_AreaFilterInput;

  factory CopyWith_Input_AreaFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_AreaFilterInput;

  TRes call({
    List<Input_AreaFilterInput>? and,
    List<Input_AreaFilterInput>? or,
    List<Input_AreaFilterInput>? not,
    Input_AreaFilterId? id,
    Input_AreaFilterName? name,
    Input_AreaFilterBounds? bounds,
    Input_AreaFilterColor? color,
    Input_AreaFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_AreaFilterBlurhash? blurhash,
    Input_AddressFilterInput? addresses,
    Input_AreaStreetFilterInput? areaStreets,
    Input_StreetFilterInput? streets,
    Input_UserFilterInput? admins,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_AreaFilterLastEdit? lastEdit,
    Input_AreaFilterLastEditUserName? lastEditUserName,
    Input_AreaFilterLastVisit? lastVisit,
    Input_AreaFilterLastVisitUserName? lastVisitUserName,
    Input_AreaFilterUserCanEdit? userCanEdit,
    Input_AreaFilterWithinPolygon? withinPolygon,
    Input_AreaFilterContainsPoint? containsPoint,
  });
  TRes and(
    Iterable<Input_AreaFilterInput>? Function(
      Iterable<CopyWith_Input_AreaFilterInput<Input_AreaFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_AreaFilterInput>? Function(
      Iterable<CopyWith_Input_AreaFilterInput<Input_AreaFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_AreaFilterInput>? Function(
      Iterable<CopyWith_Input_AreaFilterInput<Input_AreaFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_AreaFilterId<TRes> get id;
  CopyWith_Input_AreaFilterName<TRes> get name;
  CopyWith_Input_AreaFilterBounds<TRes> get bounds;
  CopyWith_Input_AreaFilterColor<TRes> get color;
  CopyWith_Input_AreaFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_AreaFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_AddressFilterInput<TRes> get addresses;
  CopyWith_Input_AreaStreetFilterInput<TRes> get areaStreets;
  CopyWith_Input_StreetFilterInput<TRes> get streets;
  CopyWith_Input_UserFilterInput<TRes> get admins;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_EditFilterInput<TRes> get edits;
  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit;
  CopyWith_Input_VisitFilterInput<TRes> get visits;
  CopyWith_Input_AreaFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_AreaFilterLastEditUserName<TRes> get lastEditUserName;
  CopyWith_Input_AreaFilterLastVisit<TRes> get lastVisit;
  CopyWith_Input_AreaFilterLastVisitUserName<TRes> get lastVisitUserName;
  CopyWith_Input_AreaFilterUserCanEdit<TRes> get userCanEdit;
  CopyWith_Input_AreaFilterWithinPolygon<TRes> get withinPolygon;
  CopyWith_Input_AreaFilterContainsPoint<TRes> get containsPoint;
}

class _CopyWithImpl_Input_AreaFilterInput<TRes>
    implements CopyWith_Input_AreaFilterInput<TRes> {
  _CopyWithImpl_Input_AreaFilterInput(this._instance, this._then);

  final Input_AreaFilterInput _instance;

  final TRes Function(Input_AreaFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? bounds = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? addresses = _undefined,
    Object? areaStreets = _undefined,
    Object? streets = _undefined,
    Object? admins = _undefined,
    Object? latestEdit = _undefined,
    Object? edits = _undefined,
    Object? latestVisit = _undefined,
    Object? visits = _undefined,
    Object? lastEdit = _undefined,
    Object? lastEditUserName = _undefined,
    Object? lastVisit = _undefined,
    Object? lastVisitUserName = _undefined,
    Object? userCanEdit = _undefined,
    Object? withinPolygon = _undefined,
    Object? containsPoint = _undefined,
  }) => _then(
    Input_AreaFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_AreaFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_AreaFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_AreaFilterInput>?),
      if (id != _undefined) 'id': (id as Input_AreaFilterId?),
      if (name != _undefined) 'name': (name as Input_AreaFilterName?),
      if (bounds != _undefined) 'bounds': (bounds as Input_AreaFilterBounds?),
      if (color != _undefined) 'color': (color as Input_AreaFilterColor?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_AreaFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_AreaFilterBlurhash?),
      if (addresses != _undefined)
        'addresses': (addresses as Input_AddressFilterInput?),
      if (areaStreets != _undefined)
        'areaStreets': (areaStreets as Input_AreaStreetFilterInput?),
      if (streets != _undefined)
        'streets': (streets as Input_StreetFilterInput?),
      if (admins != _undefined) 'admins': (admins as Input_UserFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (edits != _undefined) 'edits': (edits as Input_EditFilterInput?),
      if (latestVisit != _undefined)
        'latestVisit': (latestVisit as Input_LatestVisitFilterInput?),
      if (visits != _undefined) 'visits': (visits as Input_VisitFilterInput?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_AreaFilterLastEdit?),
      if (lastEditUserName != _undefined)
        'lastEditUserName':
            (lastEditUserName as Input_AreaFilterLastEditUserName?),
      if (lastVisit != _undefined)
        'lastVisit': (lastVisit as Input_AreaFilterLastVisit?),
      if (lastVisitUserName != _undefined)
        'lastVisitUserName':
            (lastVisitUserName as Input_AreaFilterLastVisitUserName?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_AreaFilterUserCanEdit?),
      if (withinPolygon != _undefined)
        'withinPolygon': (withinPolygon as Input_AreaFilterWithinPolygon?),
      if (containsPoint != _undefined)
        'containsPoint': (containsPoint as Input_AreaFilterContainsPoint?),
    }),
  );

  TRes and(
    Iterable<Input_AreaFilterInput>? Function(
      Iterable<CopyWith_Input_AreaFilterInput<Input_AreaFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_AreaFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_AreaFilterInput>? Function(
      Iterable<CopyWith_Input_AreaFilterInput<Input_AreaFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_AreaFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_AreaFilterInput>? Function(
      Iterable<CopyWith_Input_AreaFilterInput<Input_AreaFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_AreaFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_AreaFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_AreaFilterId.stub(_then(_instance))
        : CopyWith_Input_AreaFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_AreaFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_AreaFilterName.stub(_then(_instance))
        : CopyWith_Input_AreaFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_AreaFilterBounds<TRes> get bounds {
    final local$bounds = _instance.bounds;
    return local$bounds == null
        ? CopyWith_Input_AreaFilterBounds.stub(_then(_instance))
        : CopyWith_Input_AreaFilterBounds(local$bounds, (e) => call(bounds: e));
  }

  CopyWith_Input_AreaFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_AreaFilterColor.stub(_then(_instance))
        : CopyWith_Input_AreaFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_AreaFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_AreaFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_AreaFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_AreaFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_AreaFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_AreaFilterBlurhash(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_AddressFilterInput<TRes> get addresses {
    final local$addresses = _instance.addresses;
    return local$addresses == null
        ? CopyWith_Input_AddressFilterInput.stub(_then(_instance))
        : CopyWith_Input_AddressFilterInput(
            local$addresses,
            (e) => call(addresses: e),
          );
  }

  CopyWith_Input_AreaStreetFilterInput<TRes> get areaStreets {
    final local$areaStreets = _instance.areaStreets;
    return local$areaStreets == null
        ? CopyWith_Input_AreaStreetFilterInput.stub(_then(_instance))
        : CopyWith_Input_AreaStreetFilterInput(
            local$areaStreets,
            (e) => call(areaStreets: e),
          );
  }

  CopyWith_Input_StreetFilterInput<TRes> get streets {
    final local$streets = _instance.streets;
    return local$streets == null
        ? CopyWith_Input_StreetFilterInput.stub(_then(_instance))
        : CopyWith_Input_StreetFilterInput(
            local$streets,
            (e) => call(streets: e),
          );
  }

  CopyWith_Input_UserFilterInput<TRes> get admins {
    final local$admins = _instance.admins;
    return local$admins == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$admins, (e) => call(admins: e));
  }

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit {
    final local$latestEdit = _instance.latestEdit;
    return local$latestEdit == null
        ? CopyWith_Input_LatestEditFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestEditFilterInput(
            local$latestEdit,
            (e) => call(latestEdit: e),
          );
  }

  CopyWith_Input_EditFilterInput<TRes> get edits {
    final local$edits = _instance.edits;
    return local$edits == null
        ? CopyWith_Input_EditFilterInput.stub(_then(_instance))
        : CopyWith_Input_EditFilterInput(local$edits, (e) => call(edits: e));
  }

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit {
    final local$latestVisit = _instance.latestVisit;
    return local$latestVisit == null
        ? CopyWith_Input_LatestVisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_LatestVisitFilterInput(
            local$latestVisit,
            (e) => call(latestVisit: e),
          );
  }

  CopyWith_Input_VisitFilterInput<TRes> get visits {
    final local$visits = _instance.visits;
    return local$visits == null
        ? CopyWith_Input_VisitFilterInput.stub(_then(_instance))
        : CopyWith_Input_VisitFilterInput(local$visits, (e) => call(visits: e));
  }

  CopyWith_Input_AreaFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_AreaFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_AreaFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_AreaFilterLastEditUserName<TRes> get lastEditUserName {
    final local$lastEditUserName = _instance.lastEditUserName;
    return local$lastEditUserName == null
        ? CopyWith_Input_AreaFilterLastEditUserName.stub(_then(_instance))
        : CopyWith_Input_AreaFilterLastEditUserName(
            local$lastEditUserName,
            (e) => call(lastEditUserName: e),
          );
  }

  CopyWith_Input_AreaFilterLastVisit<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Input_AreaFilterLastVisit.stub(_then(_instance))
        : CopyWith_Input_AreaFilterLastVisit(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }

  CopyWith_Input_AreaFilterLastVisitUserName<TRes> get lastVisitUserName {
    final local$lastVisitUserName = _instance.lastVisitUserName;
    return local$lastVisitUserName == null
        ? CopyWith_Input_AreaFilterLastVisitUserName.stub(_then(_instance))
        : CopyWith_Input_AreaFilterLastVisitUserName(
            local$lastVisitUserName,
            (e) => call(lastVisitUserName: e),
          );
  }

  CopyWith_Input_AreaFilterUserCanEdit<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_AreaFilterUserCanEdit.stub(_then(_instance))
        : CopyWith_Input_AreaFilterUserCanEdit(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }

  CopyWith_Input_AreaFilterWithinPolygon<TRes> get withinPolygon {
    final local$withinPolygon = _instance.withinPolygon;
    return local$withinPolygon == null
        ? CopyWith_Input_AreaFilterWithinPolygon.stub(_then(_instance))
        : CopyWith_Input_AreaFilterWithinPolygon(
            local$withinPolygon,
            (e) => call(withinPolygon: e),
          );
  }

  CopyWith_Input_AreaFilterContainsPoint<TRes> get containsPoint {
    final local$containsPoint = _instance.containsPoint;
    return local$containsPoint == null
        ? CopyWith_Input_AreaFilterContainsPoint.stub(_then(_instance))
        : CopyWith_Input_AreaFilterContainsPoint(
            local$containsPoint,
            (e) => call(containsPoint: e),
          );
  }
}

class _CopyWithStubImpl_Input_AreaFilterInput<TRes>
    implements CopyWith_Input_AreaFilterInput<TRes> {
  _CopyWithStubImpl_Input_AreaFilterInput(this._res);

  TRes _res;

  call({
    List<Input_AreaFilterInput>? and,
    List<Input_AreaFilterInput>? or,
    List<Input_AreaFilterInput>? not,
    Input_AreaFilterId? id,
    Input_AreaFilterName? name,
    Input_AreaFilterBounds? bounds,
    Input_AreaFilterColor? color,
    Input_AreaFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_AreaFilterBlurhash? blurhash,
    Input_AddressFilterInput? addresses,
    Input_AreaStreetFilterInput? areaStreets,
    Input_StreetFilterInput? streets,
    Input_UserFilterInput? admins,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_AreaFilterLastEdit? lastEdit,
    Input_AreaFilterLastEditUserName? lastEditUserName,
    Input_AreaFilterLastVisit? lastVisit,
    Input_AreaFilterLastVisitUserName? lastVisitUserName,
    Input_AreaFilterUserCanEdit? userCanEdit,
    Input_AreaFilterWithinPolygon? withinPolygon,
    Input_AreaFilterContainsPoint? containsPoint,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_AreaFilterId<TRes> get id =>
      CopyWith_Input_AreaFilterId.stub(_res);

  CopyWith_Input_AreaFilterName<TRes> get name =>
      CopyWith_Input_AreaFilterName.stub(_res);

  CopyWith_Input_AreaFilterBounds<TRes> get bounds =>
      CopyWith_Input_AreaFilterBounds.stub(_res);

  CopyWith_Input_AreaFilterColor<TRes> get color =>
      CopyWith_Input_AreaFilterColor.stub(_res);

  CopyWith_Input_AreaFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_AreaFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_AreaFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_AreaFilterBlurhash.stub(_res);

  CopyWith_Input_AddressFilterInput<TRes> get addresses =>
      CopyWith_Input_AddressFilterInput.stub(_res);

  CopyWith_Input_AreaStreetFilterInput<TRes> get areaStreets =>
      CopyWith_Input_AreaStreetFilterInput.stub(_res);

  CopyWith_Input_StreetFilterInput<TRes> get streets =>
      CopyWith_Input_StreetFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get admins =>
      CopyWith_Input_UserFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_EditFilterInput<TRes> get edits =>
      CopyWith_Input_EditFilterInput.stub(_res);

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit =>
      CopyWith_Input_LatestVisitFilterInput.stub(_res);

  CopyWith_Input_VisitFilterInput<TRes> get visits =>
      CopyWith_Input_VisitFilterInput.stub(_res);

  CopyWith_Input_AreaFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_AreaFilterLastEdit.stub(_res);

  CopyWith_Input_AreaFilterLastEditUserName<TRes> get lastEditUserName =>
      CopyWith_Input_AreaFilterLastEditUserName.stub(_res);

  CopyWith_Input_AreaFilterLastVisit<TRes> get lastVisit =>
      CopyWith_Input_AreaFilterLastVisit.stub(_res);

  CopyWith_Input_AreaFilterLastVisitUserName<TRes> get lastVisitUserName =>
      CopyWith_Input_AreaFilterLastVisitUserName.stub(_res);

  CopyWith_Input_AreaFilterUserCanEdit<TRes> get userCanEdit =>
      CopyWith_Input_AreaFilterUserCanEdit.stub(_res);

  CopyWith_Input_AreaFilterWithinPolygon<TRes> get withinPolygon =>
      CopyWith_Input_AreaFilterWithinPolygon.stub(_res);

  CopyWith_Input_AreaFilterContainsPoint<TRes> get containsPoint =>
      CopyWith_Input_AreaFilterContainsPoint.stub(_res);
}

class Input_AreaSortInput {
  factory Input_AreaSortInput({
    Enum_SortOrder? order,
    required Enum_AreaSortField field,
    Input_AreaWithinPolygonFieldInput? withinPolygonInput,
    Input_AreaContainsPointFieldInput? containsPointInput,
  }) => Input_AreaSortInput._({
    if (order != null) r'order': order,
    r'field': field,
    if (withinPolygonInput != null) r'withinPolygonInput': withinPolygonInput,
    if (containsPointInput != null) r'containsPointInput': containsPointInput,
  });

  Input_AreaSortInput._(this._$data);

  factory Input_AreaSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_AreaSortField((l$field as String));
    if (data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = data['withinPolygonInput'];
      result$data['withinPolygonInput'] = l$withinPolygonInput == null
          ? null
          : Input_AreaWithinPolygonFieldInput.fromJson(
              (l$withinPolygonInput as Map<String, dynamic>),
            );
    }
    if (data.containsKey('containsPointInput')) {
      final l$containsPointInput = data['containsPointInput'];
      result$data['containsPointInput'] = l$containsPointInput == null
          ? null
          : Input_AreaContainsPointFieldInput.fromJson(
              (l$containsPointInput as Map<String, dynamic>),
            );
    }
    return Input_AreaSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_AreaSortField get field => (_$data['field'] as Enum_AreaSortField);

  Input_AreaWithinPolygonFieldInput? get withinPolygonInput =>
      (_$data['withinPolygonInput'] as Input_AreaWithinPolygonFieldInput?);

  Input_AreaContainsPointFieldInput? get containsPointInput =>
      (_$data['containsPointInput'] as Input_AreaContainsPointFieldInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_AreaSortField(l$field);
    if (_$data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = withinPolygonInput;
      result$data['withinPolygonInput'] = l$withinPolygonInput?.toJson();
    }
    if (_$data.containsKey('containsPointInput')) {
      final l$containsPointInput = containsPointInput;
      result$data['containsPointInput'] = l$containsPointInput?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_AreaSortInput<Input_AreaSortInput> get copyWith =>
      CopyWith_Input_AreaSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_AreaSortInput || runtimeType != other.runtimeType) {
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
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$withinPolygonInput = withinPolygonInput;
    final lOther$withinPolygonInput = other.withinPolygonInput;
    if (_$data.containsKey('withinPolygonInput') !=
        other._$data.containsKey('withinPolygonInput')) {
      return false;
    }
    if (l$withinPolygonInput != lOther$withinPolygonInput) {
      return false;
    }
    final l$containsPointInput = containsPointInput;
    final lOther$containsPointInput = other.containsPointInput;
    if (_$data.containsKey('containsPointInput') !=
        other._$data.containsKey('containsPointInput')) {
      return false;
    }
    if (l$containsPointInput != lOther$containsPointInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    final l$withinPolygonInput = withinPolygonInput;
    final l$containsPointInput = containsPointInput;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
      _$data.containsKey('withinPolygonInput')
          ? l$withinPolygonInput
          : const {},
      _$data.containsKey('containsPointInput')
          ? l$containsPointInput
          : const {},
    ]);
  }
}
