// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'college.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$College {
  /// Create a copy of College
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CollegeCopyWith<College> get copyWith =>
      _$CollegeCopyWithImpl<College>(this as College, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as College;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is College &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.universityId, _this.universityId) ||
                other.universityId == _this.universityId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as College;
    return Object.hash(runtimeType, _this.id, _this.name, _this.universityId);
  }

  @override
  String toString() {
    final _this = this as College;
    return 'College(id: ${_this.id}, name: ${_this.name}, universityId: ${_this.universityId})';
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
