// Part 17 of the schema
part of "schema.graphql.dart";

abstract class CopyWith_Input_ContactsOrderBy<TRes> {
  factory CopyWith_Input_ContactsOrderBy(
    Input_ContactsOrderBy instance,
    TRes Function(Input_ContactsOrderBy) then,
  ) = _CopyWithImpl_Input_ContactsOrderBy;

  factory CopyWith_Input_ContactsOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsOrderBy;

  TRes call({
    Enum_OrderBy? createdAt,
    Input_FamiliesOrderBy? family,
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
  CopyWith_Input_FamiliesOrderBy<TRes> get family;
  CopyWith_Input_PersonsOrderBy<TRes> get person;
  CopyWith_Input_PersonTypesOrderBy<TRes> get personType;
}

class _CopyWithImpl_Input_ContactsOrderBy<TRes>
    implements CopyWith_Input_ContactsOrderBy<TRes> {
  _CopyWithImpl_Input_ContactsOrderBy(this._instance, this._then);

  final Input_ContactsOrderBy _instance;

  final TRes Function(Input_ContactsOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? family = _undefined,
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
    Input_ContactsOrderBy._({
      ..._instance._$data,
      if (createdAt != _undefined) 'createdAt': (createdAt as Enum_OrderBy?),
      if (family != _undefined) 'family': (family as Input_FamiliesOrderBy?),
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

  CopyWith_Input_FamiliesOrderBy<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith_Input_FamiliesOrderBy.stub(_then(_instance))
        : CopyWith_Input_FamiliesOrderBy(local$family, (e) => call(family: e));
  }

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

class _CopyWithStubImpl_Input_ContactsOrderBy<TRes>
    implements CopyWith_Input_ContactsOrderBy<TRes> {
  _CopyWithStubImpl_Input_ContactsOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? createdAt,
    Input_FamiliesOrderBy? family,
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

  CopyWith_Input_FamiliesOrderBy<TRes> get family =>
      CopyWith_Input_FamiliesOrderBy.stub(_res);

  CopyWith_Input_PersonsOrderBy<TRes> get person =>
      CopyWith_Input_PersonsOrderBy.stub(_res);

  CopyWith_Input_PersonTypesOrderBy<TRes> get personType =>
      CopyWith_Input_PersonTypesOrderBy.stub(_res);
}

class Input_ContactsPkColumnsInput {
  factory Input_ContactsPkColumnsInput({required UuidValue id}) =>
      Input_ContactsPkColumnsInput._({r'id': id});

  Input_ContactsPkColumnsInput._(this._$data);

  factory Input_ContactsPkColumnsInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = stringToUuid(l$id);
    return Input_ContactsPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get id => (_$data['id'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = uuidToString(l$id);
    return result$data;
  }

  CopyWith_Input_ContactsPkColumnsInput<Input_ContactsPkColumnsInput>
  get copyWith => CopyWith_Input_ContactsPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsPkColumnsInput ||
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

abstract class CopyWith_Input_ContactsPkColumnsInput<TRes> {
  factory CopyWith_Input_ContactsPkColumnsInput(
    Input_ContactsPkColumnsInput instance,
    TRes Function(Input_ContactsPkColumnsInput) then,
  ) = _CopyWithImpl_Input_ContactsPkColumnsInput;

  factory CopyWith_Input_ContactsPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsPkColumnsInput;

  TRes call({UuidValue? id});
}

class _CopyWithImpl_Input_ContactsPkColumnsInput<TRes>
    implements CopyWith_Input_ContactsPkColumnsInput<TRes> {
  _CopyWithImpl_Input_ContactsPkColumnsInput(this._instance, this._then);

  final Input_ContactsPkColumnsInput _instance;

  final TRes Function(Input_ContactsPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input_ContactsPkColumnsInput._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_ContactsPkColumnsInput<TRes>
    implements CopyWith_Input_ContactsPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_ContactsPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? id}) => _res;
}

class Input_ContactsSetInput {
  factory Input_ContactsSetInput({
    bool? isMainPhone,
    String? label,
    String? phone,
  }) => Input_ContactsSetInput._({
    if (isMainPhone != null) r'isMainPhone': isMainPhone,
    if (label != null) r'label': label,
    if (phone != null) r'phone': phone,
  });

  Input_ContactsSetInput._(this._$data);

  factory Input_ContactsSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isMainPhone')) {
      final l$isMainPhone = data['isMainPhone'];
      result$data['isMainPhone'] = (l$isMainPhone as bool?);
    }
    if (data.containsKey('label')) {
      final l$label = data['label'];
      result$data['label'] = (l$label as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input_ContactsSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isMainPhone => (_$data['isMainPhone'] as bool?);

  String? get label => (_$data['label'] as String?);

  String? get phone => (_$data['phone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isMainPhone')) {
      final l$isMainPhone = isMainPhone;
      result$data['isMainPhone'] = l$isMainPhone;
    }
    if (_$data.containsKey('label')) {
      final l$label = label;
      result$data['label'] = l$label;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith_Input_ContactsSetInput<Input_ContactsSetInput> get copyWith =>
      CopyWith_Input_ContactsSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsSetInput || runtimeType != other.runtimeType) {
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
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isMainPhone = isMainPhone;
    final l$label = label;
    final l$phone = phone;
    return Object.hashAll([
      _$data.containsKey('isMainPhone') ? l$isMainPhone : const {},
      _$data.containsKey('label') ? l$label : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith_Input_ContactsSetInput<TRes> {
  factory CopyWith_Input_ContactsSetInput(
    Input_ContactsSetInput instance,
    TRes Function(Input_ContactsSetInput) then,
  ) = _CopyWithImpl_Input_ContactsSetInput;

  factory CopyWith_Input_ContactsSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsSetInput;

  TRes call({bool? isMainPhone, String? label, String? phone});
}

class _CopyWithImpl_Input_ContactsSetInput<TRes>
    implements CopyWith_Input_ContactsSetInput<TRes> {
  _CopyWithImpl_Input_ContactsSetInput(this._instance, this._then);

  final Input_ContactsSetInput _instance;

  final TRes Function(Input_ContactsSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isMainPhone = _undefined,
    Object? label = _undefined,
    Object? phone = _undefined,
  }) => _then(
    Input_ContactsSetInput._({
      ..._instance._$data,
      if (isMainPhone != _undefined) 'isMainPhone': (isMainPhone as bool?),
      if (label != _undefined) 'label': (label as String?),
      if (phone != _undefined) 'phone': (phone as String?),
    }),
  );
}

class _CopyWithStubImpl_Input_ContactsSetInput<TRes>
    implements CopyWith_Input_ContactsSetInput<TRes> {
  _CopyWithStubImpl_Input_ContactsSetInput(this._res);

  TRes _res;

  call({bool? isMainPhone, String? label, String? phone}) => _res;
}

class Input_ContactsStreamCursorInput {
  factory Input_ContactsStreamCursorInput({
    required Input_ContactsStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_ContactsStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_ContactsStreamCursorInput._(this._$data);

  factory Input_ContactsStreamCursorInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] = Input_ContactsStreamCursorValueInput.fromJson(
      (l$initialValue as Map<String, dynamic>),
    );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_ContactsStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ContactsStreamCursorValueInput get initialValue =>
      (_$data['initialValue'] as Input_ContactsStreamCursorValueInput);

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

  CopyWith_Input_ContactsStreamCursorInput<Input_ContactsStreamCursorInput>
  get copyWith => CopyWith_Input_ContactsStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsStreamCursorInput ||
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

abstract class CopyWith_Input_ContactsStreamCursorInput<TRes> {
  factory CopyWith_Input_ContactsStreamCursorInput(
    Input_ContactsStreamCursorInput instance,
    TRes Function(Input_ContactsStreamCursorInput) then,
  ) = _CopyWithImpl_Input_ContactsStreamCursorInput;

  factory CopyWith_Input_ContactsStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsStreamCursorInput;

  TRes call({
    Input_ContactsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_ContactsStreamCursorValueInput<TRes> get initialValue;
}

class _CopyWithImpl_Input_ContactsStreamCursorInput<TRes>
    implements CopyWith_Input_ContactsStreamCursorInput<TRes> {
  _CopyWithImpl_Input_ContactsStreamCursorInput(this._instance, this._then);

  final Input_ContactsStreamCursorInput _instance;

  final TRes Function(Input_ContactsStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_ContactsStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue': (initialValue as Input_ContactsStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_ContactsStreamCursorValueInput<TRes> get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_ContactsStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_ContactsStreamCursorInput<TRes>
    implements CopyWith_Input_ContactsStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_ContactsStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_ContactsStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_ContactsStreamCursorValueInput<TRes> get initialValue =>
      CopyWith_Input_ContactsStreamCursorValueInput.stub(_res);
}

class Input_ContactsStreamCursorValueInput {
  factory Input_ContactsStreamCursorValueInput({
    DateTime? createdAt,
    UuidValue? familyId,
    UuidValue? id,
    bool? isMainPhone,
    String? label,
    UuidValue? personId,
    UuidValue? personTypeId,
    String? phone,
    DateTime? updatedAt,
  }) => Input_ContactsStreamCursorValueInput._({
    if (createdAt != null) r'createdAt': createdAt,
    if (familyId != null) r'familyId': familyId,
    if (id != null) r'id': id,
    if (isMainPhone != null) r'isMainPhone': isMainPhone,
    if (label != null) r'label': label,
    if (personId != null) r'personId': personId,
    if (personTypeId != null) r'personTypeId': personTypeId,
    if (phone != null) r'phone': phone,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input_ContactsStreamCursorValueInput._(this._$data);

  factory Input_ContactsStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : tstzFromString(l$createdAt);
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
    return Input_ContactsStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

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

  CopyWith_Input_ContactsStreamCursorValueInput<
    Input_ContactsStreamCursorValueInput
  >
  get copyWith => CopyWith_Input_ContactsStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsStreamCursorValueInput ||
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

abstract class CopyWith_Input_ContactsStreamCursorValueInput<TRes> {
  factory CopyWith_Input_ContactsStreamCursorValueInput(
    Input_ContactsStreamCursorValueInput instance,
    TRes Function(Input_ContactsStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_ContactsStreamCursorValueInput;

  factory CopyWith_Input_ContactsStreamCursorValueInput.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsStreamCursorValueInput;

  TRes call({
    DateTime? createdAt,
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

class _CopyWithImpl_Input_ContactsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ContactsStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_ContactsStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_ContactsStreamCursorValueInput _instance;

  final TRes Function(Input_ContactsStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdAt = _undefined,
    Object? familyId = _undefined,
    Object? id = _undefined,
    Object? isMainPhone = _undefined,
    Object? label = _undefined,
    Object? personId = _undefined,
    Object? personTypeId = _undefined,
    Object? phone = _undefined,
    Object? updatedAt = _undefined,
  }) => _then(
    Input_ContactsStreamCursorValueInput._({
      ..._instance._$data,
      if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
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

class _CopyWithStubImpl_Input_ContactsStreamCursorValueInput<TRes>
    implements CopyWith_Input_ContactsStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_ContactsStreamCursorValueInput(this._res);

  TRes _res;

  call({
    DateTime? createdAt,
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

class Input_ContactsUpdates {
  factory Input_ContactsUpdates({
    Input_ContactsSetInput? $_set,
    required Input_ContactsBoolExp where,
  }) => Input_ContactsUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_ContactsUpdates._(this._$data);

  factory Input_ContactsUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_ContactsSetInput.fromJson((l$$_set as Map<String, dynamic>));
    }
    final l$where = data['where'];
    result$data['where'] = Input_ContactsBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_ContactsUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_ContactsSetInput? get $_set =>
      (_$data['_set'] as Input_ContactsSetInput?);

  Input_ContactsBoolExp get where => (_$data['where'] as Input_ContactsBoolExp);

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

  CopyWith_Input_ContactsUpdates<Input_ContactsUpdates> get copyWith =>
      CopyWith_Input_ContactsUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_ContactsUpdates || runtimeType != other.runtimeType) {
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

abstract class CopyWith_Input_ContactsUpdates<TRes> {
  factory CopyWith_Input_ContactsUpdates(
    Input_ContactsUpdates instance,
    TRes Function(Input_ContactsUpdates) then,
  ) = _CopyWithImpl_Input_ContactsUpdates;

  factory CopyWith_Input_ContactsUpdates.stub(TRes res) =
      _CopyWithStubImpl_Input_ContactsUpdates;

  TRes call({Input_ContactsSetInput? $_set, Input_ContactsBoolExp? where});
  CopyWith_Input_ContactsSetInput<TRes> get $_set;
  CopyWith_Input_ContactsBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_ContactsUpdates<TRes>
    implements CopyWith_Input_ContactsUpdates<TRes> {
  _CopyWithImpl_Input_ContactsUpdates(this._instance, this._then);

  final Input_ContactsUpdates _instance;

  final TRes Function(Input_ContactsUpdates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_set = _undefined, Object? where = _undefined}) => _then(
    Input_ContactsUpdates._({
      ..._instance._$data,
      if ($_set != _undefined) '_set': ($_set as Input_ContactsSetInput?),
      if (where != _undefined && where != null)
        'where': (where as Input_ContactsBoolExp),
    }),
  );

  CopyWith_Input_ContactsSetInput<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith_Input_ContactsSetInput.stub(_then(_instance))
        : CopyWith_Input_ContactsSetInput(local$$_set, (e) => call($_set: e));
  }

  CopyWith_Input_ContactsBoolExp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith_Input_ContactsBoolExp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl_Input_ContactsUpdates<TRes>
    implements CopyWith_Input_ContactsUpdates<TRes> {
  _CopyWithStubImpl_Input_ContactsUpdates(this._res);

  TRes _res;

  call({Input_ContactsSetInput? $_set, Input_ContactsBoolExp? where}) => _res;

  CopyWith_Input_ContactsSetInput<TRes> get $_set =>
      CopyWith_Input_ContactsSetInput.stub(_res);

  CopyWith_Input_ContactsBoolExp<TRes> get where =>
      CopyWith_Input_ContactsBoolExp.stub(_res);
}

class Input_DataCheckOverridesBoolExp {
  factory Input_DataCheckOverridesBoolExp({
    List<Input_DataCheckOverridesBoolExp>? $_and,
    Input_DataCheckOverridesBoolExp? $_not,
    List<Input_DataCheckOverridesBoolExp>? $_or,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_UuidComparisonExp? updatedBy,
  }) => Input_DataCheckOverridesBoolExp._({
    if ($_and != null) r'_and': $_and,
    if ($_not != null) r'_not': $_not,
    if ($_or != null) r'_or': $_or,
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
    if (updatedBy != null) r'updatedBy': updatedBy,
  });

  Input_DataCheckOverridesBoolExp._(this._$data);

  factory Input_DataCheckOverridesBoolExp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map(
            (e) => Input_DataCheckOverridesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input_DataCheckOverridesBoolExp.fromJson(
              (l$$_not as Map<String, dynamic>),
            );
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map(
            (e) => Input_DataCheckOverridesBoolExp.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList();
    }
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$familyId as Map<String, dynamic>),
            );
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = l$isComplete == null
          ? null
          : Input_BooleanComparisonExp.fromJson(
              (l$isComplete as Map<String, dynamic>),
            );
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = l$updatedBy == null
          ? null
          : Input_UuidComparisonExp.fromJson(
              (l$updatedBy as Map<String, dynamic>),
            );
    }
    return Input_DataCheckOverridesBoolExp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input_DataCheckOverridesBoolExp>? get $_and =>
      (_$data['_and'] as List<Input_DataCheckOverridesBoolExp>?);

  Input_DataCheckOverridesBoolExp? get $_not =>
      (_$data['_not'] as Input_DataCheckOverridesBoolExp?);

  List<Input_DataCheckOverridesBoolExp>? get $_or =>
      (_$data['_or'] as List<Input_DataCheckOverridesBoolExp>?);

  Input_UuidComparisonExp? get familyId =>
      (_$data['familyId'] as Input_UuidComparisonExp?);

  Input_BooleanComparisonExp? get isComplete =>
      (_$data['isComplete'] as Input_BooleanComparisonExp?);

  Input_UuidComparisonExp? get updatedBy =>
      (_$data['updatedBy'] as Input_UuidComparisonExp?);

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
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId?.toJson();
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete?.toJson();
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesBoolExp<Input_DataCheckOverridesBoolExp>
  get copyWith => CopyWith_Input_DataCheckOverridesBoolExp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesBoolExp ||
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
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (_$data.containsKey('familyId') !=
        other._$data.containsKey('familyId')) {
      return false;
    }
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$updatedBy = updatedBy;
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
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesBoolExp<TRes> {
  factory CopyWith_Input_DataCheckOverridesBoolExp(
    Input_DataCheckOverridesBoolExp instance,
    TRes Function(Input_DataCheckOverridesBoolExp) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesBoolExp;

  factory CopyWith_Input_DataCheckOverridesBoolExp.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesBoolExp;

  TRes call({
    List<Input_DataCheckOverridesBoolExp>? $_and,
    Input_DataCheckOverridesBoolExp? $_not,
    List<Input_DataCheckOverridesBoolExp>? $_or,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_UuidComparisonExp? updatedBy,
  });
  TRes $_and(
    Iterable<Input_DataCheckOverridesBoolExp>? Function(
      Iterable<
        CopyWith_Input_DataCheckOverridesBoolExp<
          Input_DataCheckOverridesBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get $_not;
  TRes $_or(
    Iterable<Input_DataCheckOverridesBoolExp>? Function(
      Iterable<
        CopyWith_Input_DataCheckOverridesBoolExp<
          Input_DataCheckOverridesBoolExp
        >
      >?,
    )
    _fn,
  );
  CopyWith_Input_UuidComparisonExp<TRes> get familyId;
  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete;
  CopyWith_Input_UuidComparisonExp<TRes> get updatedBy;
}

class _CopyWithImpl_Input_DataCheckOverridesBoolExp<TRes>
    implements CopyWith_Input_DataCheckOverridesBoolExp<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesBoolExp(this._instance, this._then);

  final Input_DataCheckOverridesBoolExp _instance;

  final TRes Function(Input_DataCheckOverridesBoolExp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? updatedBy = _undefined,
  }) => _then(
    Input_DataCheckOverridesBoolExp._({
      ..._instance._$data,
      if ($_and != _undefined)
        '_and': ($_and as List<Input_DataCheckOverridesBoolExp>?),
      if ($_not != _undefined)
        '_not': ($_not as Input_DataCheckOverridesBoolExp?),
      if ($_or != _undefined)
        '_or': ($_or as List<Input_DataCheckOverridesBoolExp>?),
      if (familyId != _undefined)
        'familyId': (familyId as Input_UuidComparisonExp?),
      if (isComplete != _undefined)
        'isComplete': (isComplete as Input_BooleanComparisonExp?),
      if (updatedBy != _undefined)
        'updatedBy': (updatedBy as Input_UuidComparisonExp?),
    }),
  );

  TRes $_and(
    Iterable<Input_DataCheckOverridesBoolExp>? Function(
      Iterable<
        CopyWith_Input_DataCheckOverridesBoolExp<
          Input_DataCheckOverridesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_and: _fn(
      _instance.$_and?.map(
        (e) => CopyWith_Input_DataCheckOverridesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith_Input_DataCheckOverridesBoolExp.stub(_then(_instance))
        : CopyWith_Input_DataCheckOverridesBoolExp(
            local$$_not,
            (e) => call($_not: e),
          );
  }

  TRes $_or(
    Iterable<Input_DataCheckOverridesBoolExp>? Function(
      Iterable<
        CopyWith_Input_DataCheckOverridesBoolExp<
          Input_DataCheckOverridesBoolExp
        >
      >?,
    )
    _fn,
  ) => call(
    $_or: _fn(
      _instance.$_or?.map(
        (e) => CopyWith_Input_DataCheckOverridesBoolExp(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith_Input_UuidComparisonExp<TRes> get familyId {
    final local$familyId = _instance.familyId;
    return local$familyId == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$familyId,
            (e) => call(familyId: e),
          );
  }

  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete {
    final local$isComplete = _instance.isComplete;
    return local$isComplete == null
        ? CopyWith_Input_BooleanComparisonExp.stub(_then(_instance))
        : CopyWith_Input_BooleanComparisonExp(
            local$isComplete,
            (e) => call(isComplete: e),
          );
  }

  CopyWith_Input_UuidComparisonExp<TRes> get updatedBy {
    final local$updatedBy = _instance.updatedBy;
    return local$updatedBy == null
        ? CopyWith_Input_UuidComparisonExp.stub(_then(_instance))
        : CopyWith_Input_UuidComparisonExp(
            local$updatedBy,
            (e) => call(updatedBy: e),
          );
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesBoolExp<TRes>
    implements CopyWith_Input_DataCheckOverridesBoolExp<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesBoolExp(this._res);

  TRes _res;

  call({
    List<Input_DataCheckOverridesBoolExp>? $_and,
    Input_DataCheckOverridesBoolExp? $_not,
    List<Input_DataCheckOverridesBoolExp>? $_or,
    Input_UuidComparisonExp? familyId,
    Input_BooleanComparisonExp? isComplete,
    Input_UuidComparisonExp? updatedBy,
  }) => _res;

  $_and(_fn) => _res;

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get $_not =>
      CopyWith_Input_DataCheckOverridesBoolExp.stub(_res);

  $_or(_fn) => _res;

  CopyWith_Input_UuidComparisonExp<TRes> get familyId =>
      CopyWith_Input_UuidComparisonExp.stub(_res);

  CopyWith_Input_BooleanComparisonExp<TRes> get isComplete =>
      CopyWith_Input_BooleanComparisonExp.stub(_res);

  CopyWith_Input_UuidComparisonExp<TRes> get updatedBy =>
      CopyWith_Input_UuidComparisonExp.stub(_res);
}

class Input_DataCheckOverridesInsertInput {
  factory Input_DataCheckOverridesInsertInput({
    UuidValue? familyId,
    bool? isComplete,
  }) => Input_DataCheckOverridesInsertInput._({
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
  });

  Input_DataCheckOverridesInsertInput._(this._$data);

  factory Input_DataCheckOverridesInsertInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = (l$isComplete as bool?);
    }
    return Input_DataCheckOverridesInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  bool? get isComplete => (_$data['isComplete'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete;
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesInsertInput<
    Input_DataCheckOverridesInsertInput
  >
  get copyWith => CopyWith_Input_DataCheckOverridesInsertInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesInsertInput ||
        runtimeType != other.runtimeType) {
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
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    return Object.hashAll([
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesInsertInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesInsertInput(
    Input_DataCheckOverridesInsertInput instance,
    TRes Function(Input_DataCheckOverridesInsertInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesInsertInput;

  factory CopyWith_Input_DataCheckOverridesInsertInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesInsertInput;

  TRes call({UuidValue? familyId, bool? isComplete});
}

class _CopyWithImpl_Input_DataCheckOverridesInsertInput<TRes>
    implements CopyWith_Input_DataCheckOverridesInsertInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesInsertInput(this._instance, this._then);

  final Input_DataCheckOverridesInsertInput _instance;

  final TRes Function(Input_DataCheckOverridesInsertInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined, Object? isComplete = _undefined}) =>
      _then(
        Input_DataCheckOverridesInsertInput._({
          ..._instance._$data,
          if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
          if (isComplete != _undefined) 'isComplete': (isComplete as bool?),
        }),
      );
}

class _CopyWithStubImpl_Input_DataCheckOverridesInsertInput<TRes>
    implements CopyWith_Input_DataCheckOverridesInsertInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesInsertInput(this._res);

  TRes _res;

  call({UuidValue? familyId, bool? isComplete}) => _res;
}

class Input_DataCheckOverridesOnConflict {
  factory Input_DataCheckOverridesOnConflict({
    required Enum_DataCheckOverridesConstraint constraint,
    List<Enum_DataCheckOverridesUpdateColumn>? updateColumns,
    Input_DataCheckOverridesBoolExp? where,
  }) => Input_DataCheckOverridesOnConflict._({
    r'constraint': constraint,
    if (updateColumns != null) r'updateColumns': updateColumns,
    if (where != null) r'where': where,
  });

  Input_DataCheckOverridesOnConflict._(this._$data);

  factory Input_DataCheckOverridesOnConflict.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] = fromJson_Enum_DataCheckOverridesConstraint(
      (l$constraint as String),
    );
    if (data.containsKey('updateColumns')) {
      final l$updateColumns = data['updateColumns'];
      result$data['updateColumns'] = (l$updateColumns as List<dynamic>)
          .map(
            (e) => fromJson_Enum_DataCheckOverridesUpdateColumn((e as String)),
          )
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input_DataCheckOverridesBoolExp.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Input_DataCheckOverridesOnConflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_DataCheckOverridesConstraint get constraint =>
      (_$data['constraint'] as Enum_DataCheckOverridesConstraint);

  List<Enum_DataCheckOverridesUpdateColumn>? get updateColumns =>
      (_$data['updateColumns'] as List<Enum_DataCheckOverridesUpdateColumn>?);

  Input_DataCheckOverridesBoolExp? get where =>
      (_$data['where'] as Input_DataCheckOverridesBoolExp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson_Enum_DataCheckOverridesConstraint(
      l$constraint,
    );
    if (_$data.containsKey('updateColumns')) {
      final l$updateColumns = updateColumns;
      result$data['updateColumns'] =
          (l$updateColumns as List<Enum_DataCheckOverridesUpdateColumn>)
              .map((e) => toJson_Enum_DataCheckOverridesUpdateColumn(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesOnConflict<
    Input_DataCheckOverridesOnConflict
  >
  get copyWith => CopyWith_Input_DataCheckOverridesOnConflict(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesOnConflict ||
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

abstract class CopyWith_Input_DataCheckOverridesOnConflict<TRes> {
  factory CopyWith_Input_DataCheckOverridesOnConflict(
    Input_DataCheckOverridesOnConflict instance,
    TRes Function(Input_DataCheckOverridesOnConflict) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesOnConflict;

  factory CopyWith_Input_DataCheckOverridesOnConflict.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesOnConflict;

  TRes call({
    Enum_DataCheckOverridesConstraint? constraint,
    List<Enum_DataCheckOverridesUpdateColumn>? updateColumns,
    Input_DataCheckOverridesBoolExp? where,
  });
  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where;
}

class _CopyWithImpl_Input_DataCheckOverridesOnConflict<TRes>
    implements CopyWith_Input_DataCheckOverridesOnConflict<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesOnConflict(this._instance, this._then);

  final Input_DataCheckOverridesOnConflict _instance;

  final TRes Function(Input_DataCheckOverridesOnConflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? updateColumns = _undefined,
    Object? where = _undefined,
  }) => _then(
    Input_DataCheckOverridesOnConflict._({
      ..._instance._$data,
      if (constraint != _undefined && constraint != null)
        'constraint': (constraint as Enum_DataCheckOverridesConstraint),
      if (updateColumns != _undefined && updateColumns != null)
        'updateColumns':
            (updateColumns as List<Enum_DataCheckOverridesUpdateColumn>),
      if (where != _undefined)
        'where': (where as Input_DataCheckOverridesBoolExp?),
    }),
  );

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith_Input_DataCheckOverridesBoolExp.stub(_then(_instance))
        : CopyWith_Input_DataCheckOverridesBoolExp(
            local$where,
            (e) => call(where: e),
          );
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesOnConflict<TRes>
    implements CopyWith_Input_DataCheckOverridesOnConflict<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesOnConflict(this._res);

  TRes _res;

  call({
    Enum_DataCheckOverridesConstraint? constraint,
    List<Enum_DataCheckOverridesUpdateColumn>? updateColumns,
    Input_DataCheckOverridesBoolExp? where,
  }) => _res;

  CopyWith_Input_DataCheckOverridesBoolExp<TRes> get where =>
      CopyWith_Input_DataCheckOverridesBoolExp.stub(_res);
}

class Input_DataCheckOverridesOrderBy {
  factory Input_DataCheckOverridesOrderBy({
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? updatedBy,
  }) => Input_DataCheckOverridesOrderBy._({
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
    if (updatedBy != null) r'updatedBy': updatedBy,
  });

  Input_DataCheckOverridesOrderBy._(this._$data);

  factory Input_DataCheckOverridesOrderBy.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : fromJson_Enum_OrderBy((l$familyId as String));
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = l$isComplete == null
          ? null
          : fromJson_Enum_OrderBy((l$isComplete as String));
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = l$updatedBy == null
          ? null
          : fromJson_Enum_OrderBy((l$updatedBy as String));
    }
    return Input_DataCheckOverridesOrderBy._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum_OrderBy? get familyId => (_$data['familyId'] as Enum_OrderBy?);

  Enum_OrderBy? get isComplete => (_$data['isComplete'] as Enum_OrderBy?);

  Enum_OrderBy? get updatedBy => (_$data['updatedBy'] as Enum_OrderBy?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : toJson_Enum_OrderBy(l$familyId);
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete == null
          ? null
          : toJson_Enum_OrderBy(l$isComplete);
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy == null
          ? null
          : toJson_Enum_OrderBy(l$updatedBy);
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesOrderBy<Input_DataCheckOverridesOrderBy>
  get copyWith => CopyWith_Input_DataCheckOverridesOrderBy(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesOrderBy ||
        runtimeType != other.runtimeType) {
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
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$updatedBy = updatedBy;
    return Object.hashAll([
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesOrderBy<TRes> {
  factory CopyWith_Input_DataCheckOverridesOrderBy(
    Input_DataCheckOverridesOrderBy instance,
    TRes Function(Input_DataCheckOverridesOrderBy) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesOrderBy;

  factory CopyWith_Input_DataCheckOverridesOrderBy.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesOrderBy;

  TRes call({
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? updatedBy,
  });
}

class _CopyWithImpl_Input_DataCheckOverridesOrderBy<TRes>
    implements CopyWith_Input_DataCheckOverridesOrderBy<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesOrderBy(this._instance, this._then);

  final Input_DataCheckOverridesOrderBy _instance;

  final TRes Function(Input_DataCheckOverridesOrderBy) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? updatedBy = _undefined,
  }) => _then(
    Input_DataCheckOverridesOrderBy._({
      ..._instance._$data,
      if (familyId != _undefined) 'familyId': (familyId as Enum_OrderBy?),
      if (isComplete != _undefined) 'isComplete': (isComplete as Enum_OrderBy?),
      if (updatedBy != _undefined) 'updatedBy': (updatedBy as Enum_OrderBy?),
    }),
  );
}

class _CopyWithStubImpl_Input_DataCheckOverridesOrderBy<TRes>
    implements CopyWith_Input_DataCheckOverridesOrderBy<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesOrderBy(this._res);

  TRes _res;

  call({
    Enum_OrderBy? familyId,
    Enum_OrderBy? isComplete,
    Enum_OrderBy? updatedBy,
  }) => _res;
}

class Input_DataCheckOverridesPkColumnsInput {
  factory Input_DataCheckOverridesPkColumnsInput({
    required UuidValue familyId,
  }) => Input_DataCheckOverridesPkColumnsInput._({r'familyId': familyId});

  Input_DataCheckOverridesPkColumnsInput._(this._$data);

  factory Input_DataCheckOverridesPkColumnsInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = stringToUuid(l$familyId);
    return Input_DataCheckOverridesPkColumnsInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue get familyId => (_$data['familyId'] as UuidValue);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = uuidToString(l$familyId);
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesPkColumnsInput<
    Input_DataCheckOverridesPkColumnsInput
  >
  get copyWith =>
      CopyWith_Input_DataCheckOverridesPkColumnsInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesPkColumnsInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    return Object.hashAll([l$familyId]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesPkColumnsInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesPkColumnsInput(
    Input_DataCheckOverridesPkColumnsInput instance,
    TRes Function(Input_DataCheckOverridesPkColumnsInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesPkColumnsInput;

  factory CopyWith_Input_DataCheckOverridesPkColumnsInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesPkColumnsInput;

  TRes call({UuidValue? familyId});
}

class _CopyWithImpl_Input_DataCheckOverridesPkColumnsInput<TRes>
    implements CopyWith_Input_DataCheckOverridesPkColumnsInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesPkColumnsInput(
    this._instance,
    this._then,
  );

  final Input_DataCheckOverridesPkColumnsInput _instance;

  final TRes Function(Input_DataCheckOverridesPkColumnsInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? familyId = _undefined}) => _then(
    Input_DataCheckOverridesPkColumnsInput._({
      ..._instance._$data,
      if (familyId != _undefined && familyId != null)
        'familyId': (familyId as UuidValue),
    }),
  );
}

class _CopyWithStubImpl_Input_DataCheckOverridesPkColumnsInput<TRes>
    implements CopyWith_Input_DataCheckOverridesPkColumnsInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesPkColumnsInput(this._res);

  TRes _res;

  call({UuidValue? familyId}) => _res;
}

class Input_DataCheckOverridesSetInput {
  factory Input_DataCheckOverridesSetInput({bool? isComplete}) =>
      Input_DataCheckOverridesSetInput._({
        if (isComplete != null) r'isComplete': isComplete,
      });

  Input_DataCheckOverridesSetInput._(this._$data);

  factory Input_DataCheckOverridesSetInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = (l$isComplete as bool?);
    }
    return Input_DataCheckOverridesSetInput._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isComplete => (_$data['isComplete'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete;
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesSetInput<Input_DataCheckOverridesSetInput>
  get copyWith => CopyWith_Input_DataCheckOverridesSetInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesSetInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$isComplete = isComplete;
    return Object.hashAll([
      _$data.containsKey('isComplete') ? l$isComplete : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesSetInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesSetInput(
    Input_DataCheckOverridesSetInput instance,
    TRes Function(Input_DataCheckOverridesSetInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesSetInput;

  factory CopyWith_Input_DataCheckOverridesSetInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesSetInput;

  TRes call({bool? isComplete});
}

class _CopyWithImpl_Input_DataCheckOverridesSetInput<TRes>
    implements CopyWith_Input_DataCheckOverridesSetInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesSetInput(this._instance, this._then);

  final Input_DataCheckOverridesSetInput _instance;

  final TRes Function(Input_DataCheckOverridesSetInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? isComplete = _undefined}) => _then(
    Input_DataCheckOverridesSetInput._({
      ..._instance._$data,
      if (isComplete != _undefined) 'isComplete': (isComplete as bool?),
    }),
  );
}

class _CopyWithStubImpl_Input_DataCheckOverridesSetInput<TRes>
    implements CopyWith_Input_DataCheckOverridesSetInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesSetInput(this._res);

  TRes _res;

  call({bool? isComplete}) => _res;
}

class Input_DataCheckOverridesStreamCursorInput {
  factory Input_DataCheckOverridesStreamCursorInput({
    required Input_DataCheckOverridesStreamCursorValueInput initialValue,
    Enum_CursorOrdering? ordering,
  }) => Input_DataCheckOverridesStreamCursorInput._({
    r'initialValue': initialValue,
    if (ordering != null) r'ordering': ordering,
  });

  Input_DataCheckOverridesStreamCursorInput._(this._$data);

  factory Input_DataCheckOverridesStreamCursorInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$initialValue = data['initialValue'];
    result$data['initialValue'] =
        Input_DataCheckOverridesStreamCursorValueInput.fromJson(
          (l$initialValue as Map<String, dynamic>),
        );
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson_Enum_CursorOrdering((l$ordering as String));
    }
    return Input_DataCheckOverridesStreamCursorInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DataCheckOverridesStreamCursorValueInput get initialValue =>
      (_$data['initialValue']
          as Input_DataCheckOverridesStreamCursorValueInput);

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

  CopyWith_Input_DataCheckOverridesStreamCursorInput<
    Input_DataCheckOverridesStreamCursorInput
  >
  get copyWith =>
      CopyWith_Input_DataCheckOverridesStreamCursorInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesStreamCursorInput ||
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

abstract class CopyWith_Input_DataCheckOverridesStreamCursorInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesStreamCursorInput(
    Input_DataCheckOverridesStreamCursorInput instance,
    TRes Function(Input_DataCheckOverridesStreamCursorInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesStreamCursorInput;

  factory CopyWith_Input_DataCheckOverridesStreamCursorInput.stub(TRes res) =
      _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorInput;

  TRes call({
    Input_DataCheckOverridesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  });
  CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes>
  get initialValue;
}

class _CopyWithImpl_Input_DataCheckOverridesStreamCursorInput<TRes>
    implements CopyWith_Input_DataCheckOverridesStreamCursorInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesStreamCursorInput(
    this._instance,
    this._then,
  );

  final Input_DataCheckOverridesStreamCursorInput _instance;

  final TRes Function(Input_DataCheckOverridesStreamCursorInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initialValue = _undefined,
    Object? ordering = _undefined,
  }) => _then(
    Input_DataCheckOverridesStreamCursorInput._({
      ..._instance._$data,
      if (initialValue != _undefined && initialValue != null)
        'initialValue':
            (initialValue as Input_DataCheckOverridesStreamCursorValueInput),
      if (ordering != _undefined)
        'ordering': (ordering as Enum_CursorOrdering?),
    }),
  );

  CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes>
  get initialValue {
    final local$initialValue = _instance.initialValue;
    return CopyWith_Input_DataCheckOverridesStreamCursorValueInput(
      local$initialValue,
      (e) => call(initialValue: e),
    );
  }
}

class _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorInput<TRes>
    implements CopyWith_Input_DataCheckOverridesStreamCursorInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorInput(this._res);

  TRes _res;

  call({
    Input_DataCheckOverridesStreamCursorValueInput? initialValue,
    Enum_CursorOrdering? ordering,
  }) => _res;

  CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes>
  get initialValue =>
      CopyWith_Input_DataCheckOverridesStreamCursorValueInput.stub(_res);
}

class Input_DataCheckOverridesStreamCursorValueInput {
  factory Input_DataCheckOverridesStreamCursorValueInput({
    UuidValue? familyId,
    bool? isComplete,
    UuidValue? updatedBy,
  }) => Input_DataCheckOverridesStreamCursorValueInput._({
    if (familyId != null) r'familyId': familyId,
    if (isComplete != null) r'isComplete': isComplete,
    if (updatedBy != null) r'updatedBy': updatedBy,
  });

  Input_DataCheckOverridesStreamCursorValueInput._(this._$data);

  factory Input_DataCheckOverridesStreamCursorValueInput.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('familyId')) {
      final l$familyId = data['familyId'];
      result$data['familyId'] = l$familyId == null
          ? null
          : stringToUuid(l$familyId);
    }
    if (data.containsKey('isComplete')) {
      final l$isComplete = data['isComplete'];
      result$data['isComplete'] = (l$isComplete as bool?);
    }
    if (data.containsKey('updatedBy')) {
      final l$updatedBy = data['updatedBy'];
      result$data['updatedBy'] = l$updatedBy == null
          ? null
          : stringToUuid(l$updatedBy);
    }
    return Input_DataCheckOverridesStreamCursorValueInput._(result$data);
  }

  Map<String, dynamic> _$data;

  UuidValue? get familyId => (_$data['familyId'] as UuidValue?);

  bool? get isComplete => (_$data['isComplete'] as bool?);

  UuidValue? get updatedBy => (_$data['updatedBy'] as UuidValue?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('familyId')) {
      final l$familyId = familyId;
      result$data['familyId'] = l$familyId == null
          ? null
          : uuidToString(l$familyId);
    }
    if (_$data.containsKey('isComplete')) {
      final l$isComplete = isComplete;
      result$data['isComplete'] = l$isComplete;
    }
    if (_$data.containsKey('updatedBy')) {
      final l$updatedBy = updatedBy;
      result$data['updatedBy'] = l$updatedBy == null
          ? null
          : uuidToString(l$updatedBy);
    }
    return result$data;
  }

  CopyWith_Input_DataCheckOverridesStreamCursorValueInput<
    Input_DataCheckOverridesStreamCursorValueInput
  >
  get copyWith =>
      CopyWith_Input_DataCheckOverridesStreamCursorValueInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesStreamCursorValueInput ||
        runtimeType != other.runtimeType) {
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
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (_$data.containsKey('isComplete') !=
        other._$data.containsKey('isComplete')) {
      return false;
    }
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$updatedBy = updatedBy;
    final lOther$updatedBy = other.updatedBy;
    if (_$data.containsKey('updatedBy') !=
        other._$data.containsKey('updatedBy')) {
      return false;
    }
    if (l$updatedBy != lOther$updatedBy) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$isComplete = isComplete;
    final l$updatedBy = updatedBy;
    return Object.hashAll([
      _$data.containsKey('familyId') ? l$familyId : const {},
      _$data.containsKey('isComplete') ? l$isComplete : const {},
      _$data.containsKey('updatedBy') ? l$updatedBy : const {},
    ]);
  }
}

abstract class CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes> {
  factory CopyWith_Input_DataCheckOverridesStreamCursorValueInput(
    Input_DataCheckOverridesStreamCursorValueInput instance,
    TRes Function(Input_DataCheckOverridesStreamCursorValueInput) then,
  ) = _CopyWithImpl_Input_DataCheckOverridesStreamCursorValueInput;

  factory CopyWith_Input_DataCheckOverridesStreamCursorValueInput.stub(
    TRes res,
  ) = _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorValueInput;

  TRes call({UuidValue? familyId, bool? isComplete, UuidValue? updatedBy});
}

class _CopyWithImpl_Input_DataCheckOverridesStreamCursorValueInput<TRes>
    implements CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes> {
  _CopyWithImpl_Input_DataCheckOverridesStreamCursorValueInput(
    this._instance,
    this._then,
  );

  final Input_DataCheckOverridesStreamCursorValueInput _instance;

  final TRes Function(Input_DataCheckOverridesStreamCursorValueInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? familyId = _undefined,
    Object? isComplete = _undefined,
    Object? updatedBy = _undefined,
  }) => _then(
    Input_DataCheckOverridesStreamCursorValueInput._({
      ..._instance._$data,
      if (familyId != _undefined) 'familyId': (familyId as UuidValue?),
      if (isComplete != _undefined) 'isComplete': (isComplete as bool?),
      if (updatedBy != _undefined) 'updatedBy': (updatedBy as UuidValue?),
    }),
  );
}

class _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorValueInput<TRes>
    implements CopyWith_Input_DataCheckOverridesStreamCursorValueInput<TRes> {
  _CopyWithStubImpl_Input_DataCheckOverridesStreamCursorValueInput(this._res);

  TRes _res;

  call({UuidValue? familyId, bool? isComplete, UuidValue? updatedBy}) => _res;
}

class Input_DataCheckOverridesUpdates {
  factory Input_DataCheckOverridesUpdates({
    Input_DataCheckOverridesSetInput? $_set,
    required Input_DataCheckOverridesBoolExp where,
  }) => Input_DataCheckOverridesUpdates._({
    if ($_set != null) r'_set': $_set,
    r'where': where,
  });

  Input_DataCheckOverridesUpdates._(this._$data);

  factory Input_DataCheckOverridesUpdates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input_DataCheckOverridesSetInput.fromJson(
              (l$$_set as Map<String, dynamic>),
            );
    }
    final l$where = data['where'];
    result$data['where'] = Input_DataCheckOverridesBoolExp.fromJson(
      (l$where as Map<String, dynamic>),
    );
    return Input_DataCheckOverridesUpdates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input_DataCheckOverridesSetInput? get $_set =>
      (_$data['_set'] as Input_DataCheckOverridesSetInput?);

  Input_DataCheckOverridesBoolExp get where =>
      (_$data['where'] as Input_DataCheckOverridesBoolExp);

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

  CopyWith_Input_DataCheckOverridesUpdates<Input_DataCheckOverridesUpdates>
  get copyWith => CopyWith_Input_DataCheckOverridesUpdates(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input_DataCheckOverridesUpdates ||
        runtimeType != other.runtimeType) {
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
