// Part 34 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ClassFilterServiceId<TRes> {
  factory CopyWith_Input_ClassFilterServiceId(
    Input_ClassFilterServiceId instance,
    TRes Function(Input_ClassFilterServiceId) then,
  ) = _CopyWithImpl_Input_ClassFilterServiceId;

  factory CopyWith_Input_ClassFilterServiceId.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassFilterServiceId;

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

class _CopyWithImpl_Input_ClassFilterServiceId<TRes>
    implements CopyWith_Input_ClassFilterServiceId<TRes> {
  _CopyWithImpl_Input_ClassFilterServiceId(this._instance, this._then);

  final Input_ClassFilterServiceId _instance;

  final TRes Function(Input_ClassFilterServiceId) _then;

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
    Input_ClassFilterServiceId._({
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

class _CopyWithStubImpl_Input_ClassFilterServiceId<TRes>
    implements CopyWith_Input_ClassFilterServiceId<TRes> {
  _CopyWithStubImpl_Input_ClassFilterServiceId(this._res);

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

class Input_ClassFilterName {
  factory Input_ClassFilterName({
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
  }) => Input_ClassFilterName._({
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

  Input_ClassFilterName._(this._$data);

  factory Input_ClassFilterName.fromJson(Map<String, dynamic> data) {
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
    return Input_ClassFilterName._(result$data);
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

  CopyWith_Input_ClassFilterName<Input_ClassFilterName> get copyWith =>
      CopyWith_Input_ClassFilterName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassFilterName || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ClassFilterName<TRes> {
  factory CopyWith_Input_ClassFilterName(
    Input_ClassFilterName instance,
    TRes Function(Input_ClassFilterName) then,
  ) = _CopyWithImpl_Input_ClassFilterName;

  factory CopyWith_Input_ClassFilterName.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassFilterName;

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

class _CopyWithImpl_Input_ClassFilterName<TRes>
    implements CopyWith_Input_ClassFilterName<TRes> {
  _CopyWithImpl_Input_ClassFilterName(this._instance, this._then);

  final Input_ClassFilterName _instance;

  final TRes Function(Input_ClassFilterName) _then;

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
    Input_ClassFilterName._({
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

class _CopyWithStubImpl_Input_ClassFilterName<TRes>
    implements CopyWith_Input_ClassFilterName<TRes> {
  _CopyWithStubImpl_Input_ClassFilterName(this._res);

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

class Input_ClassFilterId {
  factory Input_ClassFilterId({
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
  }) => Input_ClassFilterId._({
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

  Input_ClassFilterId._(this._$data);

  factory Input_ClassFilterId.fromJson(Map<String, dynamic> data) {
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
    return Input_ClassFilterId._(result$data);
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

  CopyWith_Input_ClassFilterId<Input_ClassFilterId> get copyWith =>
      CopyWith_Input_ClassFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassFilterId || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ClassFilterId<TRes> {
  factory CopyWith_Input_ClassFilterId(
    Input_ClassFilterId instance,
    TRes Function(Input_ClassFilterId) then,
  ) = _CopyWithImpl_Input_ClassFilterId;

  factory CopyWith_Input_ClassFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassFilterId;

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

class _CopyWithImpl_Input_ClassFilterId<TRes>
    implements CopyWith_Input_ClassFilterId<TRes> {
  _CopyWithImpl_Input_ClassFilterId(this._instance, this._then);

  final Input_ClassFilterId _instance;

  final TRes Function(Input_ClassFilterId) _then;

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
    Input_ClassFilterId._({
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

class _CopyWithStubImpl_Input_ClassFilterId<TRes>
    implements CopyWith_Input_ClassFilterId<TRes> {
  _CopyWithStubImpl_Input_ClassFilterId(this._res);

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

class Input_ClassFilterInput {
  factory Input_ClassFilterInput({
    List<Input_ClassFilterInput>? and,
    List<Input_ClassFilterInput>? or,
    List<Input_ClassFilterInput>? not,
    Input_ClassFilterId? id,
    Input_ClassFilterName? name,
    Input_ClassFilterServiceId? serviceId,
    Input_ClassFilterServiceStudyYear? serviceStudyYear,
    Input_ClassFilterServiceGender? serviceGender,
    Input_ClassFilterColor? color,
    Input_ClassFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_ClassFilterBlurhash? blurhash,
    Input_ClassFilterServiceStudyYearTo? serviceStudyYearTo,
    Input_ServiceFilterInput? service,
    Input_StudyYearFilterInput? studyYearFrom,
    Input_StudyYearFilterInput? studyYearTo,
    Input_ClassMembershipFilterInput? classMemberships,
    Input_MeetingFilterInput? meetings,
    Input_LatestEditFilterInput? latestEdit,
    Input_UserFilterInput? admins,
    Input_ClassFilterServiceName? serviceName,
    Input_ClassFilterLastEdit? lastEdit,
    Input_ClassFilterStudyYearFromOrder? studyYearFromOrder,
    Input_ClassFilterStudyYearToOrder? studyYearToOrder,
    Input_ClassFilterUserCanEdit? userCanEdit,
  }) => Input_ClassFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (color != null) r'color': color,
    if (photoUpdatedAt != null) r'photoUpdatedAt': photoUpdatedAt,
    if (blurhash != null) r'blurhash': blurhash,
    if (serviceStudyYearTo != null) r'serviceStudyYearTo': serviceStudyYearTo,
    if (service != null) r'service': service,
    if (studyYearFrom != null) r'studyYearFrom': studyYearFrom,
    if (studyYearTo != null) r'studyYearTo': studyYearTo,
    if (classMemberships != null) r'classMemberships': classMemberships,
    if (meetings != null) r'meetings': meetings,
    if (latestEdit != null) r'latestEdit': latestEdit,
    if (admins != null) r'admins': admins,
    if (serviceName != null) r'serviceName': serviceName,
    if (lastEdit != null) r'lastEdit': lastEdit,
    if (studyYearFromOrder != null) r'studyYearFromOrder': studyYearFromOrder,
    if (studyYearToOrder != null) r'studyYearToOrder': studyYearToOrder,
    if (userCanEdit != null) r'userCanEdit': userCanEdit,
  });

  Input_ClassFilterInput._(this._$data);

  factory Input_ClassFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) => Input_ClassFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) => Input_ClassFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) => Input_ClassFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_ClassFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_ClassFilterName.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_ClassFilterServiceId.fromJson(
              (l$serviceId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : Input_ClassFilterServiceStudyYear.fromJson(
              (l$serviceStudyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : Input_ClassFilterServiceGender.fromJson(
              (l$serviceGender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_ClassFilterColor.fromJson((l$color as Map<String, dynamic>));
    }
    if (data.containsKey('photoUpdatedAt')) {
      final l$photoUpdatedAt = data['photoUpdatedAt'];
      result$data['photoUpdatedAt'] = l$photoUpdatedAt == null
          ? null
          : Input_ClassFilterPhotoUpdatedAt.fromJson(
              (l$photoUpdatedAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('blurhash')) {
      final l$blurhash = data['blurhash'];
      result$data['blurhash'] = l$blurhash == null
          ? null
          : Input_ClassFilterBlurhash.fromJson(
              (l$blurhash as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceStudyYearTo')) {
      final l$serviceStudyYearTo = data['serviceStudyYearTo'];
      result$data['serviceStudyYearTo'] = l$serviceStudyYearTo == null
          ? null
          : Input_ClassFilterServiceStudyYearTo.fromJson(
              (l$serviceStudyYearTo as Map<String, dynamic>),
            );
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServiceFilterInput.fromJson(
              (l$service as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = data['studyYearFrom'];
      result$data['studyYearFrom'] = l$studyYearFrom == null
          ? null
          : Input_StudyYearFilterInput.fromJson(
              (l$studyYearFrom as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearTo')) {
      final l$studyYearTo = data['studyYearTo'];
      result$data['studyYearTo'] = l$studyYearTo == null
          ? null
          : Input_StudyYearFilterInput.fromJson(
              (l$studyYearTo as Map<String, dynamic>),
            );
    }
    if (data.containsKey('classMemberships')) {
      final l$classMemberships = data['classMemberships'];
      result$data['classMemberships'] = l$classMemberships == null
          ? null
          : Input_ClassMembershipFilterInput.fromJson(
              (l$classMemberships as Map<String, dynamic>),
            );
    }
    if (data.containsKey('meetings')) {
      final l$meetings = data['meetings'];
      result$data['meetings'] = l$meetings == null
          ? null
          : Input_MeetingFilterInput.fromJson(
              (l$meetings as Map<String, dynamic>),
            );
    }
    if (data.containsKey('latestEdit')) {
      final l$latestEdit = data['latestEdit'];
      result$data['latestEdit'] = l$latestEdit == null
          ? null
          : Input_LatestEditFilterInput.fromJson(
              (l$latestEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('admins')) {
      final l$admins = data['admins'];
      result$data['admins'] = l$admins == null
          ? null
          : Input_UserFilterInput.fromJson((l$admins as Map<String, dynamic>));
    }
    if (data.containsKey('serviceName')) {
      final l$serviceName = data['serviceName'];
      result$data['serviceName'] = l$serviceName == null
          ? null
          : Input_ClassFilterServiceName.fromJson(
              (l$serviceName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('lastEdit')) {
      final l$lastEdit = data['lastEdit'];
      result$data['lastEdit'] = l$lastEdit == null
          ? null
          : Input_ClassFilterLastEdit.fromJson(
              (l$lastEdit as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearFromOrder')) {
      final l$studyYearFromOrder = data['studyYearFromOrder'];
      result$data['studyYearFromOrder'] = l$studyYearFromOrder == null
          ? null
          : Input_ClassFilterStudyYearFromOrder.fromJson(
              (l$studyYearFromOrder as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearToOrder')) {
      final l$studyYearToOrder = data['studyYearToOrder'];
      result$data['studyYearToOrder'] = l$studyYearToOrder == null
          ? null
          : Input_ClassFilterStudyYearToOrder.fromJson(
              (l$studyYearToOrder as Map<String, dynamic>),
            );
    }
    if (data.containsKey('userCanEdit')) {
      final l$userCanEdit = data['userCanEdit'];
      result$data['userCanEdit'] = l$userCanEdit == null
          ? null
          : Input_ClassFilterUserCanEdit.fromJson(
              (l$userCanEdit as Map<String, dynamic>),
            );
    }
    return Input_ClassFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ClassFilterInput>? get and =>
      (_$data['and'] as List<Input_ClassFilterInput>?);

  List<Input_ClassFilterInput>? get or =>
      (_$data['or'] as List<Input_ClassFilterInput>?);

  List<Input_ClassFilterInput>? get not =>
      (_$data['not'] as List<Input_ClassFilterInput>?);

  Input_ClassFilterId? get id => (_$data['id'] as Input_ClassFilterId?);

  Input_ClassFilterName? get name => (_$data['name'] as Input_ClassFilterName?);

  Input_ClassFilterServiceId? get serviceId =>
      (_$data['serviceId'] as Input_ClassFilterServiceId?);

  Input_ClassFilterServiceStudyYear? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Input_ClassFilterServiceStudyYear?);

  Input_ClassFilterServiceGender? get serviceGender =>
      (_$data['serviceGender'] as Input_ClassFilterServiceGender?);

  Input_ClassFilterColor? get color =>
      (_$data['color'] as Input_ClassFilterColor?);

  Input_ClassFilterPhotoUpdatedAt? get photoUpdatedAt =>
      (_$data['photoUpdatedAt'] as Input_ClassFilterPhotoUpdatedAt?);

  Input_ClassFilterBlurhash? get blurhash =>
      (_$data['blurhash'] as Input_ClassFilterBlurhash?);

  Input_ClassFilterServiceStudyYearTo? get serviceStudyYearTo =>
      (_$data['serviceStudyYearTo'] as Input_ClassFilterServiceStudyYearTo?);

  Input_ServiceFilterInput? get service =>
      (_$data['service'] as Input_ServiceFilterInput?);

  Input_StudyYearFilterInput? get studyYearFrom =>
      (_$data['studyYearFrom'] as Input_StudyYearFilterInput?);

  Input_StudyYearFilterInput? get studyYearTo =>
      (_$data['studyYearTo'] as Input_StudyYearFilterInput?);

  Input_ClassMembershipFilterInput? get classMemberships =>
      (_$data['classMemberships'] as Input_ClassMembershipFilterInput?);

  Input_MeetingFilterInput? get meetings =>
      (_$data['meetings'] as Input_MeetingFilterInput?);

  Input_LatestEditFilterInput? get latestEdit =>
      (_$data['latestEdit'] as Input_LatestEditFilterInput?);

  Input_UserFilterInput? get admins =>
      (_$data['admins'] as Input_UserFilterInput?);

  Input_ClassFilterServiceName? get serviceName =>
      (_$data['serviceName'] as Input_ClassFilterServiceName?);

  Input_ClassFilterLastEdit? get lastEdit =>
      (_$data['lastEdit'] as Input_ClassFilterLastEdit?);

  Input_ClassFilterStudyYearFromOrder? get studyYearFromOrder =>
      (_$data['studyYearFromOrder'] as Input_ClassFilterStudyYearFromOrder?);

  Input_ClassFilterStudyYearToOrder? get studyYearToOrder =>
      (_$data['studyYearToOrder'] as Input_ClassFilterStudyYearToOrder?);

  Input_ClassFilterUserCanEdit? get userCanEdit =>
      (_$data['userCanEdit'] as Input_ClassFilterUserCanEdit?);

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
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId?.toJson();
    }
    if (_$data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = serviceStudyYear;
      result$data['serviceStudyYear'] = l$serviceStudyYear?.toJson();
    }
    if (_$data.containsKey('serviceGender')) {
      final l$serviceGender = serviceGender;
      result$data['serviceGender'] = l$serviceGender?.toJson();
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
    if (_$data.containsKey('serviceStudyYearTo')) {
      final l$serviceStudyYearTo = serviceStudyYearTo;
      result$data['serviceStudyYearTo'] = l$serviceStudyYearTo?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('studyYearFrom')) {
      final l$studyYearFrom = studyYearFrom;
      result$data['studyYearFrom'] = l$studyYearFrom?.toJson();
    }
    if (_$data.containsKey('studyYearTo')) {
      final l$studyYearTo = studyYearTo;
      result$data['studyYearTo'] = l$studyYearTo?.toJson();
    }
    if (_$data.containsKey('classMemberships')) {
      final l$classMemberships = classMemberships;
      result$data['classMemberships'] = l$classMemberships?.toJson();
    }
    if (_$data.containsKey('meetings')) {
      final l$meetings = meetings;
      result$data['meetings'] = l$meetings?.toJson();
    }
    if (_$data.containsKey('latestEdit')) {
      final l$latestEdit = latestEdit;
      result$data['latestEdit'] = l$latestEdit?.toJson();
    }
    if (_$data.containsKey('admins')) {
      final l$admins = admins;
      result$data['admins'] = l$admins?.toJson();
    }
    if (_$data.containsKey('serviceName')) {
      final l$serviceName = serviceName;
      result$data['serviceName'] = l$serviceName?.toJson();
    }
    if (_$data.containsKey('lastEdit')) {
      final l$lastEdit = lastEdit;
      result$data['lastEdit'] = l$lastEdit?.toJson();
    }
    if (_$data.containsKey('studyYearFromOrder')) {
      final l$studyYearFromOrder = studyYearFromOrder;
      result$data['studyYearFromOrder'] = l$studyYearFromOrder?.toJson();
    }
    if (_$data.containsKey('studyYearToOrder')) {
      final l$studyYearToOrder = studyYearToOrder;
      result$data['studyYearToOrder'] = l$studyYearToOrder?.toJson();
    }
    if (_$data.containsKey('userCanEdit')) {
      final l$userCanEdit = userCanEdit;
      result$data['userCanEdit'] = l$userCanEdit?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ClassFilterInput<Input_ClassFilterInput> get copyWith =>
      CopyWith_Input_ClassFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassFilterInput || runtimeType != other.runtimeType) {
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
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
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
    final l$serviceGender = serviceGender;
    final lOther$serviceGender = other.serviceGender;
    if (_$data.containsKey('serviceGender') !=
        other._$data.containsKey('serviceGender')) {
      return false;
    }
    if (l$serviceGender != lOther$serviceGender) {
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
    final l$serviceStudyYearTo = serviceStudyYearTo;
    final lOther$serviceStudyYearTo = other.serviceStudyYearTo;
    if (_$data.containsKey('serviceStudyYearTo') !=
        other._$data.containsKey('serviceStudyYearTo')) {
      return false;
    }
    if (l$serviceStudyYearTo != lOther$serviceStudyYearTo) {
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
    final l$studyYearFrom = studyYearFrom;
    final lOther$studyYearFrom = other.studyYearFrom;
    if (_$data.containsKey('studyYearFrom') !=
        other._$data.containsKey('studyYearFrom')) {
      return false;
    }
    if (l$studyYearFrom != lOther$studyYearFrom) {
      return false;
    }
    final l$studyYearTo = studyYearTo;
    final lOther$studyYearTo = other.studyYearTo;
    if (_$data.containsKey('studyYearTo') !=
        other._$data.containsKey('studyYearTo')) {
      return false;
    }
    if (l$studyYearTo != lOther$studyYearTo) {
      return false;
    }
    final l$classMemberships = classMemberships;
    final lOther$classMemberships = other.classMemberships;
    if (_$data.containsKey('classMemberships') !=
        other._$data.containsKey('classMemberships')) {
      return false;
    }
    if (l$classMemberships != lOther$classMemberships) {
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
    final l$latestEdit = latestEdit;
    final lOther$latestEdit = other.latestEdit;
    if (_$data.containsKey('latestEdit') !=
        other._$data.containsKey('latestEdit')) {
      return false;
    }
    if (l$latestEdit != lOther$latestEdit) {
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
    final l$serviceName = serviceName;
    final lOther$serviceName = other.serviceName;
    if (_$data.containsKey('serviceName') !=
        other._$data.containsKey('serviceName')) {
      return false;
    }
    if (l$serviceName != lOther$serviceName) {
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
    final l$studyYearFromOrder = studyYearFromOrder;
    final lOther$studyYearFromOrder = other.studyYearFromOrder;
    if (_$data.containsKey('studyYearFromOrder') !=
        other._$data.containsKey('studyYearFromOrder')) {
      return false;
    }
    if (l$studyYearFromOrder != lOther$studyYearFromOrder) {
      return false;
    }
    final l$studyYearToOrder = studyYearToOrder;
    final lOther$studyYearToOrder = other.studyYearToOrder;
    if (_$data.containsKey('studyYearToOrder') !=
        other._$data.containsKey('studyYearToOrder')) {
      return false;
    }
    if (l$studyYearToOrder != lOther$studyYearToOrder) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$not = not;
    final l$id = id;
    final l$name = name;
    final l$serviceId = serviceId;
    final l$serviceStudyYear = serviceStudyYear;
    final l$serviceGender = serviceGender;
    final l$color = color;
    final l$photoUpdatedAt = photoUpdatedAt;
    final l$blurhash = blurhash;
    final l$serviceStudyYearTo = serviceStudyYearTo;
    final l$service = service;
    final l$studyYearFrom = studyYearFrom;
    final l$studyYearTo = studyYearTo;
    final l$classMemberships = classMemberships;
    final l$meetings = meetings;
    final l$latestEdit = latestEdit;
    final l$admins = admins;
    final l$serviceName = serviceName;
    final l$lastEdit = lastEdit;
    final l$studyYearFromOrder = studyYearFromOrder;
    final l$studyYearToOrder = studyYearToOrder;
    final l$userCanEdit = userCanEdit;
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
      _$data.containsKey('serviceId') ? l$serviceId : const {},
      _$data.containsKey('serviceStudyYear') ? l$serviceStudyYear : const {},
      _$data.containsKey('serviceGender') ? l$serviceGender : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('photoUpdatedAt') ? l$photoUpdatedAt : const {},
      _$data.containsKey('blurhash') ? l$blurhash : const {},
      _$data.containsKey('serviceStudyYearTo')
          ? l$serviceStudyYearTo
          : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('studyYearFrom') ? l$studyYearFrom : const {},
      _$data.containsKey('studyYearTo') ? l$studyYearTo : const {},
      _$data.containsKey('classMemberships') ? l$classMemberships : const {},
      _$data.containsKey('meetings') ? l$meetings : const {},
      _$data.containsKey('latestEdit') ? l$latestEdit : const {},
      _$data.containsKey('admins') ? l$admins : const {},
      _$data.containsKey('serviceName') ? l$serviceName : const {},
      _$data.containsKey('lastEdit') ? l$lastEdit : const {},
      _$data.containsKey('studyYearFromOrder')
          ? l$studyYearFromOrder
          : const {},
      _$data.containsKey('studyYearToOrder') ? l$studyYearToOrder : const {},
      _$data.containsKey('userCanEdit') ? l$userCanEdit : const {},
    ]);
  }
}

abstract class CopyWith_Input_ClassFilterInput<TRes> {
  factory CopyWith_Input_ClassFilterInput(
    Input_ClassFilterInput instance,
    TRes Function(Input_ClassFilterInput) then,
  ) = _CopyWithImpl_Input_ClassFilterInput;

  factory CopyWith_Input_ClassFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassFilterInput;

  TRes call({
    List<Input_ClassFilterInput>? and,
    List<Input_ClassFilterInput>? or,
    List<Input_ClassFilterInput>? not,
    Input_ClassFilterId? id,
    Input_ClassFilterName? name,
    Input_ClassFilterServiceId? serviceId,
    Input_ClassFilterServiceStudyYear? serviceStudyYear,
    Input_ClassFilterServiceGender? serviceGender,
    Input_ClassFilterColor? color,
    Input_ClassFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_ClassFilterBlurhash? blurhash,
    Input_ClassFilterServiceStudyYearTo? serviceStudyYearTo,
    Input_ServiceFilterInput? service,
    Input_StudyYearFilterInput? studyYearFrom,
    Input_StudyYearFilterInput? studyYearTo,
    Input_ClassMembershipFilterInput? classMemberships,
    Input_MeetingFilterInput? meetings,
    Input_LatestEditFilterInput? latestEdit,
    Input_UserFilterInput? admins,
    Input_ClassFilterServiceName? serviceName,
    Input_ClassFilterLastEdit? lastEdit,
    Input_ClassFilterStudyYearFromOrder? studyYearFromOrder,
    Input_ClassFilterStudyYearToOrder? studyYearToOrder,
    Input_ClassFilterUserCanEdit? userCanEdit,
  });
  TRes and(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_ClassFilterId<TRes> get id;
  CopyWith_Input_ClassFilterName<TRes> get name;
  CopyWith_Input_ClassFilterServiceId<TRes> get serviceId;
  CopyWith_Input_ClassFilterServiceStudyYear<TRes> get serviceStudyYear;
  CopyWith_Input_ClassFilterServiceGender<TRes> get serviceGender;
  CopyWith_Input_ClassFilterColor<TRes> get color;
  CopyWith_Input_ClassFilterPhotoUpdatedAt<TRes> get photoUpdatedAt;
  CopyWith_Input_ClassFilterBlurhash<TRes> get blurhash;
  CopyWith_Input_ClassFilterServiceStudyYearTo<TRes> get serviceStudyYearTo;
  CopyWith_Input_ServiceFilterInput<TRes> get service;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearFrom;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearTo;
  CopyWith_Input_ClassMembershipFilterInput<TRes> get classMemberships;
  CopyWith_Input_MeetingFilterInput<TRes> get meetings;
  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit;
  CopyWith_Input_UserFilterInput<TRes> get admins;
  CopyWith_Input_ClassFilterServiceName<TRes> get serviceName;
  CopyWith_Input_ClassFilterLastEdit<TRes> get lastEdit;
  CopyWith_Input_ClassFilterStudyYearFromOrder<TRes> get studyYearFromOrder;
  CopyWith_Input_ClassFilterStudyYearToOrder<TRes> get studyYearToOrder;
  CopyWith_Input_ClassFilterUserCanEdit<TRes> get userCanEdit;
}

class _CopyWithImpl_Input_ClassFilterInput<TRes>
    implements CopyWith_Input_ClassFilterInput<TRes> {
  _CopyWithImpl_Input_ClassFilterInput(this._instance, this._then);

  final Input_ClassFilterInput _instance;

  final TRes Function(Input_ClassFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? not = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? serviceId = _undefined,
    Object? serviceStudyYear = _undefined,
    Object? serviceGender = _undefined,
    Object? color = _undefined,
    Object? photoUpdatedAt = _undefined,
    Object? blurhash = _undefined,
    Object? serviceStudyYearTo = _undefined,
    Object? service = _undefined,
    Object? studyYearFrom = _undefined,
    Object? studyYearTo = _undefined,
    Object? classMemberships = _undefined,
    Object? meetings = _undefined,
    Object? latestEdit = _undefined,
    Object? admins = _undefined,
    Object? serviceName = _undefined,
    Object? lastEdit = _undefined,
    Object? studyYearFromOrder = _undefined,
    Object? studyYearToOrder = _undefined,
    Object? userCanEdit = _undefined,
  }) => _then(
    Input_ClassFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_ClassFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_ClassFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_ClassFilterInput>?),
      if (id != _undefined) 'id': (id as Input_ClassFilterId?),
      if (name != _undefined) 'name': (name as Input_ClassFilterName?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_ClassFilterServiceId?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear':
            (serviceStudyYear as Input_ClassFilterServiceStudyYear?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Input_ClassFilterServiceGender?),
      if (color != _undefined) 'color': (color as Input_ClassFilterColor?),
      if (photoUpdatedAt != _undefined)
        'photoUpdatedAt': (photoUpdatedAt as Input_ClassFilterPhotoUpdatedAt?),
      if (blurhash != _undefined)
        'blurhash': (blurhash as Input_ClassFilterBlurhash?),
      if (serviceStudyYearTo != _undefined)
        'serviceStudyYearTo':
            (serviceStudyYearTo as Input_ClassFilterServiceStudyYearTo?),
      if (service != _undefined)
        'service': (service as Input_ServiceFilterInput?),
      if (studyYearFrom != _undefined)
        'studyYearFrom': (studyYearFrom as Input_StudyYearFilterInput?),
      if (studyYearTo != _undefined)
        'studyYearTo': (studyYearTo as Input_StudyYearFilterInput?),
      if (classMemberships != _undefined)
        'classMemberships':
            (classMemberships as Input_ClassMembershipFilterInput?),
      if (meetings != _undefined)
        'meetings': (meetings as Input_MeetingFilterInput?),
      if (latestEdit != _undefined)
        'latestEdit': (latestEdit as Input_LatestEditFilterInput?),
      if (admins != _undefined) 'admins': (admins as Input_UserFilterInput?),
      if (serviceName != _undefined)
        'serviceName': (serviceName as Input_ClassFilterServiceName?),
      if (lastEdit != _undefined)
        'lastEdit': (lastEdit as Input_ClassFilterLastEdit?),
      if (studyYearFromOrder != _undefined)
        'studyYearFromOrder':
            (studyYearFromOrder as Input_ClassFilterStudyYearFromOrder?),
      if (studyYearToOrder != _undefined)
        'studyYearToOrder':
            (studyYearToOrder as Input_ClassFilterStudyYearToOrder?),
      if (userCanEdit != _undefined)
        'userCanEdit': (userCanEdit as Input_ClassFilterUserCanEdit?),
    }),
  );

  TRes and(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_ClassFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_ClassFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_ClassFilterInput>? Function(
      Iterable<CopyWith_Input_ClassFilterInput<Input_ClassFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_ClassFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_ClassFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_ClassFilterId.stub(_then(_instance))
        : CopyWith_Input_ClassFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_ClassFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_ClassFilterName.stub(_then(_instance))
        : CopyWith_Input_ClassFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_ClassFilterServiceId<TRes> get serviceId {
    final local$serviceId = _instance.serviceId;
    return local$serviceId == null
        ? CopyWith_Input_ClassFilterServiceId.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceId(
            local$serviceId,
            (e) => call(serviceId: e),
          );
  }

  CopyWith_Input_ClassFilterServiceStudyYear<TRes> get serviceStudyYear {
    final local$serviceStudyYear = _instance.serviceStudyYear;
    return local$serviceStudyYear == null
        ? CopyWith_Input_ClassFilterServiceStudyYear.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceStudyYear(
            local$serviceStudyYear,
            (e) => call(serviceStudyYear: e),
          );
  }

  CopyWith_Input_ClassFilterServiceGender<TRes> get serviceGender {
    final local$serviceGender = _instance.serviceGender;
    return local$serviceGender == null
        ? CopyWith_Input_ClassFilterServiceGender.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceGender(
            local$serviceGender,
            (e) => call(serviceGender: e),
          );
  }

  CopyWith_Input_ClassFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_ClassFilterColor.stub(_then(_instance))
        : CopyWith_Input_ClassFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_ClassFilterPhotoUpdatedAt<TRes> get photoUpdatedAt {
    final local$photoUpdatedAt = _instance.photoUpdatedAt;
    return local$photoUpdatedAt == null
        ? CopyWith_Input_ClassFilterPhotoUpdatedAt.stub(_then(_instance))
        : CopyWith_Input_ClassFilterPhotoUpdatedAt(
            local$photoUpdatedAt,
            (e) => call(photoUpdatedAt: e),
          );
  }

  CopyWith_Input_ClassFilterBlurhash<TRes> get blurhash {
    final local$blurhash = _instance.blurhash;
    return local$blurhash == null
        ? CopyWith_Input_ClassFilterBlurhash.stub(_then(_instance))
        : CopyWith_Input_ClassFilterBlurhash(
            local$blurhash,
            (e) => call(blurhash: e),
          );
  }

  CopyWith_Input_ClassFilterServiceStudyYearTo<TRes> get serviceStudyYearTo {
    final local$serviceStudyYearTo = _instance.serviceStudyYearTo;
    return local$serviceStudyYearTo == null
        ? CopyWith_Input_ClassFilterServiceStudyYearTo.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceStudyYearTo(
            local$serviceStudyYearTo,
            (e) => call(serviceStudyYearTo: e),
          );
  }

  CopyWith_Input_ServiceFilterInput<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith_Input_ServiceFilterInput.stub(_then(_instance))
        : CopyWith_Input_ServiceFilterInput(
            local$service,
            (e) => call(service: e),
          );
  }

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearFrom {
    final local$studyYearFrom = _instance.studyYearFrom;
    return local$studyYearFrom == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYearFrom,
            (e) => call(studyYearFrom: e),
          );
  }

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearTo {
    final local$studyYearTo = _instance.studyYearTo;
    return local$studyYearTo == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYearTo,
            (e) => call(studyYearTo: e),
          );
  }

  CopyWith_Input_ClassMembershipFilterInput<TRes> get classMemberships {
    final local$classMemberships = _instance.classMemberships;
    return local$classMemberships == null
        ? CopyWith_Input_ClassMembershipFilterInput.stub(_then(_instance))
        : CopyWith_Input_ClassMembershipFilterInput(
            local$classMemberships,
            (e) => call(classMemberships: e),
          );
  }

  CopyWith_Input_MeetingFilterInput<TRes> get meetings {
    final local$meetings = _instance.meetings;
    return local$meetings == null
        ? CopyWith_Input_MeetingFilterInput.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterInput(
            local$meetings,
            (e) => call(meetings: e),
          );
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

  CopyWith_Input_UserFilterInput<TRes> get admins {
    final local$admins = _instance.admins;
    return local$admins == null
        ? CopyWith_Input_UserFilterInput.stub(_then(_instance))
        : CopyWith_Input_UserFilterInput(local$admins, (e) => call(admins: e));
  }

  CopyWith_Input_ClassFilterServiceName<TRes> get serviceName {
    final local$serviceName = _instance.serviceName;
    return local$serviceName == null
        ? CopyWith_Input_ClassFilterServiceName.stub(_then(_instance))
        : CopyWith_Input_ClassFilterServiceName(
            local$serviceName,
            (e) => call(serviceName: e),
          );
  }

  CopyWith_Input_ClassFilterLastEdit<TRes> get lastEdit {
    final local$lastEdit = _instance.lastEdit;
    return local$lastEdit == null
        ? CopyWith_Input_ClassFilterLastEdit.stub(_then(_instance))
        : CopyWith_Input_ClassFilterLastEdit(
            local$lastEdit,
            (e) => call(lastEdit: e),
          );
  }

  CopyWith_Input_ClassFilterStudyYearFromOrder<TRes> get studyYearFromOrder {
    final local$studyYearFromOrder = _instance.studyYearFromOrder;
    return local$studyYearFromOrder == null
        ? CopyWith_Input_ClassFilterStudyYearFromOrder.stub(_then(_instance))
        : CopyWith_Input_ClassFilterStudyYearFromOrder(
            local$studyYearFromOrder,
            (e) => call(studyYearFromOrder: e),
          );
  }

  CopyWith_Input_ClassFilterStudyYearToOrder<TRes> get studyYearToOrder {
    final local$studyYearToOrder = _instance.studyYearToOrder;
    return local$studyYearToOrder == null
        ? CopyWith_Input_ClassFilterStudyYearToOrder.stub(_then(_instance))
        : CopyWith_Input_ClassFilterStudyYearToOrder(
            local$studyYearToOrder,
            (e) => call(studyYearToOrder: e),
          );
  }

  CopyWith_Input_ClassFilterUserCanEdit<TRes> get userCanEdit {
    final local$userCanEdit = _instance.userCanEdit;
    return local$userCanEdit == null
        ? CopyWith_Input_ClassFilterUserCanEdit.stub(_then(_instance))
        : CopyWith_Input_ClassFilterUserCanEdit(
            local$userCanEdit,
            (e) => call(userCanEdit: e),
          );
  }
}

class _CopyWithStubImpl_Input_ClassFilterInput<TRes>
    implements CopyWith_Input_ClassFilterInput<TRes> {
  _CopyWithStubImpl_Input_ClassFilterInput(this._res);

  TRes _res;

  call({
    List<Input_ClassFilterInput>? and,
    List<Input_ClassFilterInput>? or,
    List<Input_ClassFilterInput>? not,
    Input_ClassFilterId? id,
    Input_ClassFilterName? name,
    Input_ClassFilterServiceId? serviceId,
    Input_ClassFilterServiceStudyYear? serviceStudyYear,
    Input_ClassFilterServiceGender? serviceGender,
    Input_ClassFilterColor? color,
    Input_ClassFilterPhotoUpdatedAt? photoUpdatedAt,
    Input_ClassFilterBlurhash? blurhash,
    Input_ClassFilterServiceStudyYearTo? serviceStudyYearTo,
    Input_ServiceFilterInput? service,
    Input_StudyYearFilterInput? studyYearFrom,
    Input_StudyYearFilterInput? studyYearTo,
    Input_ClassMembershipFilterInput? classMemberships,
    Input_MeetingFilterInput? meetings,
    Input_LatestEditFilterInput? latestEdit,
    Input_UserFilterInput? admins,
    Input_ClassFilterServiceName? serviceName,
    Input_ClassFilterLastEdit? lastEdit,
    Input_ClassFilterStudyYearFromOrder? studyYearFromOrder,
    Input_ClassFilterStudyYearToOrder? studyYearToOrder,
    Input_ClassFilterUserCanEdit? userCanEdit,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_ClassFilterId<TRes> get id =>
      CopyWith_Input_ClassFilterId.stub(_res);

  CopyWith_Input_ClassFilterName<TRes> get name =>
      CopyWith_Input_ClassFilterName.stub(_res);

  CopyWith_Input_ClassFilterServiceId<TRes> get serviceId =>
      CopyWith_Input_ClassFilterServiceId.stub(_res);

  CopyWith_Input_ClassFilterServiceStudyYear<TRes> get serviceStudyYear =>
      CopyWith_Input_ClassFilterServiceStudyYear.stub(_res);

  CopyWith_Input_ClassFilterServiceGender<TRes> get serviceGender =>
      CopyWith_Input_ClassFilterServiceGender.stub(_res);

  CopyWith_Input_ClassFilterColor<TRes> get color =>
      CopyWith_Input_ClassFilterColor.stub(_res);

  CopyWith_Input_ClassFilterPhotoUpdatedAt<TRes> get photoUpdatedAt =>
      CopyWith_Input_ClassFilterPhotoUpdatedAt.stub(_res);

  CopyWith_Input_ClassFilterBlurhash<TRes> get blurhash =>
      CopyWith_Input_ClassFilterBlurhash.stub(_res);

  CopyWith_Input_ClassFilterServiceStudyYearTo<TRes> get serviceStudyYearTo =>
      CopyWith_Input_ClassFilterServiceStudyYearTo.stub(_res);

  CopyWith_Input_ServiceFilterInput<TRes> get service =>
      CopyWith_Input_ServiceFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearFrom =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYearTo =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_ClassMembershipFilterInput<TRes> get classMemberships =>
      CopyWith_Input_ClassMembershipFilterInput.stub(_res);

  CopyWith_Input_MeetingFilterInput<TRes> get meetings =>
      CopyWith_Input_MeetingFilterInput.stub(_res);

  CopyWith_Input_LatestEditFilterInput<TRes> get latestEdit =>
      CopyWith_Input_LatestEditFilterInput.stub(_res);

  CopyWith_Input_UserFilterInput<TRes> get admins =>
      CopyWith_Input_UserFilterInput.stub(_res);

  CopyWith_Input_ClassFilterServiceName<TRes> get serviceName =>
      CopyWith_Input_ClassFilterServiceName.stub(_res);

  CopyWith_Input_ClassFilterLastEdit<TRes> get lastEdit =>
      CopyWith_Input_ClassFilterLastEdit.stub(_res);

  CopyWith_Input_ClassFilterStudyYearFromOrder<TRes> get studyYearFromOrder =>
      CopyWith_Input_ClassFilterStudyYearFromOrder.stub(_res);

  CopyWith_Input_ClassFilterStudyYearToOrder<TRes> get studyYearToOrder =>
      CopyWith_Input_ClassFilterStudyYearToOrder.stub(_res);

  CopyWith_Input_ClassFilterUserCanEdit<TRes> get userCanEdit =>
      CopyWith_Input_ClassFilterUserCanEdit.stub(_res);
}

class Input_ClassSortInput {
  factory Input_ClassSortInput({
    Enum_SortOrder? order,
    required Enum_ClassSortField field,
  }) => Input_ClassSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_ClassSortInput._(this._$data);

  factory Input_ClassSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_ClassSortField((l$field as String));
    return Input_ClassSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_ClassSortField get field => (_$data['field'] as Enum_ClassSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_ClassSortField(l$field);
    return result$data;
  }

  CopyWith_Input_ClassSortInput<Input_ClassSortInput> get copyWith =>
      CopyWith_Input_ClassSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ClassSortInput || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$field = field;
    return Object.hashAll([
      _$data.containsKey('order') ? l$order : const {},
      l$field,
    ]);
  }
}

abstract class CopyWith_Input_ClassSortInput<TRes> {
  factory CopyWith_Input_ClassSortInput(
    Input_ClassSortInput instance,
    TRes Function(Input_ClassSortInput) then,
  ) = _CopyWithImpl_Input_ClassSortInput;

  factory CopyWith_Input_ClassSortInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ClassSortInput;

  TRes call({Enum_SortOrder? order, Enum_ClassSortField? field});
}

class _CopyWithImpl_Input_ClassSortInput<TRes>
    implements CopyWith_Input_ClassSortInput<TRes> {
  _CopyWithImpl_Input_ClassSortInput(this._instance, this._then);

  final Input_ClassSortInput _instance;

  final TRes Function(Input_ClassSortInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? order = _undefined, Object? field = _undefined}) => _then(
    Input_ClassSortInput._({
      ..._instance._$data,
      if (order != _undefined) 'order': (order as Enum_SortOrder?),
      if (field != _undefined && field != null)
        'field': (field as Enum_ClassSortField),
    }),
  );
}

class _CopyWithStubImpl_Input_ClassSortInput<TRes>
    implements CopyWith_Input_ClassSortInput<TRes> {
  _CopyWithStubImpl_Input_ClassSortInput(this._res);

  TRes _res;

  call({Enum_SortOrder? order, Enum_ClassSortField? field}) => _res;
}

class Input_UpdateStreetInput {
  factory Input_UpdateStreetInput({
    String? name,
    Json? line,
    int? color,
    List<String>? areas,
    DateTime? lastVisit,
  }) => Input_UpdateStreetInput._({
    if (name != null) r'name': name,
    if (line != null) r'line': line,
    if (color != null) r'color': color,
    if (areas != null) r'areas': areas,
    if (lastVisit != null) r'lastVisit': lastVisit,
  });

  Input_UpdateStreetInput._(this._$data);

  factory Input_UpdateStreetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('line')) {
      final l$line = data['line'];
      result$data['line'] = (l$line as Json?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = (l$color as int?);
    }
    if (data.containsKey('areas')) {
      final l$areas = data['areas'];
      result$data['areas'] = (l$areas as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('lastVisit')) {
      final l$lastVisit = data['lastVisit'];
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzFromString(l$lastVisit);
    }
    return Input_UpdateStreetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Json? get line => (_$data['line'] as Json?);

  int? get color => (_$data['color'] as int?);

  List<String>? get areas => (_$data['areas'] as List<String>?);

  DateTime? get lastVisit => (_$data['lastVisit'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('line')) {
      final l$line = line;
      result$data['line'] = l$line;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color;
    }
    if (_$data.containsKey('areas')) {
      final l$areas = areas;
      result$data['areas'] = l$areas?.map((e) => e).toList();
    }
    if (_$data.containsKey('lastVisit')) {
      final l$lastVisit = lastVisit;
      result$data['lastVisit'] = l$lastVisit == null
          ? null
          : tstzToString(l$lastVisit);
    }
    return result$data;
  }

  CopyWith_Input_UpdateStreetInput<Input_UpdateStreetInput> get copyWith =>
      CopyWith_Input_UpdateStreetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_UpdateStreetInput || runtimeType != other.runtimeType) {
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
    final l$areas = areas;
    final lOther$areas = other.areas;
    if (_$data.containsKey('areas') != other._$data.containsKey('areas')) {
      return false;
    }
    if (l$areas != null && lOther$areas != null) {
      if (l$areas.length != lOther$areas.length) {
        return false;
      }
      for (int i = 0; i < l$areas.length; i++) {
        final l$areas$entry = l$areas[i];
        final lOther$areas$entry = lOther$areas[i];
        if (l$areas$entry != lOther$areas$entry) {
          return false;
        }
      }
    } else if (l$areas != lOther$areas) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$line = line;
    final l$color = color;
    final l$areas = areas;
    final l$lastVisit = lastVisit;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('line') ? l$line : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('areas')
          ? l$areas == null
                ? null
                : Object.hashAll(l$areas.map((v) => v))
          : const {},
      _$data.containsKey('lastVisit') ? l$lastVisit : const {},
    ]);
  }
}

abstract class CopyWith_Input_UpdateStreetInput<TRes> {
  factory CopyWith_Input_UpdateStreetInput(
    Input_UpdateStreetInput instance,
    TRes Function(Input_UpdateStreetInput) then,
  ) = _CopyWithImpl_Input_UpdateStreetInput;

  factory CopyWith_Input_UpdateStreetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_UpdateStreetInput;

  TRes call({
    String? name,
    Json? line,
    int? color,
    List<String>? areas,
    DateTime? lastVisit,
  });
}
