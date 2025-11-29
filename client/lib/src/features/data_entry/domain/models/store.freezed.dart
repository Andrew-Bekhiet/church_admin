// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Store {

 String get id; String get name; Address? get address; Family? get family; String? get familyId; Color? get color; LastRecordedByInfo? get lastEdit; DateTime? get photoUpdatedAt; String? get blurhash; bool get userCanEdit;
/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreCopyWith<Store> get copyWith => _$StoreCopyWithImpl<Store>(this as Store, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Store&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.family, family) || other.family == family)&&(identical(other.familyId, familyId) || other.familyId == familyId)&&(identical(other.color, color) || other.color == color)&&(identical(other.lastEdit, lastEdit) || other.lastEdit == lastEdit)&&(identical(other.photoUpdatedAt, photoUpdatedAt) || other.photoUpdatedAt == photoUpdatedAt)&&(identical(other.blurhash, blurhash) || other.blurhash == blurhash)&&(identical(other.userCanEdit, userCanEdit) || other.userCanEdit == userCanEdit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,family,familyId,color,lastEdit,photoUpdatedAt,blurhash,userCanEdit);

@override
String toString() {
  return 'Store(id: $id, name: $name, address: $address, family: $family, familyId: $familyId, color: $color, lastEdit: $lastEdit, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, userCanEdit: $userCanEdit)';
}


}

/// @nodoc
abstract mixin class $StoreCopyWith<$Res>  {
  factory $StoreCopyWith(Store value, $Res Function(Store) _then) = _$StoreCopyWithImpl;
@useResult
$Res call({
 String id, String name, Address? address, Family? family, String? familyId, Color? color, LastRecordedByInfo? lastEdit, DateTime? photoUpdatedAt, String? blurhash, bool userCanEdit
});




}
/// @nodoc
class _$StoreCopyWithImpl<$Res>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._self, this._then);

  final Store _self;
  final $Res Function(Store) _then;

/// Create a copy of Store
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = freezed,Object? family = freezed,Object? familyId = freezed,Object? color = freezed,Object? lastEdit = freezed,Object? photoUpdatedAt = freezed,Object? blurhash = freezed,Object? userCanEdit = null,}) {
  return _then(Store(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,family: freezed == family ? _self.family : family // ignore: cast_nullable_to_non_nullable
as Family?,familyId: freezed == familyId ? _self.familyId : familyId // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,lastEdit: freezed == lastEdit ? _self.lastEdit : lastEdit // ignore: cast_nullable_to_non_nullable
as LastRecordedByInfo?,photoUpdatedAt: freezed == photoUpdatedAt ? _self.photoUpdatedAt : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,blurhash: freezed == blurhash ? _self.blurhash : blurhash // ignore: cast_nullable_to_non_nullable
as String?,userCanEdit: null == userCanEdit ? _self.userCanEdit : userCanEdit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



// dart format on
