// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'college.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$College {
  String get id;
  String get name;
  String? get universityId;

  /// Create a copy of College
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CollegeCopyWith<College> get copyWith =>
      _$CollegeCopyWithImpl<College>(this as College, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is College &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.universityId, universityId) ||
                other.universityId == universityId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, universityId);

  @override
  String toString() {
    return 'College(id: $id, name: $name, universityId: $universityId)';
  }
}

/// @nodoc
abstract mixin class $CollegeCopyWith<$Res> {
  factory $CollegeCopyWith(College value, $Res Function(College) _then) =
      _$CollegeCopyWithImpl;
  @useResult
  $Res call({String id, String name, String? universityId});
}

/// @nodoc
class _$CollegeCopyWithImpl<$Res> implements $CollegeCopyWith<$Res> {
  _$CollegeCopyWithImpl(this._self, this._then);

  final College _self;
  final $Res Function(College) _then;

  /// Create a copy of College
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? universityId = freezed,
  }) {
    return _then(
      College(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        universityId: freezed == universityId
            ? _self.universityId
            : universityId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
