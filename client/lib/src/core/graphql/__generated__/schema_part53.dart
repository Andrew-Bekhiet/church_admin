// Part 53 of the schema
part of "schema.graphql.dart";

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

abstract class CopyWith_Input_ResolvedContactsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ResolvedContactsStreamCursorValueInput(
    Input_ResolvedContactsStreamCursorValueInput instance,
    TRes Function(Input_ResolvedContactsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ResolvedContactsStreamCursorValueInput;

  factory CopyWith_Input_ResolvedContactsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ResolvedContactsStreamCursorValueInput;

  TRes call({
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
  });
}

class _CopyWithImpl_Input_ResolvedContactsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ResolvedContactsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ResolvedContactsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ResolvedContactsStreamCursorValueInput _instance;

  final TRes Function(Input_ResolvedContactsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? effectiveFamilyId = _undefined,
    Object? effectivePersonTypeId = _undefined,
    Object? familyId = _undefined,
    Object? id = _undefined,
    Object? isMainPhone = _undefined,
    Object? label = _undefined,
    Object? personId = _undefined,
    Object? personTypeId = _undefined,
    Object? phone = _undefined,
    Object? updatedAt = _undefined,
  }) => _then(
    Input_ResolvedContactsStreamCursorValueInput._({
      ..._instance._$data,
      if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
      if (effectiveFamilyId != _undefined)
        'effectiveFamilyId': (effectiveFamilyId as UuidValue?),
      if (effectivePersonTypeId != _undefined)
        'effectivePersonTypeId': (effectivePersonTypeId as UuidValue?),
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (id != _undefined) 'id': (id as UuidValue?),
      if (isMainPhone != _undefined) 'isMainPhone': (isMainPhone as bool?),
      if (label != _undefined) 'label': (label as String?),
      if (personId != _undefined) 'personId': (personId as UuidValue?),
      if (personTypeId != _undefined)
        'personTypeId': (personTypeId as UuidValue?),
      if (phone != _undefined) 'phone': (phone as String?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
    }),
  );
}

class _CopyWithStubImpl_Input_ResolvedContactsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ResolvedContactsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ResolvedContactsStreamCursorValueInput(this._res);

  TRes _res;

  call({
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
  }) => _res;
}

class Input_SchoolsBoolExp {
  factory Input_SchoolsBoolExp({
    List<Input_SchoolsBoolExp>? $_and,
    Input_SchoolsBoolExp? $_not,
    List<Input_SchoolsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => Input_SchoolsBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_SchoolsBoolExp._(this._$data);

  factory Input_SchoolsBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_SchoolsBoolExp.fromJson((e as Map<String, dynamic>)),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_SchoolsBoolExp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_SchoolsBoolExp.fromJson((e as Map<String, dynamic>)),
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
    return Input_SchoolsBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_SchoolsBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_SchoolsBoolExp>?);

  Input_SchoolsBoolExp? get $_not => (_$data['_not'] as Input_SchoolsBoolExp?);

  List<Input_SchoolsBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_SchoolsBoolExp>?);

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

  CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp> get copyWith =>
      CopyWith_Input_SchoolsBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsBoolExp || runtimeType != other.runtimeType) {
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
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}

abstract class CopyWith_Input_SchoolsBoolExp<TRes> {
  factory CopyWith_Input_SchoolsBoolExp(
    Input_SchoolsBoolExp instance,
    TRes Function(Input_SchoolsBoolExp) then,
  ) = _CopyWithImpl_Input_SchoolsBoolExp;

  factory CopyWith_Input_SchoolsBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsBoolExp;

