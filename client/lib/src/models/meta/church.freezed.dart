// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'church.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Church _$ChurchFromJson(Map<String, dynamic> json) {
  return _Church.fromJson(json);
}

/// @nodoc
mixin _$Church {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChurchCopyWith<Church> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChurchCopyWith<$Res> {
  factory $ChurchCopyWith(Church value, $Res Function(Church) then) =
      _$ChurchCopyWithImpl<$Res, Church>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ChurchCopyWithImpl<$Res, $Val extends Church>
    implements $ChurchCopyWith<$Res> {
  _$ChurchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChurchCopyWith<$Res> implements $ChurchCopyWith<$Res> {
  factory _$$_ChurchCopyWith(_$_Church value, $Res Function(_$_Church) then) =
      __$$_ChurchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_ChurchCopyWithImpl<$Res>
    extends _$ChurchCopyWithImpl<$Res, _$_Church>
    implements _$$_ChurchCopyWith<$Res> {
  __$$_ChurchCopyWithImpl(_$_Church _value, $Res Function(_$_Church) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_Church(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(createFieldMap: true)
class _$_Church extends _Church {
  _$_Church({required this.id, required this.name}) : super._();

  factory _$_Church.fromJson(Map<String, dynamic> json) =>
      _$$_ChurchFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Church(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Church &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChurchCopyWith<_$_Church> get copyWith =>
      __$$_ChurchCopyWithImpl<_$_Church>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChurchToJson(
      this,
    );
  }
}

abstract class _Church extends Church {
  factory _Church({required final String id, required final String name}) =
      _$_Church;
  _Church._() : super._();

  factory _Church.fromJson(Map<String, dynamic> json) = _$_Church.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ChurchCopyWith<_$_Church> get copyWith =>
      throw _privateConstructorUsedError;
}
