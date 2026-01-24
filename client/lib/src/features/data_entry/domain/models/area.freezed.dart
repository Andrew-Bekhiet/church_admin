// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Area {
  String get id;
  String get name;
  Polygon? get bounds;
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  LastRecordedByInfo? get lastVisit;
  LastRecordedByInfo? get lastEdit;
  List<User>? get adminUsers;
  bool get userCanEdit;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AreaCopyWith<Area> get copyWith =>
      _$AreaCopyWithImpl<Area>(this as Area, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Area &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            (identical(other.lastVisit, lastVisit) ||
                other.lastVisit == lastVisit) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            const DeepCollectionEquality().equals(
              other.adminUsers,
              adminUsers,
            ) &&
            (identical(other.userCanEdit, userCanEdit) ||
                other.userCanEdit == userCanEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    bounds,
    color,
    photoUpdatedAt,
    blurhash,
    lastVisit,
    lastEdit,
    const DeepCollectionEquality().hash(adminUsers),
    userCanEdit,
  );

  @override
  String toString() {
    return 'Area(id: $id, name: $name, bounds: $bounds, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, lastVisit: $lastVisit, lastEdit: $lastEdit, adminUsers: $adminUsers, userCanEdit: $userCanEdit)';
  }
}

/// @nodoc
abstract mixin class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) _then) =
      _$AreaCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    Polygon? bounds,
    Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    LastRecordedByInfo? lastVisit,
    LastRecordedByInfo? lastEdit,
    List<User>? adminUsers,
    bool userCanEdit,
  });
}

/// @nodoc
class _$AreaCopyWithImpl<$Res> implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._self, this._then);

  final Area _self;
  final $Res Function(Area) _then;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bounds = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
    Object? userCanEdit = null,
  }) {
    return _then(
      Area(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        bounds: freezed == bounds
            ? _self.bounds
            : bounds // ignore: cast_nullable_to_non_nullable
                  as Polygon?,
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
        lastVisit: freezed == lastVisit
            ? _self.lastVisit
            : lastVisit // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        lastEdit: freezed == lastEdit
            ? _self.lastEdit
            : lastEdit // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        adminUsers: freezed == adminUsers
            ? _self.adminUsers
            : adminUsers // ignore: cast_nullable_to_non_nullable
                  as List<User>?,
        userCanEdit: null == userCanEdit
            ? _self.userCanEdit
            : userCanEdit // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}
