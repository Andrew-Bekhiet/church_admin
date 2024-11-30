// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_year.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyYear _$StudyYearFromJson(Map<String, dynamic> json) {
  return _StudyYear.fromJson(json);
}

/// @nodoc
mixin _$StudyYear {
  int get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StudyYear to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudyYear
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudyYearCopyWith<StudyYear> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyYearCopyWith<$Res> {
  factory $StudyYearCopyWith(StudyYear value, $Res Function(StudyYear) then) =
      _$StudyYearCopyWithImpl<$Res, StudyYear>;
  @useResult
  $Res call({int order, String name});
}

/// @nodoc
class _$StudyYearCopyWithImpl<$Res, $Val extends StudyYear>
    implements $StudyYearCopyWith<$Res> {
  _$StudyYearCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudyYear
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyYearImplCopyWith<$Res>
    implements $StudyYearCopyWith<$Res> {
  factory _$$StudyYearImplCopyWith(
          _$StudyYearImpl value, $Res Function(_$StudyYearImpl) then) =
      __$$StudyYearImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int order, String name});
}

/// @nodoc
class __$$StudyYearImplCopyWithImpl<$Res>
    extends _$StudyYearCopyWithImpl<$Res, _$StudyYearImpl>
    implements _$$StudyYearImplCopyWith<$Res> {
  __$$StudyYearImplCopyWithImpl(
      _$StudyYearImpl _value, $Res Function(_$StudyYearImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyYear
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? name = null,
  }) {
    return _then(_$StudyYearImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyYearImpl extends _StudyYear {
  _$StudyYearImpl({required this.order, required this.name}) : super._();

  factory _$StudyYearImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyYearImplFromJson(json);

  @override
  final int order;
  @override
  final String name;

  @override
  String toString() {
    return 'StudyYear(order: $order, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyYearImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, order, name);

  /// Create a copy of StudyYear
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyYearImplCopyWith<_$StudyYearImpl> get copyWith =>
      __$$StudyYearImplCopyWithImpl<_$StudyYearImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyYearImplToJson(
      this,
    );
  }
}

abstract class _StudyYear extends StudyYear {
  factory _StudyYear({required final int order, required final String name}) =
      _$StudyYearImpl;
  _StudyYear._() : super._();

  factory _StudyYear.fromJson(Map<String, dynamic> json) =
      _$StudyYearImpl.fromJson;

  @override
  int get order;
  @override
  String get name;

  /// Create a copy of StudyYear
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyYearImplCopyWith<_$StudyYearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
