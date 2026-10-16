// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonType {
  /// Create a copy of PersonType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonTypeCopyWith<PersonType> get copyWith =>
      _$PersonTypeCopyWithImpl<PersonType>(this as PersonType, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as PersonType;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonType &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.order, _this.order) ||
                other.order == _this.order) &&
            (identical(other.isFamilyAdmin, _this.isFamilyAdmin) ||
                other.isFamilyAdmin == _this.isFamilyAdmin) &&
            (identical(other.isHidden, _this.isHidden) ||
                other.isHidden == _this.isHidden));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PersonType;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.order,
      _this.isFamilyAdmin,
      _this.isHidden,
    );
  }

  @override
  String toString() {
    final _this = this as PersonType;
    return 'PersonType(id: ${_this.id}, name: ${_this.name}, order: ${_this.order}, isFamilyAdmin: ${_this.isFamilyAdmin}, isHidden: ${_this.isHidden})';
  }
}

/// @nodoc
abstract mixin class $PersonTypeCopyWith<$Res> {
  factory $PersonTypeCopyWith(
    PersonType value,
    $Res Function(PersonType) _then,
  ) = _$PersonTypeCopyWithImpl;
  @useResult
  $Res call({
    String id,
    String name,
    int order,
    bool isFamilyAdmin,
    bool isHidden,
  });
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
    return _then(
      PersonType(
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
      ),
    );
  }
}
