// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'college.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

College _$CollegeFromJson(Map<String, dynamic> json) {
  return _College.fromJson(json);
}

/// @nodoc
mixin _$College {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get universityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollegeCopyWith<College> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollegeCopyWith<$Res> {
  factory $CollegeCopyWith(College value, $Res Function(College) then) =
      _$CollegeCopyWithImpl<$Res, College>;
  @useResult
  $Res call({String id, String name, String? universityId});
}

/// @nodoc
class _$CollegeCopyWithImpl<$Res, $Val extends College>
    implements $CollegeCopyWith<$Res> {
  _$CollegeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? universityId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      universityId: freezed == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollegeImplCopyWith<$Res> implements $CollegeCopyWith<$Res> {
  factory _$$CollegeImplCopyWith(
          _$CollegeImpl value, $Res Function(_$CollegeImpl) then) =
      __$$CollegeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? universityId});
}

/// @nodoc
class __$$CollegeImplCopyWithImpl<$Res>
    extends _$CollegeCopyWithImpl<$Res, _$CollegeImpl>
    implements _$$CollegeImplCopyWith<$Res> {
  __$$CollegeImplCopyWithImpl(
      _$CollegeImpl _value, $Res Function(_$CollegeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? universityId = freezed,
  }) {
    return _then(_$CollegeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      universityId: freezed == universityId
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollegeImpl extends _College {
  _$CollegeImpl({required this.id, required this.name, this.universityId})
      : super._();

  factory _$CollegeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollegeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? universityId;

  @override
  String toString() {
    return 'College(id: $id, name: $name, universityId: $universityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollegeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.universityId, universityId) ||
                other.universityId == universityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, universityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollegeImplCopyWith<_$CollegeImpl> get copyWith =>
      __$$CollegeImplCopyWithImpl<_$CollegeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollegeImplToJson(
      this,
    );
  }
}

abstract class _College extends College {
  factory _College(
      {required final String id,
      required final String name,
      final String? universityId}) = _$CollegeImpl;
  _College._() : super._();

  factory _College.fromJson(Map<String, dynamic> json) = _$CollegeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get universityId;
  @override
  @JsonKey(ignore: true)
  _$$CollegeImplCopyWith<_$CollegeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
