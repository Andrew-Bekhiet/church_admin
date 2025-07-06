// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
  String? get notes;
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  List<Family>? get children;
  List<Family>? get parents;
  LastRecordedByInfo? get lastEdit;

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
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality().equals(other.parents, parents) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      notes,
      color,
      photoUpdatedAt,
      blurhash,
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(parents),
      lastEdit);

  @override
  String toString() {
    return 'Family(id: $id, name: $name, address: $address, notes: $notes, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, children: $children, parents: $parents, lastEdit: $lastEdit)';
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
      String? notes,
      Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      List<Family>? children,
      List<Family>? parents,
      LastRecordedByInfo? lastEdit});
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
    Object? notes = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? children = freezed,
    Object? parents = freezed,
    Object? lastEdit = freezed,
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
    ));
  }
}

// dart format on
