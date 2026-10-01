// Part 53 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ResolvedContactsAggregateOrderBy<TRes> {
  factory CopyWith_Input_ResolvedContactsAggregateOrderBy(
    Input_ResolvedContactsAggregateOrderBy instance,
    TRes Function(Input_ResolvedContactsAggregateOrderBy) then,
  ) = _CopyWithImpl_Input_ResolvedContactsAggregateOrderBy;

  factory CopyWith_Input_ResolvedContactsAggregateOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ResolvedContactsAggregateOrderBy;

  TRes call({
    Enum_OrderBy? count,
    Input_ResolvedContactsMaxOrderBy? max,
    Input_ResolvedContactsMinOrderBy? min,
  });
  CopyWith_Input_ResolvedContactsMaxOrderBy<TRes> get max;
  CopyWith_Input_ResolvedContactsMinOrderBy<TRes> get min;
}

class _CopyWithImpl_Input_ResolvedContactsAggregateOrderBy<TRes>
    implements CopyWith_Input_ResolvedContactsAggregateOrderBy<TRes> {
  _CopyWithImpl_Input_ResolvedContactsAggregateOrderBy(
    this._instance,
    this._then,
  );

  final Input_ResolvedContactsAggregateOrderBy _instance;

  final TRes Function(Input_ResolvedContactsAggregateOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
  }) => _then(
    Input_ResolvedContactsAggregateOrderBy._({
      ..._instance._$data,
      if (count != _undefined) 'count': (count as Enum_OrderBy?),
      if (max != _undefined) 'max': (max as Input_ResolvedContactsMaxOrderBy?),
      if (min != _undefined) 'min': (min as Input_ResolvedContactsMinOrderBy?),
    }),
  );

  CopyWith_Input_ResolvedContactsMaxOrderBy<TRes> get max {
    final local$max = _instance.max;
    return local$max == null
        ? CopyWith_Input_ResolvedContactsMaxOrderBy.stub(_then(_instance))
        : CopyWith_Input_ResolvedContactsMaxOrderBy(
            local$max,
            (e) => call(max: e),
          );
  }

  CopyWith_Input_ResolvedContactsMinOrderBy<TRes> get min {
    final local$min = _instance.min;
    return local$min == null
        ? CopyWith_Input_ResolvedContactsMinOrderBy.stub(_then(_instance))
        : CopyWith_Input_ResolvedContactsMinOrderBy(
            local$min,
            (e) => call(min: e),
          );
  }
}

class _CopyWithStubImpl_Input_ResolvedContactsAggregateOrderBy<TRes>
    implements CopyWith_Input_ResolvedContactsAggregateOrderBy<TRes> {
  _CopyWithStubImpl_Input_ResolvedContactsAggregateOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? count,
    Input_ResolvedContactsMaxOrderBy? max,
    Input_ResolvedContactsMinOrderBy? min,
  }) => _res;

  CopyWith_Input_ResolvedContactsMaxOrderBy<TRes> get max =>
      CopyWith_Input_ResolvedContactsMaxOrderBy.stub(_res);

  CopyWith_Input_ResolvedContactsMinOrderBy<TRes> get min =>
      CopyWith_Input_ResolvedContactsMinOrderBy.stub(_res);
}

class Input_ResolvedContactsBoolExp {
  factory Input_ResolvedContactsBoolExp({
    List<Input_ResolvedContactsBoolExp>? $_and,
    Input_ResolvedContactsBoolExp? $_not,
    List<Input_ResolvedContactsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? createdAt,
    Input_UuidComparisonExp? effectiveFamilyId,
    Input_UuidComparisonExp? effectivePersonTypeId,
    Input_UuidComparisonExp? familyId,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isMainPhone,
    Input_StringComparisonExp? label,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_PersonTypesBoolExp? personType,
    Input_UuidComparisonExp? personTypeId,
    Input_StringComparisonExp? phone,
    Input_TimestamptzComparisonExp? updatedAt,
  }) => Input_ResolvedContactsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (createdAt != null) r'createdAt': createdAt,
    if (effectiveFamilyId != null) r'effectiveFamilyId': effectiveFamilyId,
    if (effectivePersonTypeId != null)
      r'effectivePersonTypeId': effectivePersonTypeId,
    if (familyId != null) r'familyId': familyId,
    if (id != null) r'id': id,
    if (isMainPhone != null) r'isMainPhone': isMainPhone,
    if (label != null) r'label': label,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (personType != null) r'personType': personType,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (phone != null) r'phone': phone,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input_ResolvedContactsBoolExp._(this._$data);

