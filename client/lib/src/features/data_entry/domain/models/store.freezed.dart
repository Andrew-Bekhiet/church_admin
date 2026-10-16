// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Store {
  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreCopyWith<Store> get copyWith =>
      _$StoreCopyWithImpl<Store>(this as Store, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Store;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Store &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.address, _this.address) ||
                other.address == _this.address) &&
            (identical(other.family, _this.family) ||
                other.family == _this.family) &&
            (identical(other.familyId, _this.familyId) ||
                other.familyId == _this.familyId) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color) &&
            (identical(other.lastEdit, _this.lastEdit) ||
                other.lastEdit == _this.lastEdit) &&
            (identical(other.photoUpdatedAt, _this.photoUpdatedAt) ||
                other.photoUpdatedAt == _this.photoUpdatedAt) &&
            (identical(other.blurhash, _this.blurhash) ||
                other.blurhash == _this.blurhash) &&
            (identical(other.userCanEdit, _this.userCanEdit) ||
                other.userCanEdit == _this.userCanEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Store;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.address,
      _this.family,
      _this.familyId,
      _this.color,
      _this.lastEdit,
      _this.photoUpdatedAt,
      _this.blurhash,
      _this.userCanEdit,
    );
  }

  @override
  String toString() {
    final _this = this as Store;
    return 'Store(id: ${_this.id}, name: ${_this.name}, address: ${_this.address}, family: ${_this.family}, familyId: ${_this.familyId}, color: ${_this.color}, lastEdit: ${_this.lastEdit}, photoUpdatedAt: ${_this.photoUpdatedAt}, blurhash: ${_this.blurhash}, userCanEdit: ${_this.userCanEdit})';
  }
}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) =
      _$StoreCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    bool userCanEdit,
    Address? address,
    Family? family,
    String? familyId,
    Color? color,
    LastRecordedByInfo? lastEdit,
    DateTime? photoUpdatedAt,
    String? blurhash,
  });

  $AddressCopyWith<$Res>? get address;
  $FamilyCopyWith<$Res>? get family;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class _$StoreCopyWithImpl<$Res> implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._self, this._then);

  final Store _self;
  final $Res Function(Store) _then;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userCanEdit = null,
    Object? address = freezed,
    Object? family = freezed,
    Object? familyId = freezed,
    Object? color = freezed,
    Object? lastEdit = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
  }) {
    return _then(
      Store(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        userCanEdit: null == userCanEdit
            ? _self.userCanEdit
            : userCanEdit // ignore: cast_nullable_to_non_nullable
                  as bool,
        address: freezed == address
            ? _self.address
            : address // ignore: cast_nullable_to_non_nullable
                  as Address?,
        family: freezed == family
            ? _self.family
            : family // ignore: cast_nullable_to_non_nullable
                  as Family?,
        familyId: freezed == familyId
            ? _self.familyId
            : familyId // ignore: cast_nullable_to_non_nullable
                  as String?,
        color: freezed == color
            ? _self.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color?,
        lastEdit: freezed == lastEdit
            ? _self.lastEdit
            : lastEdit // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        photoUpdatedAt: freezed == photoUpdatedAt
            ? _self.photoUpdatedAt
            : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        blurhash: freezed == blurhash
            ? _self.blurhash
            : blurhash // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of Store
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

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FamilyCopyWith<$Res>? get family {
    if (_self.family == null) {
      return null;
    }

    return $FamilyCopyWith<$Res>(_self.family!, (value) {
      return _then(_self.copyWith(family: value));
    });
  }

  /// Create a copy of Store
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
}
