// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Street {
  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreetCopyWith<Street> get copyWith =>
      _$StreetCopyWithImpl<Street>(this as Street, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Street;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Street &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.line, _this.line) || other.line == _this.line) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color) &&
            (identical(other.photoUpdatedAt, _this.photoUpdatedAt) ||
                other.photoUpdatedAt == _this.photoUpdatedAt) &&
            (identical(other.blurhash, _this.blurhash) ||
                other.blurhash == _this.blurhash) &&
            const DeepCollectionEquality().equals(other.areas, _this.areas) &&
            (identical(other.lastVisit, _this.lastVisit) ||
                other.lastVisit == _this.lastVisit) &&
            (identical(other.lastEdit, _this.lastEdit) ||
                other.lastEdit == _this.lastEdit) &&
            (identical(other.userCanEdit, _this.userCanEdit) ||
                other.userCanEdit == _this.userCanEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Street;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.line,
      _this.color,
      _this.photoUpdatedAt,
      _this.blurhash,
      const DeepCollectionEquality().hash(_this.areas),
      _this.lastVisit,
      _this.lastEdit,
      _this.userCanEdit,
    );
  }

  @override
  String toString() {
    final _this = this as Street;
    return 'Street(id: ${_this.id}, name: ${_this.name}, line: ${_this.line}, color: ${_this.color}, photoUpdatedAt: ${_this.photoUpdatedAt}, blurhash: ${_this.blurhash}, areas: ${_this.areas}, lastVisit: ${_this.lastVisit}, lastEdit: ${_this.lastEdit}, userCanEdit: ${_this.userCanEdit})';
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
    bool userCanEdit,
    Line? line,
    Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    List<Area>? areas,
    LastRecordedByInfo? lastVisit,
    LastRecordedByInfo? lastEdit,
  });

  $LastRecordedByInfoCopyWith<$Res>? get lastVisit;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
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
    Object? userCanEdit = null,
    Object? line = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? areas = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
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
        userCanEdit: null == userCanEdit
            ? _self.userCanEdit
            : userCanEdit // ignore: cast_nullable_to_non_nullable
                  as bool,
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
      ),
    );
  }

  /// Create a copy of Street
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

  /// Create a copy of Street
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
