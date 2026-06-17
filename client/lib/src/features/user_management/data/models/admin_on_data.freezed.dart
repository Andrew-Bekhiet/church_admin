// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_on_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminOnData {
  String get permissionId;
  Area? get area;
  bool? get areaAllowExport;
  bool? get areaAllowEdit;
  bool? get areaAdminOnUsers;
  Service? get service;
  StudyYear? get serviceStudyYearData;
  bool? get serviceGender;
  bool? get serviceAllowExport;
  bool? get serviceAllowEdit;
  bool? get serviceAllowRecordAttendance;
  bool? get serviceAllowRecordServantsAttendance;
  bool? get serviceAdminOnUsers;
  bool? get serviceWriteRelatedFamilies;
  List<Class> get classes;
  Group? get group;
  bool? get groupAllowExport;
  bool? get groupAllowEdit;
  bool? get groupAllowRecordAttendance;
  bool? get groupAllowRecordServantsAttendance;
  bool? get groupAdminOnUsers;
  bool? get groupWriteRelatedFamilies;
  User? get user;

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdminOnDataCopyWith<AdminOnData> get copyWith =>
      _$AdminOnDataCopyWithImpl<AdminOnData>(this as AdminOnData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdminOnData &&
            (identical(other.permissionId, permissionId) ||
                other.permissionId == permissionId) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.areaAllowExport, areaAllowExport) ||
                other.areaAllowExport == areaAllowExport) &&
            (identical(other.areaAllowEdit, areaAllowEdit) ||
                other.areaAllowEdit == areaAllowEdit) &&
            (identical(other.areaAdminOnUsers, areaAdminOnUsers) ||
                other.areaAdminOnUsers == areaAdminOnUsers) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.serviceStudyYearData, serviceStudyYearData) ||
                other.serviceStudyYearData == serviceStudyYearData) &&
            (identical(other.serviceGender, serviceGender) ||
                other.serviceGender == serviceGender) &&
            (identical(other.serviceAllowExport, serviceAllowExport) ||
                other.serviceAllowExport == serviceAllowExport) &&
            (identical(other.serviceAllowEdit, serviceAllowEdit) ||
                other.serviceAllowEdit == serviceAllowEdit) &&
            (identical(
                  other.serviceAllowRecordAttendance,
                  serviceAllowRecordAttendance,
                ) ||
                other.serviceAllowRecordAttendance ==
                    serviceAllowRecordAttendance) &&
            (identical(
                  other.serviceAllowRecordServantsAttendance,
                  serviceAllowRecordServantsAttendance,
                ) ||
                other.serviceAllowRecordServantsAttendance ==
                    serviceAllowRecordServantsAttendance) &&
            (identical(other.serviceAdminOnUsers, serviceAdminOnUsers) ||
                other.serviceAdminOnUsers == serviceAdminOnUsers) &&
            (identical(
                  other.serviceWriteRelatedFamilies,
                  serviceWriteRelatedFamilies,
                ) ||
                other.serviceWriteRelatedFamilies ==
                    serviceWriteRelatedFamilies) &&
            const DeepCollectionEquality().equals(other.classes, classes) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.groupAllowExport, groupAllowExport) ||
                other.groupAllowExport == groupAllowExport) &&
            (identical(other.groupAllowEdit, groupAllowEdit) ||
                other.groupAllowEdit == groupAllowEdit) &&
            (identical(
                  other.groupAllowRecordAttendance,
                  groupAllowRecordAttendance,
                ) ||
                other.groupAllowRecordAttendance ==
                    groupAllowRecordAttendance) &&
            (identical(
                  other.groupAllowRecordServantsAttendance,
                  groupAllowRecordServantsAttendance,
                ) ||
                other.groupAllowRecordServantsAttendance ==
                    groupAllowRecordServantsAttendance) &&
            (identical(other.groupAdminOnUsers, groupAdminOnUsers) ||
                other.groupAdminOnUsers == groupAdminOnUsers) &&
            (identical(
                  other.groupWriteRelatedFamilies,
                  groupWriteRelatedFamilies,
                ) ||
                other.groupWriteRelatedFamilies == groupWriteRelatedFamilies) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    permissionId,
    area,
    areaAllowExport,
    areaAllowEdit,
    areaAdminOnUsers,
    service,
    serviceStudyYearData,
    serviceGender,
    serviceAllowExport,
    serviceAllowEdit,
    serviceAllowRecordAttendance,
    serviceAllowRecordServantsAttendance,
    serviceAdminOnUsers,
    serviceWriteRelatedFamilies,
    const DeepCollectionEquality().hash(classes),
    group,
    groupAllowExport,
    groupAllowEdit,
    groupAllowRecordAttendance,
    groupAllowRecordServantsAttendance,
    groupAdminOnUsers,
    groupWriteRelatedFamilies,
    user,
  ]);

  @override
  String toString() {
    return 'AdminOnData(permissionId: $permissionId, area: $area, areaAllowExport: $areaAllowExport, areaAllowEdit: $areaAllowEdit, areaAdminOnUsers: $areaAdminOnUsers, service: $service, serviceStudyYearData: $serviceStudyYearData, serviceGender: $serviceGender, serviceAllowExport: $serviceAllowExport, serviceAllowEdit: $serviceAllowEdit, serviceAllowRecordAttendance: $serviceAllowRecordAttendance, serviceAllowRecordServantsAttendance: $serviceAllowRecordServantsAttendance, serviceAdminOnUsers: $serviceAdminOnUsers, serviceWriteRelatedFamilies: $serviceWriteRelatedFamilies, classes: $classes, group: $group, groupAllowExport: $groupAllowExport, groupAllowEdit: $groupAllowEdit, groupAllowRecordAttendance: $groupAllowRecordAttendance, groupAllowRecordServantsAttendance: $groupAllowRecordServantsAttendance, groupAdminOnUsers: $groupAdminOnUsers, groupWriteRelatedFamilies: $groupWriteRelatedFamilies, user: $user)';
  }
}

