// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$CollegeCopyWithImpl<$Res>;
  $Res call({String id, String name, String? universityId});
}

/// @nodoc
class _$CollegeCopyWithImpl<$Res> implements $CollegeCopyWith<$Res> {
  _$CollegeCopyWithImpl(this._value, this._then);

  final College _value;
  // ignore: unused_field
  final $Res Function(College) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? universityId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CollegeCopyWith<$Res> implements $CollegeCopyWith<$Res> {
  factory _$$_CollegeCopyWith(
          _$_College value, $Res Function(_$_College) then) =
      __$$_CollegeCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String? universityId});
}

/// @nodoc
class __$$_CollegeCopyWithImpl<$Res> extends _$CollegeCopyWithImpl<$Res>
    implements _$$_CollegeCopyWith<$Res> {
  __$$_CollegeCopyWithImpl(_$_College _value, $Res Function(_$_College) _then)
      : super(_value, (v) => _then(v as _$_College));

  @override
  _$_College get _value => super._value as _$_College;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? universityId = freezed,
  }) {
    return _then(_$_College(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      universityId: universityId == freezed
          ? _value.universityId
          : universityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_College extends _College {
  _$_College({required this.id, required this.name, this.universityId})
      : super._();

  factory _$_College.fromJson(Map<String, dynamic> json) =>
      _$$_CollegeFromJson(json);

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
            other is _$_College &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.universityId, universityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(universityId));

  @JsonKey(ignore: true)
  @override
  _$$_CollegeCopyWith<_$_College> get copyWith =>
      __$$_CollegeCopyWithImpl<_$_College>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollegeToJson(
      this,
    );
  }
}

abstract class _College extends College {
  factory _College(
      {required final String id,
      required final String name,
      final String? universityId}) = _$_College;
  _College._() : super._();

  factory _College.fromJson(Map<String, dynamic> json) = _$_College.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get universityId;
  @override
  @JsonKey(ignore: true)
  _$$_CollegeCopyWith<_$_College> get copyWith =>
      throw _privateConstructorUsedError;
}