  factory Input_ResolvedContactsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_ResolvedContactsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_ResolvedContactsBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_ResolvedContactsBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$createdAt as Map<String, dynamic>),
            );
    }
    if (data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = data['effectiveFamilyId'];
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$effectiveFamilyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = data['effectivePersonTypeId'];
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$effectivePersonTypeId as Map<String, dynamic>),
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
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input_UuidComparisonExp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('isMainPhone')) {
      final l$isMainPhone = data['isMainPhone'];
      result$data['isMainPhone'] = l$isMainPhone == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isMainPhone as Map<String, dynamic>),
            );
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = l$label == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$label as Map<String, dynamic>),
            );
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsBoolExp.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypesBoolExp.fromJson(
              (l$personType as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$personTypeId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = l$phone == null
          ? null
          : Input_StringComparisonExp.fromJson(
              (l$phone as Map<String, dynamic>),
            );
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : Input_TimestamptzComparisonExp.fromJson(
              (l$updatedAt as Map<String, dynamic>),
            );
    }
    return Input_ResolvedContactsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_ResolvedContactsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_ResolvedContactsBoolExp>?);

  Input_ResolvedContactsBoolExp? get $_not =>
      (_$data['_not'] as Input_ResolvedContactsBoolExp?);

  List<Input_ResolvedContactsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_ResolvedContactsBoolExp>?);

  Input_TimestamptzComparisonExp? get createdAt =>
      (_$data['createdAt'] as Input_TimestamptzComparisonExp?);

  Input_UuidComparisonExp? get effectiveFamilyId =>
      (_$data['effectiveFamilyId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get effectivePersonTypeId =>
      (_$data['effectivePersonTypeId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get familyId =>
      (_$data['familyId'] as Input_UuidComparisonExp?);

  Input_UuidComparisonExp? get id => (_$data['id'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get isMainPhone =>
      (_$data['isMainPhone'] as Input_BooleanComparisonExp?);

  Input_StringComparisonExp? get label =>
      (_$data['label'] as Input_StringComparisonExp?);

  Input_PersonsBoolExp? get person =>
      (_$data['person'] as Input_PersonsBoolExp?);

  Input_UuidComparisonExp? get personId =>
      (_$data['personId'] as Input_UuidComparisonExp?);

  Input_PersonTypesBoolExp? get personType =>
      (_$data['personType'] as Input_PersonTypesBoolExp?);

  Input_UuidComparisonExp? get personTypeId =>
      (_$data['personTypeId'] as Input_UuidComparisonExp?);

  Input_StringComparisonExp? get phone =>
      (_$data['phone'] as Input_StringComparisonExp?);

  Input_TimestamptzComparisonExp? get updatedAt =>
      (_$data['updatedAt'] as Input_TimestamptzComparisonExp?);

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
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt?.toJson();
    }
    if (_$data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = effectiveFamilyId;
      result$data['effectiveFamilyId'] = l$effectiveFamilyId?.toJson();
    }
    if (_$data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = effectivePersonTypeId;
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId?.toJson();
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('isMainPhone')) {
      final l$isMainPhone = isMainPhone;
      result$data['isMainPhone'] = l$isMainPhone?.toJson();
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label?.toJson();
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId?.toJson();
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId?.toJson();
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone?.toJson();
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_ResolvedContactsBoolExp<Input_ResolvedContactsBoolExp>
  get copyWith => CopyWith_Input_ResolvedContactsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ResolvedContactsBoolExp ||
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$effectiveFamilyId = effectiveFamilyId;
    final lOther$effectiveFamilyId = other.effectiveFamilyId;
    if (_$data.containsKey('effectiveFamilyId') !=
        other._$data.containsKey('effectiveFamilyId')) {
      return false;
    }
    if (l$effectiveFamilyId != lOther$effectiveFamilyId) {
      return false;
    }
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final lOther$effectivePersonTypeId = other.effectivePersonTypeId;
    if (_$data.containsKey('effectivePersonTypeId') !=
        other._$data.containsKey('effectivePersonTypeId')) {
      return false;
    }
    if (l$effectivePersonTypeId != lOther$effectivePersonTypeId) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$isMainPhone = isMainPhone;
    final lOther$isMainPhone = other.isMainPhone;
    if (_$data.containsKey('isMainPhone') !=
        other._$data.containsKey('isMainPhone')) {
      return false;
    }
    if (l$isMainPhone != lOther$isMainPhone) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (_$data.containsKey('personType') !=
        other._$data.containsKey('personType')) {
      return false;
    }
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$createdAt = createdAt;
    final l$effectiveFamilyId = effectiveFamilyId;
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final l$familyId = familyId;
    final l$id = id;
    final l$isMainPhone = isMainPhone;
    final l$label = label;
    final l$person = person;
    final l$personId = personId;
    final l$personType = personType;
    final l$personTypeId = personTypeId;
    final l$phone = phone;
    final l$updatedAt = updatedAt;
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
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('effectiveFamilyId') ? l$effectiveFamilyId : const {},
      _$data.containsKey('effectivePersonTypeId')
          ? l$effectivePersonTypeId
          : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isMainPhone') ? l$isMainPhone : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_ResolvedContactsBoolExp<TRes> {
  factory CopyWith_Input_ResolvedContactsBoolExp(
    Input_ResolvedContactsBoolExp instance,
    TRes Function(Input_ResolvedContactsBoolExp) then,
  ) = _CopyWithImpl_Input_ResolvedContactsBoolExp;

  factory CopyWith_Input_ResolvedContactsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_ResolvedContactsBoolExp;

  TRes call({
    List<Input_ResolvedContactsBoolExp>? $_and,
    Input_ResolvedContactsBoolExp? $_not,
    List<Input_ResolvedContactsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? createdAt,
    Input_UuidComparisonExp? effectiveFamilyId,
    Input_UuidComparisonExp? effectivePersonTypeId,
    Input_UuidComparisonExp? familyId,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isMainPhone,
    Input_StringComparisonExp? label,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_PersonTypesBoolExp? personType,
    Input_UuidComparisonExp? personTypeId,
    Input_StringComparisonExp? phone,
    Input_TimestamptzComparisonExp? updatedAt,
  });
  TRes $_and(
    Iterable<Input_ResolvedContactsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ResolvedContactsBoolExp<Input_ResolvedContactsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_ResolvedContactsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_ResolvedContactsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ResolvedContactsBoolExp<Input_ResolvedContactsBoolExp>
      >?,
    )
    _fn,
  );
  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt;
  CopyWith_Input_UuidComparisonExp<TRes> get effectiveFamilyId;
  CopyWith_Input_UuidComparisonExp<TRes> get effectivePersonTypeId;
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_BooleanComparisonExp<TRes> get isMainPhone;
  CopyWith_Input_StringComparisonExp<TRes> get label;
  CopyWith_Input_PersonsBoolExp<TRes> get person;
  CopyWith_Input_UuidComparisonExp<TRes> get personId;
  CopyWith_Input_PersonTypesBoolExp<TRes> get personType;
  CopyWith_Input_UuidComparisonExp<TRes> get personTypeId;
  CopyWith_Input_StringComparisonExp<TRes> get phone;
  CopyWith_Input_TimestamptzComparisonExp<TRes> get updatedAt;
}

class _CopyWithImpl_Input_ResolvedContactsBoolExp<TRes>
    implements CopyWith_Input_ResolvedContactsBoolExp<TRes> {
  _CopyWithImpl_Input_ResolvedContactsBoolExp(this._instance, this._then);

  final Input_ResolvedContactsBoolExp _instance;

  final TRes Function(Input_ResolvedContactsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? createdAt = _undefined,
    Object? effectiveFamilyId = _undefined,
    Object? effectivePersonTypeId = _undefined,
    Object? familyId = _undefined,
    Object? id = _undefined,
    Object? isMainPhone = _undefined,
    Object? label = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? personType = _undefined,
    Object? personTypeId = _undefined,
    Object? phone = _undefined,
    Object? updatedAt = _undefined,
  }) => _then(
    Input_ResolvedContactsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_ResolvedContactsBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_ResolvedContactsBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_ResolvedContactsBoolExp>?),
      if (createdAt != _undefined)
        'createdAt': (createdAt as Input_TimestamptzComparisonExp?),
      if (effectiveFamilyId != _undefined)
        'effectiveFamilyId': (effectiveFamilyId as Input_UuidComparisonExp?),
      if (effectivePersonTypeId != _undefined)
        'effectivePersonTypeId':
            (effectivePersonTypeId as Input_UuidComparisonExp?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (isMainPhone != _undefined)
        'isMainPhone': (isMainPhone as Input_BooleanComparisonExp?),
      if (label != _undefined) 'label': (label as Input_StringComparisonExp?),
      if (person != _undefined) 'person': (person as Input_PersonsBoolExp?),
      if (personId != _undefined)
        'personId': (personId as Input_UuidComparisonExp?),
      if (personType != _undefined)
        'personType': (personType as Input_PersonTypesBoolExp?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Input_UuidComparisonExp?),
      if (phone != _undefined) 'phone': (phone as Input_StringComparisonExp?),
      if (updatedAt != _undefined)
        'updatedAt': (updatedAt as Input_TimestamptzComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_ResolvedContactsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ResolvedContactsBoolExp<Input_ResolvedContactsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_ResolvedContactsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_ResolvedContactsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_ResolvedContactsBoolExp.stub(_then(_instance))
        : CopyWith_Input_ResolvedContactsBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_ResolvedContactsBoolExp>? Function(
      Iterable<
        CopyWith_Input_ResolvedContactsBoolExp<Input_ResolvedContactsBoolExp>
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_ResolvedContactsBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$createdAt,
            (e) => call(createdAt: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get effectiveFamilyId {
    final local$effectiveFamilyId = _instance.effectiveFamilyId;
    return local$effectiveFamilyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$effectiveFamilyId,
            (e) => call(effectiveFamilyId: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get effectivePersonTypeId {
    final local$effectivePersonTypeId = _instance.effectivePersonTypeId;
    return local$effectivePersonTypeId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$effectivePersonTypeId,
            (e) => call(effectivePersonTypeId: e),
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

  CopyWith_Input_UuidComparisonExp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(local$id, (e) => call(id: e));
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isMainPhone {
    final local$isMainPhone = _instance.isMainPhone;
    return local$isMainPhone == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isMainPhone,
            (e) => call(isMainPhone: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get label {
    final local$label = _instance.label;
    return local$label == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$label,
            (e) => call(label: e),
          );
  }

  CopyWith_Input_PersonsBoolExp<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonsBoolExp(local$person, (e) => call(person: e));
  }

  CopyWith_Input_UuidComparisonExp<TRes> get personId {
    final local$personId = _instance.personId;
    return local$personId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$personId,
            (e) => call(personId: e),
          );
  }

  CopyWith_Input_PersonTypesBoolExp<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Input_PersonTypesBoolExp.stub(_then(_instance))
        : CopyWith_Input_PersonTypesBoolExp(
            local$personType,
            (e) => call(personType: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get personTypeId {
    final local$personTypeId = _instance.personTypeId;
    return local$personTypeId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$personTypeId,
            (e) => call(personTypeId: e),
          );
  }

  CopyWith_Input_StringComparisonExp<TRes> get phone {
    final local$phone = _instance.phone;
    return local$phone == null
        ? CopyWith_Input_StringComparisonExp.stub(_then(_instance))
        : CopyWith_Input_StringComparisonExp(
            local$phone,
            (e) => call(phone: e),
          );
  }

  CopyWith_Input_TimestamptzComparisonExp<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith_Input_TimestamptzComparisonExp.stub(_then(_instance))
        : CopyWith_Input_TimestamptzComparisonExp(
            local$updatedAt,
            (e) => call(updatedAt: e),
          );
  }
}

class _CopyWithStubImpl_Input_ResolvedContactsBoolExp<TRes>
    implements CopyWith_Input_ResolvedContactsBoolExp<TRes> {
  _CopyWithStubImpl_Input_ResolvedContactsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_ResolvedContactsBoolExp>? $_and,
    Input_ResolvedContactsBoolExp? $_not,
    List<Input_ResolvedContactsBoolExp>? $_or,
    Input_TimestamptzComparisonExp? createdAt,
    Input_UuidComparisonExp? effectiveFamilyId,
    Input_UuidComparisonExp? effectivePersonTypeId,
    Input_UuidComparisonExp? familyId,
    Input_UuidComparisonExp? id,
    Input_BooleanComparisonExp? isMainPhone,
    Input_StringComparisonExp? label,
    Input_PersonsBoolExp? person,
    Input_UuidComparisonExp? personId,
    Input_PersonTypesBoolExp? personType,
    Input_UuidComparisonExp? personTypeId,
    Input_StringComparisonExp? phone,
    Input_TimestamptzComparisonExp? updatedAt,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_ResolvedContactsBoolExp<TRes> get $_not =>
      CopyWith_Input_ResolvedContactsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_TimestamptzComparisonExp<TRes> get createdAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get effectiveFamilyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get effectivePersonTypeId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isMainPhone =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get label =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get person =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_PersonTypesBoolExp<TRes> get personType =>
      CopyWith_Input_PersonTypesBoolExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get personTypeId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get phone =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_TimestamptzComparisonExp<TRes> get updatedAt =>
      CopyWith_Input_TimestamptzComparisonExp.stub(_res);
}

class Input_ResolvedContactsMaxOrderBy {
  factory Input_ResolvedContactsMaxOrderBy({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? effectiveFamilyId,
    Enum_OrderBy? effectivePersonTypeId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  }) => Input_ResolvedContactsMaxOrderBy._({
    if (createdAt != null) r'createdAt': createdAt,
    if (effectiveFamilyId != null) r'effectiveFamilyId': effectiveFamilyId,
    if (effectivePersonTypeId != null)
      r'effectivePersonTypeId': effectivePersonTypeId,
    if (familyId != null) r'familyId': familyId,
    if (id != null) r'id': id,
    if (label != null) r'label': label,
    if (personId != null) r'personId': personId,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (phone != null) r'phone': phone,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input_ResolvedContactsMaxOrderBy._(this._$data);

  factory Input_ResolvedContactsMaxOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson_Enum_OrderBy((l$createdAt as String));
    }
    if (data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = data['effectiveFamilyId'];
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$effectiveFamilyId as String));
    }
    if (data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = data['effectivePersonTypeId'];
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$effectivePersonTypeId as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = l$label == null
          ? null
          : fromJson_Enum_OrderBy((l$label as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = l$phone == null
          ? null
          : fromJson_Enum_OrderBy((l$phone as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$updatedAt as String));
    }
    return Input_ResolvedContactsMaxOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get createdAt => (_$data['createdAt'] as Enum_OrderBy?);

  Enum_OrderBy? get effectiveFamilyId =>
      (_$data['effectiveFamilyId'] as Enum_OrderBy?);

  Enum_OrderBy? get effectivePersonTypeId =>
      (_$data['effectivePersonTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get label => (_$data['label'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get phone => (_$data['phone'] as Enum_OrderBy?);

  Enum_OrderBy? get updatedAt => (_$data['updatedAt'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : toJson_Enum_OrderBy(l$createdAt);
    }
    if (_$data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = effectiveFamilyId;
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$effectiveFamilyId);
    }
    if (_$data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = effectivePersonTypeId;
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$effectivePersonTypeId);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label == null
          ? null
          : toJson_Enum_OrderBy(l$label);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone == null
          ? null
          : toJson_Enum_OrderBy(l$phone);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$updatedAt);
    }
    return result$data;
  }

  CopyWith_Input_ResolvedContactsMaxOrderBy<Input_ResolvedContactsMaxOrderBy>
  get copyWith => CopyWith_Input_ResolvedContactsMaxOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ResolvedContactsMaxOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$effectiveFamilyId = effectiveFamilyId;
    final lOther$effectiveFamilyId = other.effectiveFamilyId;
    if (_$data.containsKey('effectiveFamilyId') !=
        other._$data.containsKey('effectiveFamilyId')) {
      return false;
    }
    if (l$effectiveFamilyId != lOther$effectiveFamilyId) {
      return false;
    }
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final lOther$effectivePersonTypeId = other.effectivePersonTypeId;
    if (_$data.containsKey('effectivePersonTypeId') !=
        other._$data.containsKey('effectivePersonTypeId')) {
      return false;
    }
    if (l$effectivePersonTypeId != lOther$effectivePersonTypeId) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$effectiveFamilyId = effectiveFamilyId;
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final l$familyId = familyId;
    final l$id = id;
    final l$label = label;
    final l$personId = personId;
    final l$personTypeId = personTypeId;
    final l$phone = phone;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('effectiveFamilyId') ? l$effectiveFamilyId : const {},
      _$data.containsKey('effectivePersonTypeId')
          ? l$effectivePersonTypeId
          : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_ResolvedContactsMaxOrderBy<TRes> {
  factory CopyWith_Input_ResolvedContactsMaxOrderBy(
    Input_ResolvedContactsMaxOrderBy instance,
    TRes Function(Input_ResolvedContactsMaxOrderBy) then,
  ) = _CopyWithImpl_Input_ResolvedContactsMaxOrderBy;

  factory CopyWith_Input_ResolvedContactsMaxOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ResolvedContactsMaxOrderBy;

  TRes call({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? effectiveFamilyId,
    Enum_OrderBy? effectivePersonTypeId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  });
}

class _CopyWithImpl_Input_ResolvedContactsMaxOrderBy<TRes>
    implements CopyWith_Input_ResolvedContactsMaxOrderBy<TRes> {
  _CopyWithImpl_Input_ResolvedContactsMaxOrderBy(this._instance, this._then);

  final Input_ResolvedContactsMaxOrderBy _instance;

  final TRes Function(Input_ResolvedContactsMaxOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? effectiveFamilyId = _undefined,
    Object? effectivePersonTypeId = _undefined,
    Object? familyId = _undefined,
    Object? id = _undefined,
    Object? label = _undefined,
    Object? personId = _undefined,
    Object? personTypeId = _undefined,
    Object? phone = _undefined,
    Object? updatedAt = _undefined,
  }) => _then(
    Input_ResolvedContactsMaxOrderBy._({
      ..._instance._$data,
      if (createdAt != _undefined) 'createdAt': (createdAt as Enum_OrderBy?),
      if (effectiveFamilyId != _undefined)
        'effectiveFamilyId': (effectiveFamilyId as Enum_OrderBy?),
      if (effectivePersonTypeId != _undefined)
        'effectivePersonTypeId': (effectivePersonTypeId as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (label != _undefined) 'label': (label as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Enum_OrderBy?),
      if (phone != _undefined) 'phone': (phone as Enum_OrderBy?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ResolvedContactsMaxOrderBy<TRes>
    implements CopyWith_Input_ResolvedContactsMaxOrderBy<TRes> {
  _CopyWithStubImpl_Input_ResolvedContactsMaxOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? effectiveFamilyId,
    Enum_OrderBy? effectivePersonTypeId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  }) => _res;
}

class Input_ResolvedContactsMinOrderBy {
  factory Input_ResolvedContactsMinOrderBy({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? effectiveFamilyId,
    Enum_OrderBy? effectivePersonTypeId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  }) => Input_ResolvedContactsMinOrderBy._({
    if (createdAt != null) r'createdAt': createdAt,
    if (effectiveFamilyId != null) r'effectiveFamilyId': effectiveFamilyId,
    if (effectivePersonTypeId != null)
      r'effectivePersonTypeId': effectivePersonTypeId,
    if (familyId != null) r'familyId': familyId,
    if (id != null) r'id': id,
    if (label != null) r'label': label,
    if (personId != null) r'personId': personId,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (phone != null) r'phone': phone,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input_ResolvedContactsMinOrderBy._(this._$data);

  factory Input_ResolvedContactsMinOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson_Enum_OrderBy((l$createdAt as String));
    }
    if (data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = data['effectiveFamilyId'];
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$effectiveFamilyId as String));
    }
    if (data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = data['effectivePersonTypeId'];
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$effectivePersonTypeId as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = l$label == null
          ? null
          : fromJson_Enum_OrderBy((l$label as String));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = l$phone == null
          ? null
          : fromJson_Enum_OrderBy((l$phone as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$updatedAt as String));
    }
    return Input_ResolvedContactsMinOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get createdAt => (_$data['createdAt'] as Enum_OrderBy?);

  Enum_OrderBy? get effectiveFamilyId =>
      (_$data['effectiveFamilyId'] as Enum_OrderBy?);

  Enum_OrderBy? get effectivePersonTypeId =>
      (_$data['effectivePersonTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get label => (_$data['label'] as Enum_OrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get phone => (_$data['phone'] as Enum_OrderBy?);

  Enum_OrderBy? get updatedAt => (_$data['updatedAt'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : toJson_Enum_OrderBy(l$createdAt);
    }
    if (_$data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = effectiveFamilyId;
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$effectiveFamilyId);
    }
    if (_$data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = effectivePersonTypeId;
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$effectivePersonTypeId);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label == null
          ? null
          : toJson_Enum_OrderBy(l$label);
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone == null
          ? null
          : toJson_Enum_OrderBy(l$phone);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$updatedAt);
    }
    return result$data;
  }

  CopyWith_Input_ResolvedContactsMinOrderBy<Input_ResolvedContactsMinOrderBy>
  get copyWith => CopyWith_Input_ResolvedContactsMinOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ResolvedContactsMinOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$effectiveFamilyId = effectiveFamilyId;
    final lOther$effectiveFamilyId = other.effectiveFamilyId;
    if (_$data.containsKey('effectiveFamilyId') !=
        other._$data.containsKey('effectiveFamilyId')) {
      return false;
    }
    if (l$effectiveFamilyId != lOther$effectiveFamilyId) {
      return false;
    }
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final lOther$effectivePersonTypeId = other.effectivePersonTypeId;
    if (_$data.containsKey('effectivePersonTypeId') !=
        other._$data.containsKey('effectivePersonTypeId')) {
      return false;
    }
    if (l$effectivePersonTypeId != lOther$effectivePersonTypeId) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$effectiveFamilyId = effectiveFamilyId;
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final l$familyId = familyId;
    final l$id = id;
    final l$label = label;
    final l$personId = personId;
    final l$personTypeId = personTypeId;
    final l$phone = phone;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('effectiveFamilyId') ? l$effectiveFamilyId : const {},
      _$data.containsKey('effectivePersonTypeId')
          ? l$effectivePersonTypeId
          : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_ResolvedContactsMinOrderBy<TRes> {
  factory CopyWith_Input_ResolvedContactsMinOrderBy(
    Input_ResolvedContactsMinOrderBy instance,
    TRes Function(Input_ResolvedContactsMinOrderBy) then,
  ) = _CopyWithImpl_Input_ResolvedContactsMinOrderBy;

  factory CopyWith_Input_ResolvedContactsMinOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ResolvedContactsMinOrderBy;

  TRes call({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? effectiveFamilyId,
    Enum_OrderBy? effectivePersonTypeId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  });
}

class _CopyWithImpl_Input_ResolvedContactsMinOrderBy<TRes>
    implements CopyWith_Input_ResolvedContactsMinOrderBy<TRes> {
  _CopyWithImpl_Input_ResolvedContactsMinOrderBy(this._instance, this._then);

  final Input_ResolvedContactsMinOrderBy _instance;

  final TRes Function(Input_ResolvedContactsMinOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? effectiveFamilyId = _undefined,
    Object? effectivePersonTypeId = _undefined,
    Object? familyId = _undefined,
    Object? id = _undefined,
    Object? label = _undefined,
    Object? personId = _undefined,
    Object? personTypeId = _undefined,
    Object? phone = _undefined,
    Object? updatedAt = _undefined,
  }) => _then(
    Input_ResolvedContactsMinOrderBy._({
      ..._instance._$data,
      if (createdAt != _undefined) 'createdAt': (createdAt as Enum_OrderBy?),
      if (effectiveFamilyId != _undefined)
        'effectiveFamilyId': (effectiveFamilyId as Enum_OrderBy?),
      if (effectivePersonTypeId != _undefined)
        'effectivePersonTypeId': (effectivePersonTypeId as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (label != _undefined) 'label': (label as Enum_OrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Enum_OrderBy?),
      if (phone != _undefined) 'phone': (phone as Enum_OrderBy?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_ResolvedContactsMinOrderBy<TRes>
    implements CopyWith_Input_ResolvedContactsMinOrderBy<TRes> {
  _CopyWithStubImpl_Input_ResolvedContactsMinOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? effectiveFamilyId,
    Enum_OrderBy? effectivePersonTypeId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? label,
    Enum_OrderBy? personId,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  }) => _res;
}

class Input_ResolvedContactsOrderBy {
  factory Input_ResolvedContactsOrderBy({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? effectiveFamilyId,
    Enum_OrderBy? effectivePersonTypeId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? isMainPhone,
    Enum_OrderBy? label,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_PersonTypesOrderBy? personType,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  }) => Input_ResolvedContactsOrderBy._({
    if (createdAt != null) r'createdAt': createdAt,
    if (effectiveFamilyId != null) r'effectiveFamilyId': effectiveFamilyId,
    if (effectivePersonTypeId != null)
      r'effectivePersonTypeId': effectivePersonTypeId,
    if (familyId != null) r'familyId': familyId,
    if (id != null) r'id': id,
    if (isMainPhone != null) r'isMainPhone': isMainPhone,
    if (label != null) r'label': label,
    if (person != null) r'person': person,
    if (personId != null) r'personId': personId,
    if (personType != null) r'personType': personType,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (phone != null) r'phone': phone,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input_ResolvedContactsOrderBy._(this._$data);

  factory Input_ResolvedContactsOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : fromJson_Enum_OrderBy((l$createdAt as String));
    }
    if (data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = data['effectiveFamilyId'];
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : fromJson_Enum_OrderBy((l$effectiveFamilyId as String));
    }
    if (data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = data['effectivePersonTypeId'];
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$effectivePersonTypeId as String));
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : fromJson_Enum_OrderBy((l$id as String));
    }
    if (data.containsKey('isMainPhone')) {
      final l$isMainPhone = data['isMainPhone'];
      result$data['isMainPhone'] = l$isMainPhone == null
          ? null
          : fromJson_Enum_OrderBy((l$isMainPhone as String));
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = l$label == null
          ? null
          : fromJson_Enum_OrderBy((l$label as String));
    }
    if (data.containsKey('person')) {
      final l$person = data['person'];
      result$data['person'] = l$person == null
          ? null
          : Input_PersonsOrderBy.fromJson((l$person as Map<String, dynamic>));
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : fromJson_Enum_OrderBy((l$personId as String));
    }
    if (data.containsKey('personType')) {
      final l$personType = data['personType'];
      result$data['personType'] = l$personType == null
          ? null
          : Input_PersonTypesOrderBy.fromJson(
              (l$personType as Map<String, dynamic>),
            );
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : fromJson_Enum_OrderBy((l$personTypeId as String));
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = l$phone == null
          ? null
          : fromJson_Enum_OrderBy((l$phone as String));
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : fromJson_Enum_OrderBy((l$updatedAt as String));
    }
    return Input_ResolvedContactsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get createdAt => (_$data['createdAt'] as Enum_OrderBy?);

  Enum_OrderBy? get effectiveFamilyId =>
      (_$data['effectiveFamilyId'] as Enum_OrderBy?);

  Enum_OrderBy? get effectivePersonTypeId =>
      (_$data['effectivePersonTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get isMainPhone => (_$data['isMainPhone'] as Enum_OrderBy?);

  Enum_OrderBy? get label => (_$data['label'] as Enum_OrderBy?);

  Input_PersonsOrderBy? get person =>
      (_$data['person'] as Input_PersonsOrderBy?);

  Enum_OrderBy? get personId => (_$data['personId'] as Enum_OrderBy?);

  Input_PersonTypesOrderBy? get personType =>
      (_$data['personType'] as Input_PersonTypesOrderBy?);

  Enum_OrderBy? get personTypeId => (_$data['personTypeId'] as Enum_OrderBy?);

  Enum_OrderBy? get phone => (_$data['phone'] as Enum_OrderBy?);

  Enum_OrderBy? get updatedAt => (_$data['updatedAt'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : toJson_Enum_OrderBy(l$createdAt);
    }
    if (_$data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = effectiveFamilyId;
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : toJson_Enum_OrderBy(l$effectiveFamilyId);
    }
    if (_$data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = effectivePersonTypeId;
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$effectivePersonTypeId);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson_Enum_OrderBy(l$id);
    }
    if (_$data.containsKey('isMainPhone')) {
      final l$isMainPhone = isMainPhone;
      result$data['isMainPhone'] = l$isMainPhone == null
          ? null
          : toJson_Enum_OrderBy(l$isMainPhone);
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label == null
          ? null
          : toJson_Enum_OrderBy(l$label);
    }
    if (_$data.containsKey('person')) {
      final l$person = person;
      result$data['person'] = l$person?.toJson();
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : toJson_Enum_OrderBy(l$personId);
    }
    if (_$data.containsKey('personType')) {
      final l$personType = personType;
      result$data['personType'] = l$personType?.toJson();
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : toJson_Enum_OrderBy(l$personTypeId);
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone == null
          ? null
          : toJson_Enum_OrderBy(l$phone);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : toJson_Enum_OrderBy(l$updatedAt);
    }
    return result$data;
  }

  CopyWith_Input_ResolvedContactsOrderBy<Input_ResolvedContactsOrderBy>
  get copyWith => CopyWith_Input_ResolvedContactsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ResolvedContactsOrderBy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$effectiveFamilyId = effectiveFamilyId;
    final lOther$effectiveFamilyId = other.effectiveFamilyId;
    if (_$data.containsKey('effectiveFamilyId') !=
        other._$data.containsKey('effectiveFamilyId')) {
      return false;
    }
    if (l$effectiveFamilyId != lOther$effectiveFamilyId) {
      return false;
    }
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final lOther$effectivePersonTypeId = other.effectivePersonTypeId;
    if (_$data.containsKey('effectivePersonTypeId') !=
        other._$data.containsKey('effectivePersonTypeId')) {
      return false;
    }
    if (l$effectivePersonTypeId != lOther$effectivePersonTypeId) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$isMainPhone = isMainPhone;
    final lOther$isMainPhone = other.isMainPhone;
    if (_$data.containsKey('isMainPhone') !=
        other._$data.containsKey('isMainPhone')) {
      return false;
    }
    if (l$isMainPhone != lOther$isMainPhone) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$person = person;
    final lOther$person = other.person;
    if (_$data.containsKey('person') != other._$data.containsKey('person')) {
      return false;
    }
    if (l$person != lOther$person) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$personType = personType;
    final lOther$personType = other.personType;
    if (_$data.containsKey('personType') !=
        other._$data.containsKey('personType')) {
      return false;
    }
    if (l$personType != lOther$personType) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$effectiveFamilyId = effectiveFamilyId;
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final l$familyId = familyId;
    final l$id = id;
    final l$isMainPhone = isMainPhone;
    final l$label = label;
    final l$person = person;
    final l$personId = personId;
    final l$personType = personType;
    final l$personTypeId = personTypeId;
    final l$phone = phone;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('effectiveFamilyId') ? l$effectiveFamilyId : const {},
      _$data.containsKey('effectivePersonTypeId')
          ? l$effectivePersonTypeId
          : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isMainPhone') ? l$isMainPhone : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('person') ? l$person : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('personType') ? l$personType : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith_Input_ResolvedContactsOrderBy<TRes> {
  factory CopyWith_Input_ResolvedContactsOrderBy(
    Input_ResolvedContactsOrderBy instance,
    TRes Function(Input_ResolvedContactsOrderBy) then,
  ) = _CopyWithImpl_Input_ResolvedContactsOrderBy;

  factory CopyWith_Input_ResolvedContactsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ResolvedContactsOrderBy;

  TRes call({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? effectiveFamilyId,
    Enum_OrderBy? effectivePersonTypeId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? isMainPhone,
    Enum_OrderBy? label,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_PersonTypesOrderBy? personType,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  });
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_PersonTypesOrderBy<TRes> get personType;
}

class _CopyWithImpl_Input_ResolvedContactsOrderBy<TRes>
    implements CopyWith_Input_ResolvedContactsOrderBy<TRes> {
  _CopyWithImpl_Input_ResolvedContactsOrderBy(this._instance, this._then);

  final Input_ResolvedContactsOrderBy _instance;

  final TRes Function(Input_ResolvedContactsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? effectiveFamilyId = _undefined,
    Object? effectivePersonTypeId = _undefined,
    Object? familyId = _undefined,
    Object? id = _undefined,
    Object? isMainPhone = _undefined,
    Object? label = _undefined,
    Object? person = _undefined,
    Object? personId = _undefined,
    Object? personType = _undefined,
    Object? personTypeId = _undefined,
    Object? phone = _undefined,
    Object? updatedAt = _undefined,
  }) => _then(
    Input_ResolvedContactsOrderBy._({
      ..._instance._$data,
      if (createdAt != _undefined) 'createdAt': (createdAt as Enum_OrderBy?),
      if (effectiveFamilyId != _undefined)
        'effectiveFamilyId': (effectiveFamilyId as Enum_OrderBy?),
      if (effectivePersonTypeId != _undefined)
        'effectivePersonTypeId': (effectivePersonTypeId as Enum_OrderBy?),
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (id != _undefined) 'id': (id as Enum_OrderBy?),
      if (isMainPhone != _undefined)
        'isMainPhone': (isMainPhone as Enum_OrderBy?),
      if (label != _undefined) 'label': (label as Enum_OrderBy?),
      if (person != _undefined) 'person': (person as Input_PersonsOrderBy?),
      if (personId != _undefined) 'personId': (personId as Enum_OrderBy?),
      if (personType != _undefined)
        'personType': (personType as Input_PersonTypesOrderBy?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as Enum_OrderBy?),
      if (phone != _undefined) 'phone': (phone as Enum_OrderBy?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as Enum_OrderBy?),
    }),
  );

  CopyWith_Input_PersonsOrderBy<TRes> get person {
    final local$person = _instance.person;
    return local$person == null
        ? CopyWith_Input_PersonsOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonsOrderBy(local$person, (e) => call(person: e));
  }

  CopyWith_Input_PersonTypesOrderBy<TRes> get personType {
    final local$personType = _instance.personType;
    return local$personType == null
        ? CopyWith_Input_PersonTypesOrderBy.stub(_then(_instance))
        : CopyWith_Input_PersonTypesOrderBy(
            local$personType,
            (e) => call(personType: e),
          );
  }
}

class _CopyWithStubImpl_Input_ResolvedContactsOrderBy<TRes>
    implements CopyWith_Input_ResolvedContactsOrderBy<TRes> {
  _CopyWithStubImpl_Input_ResolvedContactsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? createdAt,
    Enum_OrderBy? effectiveFamilyId,
    Enum_OrderBy? effectivePersonTypeId,
    Enum_OrderBy? familyId,
    Enum_OrderBy? id,
    Enum_OrderBy? isMainPhone,
    Enum_OrderBy? label,
    Input_PersonsOrderBy? person,
    Enum_OrderBy? personId,
    Input_PersonTypesOrderBy? personType,
    Enum_OrderBy? personTypeId,
    Enum_OrderBy? phone,
    Enum_OrderBy? updatedAt,
  }) => _res;

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_PersonTypesOrderBy<TRes> get personType =>
      CopyWith_Input_PersonTypesOrderBy.stub(_res);
}

class Input_ResolvedContactsStreamCursorInput {
  factory Input_ResolvedContactsStreamCursorInput({
    required Input_ResolvedContactsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_ResolvedContactsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_ResolvedContactsStreamCursorInput._(this._$data);

  factory Input_ResolvedContactsStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_ResolvedContactsStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_ResolvedContactsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ResolvedContactsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_ResolvedContactsStreamCursorValueInput);

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

  CopyWith_Input_ResolvedContactsStreamCursorInput<
    Input_ResolvedContactsStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_ResolvedContactsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ResolvedContactsStreamCursorInput ||
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

abstract class CopyWith_Input_ResolvedContactsStreamCursorInput<TRes> {
  factory CopyWith_Input_ResolvedContactsStreamCursorInput(
    Input_ResolvedContactsStreamCursorInput instance,
    TRes Function(Input_ResolvedContactsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_ResolvedContactsStreamCursorInput;

  factory CopyWith_Input_ResolvedContactsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ResolvedContactsStreamCursorInput;

  TRes call({
    Input_ResolvedContactsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_ResolvedContactsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_ResolvedContactsStreamCursorInput<TRes>
    implements CopyWith_Input_ResolvedContactsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_ResolvedContactsStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_ResolvedContactsStreamCursorInput _instance;

  final TRes Function(Input_ResolvedContactsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_ResolvedContactsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_ResolvedContactsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_ResolvedContactsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ResolvedContactsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_ResolvedContactsStreamCursorInput<TRes>
    implements CopyWith_Input_ResolvedContactsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ResolvedContactsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ResolvedContactsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_ResolvedContactsStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_ResolvedContactsStreamCursorValueInput.stub(_res);
}

class Input_ResolvedContactsStreamCursorValueInput {
  factory Input_ResolvedContactsStreamCursorValueInput({
    DateTime? createdAt,
    UuidValue? effectiveFamilyId,
    UuidValue? effectivePersonTypeId,
    UuidValue? familyId,
    UuidValue? id,
    bool? isMainPhone,
    String? label,
    UuidValue? personId,
    UuidValue? personTypeId,
    String? phone,
    DateTime? updatedAt,
  }) => Input_ResolvedContactsStreamCursorValueInput._({
    if (createdAt != null) r'createdAt': createdAt,
    if (effectiveFamilyId != null) r'effectiveFamilyId': effectiveFamilyId,
    if (effectivePersonTypeId != null)
      r'effectivePersonTypeId': effectivePersonTypeId,
    if (familyId != null) r'familyId': familyId,
    if (id != null) r'id': id,
    if (isMainPhone != null) r'isMainPhone': isMainPhone,
    if (label != null) r'label': label,
    if (personId != null) r'personId': personId,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (phone != null) r'phone': phone,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input_ResolvedContactsStreamCursorValueInput._(this._$data);

  factory Input_ResolvedContactsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : tstzFromString(l$createdAt);
    }
    if (data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = data['effectiveFamilyId'];
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : stringToUuid(l$effectiveFamilyId);
    }
    if (data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = data['effectivePersonTypeId'];
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : stringToUuid(l$effectivePersonTypeId);
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null ? null : stringToUuid(l$id);
    }
    if (data.containsKey('isMainPhone')) {
      final l$isMainPhone = data['isMainPhone'];
      result$data['isMainPhone'] = (l$isMainPhone as bool?);
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    if (data.containsKey('personId')) {
      final l$personId = data['personId'];
      result$data['personId'] = l$personId == null
          ? null
          : stringToUuid(l$personId);
    }
    if (data.containsKey('personTypeId')) {
      final l$personTypeId = data['personTypeId'];
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : stringToUuid(l$personTypeId);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : tstzFromString(l$updatedAt);
    }
    return Input_ResolvedContactsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  UuidValue? get effectiveFamilyId =>
      (_$data['effectiveFamilyId'] as UuidValue?);

  UuidValue? get effectivePersonTypeId =>
      (_$data['effectivePersonTypeId'] as UuidValue?);

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  UuidValue? get id => (_$data['id'] as UuidValue?);

  bool? get isMainPhone => (_$data['isMainPhone'] as bool?);

  String? get label => (_$data['label'] as String?);

  UuidValue? get personId => (_$data['personId'] as UuidValue?);

  UuidValue? get personTypeId => (_$data['personTypeId'] as UuidValue?);

  String? get phone => (_$data['phone'] as String?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : tstzToString(l$createdAt);
    }
    if (_$data.containsKey('effectiveFamilyId')) {
      final l$effectiveFamilyId = effectiveFamilyId;
      result$data['effectiveFamilyId'] = l$effectiveFamilyId == null
          ? null
          : uuidToString(l$effectiveFamilyId);
    }
    if (_$data.containsKey('effectivePersonTypeId')) {
      final l$effectivePersonTypeId = effectivePersonTypeId;
      result$data['effectivePersonTypeId'] = l$effectivePersonTypeId == null
          ? null
          : uuidToString(l$effectivePersonTypeId);
    }
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : uuidToString(l$id);
    }
    if (_$data.containsKey('isMainPhone')) {
      final l$isMainPhone = isMainPhone;
      result$data['isMainPhone'] = l$isMainPhone;
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    if (_$data.containsKey('personId')) {
      final l$personId = personId;
      result$data['personId'] = l$personId == null
          ? null
          : uuidToString(l$personId);
    }
    if (_$data.containsKey('personTypeId')) {
      final l$personTypeId = personTypeId;
      result$data['personTypeId'] = l$personTypeId == null
          ? null
          : uuidToString(l$personTypeId);
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : tstzToString(l$updatedAt);
    }
    return result$data;
  }

  CopyWith_Input_ResolvedContactsStreamCursorValueInput<
    Input_ResolvedContactsStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_ResolvedContactsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ResolvedContactsStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$effectiveFamilyId = effectiveFamilyId;
    final lOther$effectiveFamilyId = other.effectiveFamilyId;
    if (_$data.containsKey('effectiveFamilyId') !=
        other._$data.containsKey('effectiveFamilyId')) {
      return false;
    }
    if (l$effectiveFamilyId != lOther$effectiveFamilyId) {
      return false;
    }
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final lOther$effectivePersonTypeId = other.effectivePersonTypeId;
    if (_$data.containsKey('effectivePersonTypeId') !=
        other._$data.containsKey('effectivePersonTypeId')) {
      return false;
    }
    if (l$effectivePersonTypeId != lOther$effectivePersonTypeId) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$isMainPhone = isMainPhone;
    final lOther$isMainPhone = other.isMainPhone;
    if (_$data.containsKey('isMainPhone') !=
        other._$data.containsKey('isMainPhone')) {
      return false;
    }
    if (l$isMainPhone != lOther$isMainPhone) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (_$data.containsKey('label') != other._$data.containsKey('label')) {
      return false;
    }
    if (l$label != lOther$label) {
      return false;
    }
    final l$personId = personId;
    final lOther$personId = other.personId;
    if (_$data.containsKey('personId') !=
        other._$data.containsKey('personId')) {
      return false;
    }
    if (l$personId != lOther$personId) {
      return false;
    }
    final l$personTypeId = personTypeId;
    final lOther$personTypeId = other.personTypeId;
    if (_$data.containsKey('personTypeId') !=
        other._$data.containsKey('personTypeId')) {
      return false;
    }
    if (l$personTypeId != lOther$personTypeId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdAt = createdAt;
    final l$effectiveFamilyId = effectiveFamilyId;
    final l$effectivePersonTypeId = effectivePersonTypeId;
    final l$familyId = familyId;
    final l$id = id;
    final l$isMainPhone = isMainPhone;
    final l$label = label;
    final l$personId = personId;
    final l$personTypeId = personTypeId;
    final l$phone = phone;
    final l$updatedAt = updatedAt;
    return Object.hashAll([
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('effectiveFamilyId') ? l$effectiveFamilyId : const {},
      _$data.containsKey('effectivePersonTypeId')
          ? l$effectivePersonTypeId
          : const {},
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isMainPhone') ? l$isMainPhone : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('personId') ? l$personId : const {},
      _$data.containsKey('personTypeId') ? l$personTypeId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}
