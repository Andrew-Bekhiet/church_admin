// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonState {
  /// Create a copy of PersonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PersonStateCopyWith<PersonState> get copyWith =>
      _$PersonStateCopyWithImpl<PersonState>(this as PersonState, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as PersonState;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PersonState &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.color, _this.color) ||
                other.color == _this.color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PersonState;
    return Object.hash(runtimeType, _this.id, _this.name, _this.color);
  }

  @override
  String toString() {
    final _this = this as PersonState;
    return 'PersonState(id: ${_this.id}, name: ${_this.name}, color: ${_this.color})';
  }
}

/// @nodoc
abstract mixin class $PersonStateCopyWith<$Res> {
  factory $PersonStateCopyWith(
    PersonState value,
    $Res Function(PersonState) _then,
  ) = _$PersonStateCopyWithImpl;
  @useResult
  $Res call({String id, String name, Color? color});
}

/// @nodoc
class _$PersonStateCopyWithImpl<$Res> implements $PersonStateCopyWith<$Res> {
  _$PersonStateCopyWithImpl(this._self, this._then);

  final PersonState _self;
  final $Res Function(PersonState) _then;

  /// Create a copy of PersonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? color = freezed}) {
    return _then(
      PersonState(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        color: freezed == color
            ? _self.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color?,
      ),
    );
  }
}
