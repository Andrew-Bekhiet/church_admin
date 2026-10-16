// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Family {
  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FamilyCopyWith<Family> get copyWith =>
      _$FamilyCopyWithImpl<Family>(this as Family, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Family;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Family &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.address, _this.address) ||
                other.address == _this.address) &&
            (identical(other.status, _this.status) ||
                other.status == _this.status) &&
            (identical(other.marriageDate, _this.marriageDate) ||
                other.marriageDate == _this.marriageDate) &&
            (identical(other.deceasedSpouseName, _this.deceasedSpouseName) ||
                other.deceasedSpouseName == _this.deceasedSpouseName) &&
            (identical(other.church, _this.church) ||
                other.church == _this.church) &&
            (identical(other.notes, _this.notes) ||
                other.notes == _this.notes) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color) &&
            (identical(other.photoUpdatedAt, _this.photoUpdatedAt) ||
                other.photoUpdatedAt == _this.photoUpdatedAt) &&
            (identical(other.blurhash, _this.blurhash) ||
                other.blurhash == _this.blurhash) &&
            const DeepCollectionEquality().equals(
              other.children,
              _this.children,
            ) &&
            const DeepCollectionEquality().equals(
              other.parents,
              _this.parents,
            ) &&
            const DeepCollectionEquality().equals(
              other.contacts,
              _this.contacts,
            ) &&
            (identical(other.lastEdit, _this.lastEdit) ||
                other.lastEdit == _this.lastEdit) &&
            (identical(other.lastVisit, _this.lastVisit) ||
                other.lastVisit == _this.lastVisit) &&
            (identical(other.lastFatherVisit, _this.lastFatherVisit) ||
                other.lastFatherVisit == _this.lastFatherVisit) &&
            (identical(other.dataCheck, _this.dataCheck) ||
                other.dataCheck == _this.dataCheck) &&
            (identical(other.userCanEdit, _this.userCanEdit) ||
                other.userCanEdit == _this.userCanEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Family;
    return Object.hashAll([
      runtimeType,
      _this.id,
      _this.name,
      _this.address,
      _this.status,
      _this.marriageDate,
      _this.deceasedSpouseName,
      _this.church,
      _this.notes,
      _this.color,
      _this.photoUpdatedAt,
      _this.blurhash,
      const DeepCollectionEquality().hash(_this.children),
      const DeepCollectionEquality().hash(_this.parents),
      const DeepCollectionEquality().hash(_this.contacts),
      _this.lastEdit,
      _this.lastVisit,
      _this.lastFatherVisit,
      _this.dataCheck,
      _this.userCanEdit,
    ]);
  }

  @override
  String toString() {
    final _this = this as Family;
    return 'Family(id: ${_this.id}, name: ${_this.name}, address: ${_this.address}, status: ${_this.status}, marriageDate: ${_this.marriageDate}, deceasedSpouseName: ${_this.deceasedSpouseName}, church: ${_this.church}, notes: ${_this.notes}, color: ${_this.color}, photoUpdatedAt: ${_this.photoUpdatedAt}, blurhash: ${_this.blurhash}, children: ${_this.children}, parents: ${_this.parents}, contacts: ${_this.contacts}, lastEdit: ${_this.lastEdit}, lastVisit: ${_this.lastVisit}, lastFatherVisit: ${_this.lastFatherVisit}, dataCheck: ${_this.dataCheck}, userCanEdit: ${_this.userCanEdit})';
  }
}

/// @nodoc
abstract mixin class $FamilyCopyWith<$Res> {
  factory $FamilyCopyWith(Family value, $Res Function(Family) _then) =
      _$FamilyCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    MartialStatus status,
    bool userCanEdit,
    List<FamilyPhoneContact> contacts,
    Address? address,
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
    DataCheck? dataCheck,
  });

  $AddressCopyWith<$Res>? get address;
  $ChurchCopyWith<$Res>? get church;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit;
  $LastRecordedByInfoCopyWith<$Res>? get lastFatherVisit;
  $DataCheckCopyWith<$Res>? get dataCheck;
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
    Object? status = null,
    Object? userCanEdit = null,
    Object? contacts = null,
    Object? address = freezed,
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
    Object? dataCheck = freezed,
  }) {
    return _then(
      Family(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MartialStatus,
        userCanEdit: null == userCanEdit
            ? _self.userCanEdit
            : userCanEdit // ignore: cast_nullable_to_non_nullable
                  as bool,
        contacts: null == contacts
            ? _self.contacts
            : contacts // ignore: cast_nullable_to_non_nullable
                  as List<FamilyPhoneContact>,
        address: freezed == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as Address?,
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
        dataCheck: freezed == dataCheck
            ? _self.dataCheck
            : dataCheck // ignore: cast_nullable_to_non_nullable
                  as DataCheck?,
      ),
    );
  }

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_self.address!, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChurchCopyWith<$Res>? get church {
    if (_self.church == null) {
      return null;
    }

    return $ChurchCopyWith<$Res>(_self.church!, (value) {
      return _then(_self.copyWith(church: value));
    });
  }

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_self.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastEdit!, (value) {
      return _then(_self.copyWith(lastEdit: value));
    });
  }

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit {
    if (_self.lastVisit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastVisit!, (value) {
      return _then(_self.copyWith(lastVisit: value));
    });
  }

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastFatherVisit {
    if (_self.lastFatherVisit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_self.lastFatherVisit!, (value) {
      return _then(_self.copyWith(lastFatherVisit: value));
    });
  }

  /// Create a copy of Family
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCheckCopyWith<$Res>? get dataCheck {
    if (_self.dataCheck == null) {
      return null;
    }

    return $DataCheckCopyWith<$Res>(_self.dataCheck!, (value) {
      return _then(_self.copyWith(dataCheck: value));
    });
  }
}
