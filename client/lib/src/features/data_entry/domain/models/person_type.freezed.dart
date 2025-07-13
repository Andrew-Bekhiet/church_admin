// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonType {
  String get id;
  String get name;
  int get order;
  bool get isFamilyAdmin;
  bool get isHidden;

  /// Create a copy of PersonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonTypeCopyWith<PersonType> get copyWith =>
      _$PersonTypeCopyWithImpl<PersonType>(this as PersonType, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.isFamilyAdmin, isFamilyAdmin) ||
                other.isFamilyAdmin == isFamilyAdmin) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, order, isFamilyAdmin, isHidden);

  @override
  String toString() {
    return 'PersonType(id: $id, name: $name, order: $order, isFamilyAdmin: $isFamilyAdmin, isHidden: $isHidden)';
  }
}

/// @nodoc
abstract mixin class $PersonTypeCopyWith<$Res> {
  factory $PersonTypeCopyWith(
          PersonType value, $Res Function(PersonType) _then) =
      _$PersonTypeCopyWithImpl;
  @useResult
  $Res call(
      {String id, String name, int order, bool isFamilyAdmin, bool isHidden});
}

/// @nodoc
class _$PersonTypeCopyWithImpl<$Res> implements $PersonTypeCopyWith<$Res> {
  _$PersonTypeCopyWithImpl(this._self, this._then);

  final PersonType _self;
  final $Res Function(PersonType) _then;

  /// Create a copy of PersonType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? order = null,
    Object? isFamilyAdmin = null,
    Object? isHidden = null,
  }) {
    return _then(PersonType(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      isFamilyAdmin: null == isFamilyAdmin
          ? _self.isFamilyAdmin
          : isFamilyAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
