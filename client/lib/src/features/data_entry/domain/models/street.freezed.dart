// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'street.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Street {
  String get id;
  String get name;
  @JsonKey(fromJson: lineFromJson, toJson: lineToJson)
  Line? get line;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  @JsonKey(fromJson: streetsAreasFromJson, toJson: streetsAreasToJson)
  List<Area>? get areas;
  LastRecordedByInfo? get lastVisit;
  LastRecordedByInfo? get lastEdit;

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StreetCopyWith<Street> get copyWith =>
      _$StreetCopyWithImpl<Street>(this as Street, _$identity);

  /// Serializes this Street to a JSON map.
  Map<String, dynamic> toJson();

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
                other.lastEdit == lastEdit));
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
      lastEdit);

  @override
  String toString() {
    return 'Street(id: $id, name: $name, line: $line, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, areas: $areas, lastVisit: $lastVisit, lastEdit: $lastEdit)';
  }
}

/// @nodoc
abstract mixin class $StreetCopyWith<$Res> {
  factory $StreetCopyWith(Street value, $Res Function(Street) _then) =
      _$StreetCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: lineFromJson, toJson: lineToJson) Line? line,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      @JsonKey(fromJson: streetsAreasFromJson, toJson: streetsAreasToJson)
      List<Area>? areas,
      LastRecordedByInfo? lastVisit,
      LastRecordedByInfo? lastEdit});

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
    Object? line = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? areas = freezed,
    Object? lastVisit = freezed,
    Object? lastEdit = freezed,
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
    ));
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

/// @nodoc
@JsonSerializable()
class _Street extends Street {
  _Street(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: lineFromJson, toJson: lineToJson) this.line,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt,
      this.blurhash,
      @JsonKey(fromJson: streetsAreasFromJson, toJson: streetsAreasToJson)
      final List<Area>? areas,
      this.lastVisit,
      this.lastEdit})
      : _areas = areas,
        super._();
  factory _Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: lineFromJson, toJson: lineToJson)
  final Line? line;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  final List<Area>? _areas;
  @override
  @JsonKey(fromJson: streetsAreasFromJson, toJson: streetsAreasToJson)
  List<Area>? get areas {
    final value = _areas;
    if (value == null) return null;
    if (_areas is EqualUnmodifiableListView) return _areas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LastRecordedByInfo? lastVisit;
  @override
  final LastRecordedByInfo? lastEdit;

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StreetCopyWith<_Street> get copyWith =>
      __$StreetCopyWithImpl<_Street>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StreetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Street &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.line, line) || other.line == line) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            const DeepCollectionEquality().equals(other._areas, _areas) &&
            (identical(other.lastVisit, lastVisit) ||
                other.lastVisit == lastVisit) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit));
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
      const DeepCollectionEquality().hash(_areas),
      lastVisit,
      lastEdit);

  @override
  String toString() {
    return 'Street(id: $id, name: $name, line: $line, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, areas: $areas, lastVisit: $lastVisit, lastEdit: $lastEdit)';
  }
}

/// @nodoc
abstract mixin class _$StreetCopyWith<$Res> implements $StreetCopyWith<$Res> {
  factory _$StreetCopyWith(_Street value, $Res Function(_Street) _then) =
      __$StreetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: lineFromJson, toJson: lineToJson) Line? line,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      @JsonKey(fromJson: streetsAreasFromJson, toJson: streetsAreasToJson)
      List<Area>? areas,
      LastRecordedByInfo? lastVisit,
      LastRecordedByInfo? lastEdit});

  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastVisit;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
}

/// @nodoc
class __$StreetCopyWithImpl<$Res> implements _$StreetCopyWith<$Res> {
  __$StreetCopyWithImpl(this._self, this._then);

  final _Street _self;
  final $Res Function(_Street) _then;

  /// Create a copy of Street
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
  }) {
    return _then(_Street(
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
          ? _self._areas
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
    ));
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

// dart format on
