// Part 55 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_MeetingFilterServiceStudyYear<TRes> {
  factory CopyWith_Input_MeetingFilterServiceStudyYear(
    Input_MeetingFilterServiceStudyYear instance,
    TRes Function(Input_MeetingFilterServiceStudyYear) then,
  ) = _CopyWithImpl_Input_MeetingFilterServiceStudyYear;

  factory CopyWith_Input_MeetingFilterServiceStudyYear.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingFilterServiceStudyYear;

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

class _CopyWithImpl_Input_MeetingFilterServiceStudyYear<TRes>
    implements CopyWith_Input_MeetingFilterServiceStudyYear<TRes> {
  _CopyWithImpl_Input_MeetingFilterServiceStudyYear(this._instance, this._then);

  final Input_MeetingFilterServiceStudyYear _instance;

  final TRes Function(Input_MeetingFilterServiceStudyYear) _then;

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
    Input_MeetingFilterServiceStudyYear._({
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

class _CopyWithStubImpl_Input_MeetingFilterServiceStudyYear<TRes>
    implements CopyWith_Input_MeetingFilterServiceStudyYear<TRes> {
  _CopyWithStubImpl_Input_MeetingFilterServiceStudyYear(this._res);

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

class Input_MeetingFilterServiceId {
  factory Input_MeetingFilterServiceId({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => Input_MeetingFilterServiceId._({
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

  Input_MeetingFilterServiceId._(this._$data);

  factory Input_MeetingFilterServiceId.fromJson(Map<String, dynamic> data) {
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
          ?.map((e) => (e as String?))
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
    return Input_MeetingFilterServiceId._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isNil => (_$data['isNil'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get notEq => (_$data['notEq'] as String?);

  List<String?>? get $in => (_$data['in'] as List<String?>?);

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

  CopyWith_Input_MeetingFilterServiceId<Input_MeetingFilterServiceId>
  get copyWith => CopyWith_Input_MeetingFilterServiceId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingFilterServiceId ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_MeetingFilterServiceId<TRes> {
  factory CopyWith_Input_MeetingFilterServiceId(
    Input_MeetingFilterServiceId instance,
    TRes Function(Input_MeetingFilterServiceId) then,
  ) = _CopyWithImpl_Input_MeetingFilterServiceId;

  factory CopyWith_Input_MeetingFilterServiceId.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingFilterServiceId;

  TRes call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  });
}

class _CopyWithImpl_Input_MeetingFilterServiceId<TRes>
    implements CopyWith_Input_MeetingFilterServiceId<TRes> {
  _CopyWithImpl_Input_MeetingFilterServiceId(this._instance, this._then);

  final Input_MeetingFilterServiceId _instance;

  final TRes Function(Input_MeetingFilterServiceId) _then;

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
    Input_MeetingFilterServiceId._({
      ..._instance._$data,
      if (isNil != _undefined) 'isNil': (isNil as bool?),
      if (eq != _undefined) 'eq': (eq as String?),
      if (notEq != _undefined) 'notEq': (notEq as String?),
      if ($in != _undefined) 'in': ($in as List<String?>?),
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

class _CopyWithStubImpl_Input_MeetingFilterServiceId<TRes>
    implements CopyWith_Input_MeetingFilterServiceId<TRes> {
  _CopyWithStubImpl_Input_MeetingFilterServiceId(this._res);

  TRes _res;

  call({
    bool? isNil,
    String? eq,
    String? notEq,
    List<String?>? $in,
    String? lessThan,
    String? greaterThan,
    String? lessThanOrEqual,
    String? greaterThanOrEqual,
    String? isDistinctFrom,
    String? isNotDistinctFrom,
  }) => _res;
}

class Input_MeetingFilterName {
  factory Input_MeetingFilterName({
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
  }) => Input_MeetingFilterName._({
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

  Input_MeetingFilterName._(this._$data);

  factory Input_MeetingFilterName.fromJson(Map<String, dynamic> data) {
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
    return Input_MeetingFilterName._(result$data);
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

  CopyWith_Input_MeetingFilterName<Input_MeetingFilterName> get copyWith =>
      CopyWith_Input_MeetingFilterName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingFilterName || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_MeetingFilterName<TRes> {
  factory CopyWith_Input_MeetingFilterName(
    Input_MeetingFilterName instance,
    TRes Function(Input_MeetingFilterName) then,
  ) = _CopyWithImpl_Input_MeetingFilterName;

  factory CopyWith_Input_MeetingFilterName.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingFilterName;

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

class _CopyWithImpl_Input_MeetingFilterName<TRes>
    implements CopyWith_Input_MeetingFilterName<TRes> {
  _CopyWithImpl_Input_MeetingFilterName(this._instance, this._then);

  final Input_MeetingFilterName _instance;

  final TRes Function(Input_MeetingFilterName) _then;

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
    Input_MeetingFilterName._({
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

class _CopyWithStubImpl_Input_MeetingFilterName<TRes>
    implements CopyWith_Input_MeetingFilterName<TRes> {
  _CopyWithStubImpl_Input_MeetingFilterName(this._res);

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

class Input_MeetingFilterId {
  factory Input_MeetingFilterId({
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
  }) => Input_MeetingFilterId._({
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

  Input_MeetingFilterId._(this._$data);

  factory Input_MeetingFilterId.fromJson(Map<String, dynamic> data) {
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
    return Input_MeetingFilterId._(result$data);
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

  CopyWith_Input_MeetingFilterId<Input_MeetingFilterId> get copyWith =>
      CopyWith_Input_MeetingFilterId(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingFilterId || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_MeetingFilterId<TRes> {
  factory CopyWith_Input_MeetingFilterId(
    Input_MeetingFilterId instance,
    TRes Function(Input_MeetingFilterId) then,
  ) = _CopyWithImpl_Input_MeetingFilterId;

  factory CopyWith_Input_MeetingFilterId.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingFilterId;

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

class _CopyWithImpl_Input_MeetingFilterId<TRes>
    implements CopyWith_Input_MeetingFilterId<TRes> {
  _CopyWithImpl_Input_MeetingFilterId(this._instance, this._then);

  final Input_MeetingFilterId _instance;

  final TRes Function(Input_MeetingFilterId) _then;

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
    Input_MeetingFilterId._({
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

class _CopyWithStubImpl_Input_MeetingFilterId<TRes>
    implements CopyWith_Input_MeetingFilterId<TRes> {
  _CopyWithStubImpl_Input_MeetingFilterId(this._res);

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

class Input_MeetingFilterInput {
  factory Input_MeetingFilterInput({
    List<Input_MeetingFilterInput>? and,
    List<Input_MeetingFilterInput>? or,
    List<Input_MeetingFilterInput>? not,
    Input_MeetingFilterId? id,
    Input_MeetingFilterName? name,
    Input_MeetingFilterServiceId? serviceId,
    Input_MeetingFilterServiceStudyYear? serviceStudyYear,
    Input_MeetingFilterServiceGender? serviceGender,
    Input_MeetingFilterGroupId? groupId,
    Input_MeetingFilterAudience? audience,
    Input_MeetingFilterIsArchived? isArchived,
    Input_MeetingFilterColor? color,
    Input_MeetingFilterShowKodasCheckbox? showKodasCheckbox,
    Input_GroupFilterInput? group,
    Input_ServiceFilterInput? service,
    Input_StudyYearFilterInput? studyYear,
    Input_AttendanceRecordFilterInput? attendanceRecords,
    Input_MeetingDayFilterInput? days,
    Input_RosterEntryFilterInput? rosterEntries,
    Input_MeetingFilterServiceName? serviceName,
    Input_MeetingFilterGroupName? groupName,
    Input_MeetingFilterStudyYearOrder? studyYearOrder,
  }) => Input_MeetingFilterInput._({
    if (and != null) r'and': and,
    if (or != null) r'or': or,
    if (not != null) r'not': not,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (serviceId != null) r'serviceId': serviceId,
    if (serviceStudyYear != null) r'serviceStudyYear': serviceStudyYear,
    if (serviceGender != null) r'serviceGender': serviceGender,
    if (groupId != null) r'groupId': groupId,
    if (audience != null) r'audience': audience,
    if (isArchived != null) r'isArchived': isArchived,
    if (color != null) r'color': color,
    if (showKodasCheckbox != null) r'showKodasCheckbox': showKodasCheckbox,
    if (group != null) r'group': group,
    if (service != null) r'service': service,
    if (studyYear != null) r'studyYear': studyYear,
    if (attendanceRecords != null) r'attendanceRecords': attendanceRecords,
    if (days != null) r'days': days,
    if (rosterEntries != null) r'rosterEntries': rosterEntries,
    if (serviceName != null) r'serviceName': serviceName,
    if (groupName != null) r'groupName': groupName,
    if (studyYearOrder != null) r'studyYearOrder': studyYearOrder,
  });

  Input_MeetingFilterInput._(this._$data);

  factory Input_MeetingFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
            (e) =>
                Input_MeetingFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
            (e) =>
                Input_MeetingFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('not')) {
      final l$not = data['not'];
      result$data['not'] = (l$not as List<dynamic>?)
          ?.map(
            (e) =>
                Input_MeetingFilterInput.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_MeetingFilterId.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input_MeetingFilterName.fromJson((l$name as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input_MeetingFilterServiceId.fromJson(
              (l$serviceId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceStudyYear')) {
      final l$serviceStudyYear = data['serviceStudyYear'];
      result$data['serviceStudyYear'] = l$serviceStudyYear == null
          ? null
          : Input_MeetingFilterServiceStudyYear.fromJson(
              (l$serviceStudyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceGender')) {
      final l$serviceGender = data['serviceGender'];
      result$data['serviceGender'] = l$serviceGender == null
          ? null
          : Input_MeetingFilterServiceGender.fromJson(
              (l$serviceGender as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupId')) {
      final l$groupId = data['groupId'];
      result$data['groupId'] = l$groupId == null
          ? null
          : Input_MeetingFilterGroupId.fromJson(
              (l$groupId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('audience')) {
      final l$audience = data['audience'];
      result$data['audience'] = l$audience == null
          ? null
          : Input_MeetingFilterAudience.fromJson(
              (l$audience as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isArchived')) {
      final l$isArchived = data['isArchived'];
      result$data['isArchived'] = l$isArchived == null
          ? null
          : Input_MeetingFilterIsArchived.fromJson(
              (l$isArchived as Map<String, dynamic>),
            );
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : Input_MeetingFilterColor.fromJson(
              (l$color as Map<String, dynamic>),
            );
    }
    if (data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = data['showKodasCheckbox'];
      result$data['showKodasCheckbox'] = l$showKodasCheckbox == null
          ? null
          : Input_MeetingFilterShowKodasCheckbox.fromJson(
              (l$showKodasCheckbox as Map<String, dynamic>),
            );
    }
    if (data.containsKey('group')) {
      final l$group = data['group'];
      result$data['group'] = l$group == null
          ? null
          : Input_GroupFilterInput.fromJson((l$group as Map<String, dynamic>));
    }
    if (data.containsKey('service')) {
      final l$service = data['service'];
      result$data['service'] = l$service == null
          ? null
          : Input_ServiceFilterInput.fromJson(
              (l$service as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYear')) {
      final l$studyYear = data['studyYear'];
      result$data['studyYear'] = l$studyYear == null
          ? null
          : Input_StudyYearFilterInput.fromJson(
              (l$studyYear as Map<String, dynamic>),
            );
    }
    if (data.containsKey('attendanceRecords')) {
      final l$attendanceRecords = data['attendanceRecords'];
      result$data['attendanceRecords'] = l$attendanceRecords == null
          ? null
          : Input_AttendanceRecordFilterInput.fromJson(
              (l$attendanceRecords as Map<String, dynamic>),
            );
    }
    if (data.containsKey('days')) {
      final l$days = data['days'];
      result$data['days'] = l$days == null
          ? null
          : Input_MeetingDayFilterInput.fromJson(
              (l$days as Map<String, dynamic>),
            );
    }
    if (data.containsKey('rosterEntries')) {
      final l$rosterEntries = data['rosterEntries'];
      result$data['rosterEntries'] = l$rosterEntries == null
          ? null
          : Input_RosterEntryFilterInput.fromJson(
              (l$rosterEntries as Map<String, dynamic>),
            );
    }
    if (data.containsKey('serviceName')) {
      final l$serviceName = data['serviceName'];
      result$data['serviceName'] = l$serviceName == null
          ? null
          : Input_MeetingFilterServiceName.fromJson(
              (l$serviceName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('groupName')) {
      final l$groupName = data['groupName'];
      result$data['groupName'] = l$groupName == null
          ? null
          : Input_MeetingFilterGroupName.fromJson(
              (l$groupName as Map<String, dynamic>),
            );
    }
    if (data.containsKey('studyYearOrder')) {
      final l$studyYearOrder = data['studyYearOrder'];
      result$data['studyYearOrder'] = l$studyYearOrder == null
          ? null
          : Input_MeetingFilterStudyYearOrder.fromJson(
              (l$studyYearOrder as Map<String, dynamic>),
            );
    }
    return Input_MeetingFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_MeetingFilterInput>? get and =>
      (_$data['and'] as List<Input_MeetingFilterInput>?);

  List<Input_MeetingFilterInput>? get or =>
      (_$data['or'] as List<Input_MeetingFilterInput>?);

  List<Input_MeetingFilterInput>? get not =>
      (_$data['not'] as List<Input_MeetingFilterInput>?);

  Input_MeetingFilterId? get id => (_$data['id'] as Input_MeetingFilterId?);

  Input_MeetingFilterName? get name =>
      (_$data['name'] as Input_MeetingFilterName?);

  Input_MeetingFilterServiceId? get serviceId =>
      (_$data['serviceId'] as Input_MeetingFilterServiceId?);

  Input_MeetingFilterServiceStudyYear? get serviceStudyYear =>
      (_$data['serviceStudyYear'] as Input_MeetingFilterServiceStudyYear?);

  Input_MeetingFilterServiceGender? get serviceGender =>
      (_$data['serviceGender'] as Input_MeetingFilterServiceGender?);

  Input_MeetingFilterGroupId? get groupId =>
      (_$data['groupId'] as Input_MeetingFilterGroupId?);

  Input_MeetingFilterAudience? get audience =>
      (_$data['audience'] as Input_MeetingFilterAudience?);

  Input_MeetingFilterIsArchived? get isArchived =>
      (_$data['isArchived'] as Input_MeetingFilterIsArchived?);

  Input_MeetingFilterColor? get color =>
      (_$data['color'] as Input_MeetingFilterColor?);

  Input_MeetingFilterShowKodasCheckbox? get showKodasCheckbox =>
      (_$data['showKodasCheckbox'] as Input_MeetingFilterShowKodasCheckbox?);

  Input_GroupFilterInput? get group =>
      (_$data['group'] as Input_GroupFilterInput?);

  Input_ServiceFilterInput? get service =>
      (_$data['service'] as Input_ServiceFilterInput?);

  Input_StudyYearFilterInput? get studyYear =>
      (_$data['studyYear'] as Input_StudyYearFilterInput?);

  Input_AttendanceRecordFilterInput? get attendanceRecords =>
      (_$data['attendanceRecords'] as Input_AttendanceRecordFilterInput?);

  Input_MeetingDayFilterInput? get days =>
      (_$data['days'] as Input_MeetingDayFilterInput?);

  Input_RosterEntryFilterInput? get rosterEntries =>
      (_$data['rosterEntries'] as Input_RosterEntryFilterInput?);

  Input_MeetingFilterServiceName? get serviceName =>
      (_$data['serviceName'] as Input_MeetingFilterServiceName?);

  Input_MeetingFilterGroupName? get groupName =>
      (_$data['groupName'] as Input_MeetingFilterGroupName?);

  Input_MeetingFilterStudyYearOrder? get studyYearOrder =>
      (_$data['studyYearOrder'] as Input_MeetingFilterStudyYearOrder?);

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
    if (_$data.containsKey('groupId')) {
      final l$groupId = groupId;
      result$data['groupId'] = l$groupId?.toJson();
    }
    if (_$data.containsKey('audience')) {
      final l$audience = audience;
      result$data['audience'] = l$audience?.toJson();
    }
    if (_$data.containsKey('isArchived')) {
      final l$isArchived = isArchived;
      result$data['isArchived'] = l$isArchived?.toJson();
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] = l$color?.toJson();
    }
    if (_$data.containsKey('showKodasCheckbox')) {
      final l$showKodasCheckbox = showKodasCheckbox;
      result$data['showKodasCheckbox'] = l$showKodasCheckbox?.toJson();
    }
    if (_$data.containsKey('group')) {
      final l$group = group;
      result$data['group'] = l$group?.toJson();
    }
    if (_$data.containsKey('service')) {
      final l$service = service;
      result$data['service'] = l$service?.toJson();
    }
    if (_$data.containsKey('studyYear')) {
      final l$studyYear = studyYear;
      result$data['studyYear'] = l$studyYear?.toJson();
    }
    if (_$data.containsKey('attendanceRecords')) {
      final l$attendanceRecords = attendanceRecords;
      result$data['attendanceRecords'] = l$attendanceRecords?.toJson();
    }
    if (_$data.containsKey('days')) {
      final l$days = days;
      result$data['days'] = l$days?.toJson();
    }
    if (_$data.containsKey('rosterEntries')) {
      final l$rosterEntries = rosterEntries;
      result$data['rosterEntries'] = l$rosterEntries?.toJson();
    }
    if (_$data.containsKey('serviceName')) {
      final l$serviceName = serviceName;
      result$data['serviceName'] = l$serviceName?.toJson();
    }
    if (_$data.containsKey('groupName')) {
      final l$groupName = groupName;
      result$data['groupName'] = l$groupName?.toJson();
    }
    if (_$data.containsKey('studyYearOrder')) {
      final l$studyYearOrder = studyYearOrder;
      result$data['studyYearOrder'] = l$studyYearOrder?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_MeetingFilterInput<Input_MeetingFilterInput> get copyWith =>
      CopyWith_Input_MeetingFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingFilterInput ||
        runtimeType != other.runtimeType) {
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
    final l$groupId = groupId;
    final lOther$groupId = other.groupId;
    if (_$data.containsKey('groupId') != other._$data.containsKey('groupId')) {
      return false;
    }
    if (l$groupId != lOther$groupId) {
      return false;
    }
    final l$audience = audience;
    final lOther$audience = other.audience;
    if (_$data.containsKey('audience') !=
        other._$data.containsKey('audience')) {
      return false;
    }
    if (l$audience != lOther$audience) {
      return false;
    }
    final l$isArchived = isArchived;
    final lOther$isArchived = other.isArchived;
    if (_$data.containsKey('isArchived') !=
        other._$data.containsKey('isArchived')) {
      return false;
    }
    if (l$isArchived != lOther$isArchived) {
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
    final l$showKodasCheckbox = showKodasCheckbox;
    final lOther$showKodasCheckbox = other.showKodasCheckbox;
    if (_$data.containsKey('showKodasCheckbox') !=
        other._$data.containsKey('showKodasCheckbox')) {
      return false;
    }
    if (l$showKodasCheckbox != lOther$showKodasCheckbox) {
      return false;
    }
    final l$group = group;
    final lOther$group = other.group;
    if (_$data.containsKey('group') != other._$data.containsKey('group')) {
      return false;
    }
    if (l$group != lOther$group) {
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
    final l$studyYear = studyYear;
    final lOther$studyYear = other.studyYear;
    if (_$data.containsKey('studyYear') !=
        other._$data.containsKey('studyYear')) {
      return false;
    }
    if (l$studyYear != lOther$studyYear) {
      return false;
    }
    final l$attendanceRecords = attendanceRecords;
    final lOther$attendanceRecords = other.attendanceRecords;
    if (_$data.containsKey('attendanceRecords') !=
        other._$data.containsKey('attendanceRecords')) {
      return false;
    }
    if (l$attendanceRecords != lOther$attendanceRecords) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (_$data.containsKey('days') != other._$data.containsKey('days')) {
      return false;
    }
    if (l$days != lOther$days) {
      return false;
    }
    final l$rosterEntries = rosterEntries;
    final lOther$rosterEntries = other.rosterEntries;
    if (_$data.containsKey('rosterEntries') !=
        other._$data.containsKey('rosterEntries')) {
      return false;
    }
    if (l$rosterEntries != lOther$rosterEntries) {
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
    final l$groupName = groupName;
    final lOther$groupName = other.groupName;
    if (_$data.containsKey('groupName') !=
        other._$data.containsKey('groupName')) {
      return false;
    }
    if (l$groupName != lOther$groupName) {
      return false;
    }
    final l$studyYearOrder = studyYearOrder;
    final lOther$studyYearOrder = other.studyYearOrder;
    if (_$data.containsKey('studyYearOrder') !=
        other._$data.containsKey('studyYearOrder')) {
      return false;
    }
    if (l$studyYearOrder != lOther$studyYearOrder) {
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
    final l$groupId = groupId;
    final l$audience = audience;
    final l$isArchived = isArchived;
    final l$color = color;
    final l$showKodasCheckbox = showKodasCheckbox;
    final l$group = group;
    final l$service = service;
    final l$studyYear = studyYear;
    final l$attendanceRecords = attendanceRecords;
    final l$days = days;
    final l$rosterEntries = rosterEntries;
    final l$serviceName = serviceName;
    final l$groupName = groupName;
    final l$studyYearOrder = studyYearOrder;
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
      _$data.containsKey('groupId') ? l$groupId : const {},
      _$data.containsKey('audience') ? l$audience : const {},
      _$data.containsKey('isArchived') ? l$isArchived : const {},
      _$data.containsKey('color') ? l$color : const {},
      _$data.containsKey('showKodasCheckbox') ? l$showKodasCheckbox : const {},
      _$data.containsKey('group') ? l$group : const {},
      _$data.containsKey('service') ? l$service : const {},
      _$data.containsKey('studyYear') ? l$studyYear : const {},
      _$data.containsKey('attendanceRecords') ? l$attendanceRecords : const {},
      _$data.containsKey('days') ? l$days : const {},
      _$data.containsKey('rosterEntries') ? l$rosterEntries : const {},
      _$data.containsKey('serviceName') ? l$serviceName : const {},
      _$data.containsKey('groupName') ? l$groupName : const {},
      _$data.containsKey('studyYearOrder') ? l$studyYearOrder : const {},
    ]);
  }
}

abstract class CopyWith_Input_MeetingFilterInput<TRes> {
  factory CopyWith_Input_MeetingFilterInput(
    Input_MeetingFilterInput instance,
    TRes Function(Input_MeetingFilterInput) then,
  ) = _CopyWithImpl_Input_MeetingFilterInput;

  factory CopyWith_Input_MeetingFilterInput.stub(TRes res) =
      _CopyWithStubImpl_Input_MeetingFilterInput;

  TRes call({
    List<Input_MeetingFilterInput>? and,
    List<Input_MeetingFilterInput>? or,
    List<Input_MeetingFilterInput>? not,
    Input_MeetingFilterId? id,
    Input_MeetingFilterName? name,
    Input_MeetingFilterServiceId? serviceId,
    Input_MeetingFilterServiceStudyYear? serviceStudyYear,
    Input_MeetingFilterServiceGender? serviceGender,
    Input_MeetingFilterGroupId? groupId,
    Input_MeetingFilterAudience? audience,
    Input_MeetingFilterIsArchived? isArchived,
    Input_MeetingFilterColor? color,
    Input_MeetingFilterShowKodasCheckbox? showKodasCheckbox,
    Input_GroupFilterInput? group,
    Input_ServiceFilterInput? service,
    Input_StudyYearFilterInput? studyYear,
    Input_AttendanceRecordFilterInput? attendanceRecords,
    Input_MeetingDayFilterInput? days,
    Input_RosterEntryFilterInput? rosterEntries,
    Input_MeetingFilterServiceName? serviceName,
    Input_MeetingFilterGroupName? groupName,
    Input_MeetingFilterStudyYearOrder? studyYearOrder,
  });
  TRes and(
    Iterable<Input_MeetingFilterInput>? Function(
      Iterable<CopyWith_Input_MeetingFilterInput<Input_MeetingFilterInput>>?,
    )
    _fn,
  );
  TRes or(
    Iterable<Input_MeetingFilterInput>? Function(
      Iterable<CopyWith_Input_MeetingFilterInput<Input_MeetingFilterInput>>?,
    )
    _fn,
  );
  TRes not(
    Iterable<Input_MeetingFilterInput>? Function(
      Iterable<CopyWith_Input_MeetingFilterInput<Input_MeetingFilterInput>>?,
    )
    _fn,
  );
  CopyWith_Input_MeetingFilterId<TRes> get id;
  CopyWith_Input_MeetingFilterName<TRes> get name;
  CopyWith_Input_MeetingFilterServiceId<TRes> get serviceId;
  CopyWith_Input_MeetingFilterServiceStudyYear<TRes> get serviceStudyYear;
  CopyWith_Input_MeetingFilterServiceGender<TRes> get serviceGender;
  CopyWith_Input_MeetingFilterGroupId<TRes> get groupId;
  CopyWith_Input_MeetingFilterAudience<TRes> get audience;
  CopyWith_Input_MeetingFilterIsArchived<TRes> get isArchived;
  CopyWith_Input_MeetingFilterColor<TRes> get color;
  CopyWith_Input_MeetingFilterShowKodasCheckbox<TRes> get showKodasCheckbox;
  CopyWith_Input_GroupFilterInput<TRes> get group;
  CopyWith_Input_ServiceFilterInput<TRes> get service;
  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear;
  CopyWith_Input_AttendanceRecordFilterInput<TRes> get attendanceRecords;
  CopyWith_Input_MeetingDayFilterInput<TRes> get days;
  CopyWith_Input_RosterEntryFilterInput<TRes> get rosterEntries;
  CopyWith_Input_MeetingFilterServiceName<TRes> get serviceName;
  CopyWith_Input_MeetingFilterGroupName<TRes> get groupName;
  CopyWith_Input_MeetingFilterStudyYearOrder<TRes> get studyYearOrder;
}

class _CopyWithImpl_Input_MeetingFilterInput<TRes>
    implements CopyWith_Input_MeetingFilterInput<TRes> {
  _CopyWithImpl_Input_MeetingFilterInput(this._instance, this._then);

  final Input_MeetingFilterInput _instance;

  final TRes Function(Input_MeetingFilterInput) _then;

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
    Object? groupId = _undefined,
    Object? audience = _undefined,
    Object? isArchived = _undefined,
    Object? color = _undefined,
    Object? showKodasCheckbox = _undefined,
    Object? group = _undefined,
    Object? service = _undefined,
    Object? studyYear = _undefined,
    Object? attendanceRecords = _undefined,
    Object? days = _undefined,
    Object? rosterEntries = _undefined,
    Object? serviceName = _undefined,
    Object? groupName = _undefined,
    Object? studyYearOrder = _undefined,
  }) => _then(
    Input_MeetingFilterInput._({
      ..._instance._$data,
      if (and != _undefined) 'and': (and as List<Input_MeetingFilterInput>?),
      if (or != _undefined) 'or': (or as List<Input_MeetingFilterInput>?),
      if (not != _undefined) 'not': (not as List<Input_MeetingFilterInput>?),
      if (id != _undefined) 'id': (id as Input_MeetingFilterId?),
      if (name != _undefined) 'name': (name as Input_MeetingFilterName?),
      if (serviceId != _undefined)
        'serviceId': (serviceId as Input_MeetingFilterServiceId?),
      if (serviceStudyYear != _undefined)
        'serviceStudyYear':
            (serviceStudyYear as Input_MeetingFilterServiceStudyYear?),
      if (serviceGender != _undefined)
        'serviceGender': (serviceGender as Input_MeetingFilterServiceGender?),
      if (groupId != _undefined)
        'groupId': (groupId as Input_MeetingFilterGroupId?),
      if (audience != _undefined)
        'audience': (audience as Input_MeetingFilterAudience?),
      if (isArchived != _undefined)
        'isArchived': (isArchived as Input_MeetingFilterIsArchived?),
      if (color != _undefined) 'color': (color as Input_MeetingFilterColor?),
      if (showKodasCheckbox != _undefined)
        'showKodasCheckbox':
            (showKodasCheckbox as Input_MeetingFilterShowKodasCheckbox?),
      if (group != _undefined) 'group': (group as Input_GroupFilterInput?),
      if (service != _undefined)
        'service': (service as Input_ServiceFilterInput?),
      if (studyYear != _undefined)
        'studyYear': (studyYear as Input_StudyYearFilterInput?),
      if (attendanceRecords != _undefined)
        'attendanceRecords':
            (attendanceRecords as Input_AttendanceRecordFilterInput?),
      if (days != _undefined) 'days': (days as Input_MeetingDayFilterInput?),
      if (rosterEntries != _undefined)
        'rosterEntries': (rosterEntries as Input_RosterEntryFilterInput?),
      if (serviceName != _undefined)
        'serviceName': (serviceName as Input_MeetingFilterServiceName?),
      if (groupName != _undefined)
        'groupName': (groupName as Input_MeetingFilterGroupName?),
      if (studyYearOrder != _undefined)
        'studyYearOrder':
            (studyYearOrder as Input_MeetingFilterStudyYearOrder?),
    }),
  );

  TRes and(
    Iterable<Input_MeetingFilterInput>? Function(
      Iterable<CopyWith_Input_MeetingFilterInput<Input_MeetingFilterInput>>?,
    )
    _fn,
  ) => call(
    and: _fn(
      _instance.and?.map((e) => CopyWith_Input_MeetingFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes or(
    Iterable<Input_MeetingFilterInput>? Function(
      Iterable<CopyWith_Input_MeetingFilterInput<Input_MeetingFilterInput>>?,
    )
    _fn,
  ) => call(
    or: _fn(
      _instance.or?.map((e) => CopyWith_Input_MeetingFilterInput(e, (i) => i)),
    )?.toList(),
  );

  TRes not(
    Iterable<Input_MeetingFilterInput>? Function(
      Iterable<CopyWith_Input_MeetingFilterInput<Input_MeetingFilterInput>>?,
    )
    _fn,
  ) => call(
    not: _fn(
      _instance.not?.map((e) => CopyWith_Input_MeetingFilterInput(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_MeetingFilterId<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_MeetingFilterId.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterId(local$id, (e) => call(id: e));
  }

  CopyWith_Input_MeetingFilterName<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith_Input_MeetingFilterName.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterName(local$name, (e) => call(name: e));
  }

  CopyWith_Input_MeetingFilterServiceId<TRes> get serviceId {
    final local$serviceId = _instance.serviceId;
    return local$serviceId == null
        ? CopyWith_Input_MeetingFilterServiceId.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterServiceId(
            local$serviceId,
            (e) => call(serviceId: e),
          );
  }

  CopyWith_Input_MeetingFilterServiceStudyYear<TRes> get serviceStudyYear {
    final local$serviceStudyYear = _instance.serviceStudyYear;
    return local$serviceStudyYear == null
        ? CopyWith_Input_MeetingFilterServiceStudyYear.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterServiceStudyYear(
            local$serviceStudyYear,
            (e) => call(serviceStudyYear: e),
          );
  }

  CopyWith_Input_MeetingFilterServiceGender<TRes> get serviceGender {
    final local$serviceGender = _instance.serviceGender;
    return local$serviceGender == null
        ? CopyWith_Input_MeetingFilterServiceGender.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterServiceGender(
            local$serviceGender,
            (e) => call(serviceGender: e),
          );
  }

  CopyWith_Input_MeetingFilterGroupId<TRes> get groupId {
    final local$groupId = _instance.groupId;
    return local$groupId == null
        ? CopyWith_Input_MeetingFilterGroupId.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterGroupId(
            local$groupId,
            (e) => call(groupId: e),
          );
  }

  CopyWith_Input_MeetingFilterAudience<TRes> get audience {
    final local$audience = _instance.audience;
    return local$audience == null
        ? CopyWith_Input_MeetingFilterAudience.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterAudience(
            local$audience,
            (e) => call(audience: e),
          );
  }

  CopyWith_Input_MeetingFilterIsArchived<TRes> get isArchived {
    final local$isArchived = _instance.isArchived;
    return local$isArchived == null
        ? CopyWith_Input_MeetingFilterIsArchived.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterIsArchived(
            local$isArchived,
            (e) => call(isArchived: e),
          );
  }

  CopyWith_Input_MeetingFilterColor<TRes> get color {
    final local$color = _instance.color;
    return local$color == null
        ? CopyWith_Input_MeetingFilterColor.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterColor(local$color, (e) => call(color: e));
  }

  CopyWith_Input_MeetingFilterShowKodasCheckbox<TRes> get showKodasCheckbox {
    final local$showKodasCheckbox = _instance.showKodasCheckbox;
    return local$showKodasCheckbox == null
        ? CopyWith_Input_MeetingFilterShowKodasCheckbox.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterShowKodasCheckbox(
            local$showKodasCheckbox,
            (e) => call(showKodasCheckbox: e),
          );
  }

  CopyWith_Input_GroupFilterInput<TRes> get group {
    final local$group = _instance.group;
    return local$group == null
        ? CopyWith_Input_GroupFilterInput.stub(_then(_instance))
        : CopyWith_Input_GroupFilterInput(local$group, (e) => call(group: e));
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

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear {
    final local$studyYear = _instance.studyYear;
    return local$studyYear == null
        ? CopyWith_Input_StudyYearFilterInput.stub(_then(_instance))
        : CopyWith_Input_StudyYearFilterInput(
            local$studyYear,
            (e) => call(studyYear: e),
          );
  }

  CopyWith_Input_AttendanceRecordFilterInput<TRes> get attendanceRecords {
    final local$attendanceRecords = _instance.attendanceRecords;
    return local$attendanceRecords == null
        ? CopyWith_Input_AttendanceRecordFilterInput.stub(_then(_instance))
        : CopyWith_Input_AttendanceRecordFilterInput(
            local$attendanceRecords,
            (e) => call(attendanceRecords: e),
          );
  }

  CopyWith_Input_MeetingDayFilterInput<TRes> get days {
    final local$days = _instance.days;
    return local$days == null
        ? CopyWith_Input_MeetingDayFilterInput.stub(_then(_instance))
        : CopyWith_Input_MeetingDayFilterInput(
            local$days,
            (e) => call(days: e),
          );
  }

  CopyWith_Input_RosterEntryFilterInput<TRes> get rosterEntries {
    final local$rosterEntries = _instance.rosterEntries;
    return local$rosterEntries == null
        ? CopyWith_Input_RosterEntryFilterInput.stub(_then(_instance))
        : CopyWith_Input_RosterEntryFilterInput(
            local$rosterEntries,
            (e) => call(rosterEntries: e),
          );
  }

  CopyWith_Input_MeetingFilterServiceName<TRes> get serviceName {
    final local$serviceName = _instance.serviceName;
    return local$serviceName == null
        ? CopyWith_Input_MeetingFilterServiceName.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterServiceName(
            local$serviceName,
            (e) => call(serviceName: e),
          );
  }

  CopyWith_Input_MeetingFilterGroupName<TRes> get groupName {
    final local$groupName = _instance.groupName;
    return local$groupName == null
        ? CopyWith_Input_MeetingFilterGroupName.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterGroupName(
            local$groupName,
            (e) => call(groupName: e),
          );
  }

  CopyWith_Input_MeetingFilterStudyYearOrder<TRes> get studyYearOrder {
    final local$studyYearOrder = _instance.studyYearOrder;
    return local$studyYearOrder == null
        ? CopyWith_Input_MeetingFilterStudyYearOrder.stub(_then(_instance))
        : CopyWith_Input_MeetingFilterStudyYearOrder(
            local$studyYearOrder,
            (e) => call(studyYearOrder: e),
          );
  }
}

class _CopyWithStubImpl_Input_MeetingFilterInput<TRes>
    implements CopyWith_Input_MeetingFilterInput<TRes> {
  _CopyWithStubImpl_Input_MeetingFilterInput(this._res);

  TRes _res;

  call({
    List<Input_MeetingFilterInput>? and,
    List<Input_MeetingFilterInput>? or,
    List<Input_MeetingFilterInput>? not,
    Input_MeetingFilterId? id,
    Input_MeetingFilterName? name,
    Input_MeetingFilterServiceId? serviceId,
    Input_MeetingFilterServiceStudyYear? serviceStudyYear,
    Input_MeetingFilterServiceGender? serviceGender,
    Input_MeetingFilterGroupId? groupId,
    Input_MeetingFilterAudience? audience,
    Input_MeetingFilterIsArchived? isArchived,
    Input_MeetingFilterColor? color,
    Input_MeetingFilterShowKodasCheckbox? showKodasCheckbox,
    Input_GroupFilterInput? group,
    Input_ServiceFilterInput? service,
    Input_StudyYearFilterInput? studyYear,
    Input_AttendanceRecordFilterInput? attendanceRecords,
    Input_MeetingDayFilterInput? days,
    Input_RosterEntryFilterInput? rosterEntries,
    Input_MeetingFilterServiceName? serviceName,
    Input_MeetingFilterGroupName? groupName,
    Input_MeetingFilterStudyYearOrder? studyYearOrder,
  }) => _res;

  and(_fn) => _res;

  or(_fn) => _res;

  not(_fn) => _res;

  CopyWith_Input_MeetingFilterId<TRes> get id =>
      CopyWith_Input_MeetingFilterId.stub(_res);

  CopyWith_Input_MeetingFilterName<TRes> get name =>
      CopyWith_Input_MeetingFilterName.stub(_res);

  CopyWith_Input_MeetingFilterServiceId<TRes> get serviceId =>
      CopyWith_Input_MeetingFilterServiceId.stub(_res);

  CopyWith_Input_MeetingFilterServiceStudyYear<TRes> get serviceStudyYear =>
      CopyWith_Input_MeetingFilterServiceStudyYear.stub(_res);

  CopyWith_Input_MeetingFilterServiceGender<TRes> get serviceGender =>
      CopyWith_Input_MeetingFilterServiceGender.stub(_res);

  CopyWith_Input_MeetingFilterGroupId<TRes> get groupId =>
      CopyWith_Input_MeetingFilterGroupId.stub(_res);

  CopyWith_Input_MeetingFilterAudience<TRes> get audience =>
      CopyWith_Input_MeetingFilterAudience.stub(_res);

  CopyWith_Input_MeetingFilterIsArchived<TRes> get isArchived =>
      CopyWith_Input_MeetingFilterIsArchived.stub(_res);

  CopyWith_Input_MeetingFilterColor<TRes> get color =>
      CopyWith_Input_MeetingFilterColor.stub(_res);

  CopyWith_Input_MeetingFilterShowKodasCheckbox<TRes> get showKodasCheckbox =>
      CopyWith_Input_MeetingFilterShowKodasCheckbox.stub(_res);

  CopyWith_Input_GroupFilterInput<TRes> get group =>
      CopyWith_Input_GroupFilterInput.stub(_res);

  CopyWith_Input_ServiceFilterInput<TRes> get service =>
      CopyWith_Input_ServiceFilterInput.stub(_res);

  CopyWith_Input_StudyYearFilterInput<TRes> get studyYear =>
      CopyWith_Input_StudyYearFilterInput.stub(_res);

  CopyWith_Input_AttendanceRecordFilterInput<TRes> get attendanceRecords =>
      CopyWith_Input_AttendanceRecordFilterInput.stub(_res);

  CopyWith_Input_MeetingDayFilterInput<TRes> get days =>
      CopyWith_Input_MeetingDayFilterInput.stub(_res);

  CopyWith_Input_RosterEntryFilterInput<TRes> get rosterEntries =>
      CopyWith_Input_RosterEntryFilterInput.stub(_res);

  CopyWith_Input_MeetingFilterServiceName<TRes> get serviceName =>
      CopyWith_Input_MeetingFilterServiceName.stub(_res);

  CopyWith_Input_MeetingFilterGroupName<TRes> get groupName =>
      CopyWith_Input_MeetingFilterGroupName.stub(_res);

  CopyWith_Input_MeetingFilterStudyYearOrder<TRes> get studyYearOrder =>
      CopyWith_Input_MeetingFilterStudyYearOrder.stub(_res);
}

class Input_MeetingSortInput {
  factory Input_MeetingSortInput({
    Enum_SortOrder? order,
    required Enum_MeetingSortField field,
  }) => Input_MeetingSortInput._({
    if (order != null) r'order': order,
    r'field': field,
  });

  Input_MeetingSortInput._(this._$data);

  factory Input_MeetingSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = l$order == null
          ? null
          : fromJson_Enum_SortOrder((l$order as String));
    }
    final l$field = data['field'];
    result$data['field'] = fromJson_Enum_MeetingSortField((l$field as String));
    return Input_MeetingSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SortOrder? get order => (_$data['order'] as Enum_SortOrder?);

  Enum_MeetingSortField get field => (_$data['field'] as Enum_MeetingSortField);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order == null
          ? null
          : toJson_Enum_SortOrder(l$order);
    }
    final l$field = field;
    result$data['field'] = toJson_Enum_MeetingSortField(l$field);
    return result$data;
  }

  CopyWith_Input_MeetingSortInput<Input_MeetingSortInput> get copyWith =>
      CopyWith_Input_MeetingSortInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_MeetingSortInput || runtimeType != other.runtimeType) {
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
