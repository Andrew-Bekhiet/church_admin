// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'father.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Father _$FatherFromJson(Map<String, dynamic> json) {
  return _Father.fromJson(json);
}

/// @nodoc
mixin _$Father {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get churchId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FatherCopyWith<Father> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatherCopyWith<$Res> {
  factory $FatherCopyWith(Father value, $Res Function(Father) then) =
      _$FatherCopyWithImpl<$Res>;
  $Res call({String id, String name, String? churchId});
}

/// @nodoc
class _$FatherCopyWithImpl<$Res> implements $FatherCopyWith<$Res> {
  _$FatherCopyWithImpl(this._value, this._then);

  final Father _value;
  // ignore: unused_field
  final $Res Function(Father) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? churchId = freezed,
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
      churchId: churchId == freezed
          ? _value.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FatherCopyWith<$Res> implements $FatherCopyWith<$Res> {
  factory _$$_FatherCopyWith(_$_Father value, $Res Function(_$_Father) then) =
      __$$_FatherCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String? churchId});
}

/// @nodoc
class __$$_FatherCopyWithImpl<$Res> extends _$FatherCopyWithImpl<$Res>
    implements _$$_FatherCopyWith<$Res> {
  __$$_FatherCopyWithImpl(_$_Father _value, $Res Function(_$_Father) _then)
      : super(_value, (v) => _then(v as _$_Father));

  @override
  _$_Father get _value => super._value as _$_Father;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? churchId = freezed,
  }) {
    return _then(_$_Father(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      churchId: churchId == freezed
          ? _value.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Father implements _Father {
  const _$_Father({required this.id, required this.name, this.churchId});

  factory _$_Father.fromJson(Map<String, dynamic> json) =>
      _$$_FatherFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? churchId;

  @override
  String toString() {
    return 'Father(id: $id, name: $name, churchId: $churchId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Father &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.churchId, churchId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(churchId));

  @JsonKey(ignore: true)
  @override
  _$$_FatherCopyWith<_$_Father> get copyWith =>
      __$$_FatherCopyWithImpl<_$_Father>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FatherToJson(
      this,
    );
  }
}

abstract class _Father implements Father {
  const factory _Father(
      {required final String id,
      required final String name,
      final String? churchId}) = _$_Father;

  factory _Father.fromJson(Map<String, dynamic> json) = _$_Father.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get churchId;
  @override
  @JsonKey(ignore: true)
  _$$_FatherCopyWith<_$_Father> get copyWith =>
      throw _privateConstructorUsedError;
}
