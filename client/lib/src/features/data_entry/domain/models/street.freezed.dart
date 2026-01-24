// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Street {
  String get id;
  String get name;
  Line? get line;
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  List<Area>? get areas;
  LastRecordedByInfo? get lastVisit;
  LastRecordedByInfo? get lastEdit;
  bool get userCanEdit;

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreetCopyWith<Street> get copyWith =>
      _$StreetCopyWithImpl<Street>(this as Street, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Street &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other.areas, areas) &&
            (identical(other.lastVisit, lastVisit) ||
                other.lastVisit == lastVisit) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            (identical(other.userCanEdit, userCanEdit) ||
                other.userCanEdit == userCanEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    line,
    color,
    photoUpdatedAt,
    blurhash,
    const DeepCollectionEquality().hash(areas),
    lastVisit,
    lastEdit,
    userCanEdit,
  );

  @override
  String toString() {
    return 'Street(id: $id, name: $name, line: $line, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, areas: $areas, lastVisit: $lastVisit, lastEdit: $lastEdit, userCanEdit: $userCanEdit)';
  }
}

/// @nodoc
abstract mixin class $StreetCopyWith<$Res> {
  factory $StreetCopyWith(Street value, $Res Function(Street) _then) =
      _$StreetCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    Line? line,
    Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Area>? areas,
    LastRecordedByInfo? lastVisit,
    LastRecordedByInfo? lastEdit,
    bool userCanEdit,
  });
}

/// @nodoc
class _$StreetCopyWithImpl<$Res> implements $StreetCopyWith<$Res> {
  _$StreetCopyWithImpl(this._self, this._then);

  final Street _self;
  final $Res Function(Street) _then;

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? line = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? areas = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
    Object? userCanEdit = null,
  }) {
    return _then(
      Street(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        line: freezed == line
            ? _self.line
            : line // ignore: cast_nullable_to_non_nullable
                  as Line?,
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
        areas: freezed == areas
            ? _self.areas
            : areas // ignore: cast_nullable_to_non_nullable
                  as List<Area>?,
        lastVisit: freezed == lastVisit
            ? _self.lastVisit
            : lastVisit // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        lastEdit: freezed == lastEdit
            ? _self.lastEdit
            : lastEdit // ignore: cast_nullable_to_non_nullable
                  as LastRecordedByInfo?,
        userCanEdit: null == userCanEdit
            ? _self.userCanEdit
            : userCanEdit // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}
