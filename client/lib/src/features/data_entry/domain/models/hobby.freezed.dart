// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hobby.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Hobby {
  /// Create a copy of Hobby
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HobbyCopyWith<Hobby> get copyWith =>
      _$HobbyCopyWithImpl<Hobby>(this as Hobby, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Hobby;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Hobby &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Hobby;
    return Object.hash(runtimeType, _this.id, _this.name, _this.color);
  }

  @override
  String toString() {
    final _this = this as Hobby;
    return 'Hobby(id: ${_this.id}, name: ${_this.name}, color: ${_this.color})';
  }
}

/// @nodoc
abstract mixin class $HobbyCopyWith<$Res> {
  factory $HobbyCopyWith(Hobby value, $Res Function(Hobby) _then) =
      _$HobbyCopyWithImpl;
  @useResult
  $Res call({String id, String name, Color? color});
}

/// @nodoc
class _$HobbyCopyWithImpl<$Res> implements $HobbyCopyWith<$Res> {
  _$HobbyCopyWithImpl(this._self, this._then);

  final Hobby _self;
  final $Res Function(Hobby) _then;

  /// Create a copy of Hobby
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? color = freezed}) {
    return _then(
      Hobby(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        color: freezed == color
            ? _self.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color?,
      ),
    );
  }
}
