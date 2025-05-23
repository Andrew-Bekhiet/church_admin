// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Store {
  String get id;
  String get name;
  Address? get address;
  Family? get family;
  @JsonKey(name: 'adminFamily')
  String? get familyId;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  LastRecordedByInfo? get lastEdit;
  DateTime? get photoUpdatedAt;
  String? get blurhash;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoreCopyWith<Store> get copyWith =>
      _$StoreCopyWithImpl<Store>(this as Store, _$identity);

  /// Serializes this Store to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Store &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.familyId, familyId) ||
                other.familyId == familyId) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, family,
      familyId, color, lastEdit, photoUpdatedAt, blurhash);

  @override
  String toString() {
    return 'Store(id: $id, name: $name, address: $address, family: $family, familyId: $familyId, color: $color, lastEdit: $lastEdit, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash)';
  }
}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) =
      _$StoreCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      Address? address,
      Family? family,
      @JsonKey(name: 'adminFamily') String? familyId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      LastRecordedByInfo? lastEdit,
      DateTime? photoUpdatedAt,
      String? blurhash});

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
    Object? address = freezed,
    Object? family = freezed,
    Object? familyId = freezed,
    Object? color = freezed,
    Object? lastEdit = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
  }) {
    return _then(_self.copyWith(
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
    ));
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

/// @nodoc
@JsonSerializable()
class _Store extends Store {
  _Store(
      {required this.id,
      required this.name,
      this.address,
      this.family,
      @JsonKey(name: 'adminFamily') this.familyId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.lastEdit,
      this.photoUpdatedAt,
      this.blurhash})
      : super._();
  factory _Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Address? address;
  @override
  final Family? family;
  @override
  @JsonKey(name: 'adminFamily')
  final String? familyId;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final LastRecordedByInfo? lastEdit;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoreCopyWith<_Store> get copyWith =>
      __$StoreCopyWithImpl<_Store>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoreToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Store &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.familyId, familyId) ||
                other.familyId == familyId) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, family,
      familyId, color, lastEdit, photoUpdatedAt, blurhash);

  @override
  String toString() {
    return 'Store(id: $id, name: $name, address: $address, family: $family, familyId: $familyId, color: $color, lastEdit: $lastEdit, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash)';
  }
}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) =
      __$StoreCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Address? address,
      Family? family,
      @JsonKey(name: 'adminFamily') String? familyId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      LastRecordedByInfo? lastEdit,
      DateTime? photoUpdatedAt,
      String? blurhash});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $FamilyCopyWith<$Res>? get family;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class __$StoreCopyWithImpl<$Res> implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(this._self, this._then);

  final _Store _self;
  final $Res Function(_Store) _then;

  /// Create a copy of Store
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = freezed,
    Object? family = freezed,
    Object? familyId = freezed,
    Object? color = freezed,
    Object? lastEdit = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
  }) {
    return _then(_Store(
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
    ));
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

// dart format on
