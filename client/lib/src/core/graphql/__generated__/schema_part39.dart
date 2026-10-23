// Part 39 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_StreetFilterColor<TRes> {
  factory CopyWith_Input_StreetFilterColor(
    Input_StreetFilterColor instance,
    TRes Function(Input_StreetFilterColor) then,
  ) = _CopyWithImpl_Input_StreetFilterColor;

  factory CopyWith_Input_StreetFilterColor.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetFilterColor;

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

class _CopyWithImpl_Input_StreetFilterColor<TRes>
    implements CopyWith_Input_StreetFilterColor<TRes> {
  _CopyWithImpl_Input_StreetFilterColor(this._instance, this._then);

  final Input_StreetFilterColor _instance;

  final TRes Function(Input_StreetFilterColor) _then;

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
    Input_StreetFilterColor._({
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

class _CopyWithStubImpl_Input_StreetFilterColor<TRes>
    implements CopyWith_Input_StreetFilterColor<TRes> {
  _CopyWithStubImpl_Input_StreetFilterColor(this._res);

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

class Input_StreetFilterLine {
  factory Input_StreetFilterLine({
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
  }) => Input_StreetFilterLine._({
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

  Input_StreetFilterLine._(this._$data);

  factory Input_StreetFilterLine.fromJson(Map<String, dynamic> data) {
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
    return Input_StreetFilterLine._(result$data);
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

  CopyWith_Input_StreetFilterLine<Input_StreetFilterLine> get copyWith =>
      CopyWith_Input_StreetFilterLine(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetFilterLine || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StreetFilterLine<TRes> {
  factory CopyWith_Input_StreetFilterLine(
    Input_StreetFilterLine instance,
    TRes Function(Input_StreetFilterLine) then,
  ) = _CopyWithImpl_Input_StreetFilterLine;

  factory CopyWith_Input_StreetFilterLine.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetFilterLine;

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

class _CopyWithImpl_Input_StreetFilterLine<TRes>
    implements CopyWith_Input_StreetFilterLine<TRes> {
  _CopyWithImpl_Input_StreetFilterLine(this._instance, this._then);

  final Input_StreetFilterLine _instance;

  final TRes Function(Input_StreetFilterLine) _then;

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
    Input_StreetFilterLine._({
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

class _CopyWithStubImpl_Input_StreetFilterLine<TRes>
    implements CopyWith_Input_StreetFilterLine<TRes> {
  _CopyWithStubImpl_Input_StreetFilterLine(this._res);

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

class Input_StreetFilterName {
  factory Input_StreetFilterName({
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
  }) => Input_StreetFilterName._({
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

  Input_StreetFilterName._(this._$data);

  factory Input_StreetFilterName.fromJson(Map<String, dynamic> data) {
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
    return Input_StreetFilterName._(result$data);
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

  CopyWith_Input_StreetFilterName<Input_StreetFilterName> get copyWith =>
      CopyWith_Input_StreetFilterName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetFilterName || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StreetFilterName<TRes> {
  factory CopyWith_Input_StreetFilterName(
    Input_StreetFilterName instance,
    TRes Function(Input_StreetFilterName) then,
  ) = _CopyWithImpl_Input_StreetFilterName;

  factory CopyWith_Input_StreetFilterName.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetFilterName;

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

class _CopyWithImpl_Input_StreetFilterName<TRes>
    implements CopyWith_Input_StreetFilterName<TRes> {
  _CopyWithImpl_Input_StreetFilterName(this._instance, this._then);

  final Input_StreetFilterName _instance;

  final TRes Function(Input_StreetFilterName) _then;

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
    Input_StreetFilterName._({
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

class _CopyWithStubImpl_Input_StreetFilterName<TRes>
    implements CopyWith_Input_StreetFilterName<TRes> {
  _CopyWithStubImpl_Input_StreetFilterName(this._res);

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

class Input_StreetFilterId {
  factory Input_StreetFilterId({
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
  }) => Input_StreetFilterId._({
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

  Input_StreetFilterId._(this._$data);

  factory Input_StreetFilterId.fromJson(Map<String, dynamic> data) {
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
    return Input_StreetFilterId._(result$data);
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

  CopyWith_Input_StreetFilterId<Input_StreetFilterId> get copyWith =>
      CopyWith_Input_StreetFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetFilterId || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_StreetFilterId<TRes> {
  factory CopyWith_Input_StreetFilterId(
    Input_StreetFilterId instance,
    TRes Function(Input_StreetFilterId) then,
  ) = _CopyWithImpl_Input_StreetFilterId;

  factory CopyWith_Input_StreetFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetFilterId;

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

class _CopyWithImpl_Input_StreetFilterId<TRes>
    implements CopyWith_Input_StreetFilterId<TRes> {
  _CopyWithImpl_Input_StreetFilterId(this._instance, this._then);

  final Input_StreetFilterId _instance;

  final TRes Function(Input_StreetFilterId) _then;

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
    Input_StreetFilterId._({
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

class _CopyWithStubImpl_Input_StreetFilterId<TRes>
    implements CopyWith_Input_StreetFilterId<TRes> {
  _CopyWithStubImpl_Input_StreetFilterId(this._res);

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

class Input_StreetFilterInput {
  factory Input_StreetFilterInput({
    List<Input_StreetFilterInput>? and,
    List<Input_StreetFilterInput>? or,
    List<Input_StreetFilterInput>? not,
    Input_StreetFilterId? id,
    Input_StreetFilterName? name,
    Input_StreetFilterLine? line,
    Input_StreetFilterColor? color,
    Input_StreetFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_StreetFilterBlurhash? blurhash,
    Input_AddressFilterInput? addresses,
    Input_AreaStreetFilterInput? areaStreets,
    Input_AreaFilterInput? areas,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_StreetFilterLastEdit? lastEdit,
    Input_StreetFilterLastEditUserName? lastEditUserName,
    Input_StreetFilterLastVisit? lastVisit,
    Input_StreetFilterLastVisitUserName? lastVisitUserName,
    Input_StreetFilterUserCanEdit? userCanEdit,
    Input_StreetFilterWithinPolygon? withinPolygon,
    Input_StreetFilterWithinDistance? withinDistance,
  }) => Input_StreetFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (line != null) r'line': line,
    if (color != null) r'color': color,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (blurhash != null) r'blurhash': blurhash,
    if (addresses != null) r'addresses': addresses,
    if (areaStreets != null) r'areaStreets': areaStreets,
    if (areas != null) r'areas': areas,
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
    if (withinDistance != null) r'withinDistance': withinDistance,
  });

  Input_StreetFilterInput._(this._$data);

  factory Input_StreetFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_StreetFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_StreetFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) =>
                Input_StreetFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_StreetFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_StreetFilterName.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('line')) {
      final l$line = data['line'];
      result$data['line'] = l$line == null
          ? null
          : Input_StreetFilterLine.fromJson((l$line as Map<String, dynamic>));
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_StreetFilterColor.fromJson((l$color as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_StreetFilterPhotoUpdatedAt.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_StreetFilterBlurhash.fromJson(
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
    if (data.containsKey('areas')) {
      final l$areas = data['areas'];
      result$data['areas'] = l$areas == null
          ? null
          : Input_AreaFilterInput.fromJson((l$areas as Map<String, dynamic>));
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
          : Input_StreetFilterLastEdit.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEditUserName')) {
      final l$lastEditUserName = data['lastEditUserName'];
      result$data['lastEditUserName'] = l$lastEditUserName == null
          ? null
          : Input_StreetFilterLastEditUserName.fromJson(
              (l$lastEditUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : Input_StreetFilterLastVisit.fromJson(
              (l$lastVisit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastVisitUserName')) {
      final l$lastVisitUserName = data['lastVisitUserName'];
      result$data['lastVisitUserName'] = l$lastVisitUserName == null
          ? null
          : Input_StreetFilterLastVisitUserName.fromJson(
              (l$lastVisitUserName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_StreetFilterUserCanEdit.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('withinPolygon')) {
      final l$withinPolygon = data['withinPolygon'];
      result$data['withinPolygon'] = l$withinPolygon == null
          ? null
          : Input_StreetFilterWithinPolygon.fromJson(
              (l$withinPolygon as Map<String, dynamic>),
            );
    }
    if (data.containsKey('withinDistance')) {
      final l$withinDistance = data['withinDistance'];
      result$data['withinDistance'] = l$withinDistance == null
          ? null
          : Input_StreetFilterWithinDistance.fromJson(
              (l$withinDistance as Map<String, dynamic>),
            );
    }
    return Input_StreetFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_StreetFilterInput>? get and =>
      (_$data['and'] as List<Input_StreetFilterInput>?);

  List<Input_StreetFilterInput>? get or =>
      (_$data['or'] as List<Input_StreetFilterInput>?);

  List<Input_StreetFilterInput>? get not =>
      (_$data['not'] as List<Input_StreetFilterInput>?);

  Input_StreetFilterId? get id => (_$data['id'] as Input_StreetFilterId?);

  Input_StreetFilterName? get name =>
      (_$data['name'] as Input_StreetFilterName?);

  Input_StreetFilterLine? get line =>
      (_$data['line'] as Input_StreetFilterLine?);

  Input_StreetFilterColor? get color =>
      (_$data['color'] as Input_StreetFilterColor?);

  Input_StreetFilterPhotoUpdatedAt? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_StreetFilterPhotoUpdatedAt?);

  Input_StreetFilterBlurhash? get blurhash =>
      (_$data['blurhash'] as Input_StreetFilterBlurhash?);

  Input_AddressFilterInput? get addresses =>
      (_$data['addresses'] as Input_AddressFilterInput?);

  Input_AreaStreetFilterInput? get areaStreets =>
      (_$data['areaStreets'] as Input_AreaStreetFilterInput?);

  Input_AreaFilterInput? get areas =>
      (_$data['areas'] as Input_AreaFilterInput?);

  Input_LatestEditFilterInput? get latestEdit =>
      (_$data['latestEdit'] as Input_LatestEditFilterInput?);

  Input_EditFilterInput? get edits =>
      (_$data['edits'] as Input_EditFilterInput?);

  Input_LatestVisitFilterInput? get latestVisit =>
      (_$data['latestVisit'] as Input_LatestVisitFilterInput?);

  Input_VisitFilterInput? get visits =>
      (_$data['visits'] as Input_VisitFilterInput?);

  Input_StreetFilterLastEdit? get lastEdit =>
      (_$data['lastEdit'] as Input_StreetFilterLastEdit?);

  Input_StreetFilterLastEditUserName? get lastEditUserName =>
      (_$data['lastEditUserName'] as Input_StreetFilterLastEditUserName?);

  Input_StreetFilterLastVisit? get lastVisit =>
      (_$data['lastVisit'] as Input_StreetFilterLastVisit?);

  Input_StreetFilterLastVisitUserName? get lastVisitUserName =>
      (_$data['lastVisitUserName'] as Input_StreetFilterLastVisitUserName?);

  Input_StreetFilterUserCanEdit? get userCanEdit =>
      (_$data['userCanEdit'] as Input_StreetFilterUserCanEdit?);

  Input_StreetFilterWithinPolygon? get withinPolygon =>
      (_$data['withinPolygon'] as Input_StreetFilterWithinPolygon?);

  Input_StreetFilterWithinDistance? get withinDistance =>
      (_$data['withinDistance'] as Input_StreetFilterWithinDistance?);

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
    if (_$data.containsKey('line')) {
      final l$line = line;
      result$data['line'] = l$line?.toJson();
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
    if (_$data.containsKey('areas')) {
      final l$areas = areas;
      result$data['areas'] = l$areas?.toJson();
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
    if (_$data.containsKey('withinDistance')) {
      final l$withinDistance = withinDistance;
      result$data['withinDistance'] = l$withinDistance?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StreetFilterInput<Input_StreetFilterInput> get copyWith =>
      CopyWith_Input_StreetFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetFilterInput || runtimeType != other.runtimeType) {
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
    final l$line = line;
    final lOther$line = other.line;
    if (_$data.containsKey('line') != other._$data.containsKey('line')) {
      return false;
    }
    if (l$line != lOther$line) {
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
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (_$data.containsKey('areas') != other._$data.containsKey('areas')) {
      return false;
    }
    if (l$areas != lOther$areas) {
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
    final l$withinDistance = withinDistance;
    final lOther$withinDistance = other.withinDistance;
    if (_$data.containsKey('withinDistance') !=
        other._$data.containsKey('withinDistance')) {
      return false;
    }
    if (l$withinDistance != lOther$withinDistance) {
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
    final l$line = line;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$addresses = addresses;
    final l$areaStreets = areaStreets;
    final l$areas = areas;
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
    final l$withinDistance = withinDistance;
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
      _$data.containsKey('line') ? l$line : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('addresses') ? l$addresses : const {},
      _$data.containsKey('areaStreets') ? l$areaStreets : const {},
      _$data.containsKey('areas') ? l$areas : const {},
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
      _$data.containsKey('withinDistance') ? l$withinDistance : const {},
    ]);
  }
}

abstract class CopyWith_Input_StreetFilterInput<TRes> {
  factory CopyWith_Input_StreetFilterInput(
    Input_StreetFilterInput instance,
    TRes Function(Input_StreetFilterInput) then,
  ) = _CopyWithImpl_Input_StreetFilterInput;

  factory CopyWith_Input_StreetFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_StreetFilterInput;

  TRes call({
    List<Input_StreetFilterInput>? and,
    List<Input_StreetFilterInput>? or,
    List<Input_StreetFilterInput>? not,
    Input_StreetFilterId? id,
    Input_StreetFilterName? name,
    Input_StreetFilterLine? line,
    Input_StreetFilterColor? color,
    Input_StreetFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_StreetFilterBlurhash? blurhash,
    Input_AddressFilterInput? addresses,
    Input_AreaStreetFilterInput? areaStreets,
    Input_AreaFilterInput? areas,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_StreetFilterLastEdit? lastEdit,
    Input_StreetFilterLastEditUserName? lastEditUserName,
    Input_StreetFilterLastVisit? lastVisit,
    Input_StreetFilterLastVisitUserName? lastVisitUserName,
    Input_StreetFilterUserCanEdit? userCanEdit,
    Input_StreetFilterWithinPolygon? withinPolygon,
    Input_StreetFilterWithinDistance? withinDistance,
  });
  TRes and(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_StreetFilterId<TRes> get id;
  CopyWith_Input_StreetFilterName<TRes> get name;
  CopyWith_Input_StreetFilterLine<TRes> get line;
  CopyWith_Input_StreetFilterColor<TRes> get color;
  CopyWith_Input_StreetFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_StreetFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_AddressFilterInput<TRes> get addresses;
  CopyWith_Input_AreaStreetFilterInput<TRes> get areaStreets;
  CopyWith_Input_AreaFilterInput<TRes> get areas;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_EditFilterInput<TRes> get edits;
  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit;
  CopyWith_Input_VisitFilterInput<TRes> get visits;
  CopyWith_Input_StreetFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_StreetFilterLastEditUserName<TRes> get lastEditUserName;
  CopyWith_Input_StreetFilterLastVisit<TRes> get lastVisit;
  CopyWith_Input_StreetFilterLastVisitUserName<TRes> get lastVisitUserName;
  CopyWith_Input_StreetFilterUserCanEdit<TRes> get userCanEdit;
  CopyWith_Input_StreetFilterWithinPolygon<TRes> get withinPolygon;
  CopyWith_Input_StreetFilterWithinDistance<TRes> get withinDistance;
}

class _CopyWithImpl_Input_StreetFilterInput<TRes>
    implements CopyWith_Input_StreetFilterInput<TRes> {
  _CopyWithImpl_Input_StreetFilterInput(this._instance, this._then);

  final Input_StreetFilterInput _instance;

  final TRes Function(Input_StreetFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? line = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? addresses = _undefined,
    Object? areaStreets = _undefined,
    Object? areas = _undefined,
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
    Object? withinDistance = _undefined,
  }) => _then(
    Input_StreetFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_StreetFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_StreetFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_StreetFilterInput>?),
      if (id != _undefined) 'id': (id as Input_StreetFilterId?),
      if (name != _undefined) 'name': (name as Input_StreetFilterName?),
      if (line != _undefined) 'line': (line as Input_StreetFilterLine?),
      if (color != _undefined) 'color': (color as Input_StreetFilterColor?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_StreetFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_StreetFilterBlurhash?),
      if (addresses != _undefined)
        'addresses': (addresses as Input_AddressFilterInput?),
      if (areaStreets != _undefined)
        'areaStreets': (areaStreets as Input_AreaStreetFilterInput?),
      if (areas != _undefined) 'areas': (areas as Input_AreaFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (edits != _undefined) 'edits': (edits as Input_EditFilterInput?),
      if (latestVisit != _undefined)
        'latestVisit': (latestVisit as Input_LatestVisitFilterInput?),
      if (visits != _undefined) 'visits': (visits as Input_VisitFilterInput?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_StreetFilterLastEdit?),
      if (lastEditUserName != _undefined)
        'lastEditUserName':
            (lastEditUserName as Input_StreetFilterLastEditUserName?),
      if (lastVisit != _undefined)
        'lastVisit': (lastVisit as Input_StreetFilterLastVisit?),
      if (lastVisitUserName != _undefined)
        'lastVisitUserName':
            (lastVisitUserName as Input_StreetFilterLastVisitUserName?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_StreetFilterUserCanEdit?),
      if (withinPolygon != _undefined)
        'withinPolygon': (withinPolygon as Input_StreetFilterWithinPolygon?),
      if (withinDistance != _undefined)
        'withinDistance': (withinDistance as Input_StreetFilterWithinDistance?),
    }),
  );

  TRes and(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_StreetFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_StreetFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_StreetFilterInput>? Function(
      Iterable<CopyWith_Input_StreetFilterInput<Input_StreetFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_StreetFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_StreetFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_StreetFilterId.stub(_then(_instance))
        : CopyWith_Input_StreetFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_StreetFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_StreetFilterName.stub(_then(_instance))
        : CopyWith_Input_StreetFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_StreetFilterLine<TRes> get line {
    final local$line = _instance.line;
    return local$line == null
        ? CopyWith_Input_StreetFilterLine.stub(_then(_instance))
        : CopyWith_Input_StreetFilterLine(local$line, (e) => call(line: e));
  }

  CopyWith_Input_StreetFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_StreetFilterColor.stub(_then(_instance))
        : CopyWith_Input_StreetFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_StreetFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_StreetFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_StreetFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_StreetFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_StreetFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_StreetFilterBlurhash(
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

  CopyWith_Input_AreaFilterInput<TRes> get areas {
    final local$areas = _instance.areas;
    return local$areas == null
        ? CopyWith_Input_AreaFilterInput.stub(_then(_instance))
        : CopyWith_Input_AreaFilterInput(local$areas, (e) => call(areas: e));
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

  CopyWith_Input_StreetFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_StreetFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_StreetFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_StreetFilterLastEditUserName<TRes> get lastEditUserName {
    final local$lastEditUserName = _instance.lastEditUserName;
    return local$lastEditUserName == null
        ? CopyWith_Input_StreetFilterLastEditUserName.stub(_then(_instance))
        : CopyWith_Input_StreetFilterLastEditUserName(
            local$lastEditUserName,
            (e) => call(lastEditUserName: e),
          );
  }

  CopyWith_Input_StreetFilterLastVisit<TRes> get lastVisit {
    final local$lastVisit = _instance.lastVisit;
    return local$lastVisit == null
        ? CopyWith_Input_StreetFilterLastVisit.stub(_then(_instance))
        : CopyWith_Input_StreetFilterLastVisit(
            local$lastVisit,
            (e) => call(lastVisit: e),
          );
  }

  CopyWith_Input_StreetFilterLastVisitUserName<TRes> get lastVisitUserName {
    final local$lastVisitUserName = _instance.lastVisitUserName;
    return local$lastVisitUserName == null
        ? CopyWith_Input_StreetFilterLastVisitUserName.stub(_then(_instance))
        : CopyWith_Input_StreetFilterLastVisitUserName(
            local$lastVisitUserName,
            (e) => call(lastVisitUserName: e),
          );
  }

  CopyWith_Input_StreetFilterUserCanEdit<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_StreetFilterUserCanEdit.stub(_then(_instance))
        : CopyWith_Input_StreetFilterUserCanEdit(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }

  CopyWith_Input_StreetFilterWithinPolygon<TRes> get withinPolygon {
    final local$withinPolygon = _instance.withinPolygon;
    return local$withinPolygon == null
        ? CopyWith_Input_StreetFilterWithinPolygon.stub(_then(_instance))
        : CopyWith_Input_StreetFilterWithinPolygon(
            local$withinPolygon,
            (e) => call(withinPolygon: e),
          );
  }

  CopyWith_Input_StreetFilterWithinDistance<TRes> get withinDistance {
    final local$withinDistance = _instance.withinDistance;
    return local$withinDistance == null
        ? CopyWith_Input_StreetFilterWithinDistance.stub(_then(_instance))
        : CopyWith_Input_StreetFilterWithinDistance(
            local$withinDistance,
            (e) => call(withinDistance: e),
          );
  }
}

class _CopyWithStubImpl_Input_StreetFilterInput<TRes>
    implements CopyWith_Input_StreetFilterInput<TRes> {
  _CopyWithStubImpl_Input_StreetFilterInput(this._res);

  TRes _res;

  call({
    List<Input_StreetFilterInput>? and,
    List<Input_StreetFilterInput>? or,
    List<Input_StreetFilterInput>? not,
    Input_StreetFilterId? id,
    Input_StreetFilterName? name,
    Input_StreetFilterLine? line,
    Input_StreetFilterColor? color,
    Input_StreetFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_StreetFilterBlurhash? blurhash,
    Input_AddressFilterInput? addresses,
    Input_AreaStreetFilterInput? areaStreets,
    Input_AreaFilterInput? areas,
    Input_LatestEditFilterInput? latestEdit,
    Input_EditFilterInput? edits,
    Input_LatestVisitFilterInput? latestVisit,
    Input_VisitFilterInput? visits,
    Input_StreetFilterLastEdit? lastEdit,
    Input_StreetFilterLastEditUserName? lastEditUserName,
    Input_StreetFilterLastVisit? lastVisit,
    Input_StreetFilterLastVisitUserName? lastVisitUserName,
    Input_StreetFilterUserCanEdit? userCanEdit,
    Input_StreetFilterWithinPolygon? withinPolygon,
    Input_StreetFilterWithinDistance? withinDistance,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_StreetFilterId<TRes> get id =>
      CopyWith_Input_StreetFilterId.stub(_res);

  CopyWith_Input_StreetFilterName<TRes> get name =>
      CopyWith_Input_StreetFilterName.stub(_res);

  CopyWith_Input_StreetFilterLine<TRes> get line =>
      CopyWith_Input_StreetFilterLine.stub(_res);

  CopyWith_Input_StreetFilterColor<TRes> get color =>
      CopyWith_Input_StreetFilterColor.stub(_res);

  CopyWith_Input_StreetFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_StreetFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_StreetFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_StreetFilterBlurhash.stub(_res);

  CopyWith_Input_AddressFilterInput<TRes> get addresses =>
      CopyWith_Input_AddressFilterInput.stub(_res);

  CopyWith_Input_AreaStreetFilterInput<TRes> get areaStreets =>
      CopyWith_Input_AreaStreetFilterInput.stub(_res);

  CopyWith_Input_AreaFilterInput<TRes> get areas =>
      CopyWith_Input_AreaFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_EditFilterInput<TRes> get edits =>
      CopyWith_Input_EditFilterInput.stub(_res);

  CopyWith_Input_LatestVisitFilterInput<TRes> get latestVisit =>
      CopyWith_Input_LatestVisitFilterInput.stub(_res);

  CopyWith_Input_VisitFilterInput<TRes> get visits =>
      CopyWith_Input_VisitFilterInput.stub(_res);

  CopyWith_Input_StreetFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_StreetFilterLastEdit.stub(_res);

  CopyWith_Input_StreetFilterLastEditUserName<TRes> get lastEditUserName =>
      CopyWith_Input_StreetFilterLastEditUserName.stub(_res);

  CopyWith_Input_StreetFilterLastVisit<TRes> get lastVisit =>
      CopyWith_Input_StreetFilterLastVisit.stub(_res);

  CopyWith_Input_StreetFilterLastVisitUserName<TRes> get lastVisitUserName =>
      CopyWith_Input_StreetFilterLastVisitUserName.stub(_res);

  CopyWith_Input_StreetFilterUserCanEdit<TRes> get userCanEdit =>
      CopyWith_Input_StreetFilterUserCanEdit.stub(_res);

  CopyWith_Input_StreetFilterWithinPolygon<TRes> get withinPolygon =>
      CopyWith_Input_StreetFilterWithinPolygon.stub(_res);

  CopyWith_Input_StreetFilterWithinDistance<TRes> get withinDistance =>
      CopyWith_Input_StreetFilterWithinDistance.stub(_res);
}

class Input_StreetSortInput {
  factory Input_StreetSortInput({
    Enum_SortOrder? order,
    required Enum_StreetSortField field,
    Input_StreetWithinPolygonFieldInput? withinPolygonInput,
    Input_StreetWithinDistanceFieldInput? withinDistanceInput,
  }) => Input_StreetSortInput._({
    if (order != null) r'order': order,
    r'field': field,
    if (withinPolygonInput != null) r'withinPolygonInput': withinPolygonInput,
    if (withinDistanceInput != null)
      r'withinDistanceInput': withinDistanceInput,
  });

  Input_StreetSortInput._(this._$data);

  factory Input_StreetSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_StreetSortField((l$field as String));
    if (data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = data['withinPolygonInput'];
      result$data['withinPolygonInput'] = l$withinPolygonInput == null
          ? null
          : Input_StreetWithinPolygonFieldInput.fromJson(
              (l$withinPolygonInput as Map<String, dynamic>),
            );
    }
    if (data.containsKey('withinDistanceInput')) {
      final l$withinDistanceInput = data['withinDistanceInput'];
      result$data['withinDistanceInput'] = l$withinDistanceInput == null
          ? null
          : Input_StreetWithinDistanceFieldInput.fromJson(
              (l$withinDistanceInput as Map<String, dynamic>),
            );
    }
    return Input_StreetSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_StreetSortField get field => (_$data['field'] as Enum_StreetSortField);

  Input_StreetWithinPolygonFieldInput? get withinPolygonInput =>
      (_$data['withinPolygonInput'] as Input_StreetWithinPolygonFieldInput?);

  Input_StreetWithinDistanceFieldInput? get withinDistanceInput =>
      (_$data['withinDistanceInput'] as Input_StreetWithinDistanceFieldInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_StreetSortField(l$field);
    if (_$data.containsKey('withinPolygonInput')) {
      final l$withinPolygonInput = withinPolygonInput;
      result$data['withinPolygonInput'] = l$withinPolygonInput?.toJson();
    }
    if (_$data.containsKey('withinDistanceInput')) {
      final l$withinDistanceInput = withinDistanceInput;
      result$data['withinDistanceInput'] = l$withinDistanceInput?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_StreetSortInput<Input_StreetSortInput> get copyWith =>
      CopyWith_Input_StreetSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_StreetSortInput || runtimeType != other.runtimeType) {
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
    final l$withinDistanceInput = withinDistanceInput;
    final lOther$withinDistanceInput = other.withinDistanceInput;
    if (_$data.containsKey('withinDistanceInput') !=
        other._$data.containsKey('withinDistanceInput')) {
      return false;
    }
    if (l$withinDistanceInput != lOther$withinDistanceInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    final l$withinPolygonInput = withinPolygonInput;
    final l$withinDistanceInput = withinDistanceInput;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
      _$data.containsKey('withinPolygonInput')
          ? l$withinPolygonInput
          : const {},
      _$data.containsKey('withinDistanceInput')
          ? l$withinDistanceInput
          : const {},
    ]);
  }
}
