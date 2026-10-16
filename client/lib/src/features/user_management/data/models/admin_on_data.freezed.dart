// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_on_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminOnData {
  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdminOnDataCopyWith<AdminOnData> get copyWith =>
      _$AdminOnDataCopyWithImpl<AdminOnData>(this as AdminOnData, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as AdminOnData;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdminOnData &&
            (identical(other.permissionId, _this.permissionId) ||
                other.permissionId == _this.permissionId) &&
            (identical(other.area, _this.area) || other.area == _this.area) &&
            (identical(other.areaAllowExport, _this.areaAllowExport) ||
                other.areaAllowExport == _this.areaAllowExport) &&
            (identical(other.areaAllowEdit, _this.areaAllowEdit) ||
                other.areaAllowEdit == _this.areaAllowEdit) &&
            (identical(other.areaAdminOnUsers, _this.areaAdminOnUsers) ||
                other.areaAdminOnUsers == _this.areaAdminOnUsers) &&
            (identical(other.service, _this.service) ||
                other.service == _this.service) &&
            (identical(
                  other.serviceStudyYearData,
                  _this.serviceStudyYearData,
                ) ||
                other.serviceStudyYearData == _this.serviceStudyYearData) &&
            (identical(other.serviceGender, _this.serviceGender) ||
                other.serviceGender == _this.serviceGender) &&
            (identical(other.serviceAllowExport, _this.serviceAllowExport) ||
                other.serviceAllowExport == _this.serviceAllowExport) &&
            (identical(other.serviceAllowEdit, _this.serviceAllowEdit) ||
                other.serviceAllowEdit == _this.serviceAllowEdit) &&
            (identical(
                  other.serviceAllowRecordAttendance,
                  _this.serviceAllowRecordAttendance,
                ) ||
                other.serviceAllowRecordAttendance ==
                    _this.serviceAllowRecordAttendance) &&
            (identical(
                  other.serviceAllowRecordServantsAttendance,
                  _this.serviceAllowRecordServantsAttendance,
                ) ||
                other.serviceAllowRecordServantsAttendance ==
                    _this.serviceAllowRecordServantsAttendance) &&
            (identical(other.serviceAdminOnUsers, _this.serviceAdminOnUsers) ||
                other.serviceAdminOnUsers == _this.serviceAdminOnUsers) &&
            (identical(
                  other.serviceWriteRelatedFamilies,
                  _this.serviceWriteRelatedFamilies,
                ) ||
                other.serviceWriteRelatedFamilies ==
                    _this.serviceWriteRelatedFamilies) &&
            const DeepCollectionEquality().equals(
              other.classes,
              _this.classes,
            ) &&
            (identical(other.group, _this.group) ||
                other.group == _this.group) &&
            (identical(other.groupAllowExport, _this.groupAllowExport) ||
                other.groupAllowExport == _this.groupAllowExport) &&
            (identical(other.groupAllowEdit, _this.groupAllowEdit) ||
                other.groupAllowEdit == _this.groupAllowEdit) &&
            (identical(
                  other.groupAllowRecordAttendance,
                  _this.groupAllowRecordAttendance,
                ) ||
                other.groupAllowRecordAttendance ==
                    _this.groupAllowRecordAttendance) &&
            (identical(
                  other.groupAllowRecordServantsAttendance,
                  _this.groupAllowRecordServantsAttendance,
                ) ||
                other.groupAllowRecordServantsAttendance ==
                    _this.groupAllowRecordServantsAttendance) &&
            (identical(other.groupAdminOnUsers, _this.groupAdminOnUsers) ||
                other.groupAdminOnUsers == _this.groupAdminOnUsers) &&
            (identical(
                  other.groupWriteRelatedFamilies,
                  _this.groupWriteRelatedFamilies,
                ) ||
                other.groupWriteRelatedFamilies ==
                    _this.groupWriteRelatedFamilies) &&
            (identical(other.user, _this.user) || other.user == _this.user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as AdminOnData;
    return Object.hashAll([
      runtimeType,
      _this.permissionId,
      _this.area,
      _this.areaAllowExport,
      _this.areaAllowEdit,
      _this.areaAdminOnUsers,
      _this.service,
      _this.serviceStudyYearData,
      _this.serviceGender,
      _this.serviceAllowExport,
      _this.serviceAllowEdit,
      _this.serviceAllowRecordAttendance,
      _this.serviceAllowRecordServantsAttendance,
      _this.serviceAdminOnUsers,
      _this.serviceWriteRelatedFamilies,
      const DeepCollectionEquality().hash(_this.classes),
      _this.group,
      _this.groupAllowExport,
      _this.groupAllowEdit,
      _this.groupAllowRecordAttendance,
      _this.groupAllowRecordServantsAttendance,
      _this.groupAdminOnUsers,
      _this.groupWriteRelatedFamilies,
      _this.user,
    ]);
  }

  @override
  String toString() {
    final _this = this as AdminOnData;
    return 'AdminOnData(permissionId: ${_this.permissionId}, area: ${_this.area}, areaAllowExport: ${_this.areaAllowExport}, areaAllowEdit: ${_this.areaAllowEdit}, areaAdminOnUsers: ${_this.areaAdminOnUsers}, service: ${_this.service}, serviceStudyYearData: ${_this.serviceStudyYearData}, serviceGender: ${_this.serviceGender}, serviceAllowExport: ${_this.serviceAllowExport}, serviceAllowEdit: ${_this.serviceAllowEdit}, serviceAllowRecordAttendance: ${_this.serviceAllowRecordAttendance}, serviceAllowRecordServantsAttendance: ${_this.serviceAllowRecordServantsAttendance}, serviceAdminOnUsers: ${_this.serviceAdminOnUsers}, serviceWriteRelatedFamilies: ${_this.serviceWriteRelatedFamilies}, classes: ${_this.classes}, group: ${_this.group}, groupAllowExport: ${_this.groupAllowExport}, groupAllowEdit: ${_this.groupAllowEdit}, groupAllowRecordAttendance: ${_this.groupAllowRecordAttendance}, groupAllowRecordServantsAttendance: ${_this.groupAllowRecordServantsAttendance}, groupAdminOnUsers: ${_this.groupAdminOnUsers}, groupWriteRelatedFamilies: ${_this.groupWriteRelatedFamilies}, user: ${_this.user})';
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
    List<Class> classes,
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
    Group? group,
    bool? groupAllowExport,
    bool? groupAllowEdit,
    bool? groupAllowRecordAttendance,
    bool? groupAllowRecordServantsAttendance,
    bool? groupAdminOnUsers,
    bool? groupWriteRelatedFamilies,
    User? user,
  });

  $AreaCopyWith<$Res>? get area;
  $ServiceCopyWith<$Res>? get service;
  $StudyYearCopyWith<$Res>? get serviceStudyYearData;
  $GroupCopyWith<$Res>? get group;
  $UserCopyWith<$Res>? get user;
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
    Object? classes = null,
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
        classes: null == classes
            ? _self.classes
            : classes // ignore: cast_nullable_to_non_nullable
                  as List<Class>,
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

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get area {
    if (_self.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_self.area!, (value) {
      return _then(_self.copyWith(area: value));
    });
  }

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_self.service!, (value) {
      return _then(_self.copyWith(service: value));
    });
  }

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get serviceStudyYearData {
    if (_self.serviceStudyYearData == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_self.serviceStudyYearData!, (value) {
      return _then(_self.copyWith(serviceStudyYearData: value));
    });
  }

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res>? get group {
    if (_self.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_self.group!, (value) {
      return _then(_self.copyWith(group: value));
    });
  }

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_self.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.user!, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}
