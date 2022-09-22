// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qualification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Qualification _$QualificationFromJson(Map<String, dynamic> json) {
  return _Qualification.fromJson(json);
}

/// @nodoc
mixin _$Qualification {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QualificationCopyWith<Qualification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationCopyWith<$Res> {
  factory $QualificationCopyWith(
          Qualification value, $Res Function(Qualification) then) =
      _$QualificationCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$QualificationCopyWithImpl<$Res>
    implements $QualificationCopyWith<$Res> {
  _$QualificationCopyWithImpl(this._value, this._then);

  final Qualification _value;
  // ignore: unused_field
  final $Res Function(Qualification) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_QualificationCopyWith<$Res>
    implements $QualificationCopyWith<$Res> {
  factory _$$_QualificationCopyWith(
          _$_Qualification value, $Res Function(_$_Qualification) then) =
      __$$_QualificationCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$$_QualificationCopyWithImpl<$Res>
    extends _$QualificationCopyWithImpl<$Res>
    implements _$$_QualificationCopyWith<$Res> {
  __$$_QualificationCopyWithImpl(
      _$_Qualification _value, $Res Function(_$_Qualification) _then)
      : super(_value, (v) => _then(v as _$_Qualification));

  @override
  _$_Qualification get _value => super._value as _$_Qualification;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Qualification(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Qualification extends _Qualification {
  _$_Qualification({required this.id, required this.name}) : super._();

  factory _$_Qualification.fromJson(Map<String, dynamic> json) =>
      _$$_QualificationFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Qualification(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Qualification &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_QualificationCopyWith<_$_Qualification> get copyWith =>
      __$$_QualificationCopyWithImpl<_$_Qualification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QualificationToJson(
      this,
    );
  }
}

abstract class _Qualification extends Qualification {
  factory _Qualification(
      {required final String id,
      required final String name}) = _$_Qualification;
  _Qualification._() : super._();

  factory _Qualification.fromJson(Map<String, dynamic> json) =
      _$_Qualification.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_QualificationCopyWith<_$_Qualification> get copyWith =>
      throw _privateConstructorUsedError;
}
