// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$District {
  String get id;
  String get name;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DistrictCopyWith<District> get copyWith =>
      _$DistrictCopyWithImpl<District>(this as District, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is District &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'District(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $DistrictCopyWith<$Res> {
  factory $DistrictCopyWith(District value, $Res Function(District) _then) =
      _$DistrictCopyWithImpl;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$DistrictCopyWithImpl<$Res> implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(this._self, this._then);

  final District _self;
  final $Res Function(District) _then;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      District(
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
