// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'father.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Father {
  String get id;
  String get name;
  String? get churchId;

  /// Create a copy of Father
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FatherCopyWith<Father> get copyWith =>
      _$FatherCopyWithImpl<Father>(this as Father, _$identity);

  /// Serializes this Father to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Father &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.churchId, churchId) ||
                other.churchId == churchId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, churchId);

  @override
  String toString() {
    return 'Father(id: $id, name: $name, churchId: $churchId)';
  }
}

/// @nodoc
abstract mixin class $FatherCopyWith<$Res> {
  factory $FatherCopyWith(Father value, $Res Function(Father) _then) =
      _$FatherCopyWithImpl;
  @useResult
  $Res call({String id, String name, String? churchId});
}

/// @nodoc
class _$FatherCopyWithImpl<$Res> implements $FatherCopyWith<$Res> {
  _$FatherCopyWithImpl(this._self, this._then);

  final Father _self;
  final $Res Function(Father) _then;

  /// Create a copy of Father
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? churchId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      churchId: freezed == churchId
          ? _self.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Father extends Father {
  _Father({required this.id, required this.name, this.churchId}) : super._();
  factory _Father.fromJson(Map<String, dynamic> json) => _$FatherFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? churchId;

  /// Create a copy of Father
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FatherCopyWith<_Father> get copyWith =>
      __$FatherCopyWithImpl<_Father>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FatherToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Father &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.churchId, churchId) ||
                other.churchId == churchId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, churchId);

  @override
  String toString() {
    return 'Father(id: $id, name: $name, churchId: $churchId)';
  }
}

/// @nodoc
abstract mixin class _$FatherCopyWith<$Res> implements $FatherCopyWith<$Res> {
  factory _$FatherCopyWith(_Father value, $Res Function(_Father) _then) =
      __$FatherCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String? churchId});
}

/// @nodoc
class __$FatherCopyWithImpl<$Res> implements _$FatherCopyWith<$Res> {
  __$FatherCopyWithImpl(this._self, this._then);

  final _Father _self;
  final $Res Function(_Father) _then;

  /// Create a copy of Father
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? churchId = freezed,
  }) {
    return _then(_Father(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      churchId: freezed == churchId
          ? _self.churchId
          : churchId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