/// @nodoc
abstract mixin class $AdminOnDataCopyWith<$Res> {
  factory $AdminOnDataCopyWith(
    AdminOnData value,
    $Res Function(AdminOnData) _then,
  ) = _$AdminOnDataCopyWithImpl;
  @useResult
  $Res call({
    String permissionId,
    Area? area,
    bool? areaAllowExport,
    bool? areaAllowEdit,
    bool? areaAdminOnUsers,
    Service? service,
    StudyYear? serviceStudyYearData,
    bool? serviceGender,
    bool? serviceAllowExport,
    bool? serviceAllowEdit,
    bool? serviceAllowRecordAttendance,
    bool? serviceAllowRecordServantsAttendance,
    bool? serviceAdminOnUsers,
    bool? serviceWriteRelatedFamilies,
    List<Class> classes,
    Group? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    User? user,
  });
}

/// @nodoc
class _$AdminOnDataCopyWithImpl<$Res> implements $AdminOnDataCopyWith<$Res> {
  _$AdminOnDataCopyWithImpl(this._self, this._then);

  final AdminOnData _self;
  final $Res Function(AdminOnData) _then;

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionId = null,
    Object? area = freezed,
    Object? areaAllowExport = freezed,
    Object? areaAllowEdit = freezed,
    Object? areaAdminOnUsers = freezed,
    Object? service = freezed,
    Object? serviceStudyYearData = freezed,
    Object? serviceGender = freezed,
    Object? serviceAllowExport = freezed,
    Object? serviceAllowEdit = freezed,
    Object? serviceAllowRecordAttendance = freezed,
    Object? serviceAllowRecordServantsAttendance = freezed,
    Object? serviceAdminOnUsers = freezed,
    Object? serviceWriteRelatedFamilies = freezed,
    Object? classes = null,
    Object? group = freezed,
    Object? groupAllowExport = freezed,
    Object? groupAllowEdit = freezed,
    Object? groupAllowRecordAttendance = freezed,
    Object? groupAllowRecordServantsAttendance = freezed,
    Object? groupAdminOnUsers = freezed,
    Object? groupWriteRelatedFamilies = freezed,
    Object? user = freezed,
  }) {
    return _then(
      AdminOnData(
        permissionId: null == permissionId
            ? _self.permissionId
            : permissionId // ignore: cast_nullable_to_non_nullable
                  as String,
        area: freezed == area
            ? _self.area
            : area // ignore: cast_nullable_to_non_nullable
                  as Area?,
        areaAllowExport: freezed == areaAllowExport
            ? _self.areaAllowExport
            : areaAllowExport // ignore: cast_nullable_to_non_nullable
                  as bool?,
        areaAllowEdit: freezed == areaAllowEdit
            ? _self.areaAllowEdit
            : areaAllowEdit // ignore: cast_nullable_to_non_nullable
                  as bool?,
        areaAdminOnUsers: freezed == areaAdminOnUsers
            ? _self.areaAdminOnUsers
            : areaAdminOnUsers // ignore: cast_nullable_to_non_nullable
                  as bool?,
        service: freezed == service
            ? _self.service
            : service // ignore: cast_nullable_to_non_nullable
                  as Service?,
        serviceStudyYearData: freezed == serviceStudyYearData
            ? _self.serviceStudyYearData
            : serviceStudyYearData // ignore: cast_nullable_to_non_nullable
                  as StudyYear?,
        serviceGender: freezed == serviceGender
            ? _self.serviceGender
            : serviceGender // ignore: cast_nullable_to_non_nullable
                  as bool?,
        serviceAllowExport: freezed == serviceAllowExport
            ? _self.serviceAllowExport
            : serviceAllowExport // ignore: cast_nullable_to_non_nullable
                  as bool?,
        serviceAllowEdit: freezed == serviceAllowEdit
            ? _self.serviceAllowEdit
            : serviceAllowEdit // ignore: cast_nullable_to_non_nullable
                  as bool?,
        serviceAllowRecordAttendance: freezed == serviceAllowRecordAttendance
            ? _self.serviceAllowRecordAttendance
            : serviceAllowRecordAttendance // ignore: cast_nullable_to_non_nullable
                  as bool?,
        serviceAllowRecordServantsAttendance:
            freezed == serviceAllowRecordServantsAttendance
            ? _self.serviceAllowRecordServantsAttendance
            : serviceAllowRecordServantsAttendance // ignore: cast_nullable_to_non_nullable
                  as bool?,
        serviceAdminOnUsers: freezed == serviceAdminOnUsers
            ? _self.serviceAdminOnUsers
            : serviceAdminOnUsers // ignore: cast_nullable_to_non_nullable
                  as bool?,
        serviceWriteRelatedFamilies: freezed == serviceWriteRelatedFamilies
            ? _self.serviceWriteRelatedFamilies
            : serviceWriteRelatedFamilies // ignore: cast_nullable_to_non_nullable
                  as bool?,
        classes: null == classes
            ? _self.classes
            : classes // ignore: cast_nullable_to_non_nullable
                  as List<Class>,
        group: freezed == group
            ? _self.group
            : group // ignore: cast_nullable_to_non_nullable
                  as Group?,
        groupAllowExport: freezed == groupAllowExport
            ? _self.groupAllowExport
            : groupAllowExport // ignore: cast_nullable_to_non_nullable
                  as bool?,
        groupAllowEdit: freezed == groupAllowEdit
            ? _self.groupAllowEdit
            : groupAllowEdit // ignore: cast_nullable_to_non_nullable
                  as bool?,
        groupAllowRecordAttendance: freezed == groupAllowRecordAttendance
            ? _self.groupAllowRecordAttendance
            : groupAllowRecordAttendance // ignore: cast_nullable_to_non_nullable
                  as bool?,
        groupAllowRecordServantsAttendance:
            freezed == groupAllowRecordServantsAttendance
            ? _self.groupAllowRecordServantsAttendance
            : groupAllowRecordServantsAttendance // ignore: cast_nullable_to_non_nullable
                  as bool?,
        groupAdminOnUsers: freezed == groupAdminOnUsers
            ? _self.groupAdminOnUsers
            : groupAdminOnUsers // ignore: cast_nullable_to_non_nullable
                  as bool?,
        groupWriteRelatedFamilies: freezed == groupWriteRelatedFamilies
            ? _self.groupWriteRelatedFamilies
            : groupWriteRelatedFamilies // ignore: cast_nullable_to_non_nullable
                  as bool?,
        user: freezed == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }
}
