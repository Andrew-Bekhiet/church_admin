// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hobby.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Hobby {

 String get id; String get name; Color? get color;
/// Create a copy of Hobby
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HobbyCopyWith<Hobby> get copyWith => _$HobbyCopyWithImpl<Hobby>(this as Hobby, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Hobby&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color);

@override
String toString() {
  return 'Hobby(id: $id, name: $name, color: $color)';
}


}

/// @nodoc
abstract mixin class $HobbyCopyWith<$Res>  {
  factory $HobbyCopyWith(Hobby value, $Res Function(Hobby) _then) = _$HobbyCopyWithImpl;
@useResult
$Res call({
 String id, String name, Color? color
});




}
/// @nodoc
class _$HobbyCopyWithImpl<$Res>
    implements $HobbyCopyWith<$Res> {
  _$HobbyCopyWithImpl(this._self, this._then);

  final Hobby _self;
  final $Res Function(Hobby) _then;

/// Create a copy of Hobby
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? color = freezed,}) {
  return _then(Hobby(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}

}



// dart format on
