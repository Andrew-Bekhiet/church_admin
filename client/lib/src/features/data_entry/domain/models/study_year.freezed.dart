// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StudyYear {
  int get order;
  String get name;

  /// Create a copy of StudyYear
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<StudyYear> get copyWith =>
      _$StudyYearCopyWithImpl<StudyYear>(this as StudyYear, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StudyYear &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, name);

  @override
  String toString() {
    return 'StudyYear(order: $order, name: $name)';
  }
}

/// @nodoc
abstract mixin class $StudyYearCopyWith<$Res> {
  factory $StudyYearCopyWith(StudyYear value, $Res Function(StudyYear) _then) =
      _$StudyYearCopyWithImpl;
  @useResult
  $Res call({int order, String name});
}

/// @nodoc
class _$StudyYearCopyWithImpl<$Res> implements $StudyYearCopyWith<$Res> {
  _$StudyYearCopyWithImpl(this._self, this._then);

  final StudyYear _self;
  final $Res Function(StudyYear) _then;

  /// Create a copy of StudyYear
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? order = null, Object? name = null}) {
    return _then(
      StudyYear(
        order: null == order
            ? _self.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}
