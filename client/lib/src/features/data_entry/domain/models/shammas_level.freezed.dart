// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shammas_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShammasLevel {
  int get order;
  String get name;
  String get id;

  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShammasLevelCopyWith<ShammasLevel> get copyWith =>
      _$ShammasLevelCopyWithImpl<ShammasLevel>(
          this as ShammasLevel, _$identity);

  /// Serializes this ShammasLevel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShammasLevel &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, name, id);

  @override
  String toString() {
    return 'ShammasLevel(order: $order, name: $name, id: $id)';
  }
}

/// @nodoc
abstract mixin class $ShammasLevelCopyWith<$Res> {
  factory $ShammasLevelCopyWith(
          ShammasLevel value, $Res Function(ShammasLevel) _then) =
      _$ShammasLevelCopyWithImpl;
  @useResult
  $Res call({int order, String name, String id});
}

/// @nodoc
class _$ShammasLevelCopyWithImpl<$Res> implements $ShammasLevelCopyWith<$Res> {
  _$ShammasLevelCopyWithImpl(this._self, this._then);

  final ShammasLevel _self;
  final $Res Function(ShammasLevel) _then;

  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ShammasLevel extends ShammasLevel {
  _ShammasLevel({required this.order, required this.name, required this.id})
      : super._();
  factory _ShammasLevel.fromJson(Map<String, dynamic> json) =>
      _$ShammasLevelFromJson(json);

  @override
  final int order;
  @override
  final String name;
  @override
  final String id;

  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShammasLevelCopyWith<_ShammasLevel> get copyWith =>
      __$ShammasLevelCopyWithImpl<_ShammasLevel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShammasLevelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShammasLevel &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, name, id);

  @override
  String toString() {
    return 'ShammasLevel(order: $order, name: $name, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$ShammasLevelCopyWith<$Res>
    implements $ShammasLevelCopyWith<$Res> {
  factory _$ShammasLevelCopyWith(
          _ShammasLevel value, $Res Function(_ShammasLevel) _then) =
      __$ShammasLevelCopyWithImpl;
  @override
  @useResult
  $Res call({int order, String name, String id});
}

/// @nodoc
class __$ShammasLevelCopyWithImpl<$Res>
    implements _$ShammasLevelCopyWith<$Res> {
  __$ShammasLevelCopyWithImpl(this._self, this._then);

  final _ShammasLevel _self;
  final $Res Function(_ShammasLevel) _then;

  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_ShammasLevel(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
