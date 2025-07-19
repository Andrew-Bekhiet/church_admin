// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Family {
  String get id;
  String get name;
  Address? get address;
  MartialStatus get status;
  DateTime? get marriageDate;
  String? get deceasedSpouseName;
  Church? get church;
  String? get notes;
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  List<Family>? get children;
  List<Family>? get parents;
  Json? get familyAdminsPhones;
  LastRecordedByInfo? get lastEdit;
  LastRecordedByInfo? get lastVisit;
  LastRecordedByInfo? get lastFatherVisit;

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FamilyCopyWith<Family> get copyWith =>
      _$FamilyCopyWithImpl<Family>(this as Family, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Family &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.marriageDate, marriageDate) ||
                other.marriageDate == marriageDate) &&
            (identical(other.deceasedSpouseName, deceasedSpouseName) ||
                other.deceasedSpouseName == deceasedSpouseName) &&
            (identical(other.church, church) || other.church == church) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality().equals(other.parents, parents) &&
            const DeepCollectionEquality()
                .equals(other.familyAdminsPhones, familyAdminsPhones) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            (identical(other.lastVisit, lastVisit) ||
                other.lastVisit == lastVisit) &&
            (identical(other.lastFatherVisit, lastFatherVisit) ||
                other.lastFatherVisit == lastFatherVisit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      status,
      marriageDate,
      deceasedSpouseName,
      church,
      notes,
      color,
      photoUpdatedAt,
      blurhash,
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(parents),
      const DeepCollectionEquality().hash(familyAdminsPhones),
      lastEdit,
      lastVisit,
      lastFatherVisit);

  @override
  String toString() {
    return 'Family(id: $id, name: $name, address: $address, status: $status, marriageDate: $marriageDate, deceasedSpouseName: $deceasedSpouseName, church: $church, notes: $notes, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, children: $children, parents: $parents, familyAdminsPhones: $familyAdminsPhones, lastEdit: $lastEdit, lastVisit: $lastVisit, lastFatherVisit: $lastFatherVisit)';
  }
}

/// @nodoc
abstract mixin class $FamilyCopyWith<$Res> {
  factory $FamilyCopyWith(Family value, $Res Function(Family) _then) =
      _$FamilyCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      Address? address,
      MartialStatus status,
      DateTime? marriageDate,
      String? deceasedSpouseName,
      Church? church,
      String? notes,
      Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      List<Family>? children,
      List<Family>? parents,
      LastRecordedByInfo? lastEdit,
      LastRecordedByInfo? lastVisit,
      LastRecordedByInfo? lastFatherVisit,
      Map<String, dynamic>? familyAdminsPhones});
}

/// @nodoc
class _$FamilyCopyWithImpl<$Res> implements $FamilyCopyWith<$Res> {
  _$FamilyCopyWithImpl(this._self, this._then);

  final Family _self;
  final $Res Function(Family) _then;

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? status = null,
    Object? marriageDate = freezed,
    Object? deceasedSpouseName = freezed,
    Object? church = freezed,
    Object? notes = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? children = freezed,
    Object? parents = freezed,
    Object? lastEdit = freezed,
    Object? lastVisit = freezed,
    Object? lastFatherVisit = freezed,
    Object? familyAdminsPhones = freezed,
  }) {
    return _then(Family(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as MartialStatus,
      marriageDate: freezed == marriageDate
          ? _self.marriageDate
          : marriageDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deceasedSpouseName: freezed == deceasedSpouseName
          ? _self.deceasedSpouseName
          : deceasedSpouseName // ignore: cast_nullable_to_non_nullable
              as String?,
      church: freezed == church
          ? _self.church
          : church // ignore: cast_nullable_to_non_nullable
              as Church?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _self.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blurhash: freezed == blurhash
          ? _self.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _self.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      parents: freezed == parents
          ? _self.parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      lastEdit: freezed == lastEdit
          ? _self.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastVisit: freezed == lastVisit
          ? _self.lastVisit
          : lastVisit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      lastFatherVisit: freezed == lastFatherVisit
          ? _self.lastFatherVisit
          : lastFatherVisit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      familyAdminsPhones: freezed == familyAdminsPhones
          ? _self.familyAdminsPhones
          : familyAdminsPhones // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
