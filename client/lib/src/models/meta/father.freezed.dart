// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$FatherCopyWithImpl<$Res, Father>;
  @useResult
  $Res call({String id, String name, String? churchId});
}

/// @nodoc
class _$FatherCopyWithImpl<$Res, $Val extends Father>
    implements $FatherCopyWith<$Res> {
  _$FatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? churchId = freezed,
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
      churchId: freezed == churchId
          ? _value.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FatherImplCopyWith<$Res> implements $FatherCopyWith<$Res> {
  factory _$$FatherImplCopyWith(
          _$FatherImpl value, $Res Function(_$FatherImpl) then) =
      __$$FatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? churchId});
}

/// @nodoc
class __$$FatherImplCopyWithImpl<$Res>
    extends _$FatherCopyWithImpl<$Res, _$FatherImpl>
    implements _$$FatherImplCopyWith<$Res> {
  __$$FatherImplCopyWithImpl(
      _$FatherImpl _value, $Res Function(_$FatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? churchId = freezed,
  }) {
    return _then(_$FatherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      churchId: freezed == churchId
          ? _value.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatherImpl extends _Father {
  _$FatherImpl({required this.id, required this.name, this.churchId})
      : super._();

  factory _$FatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$FatherImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.churchId, churchId) ||
                other.churchId == churchId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, churchId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatherImplCopyWith<_$FatherImpl> get copyWith =>
      __$$FatherImplCopyWithImpl<_$FatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FatherImplToJson(
      this,
    );
  }
}

abstract class _Father extends Father {
  factory _Father(
      {required final String id,
      required final String name,
      final String? churchId}) = _$FatherImpl;
  _Father._() : super._();

  factory _Father.fromJson(Map<String, dynamic> json) = _$FatherImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get churchId;
  @override
  @JsonKey(ignore: true)
  _$$FatherImplCopyWith<_$FatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
