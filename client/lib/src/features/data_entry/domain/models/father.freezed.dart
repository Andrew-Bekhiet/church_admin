// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'father.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Father {
  /// Create a copy of Father
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FatherCopyWith<Father> get copyWith =>
      _$FatherCopyWithImpl<Father>(this as Father, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as Father;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Father &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.churchId, _this.churchId) ||
                other.churchId == _this.churchId) &&
            (identical(other.isHidden, _this.isHidden) ||
                other.isHidden == _this.isHidden));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Father;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.churchId,
      _this.isHidden,
    );
  }

  @override
  String toString() {
    final _this = this as Father;
    return 'Father(id: ${_this.id}, name: ${_this.name}, churchId: ${_this.churchId}, isHidden: ${_this.isHidden})';
  }
}

/// @nodoc
abstract mixin class $FatherCopyWith<$Res> {
  factory $FatherCopyWith(Father value, $Res Function(Father) _then) =
      _$FatherCopyWithImpl;
  @useResult
  $Res call({String id, String name, bool isHidden, String? churchId});
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
    Object? isHidden = null,
    Object? churchId = freezed,
  }) {
    return _then(
      Father(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        isHidden: null == isHidden
            ? _self.isHidden
            : isHidden // ignore: cast_nullable_to_non_nullable
                  as bool,
        churchId: freezed == churchId
            ? _self.churchId
            : churchId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
