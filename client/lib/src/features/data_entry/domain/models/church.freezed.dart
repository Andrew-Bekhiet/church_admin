// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'church.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Church {
  String get id;
  String get name;

  /// Create a copy of Church
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChurchCopyWith<Church> get copyWith =>
      _$ChurchCopyWithImpl<Church>(this as Church, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Church &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'Church(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ChurchCopyWith<$Res> {
  factory $ChurchCopyWith(Church value, $Res Function(Church) _then) =
      _$ChurchCopyWithImpl;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ChurchCopyWithImpl<$Res> implements $ChurchCopyWith<$Res> {
  _$ChurchCopyWithImpl(this._self, this._then);

  final Church _self;
  final $Res Function(Church) _then;

  /// Create a copy of Church
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(Church(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
