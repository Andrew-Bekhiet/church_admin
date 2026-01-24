// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$School {
  String get id;
  String get name;

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SchoolCopyWith<School> get copyWith =>
      _$SchoolCopyWithImpl<School>(this as School, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is School &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'School(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $SchoolCopyWith<$Res> {
  factory $SchoolCopyWith(School value, $Res Function(School) _then) =
      _$SchoolCopyWithImpl;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$SchoolCopyWithImpl<$Res> implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._self, this._then);

  final School _self;
  final $Res Function(School) _then;

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      School(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