  TRes call({
    List<Input_SchoolsBoolExp>? $_and,
    Input_SchoolsBoolExp? $_not,
    List<Input_SchoolsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  });
  TRes $_and(
    Iterable<Input_SchoolsBoolExp>? Function(
      Iterable<CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_SchoolsBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_SchoolsBoolExp>? Function(
      Iterable<CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp>>?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get id;
  CopyWith_Input_StringComparisonExp<TRes> get name;
  CopyWith_Input_PersonsBoolExp<TRes> get persons;
  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate;
}

class _CopyWithImpl_Input_SchoolsBoolExp<TRes>
    implements CopyWith_Input_SchoolsBoolExp<TRes> {
  _CopyWithImpl_Input_SchoolsBoolExp(this._instance, this._then);

  final Input_SchoolsBoolExp _instance;

  final TRes Function(Input_SchoolsBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? persons = _undefined,
    Object? personsAggregate = _undefined,
  }) => _then(
    Input_SchoolsBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined) '_and': ($_and as List<Input_SchoolsBoolExp>?),
      if ($_not != _undefined) '_not': ($_not as Input_SchoolsBoolExp?),
      if ($_or != _undefined) '_or': ($_or as List<Input_SchoolsBoolExp>?),
      if (id != _undefined) 'id': (id as Input_UuidComparisonExp?),
      if (name != _undefined) 'name': (name as Input_StringComparisonExp?),
      if (persons != _undefined) 'persons': (persons as Input_PersonsBoolExp?),
      if (personsAggregate != _undefined)
        'personsAggregate':
            (personsAggregate as Input_PersonsAggregateBoolExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_SchoolsBoolExp>? Function(
      Iterable<CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map((e) => CopyWith_Input_SchoolsBoolExp(e, (i) => i)),
    )?.toList(),
  );

  CopyWith_Input_SchoolsBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_SchoolsBoolExp.stub(_then(_instance))
        : CopyWith_Input_SchoolsBoolExp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
    Iterable<Input_SchoolsBoolExp>? Function(
      Iterable<CopyWith_Input_SchoolsBoolExp<Input_SchoolsBoolExp>>?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map((e) => CopyWith_Input_SchoolsBoolExp(e, (i) => i)),
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

class _CopyWithStubImpl_Input_SchoolsBoolExp<TRes>
    implements CopyWith_Input_SchoolsBoolExp<TRes> {
  _CopyWithStubImpl_Input_SchoolsBoolExp(this._res);

  TRes _res;

  call({
    List<Input_SchoolsBoolExp>? $_and,
    Input_SchoolsBoolExp? $_not,
    List<Input_SchoolsBoolExp>? $_or,
    Input_UuidComparisonExp? id,
    Input_StringComparisonExp? name,
    Input_PersonsBoolExp? persons,
    Input_PersonsAggregateBoolExp? personsAggregate,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_SchoolsBoolExp<TRes> get $_not =>
      CopyWith_Input_SchoolsBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get id =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_StringComparisonExp<TRes> get name =>
      CopyWith_Input_StringComparisonExp.stub(_res);

  CopyWith_Input_PersonsBoolExp<TRes> get persons =>
      CopyWith_Input_PersonsBoolExp.stub(_res);

  CopyWith_Input_PersonsAggregateBoolExp<TRes> get personsAggregate =>
      CopyWith_Input_PersonsAggregateBoolExp.stub(_res);
}

class Input_SchoolsInsertInput {
  factory Input_SchoolsInsertInput({
    String? name,
    Input_PersonsArrRelInsertInput? persons,
  }) => Input_SchoolsInsertInput._({
    if (name != null) r'name': name,
    if (persons != null) r'persons': persons,
  });

  Input_SchoolsInsertInput._(this._$data);

  factory Input_SchoolsInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('persons')) {
      final l$persons = data['persons'];
      result$data['persons'] = l$persons == null
          ? null
          : Input_PersonsArrRelInsertInput.fromJson(
              (l$persons as Map<String, dynamic>),
            );
    }
    return Input_SchoolsInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  Input_PersonsArrRelInsertInput? get persons =>
      (_$data['persons'] as Input_PersonsArrRelInsertInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith_Input_SchoolsInsertInput<Input_SchoolsInsertInput> get copyWith =>
      CopyWith_Input_SchoolsInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsInsertInput ||
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
    final l$name = name;
    final l$persons = persons;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('persons') ? l$persons : const {},
    ]);
  }
}

abstract class CopyWith_Input_SchoolsInsertInput<TRes> {
  factory CopyWith_Input_SchoolsInsertInput(
    Input_SchoolsInsertInput instance,
    TRes Function(Input_SchoolsInsertInput) then,
  ) = _CopyWithImpl_Input_SchoolsInsertInput;

  factory CopyWith_Input_SchoolsInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsInsertInput;

  TRes call({String? name, Input_PersonsArrRelInsertInput? persons});
  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons;
}

class _CopyWithImpl_Input_SchoolsInsertInput<TRes>
    implements CopyWith_Input_SchoolsInsertInput<TRes> {
  _CopyWithImpl_Input_SchoolsInsertInput(this._instance, this._then);

  final Input_SchoolsInsertInput _instance;

  final TRes Function(Input_SchoolsInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined, Object? persons = _undefined}) => _then(
    Input_SchoolsInsertInput._({
      ..._instance._$data,
      if (name != _undefined) 'name': (name as String?),
      if (persons != _undefined)
        'persons': (persons as Input_PersonsArrRelInsertInput?),
    }),
  );

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

class _CopyWithStubImpl_Input_SchoolsInsertInput<TRes>
    implements CopyWith_Input_SchoolsInsertInput<TRes> {
  _CopyWithStubImpl_Input_SchoolsInsertInput(this._res);

  TRes _res;

  call({String? name, Input_PersonsArrRelInsertInput? persons}) => _res;

  CopyWith_Input_PersonsArrRelInsertInput<TRes> get persons =>
      CopyWith_Input_PersonsArrRelInsertInput.stub(_res);
}

class Input_SchoolsObjRelInsertInput {
  factory Input_SchoolsObjRelInsertInput({
    required Input_SchoolsInsertInput data,
    Input_SchoolsOnConflict? onConflict,
  }) => Input_SchoolsObjRelInsertInput._({
    r'data': data,
    if (onConflict != null) r'onConflict': onConflict,
  });

  Input_SchoolsObjRelInsertInput._(this._$data);

  factory Input_SchoolsObjRelInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input_SchoolsInsertInput.fromJson(
      (l$data as Map<String, dynamic>),
    );
    if (data.containsKey('onConflict')) {
      final l$onConflict = data['onConflict'];
      result$data['onConflict'] = l$onConflict == null
          ? null
          : Input_SchoolsOnConflict.fromJson(
              (l$onConflict as Map<String, dynamic>),
            );
    }
    return Input_SchoolsObjRelInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_SchoolsInsertInput get data =>
      (_$data['data'] as Input_SchoolsInsertInput);

  Input_SchoolsOnConflict? get onConflict =>
      (_$data['onConflict'] as Input_SchoolsOnConflict?);

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

  CopyWith_Input_SchoolsObjRelInsertInput<Input_SchoolsObjRelInsertInput>
  get copyWith => CopyWith_Input_SchoolsObjRelInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsObjRelInsertInput ||
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

abstract class CopyWith_Input_SchoolsObjRelInsertInput<TRes> {
  factory CopyWith_Input_SchoolsObjRelInsertInput(
    Input_SchoolsObjRelInsertInput instance,
    TRes Function(Input_SchoolsObjRelInsertInput) then,
  ) = _CopyWithImpl_Input_SchoolsObjRelInsertInput;

  factory CopyWith_Input_SchoolsObjRelInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsObjRelInsertInput;

  TRes call({
    Input_SchoolsInsertInput? data,
    Input_SchoolsOnConflict? onConflict,
  });
  CopyWith_Input_SchoolsInsertInput<TRes> get data;
  CopyWith_Input_SchoolsOnConflict<TRes> get onConflict;
}

class _CopyWithImpl_Input_SchoolsObjRelInsertInput<TRes>
    implements CopyWith_Input_SchoolsObjRelInsertInput<TRes> {
  _CopyWithImpl_Input_SchoolsObjRelInsertInput(this._instance, this._then);

  final Input_SchoolsObjRelInsertInput _instance;

  final TRes Function(Input_SchoolsObjRelInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined, Object? onConflict = _undefined}) =>
      _then(
        Input_SchoolsObjRelInsertInput._({
          ..._instance._$data,
          if (data != _undefined && data != null)
            'data': (data as Input_SchoolsInsertInput),
          if (onConflict != _undefined)
            'onConflict': (onConflict as Input_SchoolsOnConflict?),
        }),
      );

  CopyWith_Input_SchoolsInsertInput<TRes> get data {
    final local$data = _instance.data;
    return CopyWith_Input_SchoolsInsertInput(local$data, (e) => call(data: e));
  }

  CopyWith_Input_SchoolsOnConflict<TRes> get onConflict {
    final local$onConflict = _instance.onConflict;
    return local$onConflict == null
        ? CopyWith_Input_SchoolsOnConflict.stub(_then(_instance))
        : CopyWith_Input_SchoolsOnConflict(
            local$onConflict,
            (e) => call(onConflict: e),
          );
  }
}

class _CopyWithStubImpl_Input_SchoolsObjRelInsertInput<TRes>
    implements CopyWith_Input_SchoolsObjRelInsertInput<TRes> {
  _CopyWithStubImpl_Input_SchoolsObjRelInsertInput(this._res);

  TRes _res;

  call({Input_SchoolsInsertInput? data, Input_SchoolsOnConflict? onConflict}) =>
      _res;

  CopyWith_Input_SchoolsInsertInput<TRes> get data =>
      CopyWith_Input_SchoolsInsertInput.stub(_res);

  CopyWith_Input_SchoolsOnConflict<TRes> get onConflict =>
      CopyWith_Input_SchoolsOnConflict.stub(_res);
}

class Input_SchoolsOnConflict {
  factory Input_SchoolsOnConflict({
    required Enum_SchoolsConstraint constraint,
    List<Enum_SchoolsUpdateColumn>? updateColumns,
    Input_SchoolsBoolExp? where,
  }) => Input_SchoolsOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_SchoolsOnConflict._(this._$data);

  factory Input_SchoolsOnConflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_SchoolsConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map((e) => fromJson_Enum_SchoolsUpdateColumn((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_SchoolsBoolExp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input_SchoolsOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_SchoolsConstraint get constraint =>
      (_$data['constraint'] as Enum_SchoolsConstraint);

  List<Enum_SchoolsUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_SchoolsUpdateColumn>?);

  Input_SchoolsBoolExp? get where => (_$data['where'] as Input_SchoolsBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_SchoolsConstraint(l$constraint);
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_SchoolsUpdateColumn>)
              .map((e) => toJson_Enum_SchoolsUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_SchoolsOnConflict<Input_SchoolsOnConflict> get copyWith =>
      CopyWith_Input_SchoolsOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsOnConflict || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_SchoolsOnConflict<TRes> {
  factory CopyWith_Input_SchoolsOnConflict(
    Input_SchoolsOnConflict instance,
    TRes Function(Input_SchoolsOnConflict) then,
  ) = _CopyWithImpl_Input_SchoolsOnConflict;

  factory CopyWith_Input_SchoolsOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_SchoolsOnConflict;

  TRes call({
    Enum_SchoolsConstraint? constraint,
    List<Enum_SchoolsUpdateColumn>? updateColumns,
    Input_SchoolsBoolExp? where,
  });
  CopyWith_Input_SchoolsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_SchoolsOnConflict<TRes>
    implements CopyWith_Input_SchoolsOnConflict<TRes> {
  _CopyWithImpl_Input_SchoolsOnConflict(this._instance, this._then);

  final Input_SchoolsOnConflict _instance;

  final TRes Function(Input_SchoolsOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_SchoolsOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_SchoolsConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns': (updateColumns as List<Enum_SchoolsUpdateColumn>),
      if (where != _undefined) 'where': (where as Input_SchoolsBoolExp?),
    }),
  );

  CopyWith_Input_SchoolsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_SchoolsBoolExp.stub(_then(_instance))
        : CopyWith_Input_SchoolsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_SchoolsOnConflict<TRes>
    implements CopyWith_Input_SchoolsOnConflict<TRes> {
  _CopyWithStubImpl_Input_SchoolsOnConflict(this._res);

  TRes _res;

  call({
    Enum_SchoolsConstraint? constraint,
    List<Enum_SchoolsUpdateColumn>? updateColumns,
    Input_SchoolsBoolExp? where,
  }) => _res;

  CopyWith_Input_SchoolsBoolExp<TRes> get where =>
      CopyWith_Input_SchoolsBoolExp.stub(_res);
}

class Input_SchoolsOrderBy {
  factory Input_SchoolsOrderBy({
    Enum_OrderBy? id,
    Enum_OrderBy? name,
    Input_PersonsAggregateOrderBy? personsAggregate,
  }) => Input_SchoolsOrderBy._({
    if (id != null) r'id': id,
    if (name != null) r'name': name,
    if (personsAggregate != null) r'personsAggregate': personsAggregate,
  });

  Input_SchoolsOrderBy._(this._$data);

  factory Input_SchoolsOrderBy.fromJson(Map<String, dynamic> data) {
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
    if (data.containsKey('personsAggregate')) {
      final l$personsAggregate = data['personsAggregate'];
      result$data['personsAggregate'] = l$personsAggregate == null
          ? null
          : Input_PersonsAggregateOrderBy.fromJson(
              (l$personsAggregate as Map<String, dynamic>),
            );
    }
    return Input_SchoolsOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get id => (_$data['id'] as Enum_OrderBy?);

  Enum_OrderBy? get name => (_$data['name'] as Enum_OrderBy?);

  Input_PersonsAggregateOrderBy? get personsAggregate =>
      (_$data['personsAggregate'] as Input_PersonsAggregateOrderBy?);

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
    if (_$data.containsKey('personsAggregate')) {
      final l$personsAggregate = personsAggregate;
      result$data['personsAggregate'] = l$personsAggregate?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_SchoolsOrderBy<Input_SchoolsOrderBy> get copyWith =>
      CopyWith_Input_SchoolsOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_SchoolsOrderBy || runtimeType != other.runtimeType) {
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
    final l$id = id;
    final l$name = name;
    final l$personsAggregate = personsAggregate;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('personsAggregate') ? l$personsAggregate : const {},
    ]);
  }
}
