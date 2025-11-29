// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Group {

 String get id; String get name; Color? get color; DateTime? get photoUpdatedAt; String? get blurhash; String? get serviceId; Service? get service; DateTimeRange? get validity; LastRecordedByInfo? get lastEdit; List<User>? get adminUsers; HistoryAggregateData? get attendanceHistoryAggregate; HistoryAggregateData? get attendanceDaysConstraintsAggregate; bool get userCanEdit;
/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupCopyWith<Group> get copyWith => _$GroupCopyWithImpl<Group>(this as Group, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Group&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.photoUpdatedAt, photoUpdatedAt) || other.photoUpdatedAt == photoUpdatedAt)&&(identical(other.blurhash, blurhash) || other.blurhash == blurhash)&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.service, service) || other.service == service)&&(identical(other.validity, validity) || other.validity == validity)&&(identical(other.lastEdit, lastEdit) || other.lastEdit == lastEdit)&&const DeepCollectionEquality().equals(other.adminUsers, adminUsers)&&(identical(other.attendanceHistoryAggregate, attendanceHistoryAggregate) || other.attendanceHistoryAggregate == attendanceHistoryAggregate)&&(identical(other.attendanceDaysConstraintsAggregate, attendanceDaysConstraintsAggregate) || other.attendanceDaysConstraintsAggregate == attendanceDaysConstraintsAggregate)&&(identical(other.userCanEdit, userCanEdit) || other.userCanEdit == userCanEdit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,color,photoUpdatedAt,blurhash,serviceId,service,validity,lastEdit,const DeepCollectionEquality().hash(adminUsers),attendanceHistoryAggregate,attendanceDaysConstraintsAggregate,userCanEdit);

@override
String toString() {
  return 'Group(id: $id, name: $name, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, serviceId: $serviceId, service: $service, validity: $validity, lastEdit: $lastEdit, adminUsers: $adminUsers, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate, userCanEdit: $userCanEdit)';
}


}

/// @nodoc
abstract mixin class $GroupCopyWith<$Res>  {
  factory $GroupCopyWith(Group value, $Res Function(Group) _then) = _$GroupCopyWithImpl;
@useResult
$Res call({
 String id, String name, Color? color, DateTime? photoUpdatedAt, String? blurhash, String? serviceId, Service? service, DateTimeRange<DateTime>? validity, LastRecordedByInfo? lastEdit, List<User>? adminUsers, HistoryAggregateData? attendanceHistoryAggregate, HistoryAggregateData? attendanceDaysConstraintsAggregate, bool userCanEdit
});




}
/// @nodoc
class _$GroupCopyWithImpl<$Res>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._self, this._then);

  final Group _self;
  final $Res Function(Group) _then;

/// Create a copy of Group
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? color = freezed,Object? photoUpdatedAt = freezed,Object? blurhash = freezed,Object? serviceId = freezed,Object? service = freezed,Object? validity = freezed,Object? lastEdit = freezed,Object? adminUsers = freezed,Object? attendanceHistoryAggregate = freezed,Object? attendanceDaysConstraintsAggregate = freezed,Object? userCanEdit = null,}) {
  return _then(Group(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,photoUpdatedAt: freezed == photoUpdatedAt ? _self.photoUpdatedAt : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,blurhash: freezed == blurhash ? _self.blurhash : blurhash // ignore: cast_nullable_to_non_nullable
as String?,serviceId: freezed == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Service?,validity: freezed == validity ? _self.validity : validity // ignore: cast_nullable_to_non_nullable
as DateTimeRange<DateTime>?,lastEdit: freezed == lastEdit ? _self.lastEdit : lastEdit // ignore: cast_nullable_to_non_nullable
as LastRecordedByInfo?,adminUsers: freezed == adminUsers ? _self.adminUsers : adminUsers // ignore: cast_nullable_to_non_nullable
as List<User>?,attendanceHistoryAggregate: freezed == attendanceHistoryAggregate ? _self.attendanceHistoryAggregate : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
as HistoryAggregateData?,attendanceDaysConstraintsAggregate: freezed == attendanceDaysConstraintsAggregate ? _self.attendanceDaysConstraintsAggregate : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
as HistoryAggregateData?,userCanEdit: null == userCanEdit ? _self.userCanEdit : userCanEdit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



// dart format on
