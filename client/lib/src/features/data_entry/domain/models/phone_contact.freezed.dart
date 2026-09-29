// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhoneContact {
  String get id;
  String? get personId;
  String? get familyId;
  String? get personTypeId;
  PersonType? get personType;
  String? get label;
  String get phone;
  bool get isMainPhone;

  /// Create a copy of PhoneContact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhoneContactCopyWith<PhoneContact> get copyWith =>
      _$PhoneContactCopyWithImpl<PhoneContact>(
        this as PhoneContact,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneContact &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.personId, personId) ||
                other.personId == personId) &&
            (identical(other.familyId, familyId) ||
                other.familyId == familyId) &&
            (identical(other.personTypeId, personTypeId) ||
                other.personTypeId == personTypeId) &&
            (identical(other.personType, personType) ||
                other.personType == personType) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isMainPhone, isMainPhone) ||
                other.isMainPhone == isMainPhone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    personId,
    familyId,
    personTypeId,
    personType,
    label,
    phone,
    isMainPhone,
  );

  @override
  String toString() {
    return 'PhoneContact(id: $id, personId: $personId, familyId: $familyId, personTypeId: $personTypeId, personType: $personType, label: $label, phone: $phone, isMainPhone: $isMainPhone)';
  }
}

/// @nodoc
abstract mixin class $PhoneContactCopyWith<$Res> {
  factory $PhoneContactCopyWith(
    PhoneContact value,
    $Res Function(PhoneContact) _then,
  ) = _$PhoneContactCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String phone,
    bool isMainPhone,
    String? personId,
    String? familyId,
    String? personTypeId,
    PersonType? personType,
    String? label,
  });
}

/// @nodoc
class _$PhoneContactCopyWithImpl<$Res> implements $PhoneContactCopyWith<$Res> {
  _$PhoneContactCopyWithImpl(this._self, this._then);

  final PhoneContact _self;
  final $Res Function(PhoneContact) _then;

  /// Create a copy of PhoneContact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? isMainPhone = null,
    Object? personId = freezed,
    Object? familyId = freezed,
    Object? personTypeId = freezed,
    Object? personType = freezed,
    Object? label = freezed,
  }) {
    return _then(
      PhoneContact(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _self.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        isMainPhone: null == isMainPhone
            ? _self.isMainPhone
            : isMainPhone // ignore: cast_nullable_to_non_nullable
                  as bool,
        personId: freezed == personId
            ? _self.personId
            : personId // ignore: cast_nullable_to_non_nullable
                  as String?,
        familyId: freezed == familyId
            ? _self.familyId
            : familyId // ignore: cast_nullable_to_non_nullable
                  as String?,
        personTypeId: freezed == personTypeId
            ? _self.personTypeId
            : personTypeId // ignore: cast_nullable_to_non_nullable
                  as String?,
        personType: freezed == personType
            ? _self.personType
            : personType // ignore: cast_nullable_to_non_nullable
                  as PersonType?,
        label: freezed == label
            ? _self.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
