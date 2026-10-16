// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shammas_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShammasLevel {
  /// Create a copy of ShammasLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShammasLevelCopyWith<ShammasLevel> get copyWith =>
      _$ShammasLevelCopyWithImpl<ShammasLevel>(
        this as ShammasLevel,
        _$identity,
      );

  @override
  bool operator ==(Object other) {
    final _this = this as ShammasLevel;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShammasLevel &&
            (identical(other.order, _this.order) ||
                other.order == _this.order) &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as ShammasLevel;
    return Object.hash(runtimeType, _this.order, _this.id, _this.name);
  }

  @override
  String toString() {
    final _this = this as ShammasLevel;
    return 'ShammasLevel(order: ${_this.order}, id: ${_this.id}, name: ${_this.name})';
  }
}

/// @nodoc
abstract mixin class $ShammasLevelCopyWith<$Res> {
  factory $ShammasLevelCopyWith(
    ShammasLevel value,
    $Res Function(ShammasLevel) _then,
  ) = _$ShammasLevelCopyWithImpl;
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
  $Res call({Object? order = null, Object? name = null, Object? id = null}) {
    return _then(
      ShammasLevel(
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
      ),
    );
  }
}
