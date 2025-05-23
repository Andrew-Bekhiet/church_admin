// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_on_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminOnData {
  String get permissionId;
  Area? get area;
  bool? get areaAllowEdit;
  bool? get areaAdminOnUsers;
  Service? get service;
  StudyYear? get serviceStudyYearData;
  bool? get serviceGender;
  bool? get serviceAllowEdit;
  bool? get serviceAdminOnUsers;
  List<Class> get classes;
  Group? get group;
  bool? get groupAllowEdit;
  bool? get groupAdminOnUsers;

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdminOnDataCopyWith<AdminOnData> get copyWith =>
      _$AdminOnDataCopyWithImpl<AdminOnData>(this as AdminOnData, _$identity);

  /// Serializes this AdminOnData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdminOnData &&
            (identical(other.permissionId, permissionId) ||
                other.permissionId == permissionId) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.areaAllowEdit, areaAllowEdit) ||
                other.areaAllowEdit == areaAllowEdit) &&
            (identical(other.areaAdminOnUsers, areaAdminOnUsers) ||
                other.areaAdminOnUsers == areaAdminOnUsers) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.serviceStudyYearData, serviceStudyYearData) ||
                other.serviceStudyYearData == serviceStudyYearData) &&
            (identical(other.serviceGender, serviceGender) ||
                other.serviceGender == serviceGender) &&
            (identical(other.serviceAllowEdit, serviceAllowEdit) ||
                other.serviceAllowEdit == serviceAllowEdit) &&
            (identical(other.serviceAdminOnUsers, serviceAdminOnUsers) ||
                other.serviceAdminOnUsers == serviceAdminOnUsers) &&
            const DeepCollectionEquality().equals(other.classes, classes) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.groupAllowEdit, groupAllowEdit) ||
                other.groupAllowEdit == groupAllowEdit) &&
            (identical(other.groupAdminOnUsers, groupAdminOnUsers) ||
                other.groupAdminOnUsers == groupAdminOnUsers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      permissionId,
      area,
      areaAllowEdit,
      areaAdminOnUsers,
      service,
      serviceStudyYearData,
      serviceGender,
      serviceAllowEdit,
      serviceAdminOnUsers,
      const DeepCollectionEquality().hash(classes),
      group,
      groupAllowEdit,
      groupAdminOnUsers);

  @override
  String toString() {
    return 'AdminOnData(permissionId: $permissionId, area: $area, areaAllowEdit: $areaAllowEdit, areaAdminOnUsers: $areaAdminOnUsers, service: $service, serviceStudyYearData: $serviceStudyYearData, serviceGender: $serviceGender, serviceAllowEdit: $serviceAllowEdit, serviceAdminOnUsers: $serviceAdminOnUsers, classes: $classes, group: $group, groupAllowEdit: $groupAllowEdit, groupAdminOnUsers: $groupAdminOnUsers)';
  }
}

/// @nodoc
abstract mixin class $AdminOnDataCopyWith<$Res> {
  factory $AdminOnDataCopyWith(
          AdminOnData value, $Res Function(AdminOnData) _then) =
      _$AdminOnDataCopyWithImpl;
  @useResult
  $Res call(
      {String permissionId,
      Area? area,
      bool? areaAllowEdit,
      bool? areaAdminOnUsers,
      Service? service,
      StudyYear? serviceStudyYearData,
      bool? serviceGender,
      bool? serviceAllowEdit,
      bool? serviceAdminOnUsers,
      List<Class> classes,
      Group? group,
      bool? groupAllowEdit,
      bool? groupAdminOnUsers});

  $AreaCopyWith<$Res>? get area;
  $ServiceCopyWith<$Res>? get service;
  $StudyYearCopyWith<$Res>? get serviceStudyYearData;
  $GroupCopyWith<$Res>? get group;
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
    Object? areaAllowEdit = freezed,
    Object? areaAdminOnUsers = freezed,
    Object? service = freezed,
    Object? serviceStudyYearData = freezed,
    Object? serviceGender = freezed,
    Object? serviceAllowEdit = freezed,
    Object? serviceAdminOnUsers = freezed,
    Object? classes = null,
    Object? group = freezed,
    Object? groupAllowEdit = freezed,
    Object? groupAdminOnUsers = freezed,
  }) {
    return _then(_self.copyWith(
      permissionId: null == permissionId
          ? _self.permissionId
          : permissionId // ignore: cast_nullable_to_non_nullable
              as String,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
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
      serviceAllowEdit: freezed == serviceAllowEdit
          ? _self.serviceAllowEdit
          : serviceAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAdminOnUsers: freezed == serviceAdminOnUsers
          ? _self.serviceAdminOnUsers
          : serviceAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      classes: null == classes
          ? _self.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>,
      group: freezed == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      groupAllowEdit: freezed == groupAllowEdit
          ? _self.groupAllowEdit
          : groupAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupAdminOnUsers: freezed == groupAdminOnUsers
          ? _self.groupAdminOnUsers
          : groupAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
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
}

/// @nodoc
@JsonSerializable()
class _AdminOnData extends AdminOnData {
  const _AdminOnData(
      {required this.permissionId,
      this.area,
      this.areaAllowEdit,
      this.areaAdminOnUsers,
      this.service,
      this.serviceStudyYearData,
      this.serviceGender,
      this.serviceAllowEdit,
      this.serviceAdminOnUsers,
      final List<Class> classes = const [],
      this.group,
      this.groupAllowEdit,
      this.groupAdminOnUsers})
      : _classes = classes,
        super._();
  factory _AdminOnData.fromJson(Map<String, dynamic> json) =>
      _$AdminOnDataFromJson(json);

  @override
  final String permissionId;
  @override
  final Area? area;
  @override
  final bool? areaAllowEdit;
  @override
  final bool? areaAdminOnUsers;
  @override
  final Service? service;
  @override
  final StudyYear? serviceStudyYearData;
  @override
  final bool? serviceGender;
  @override
  final bool? serviceAllowEdit;
  @override
  final bool? serviceAdminOnUsers;
  final List<Class> _classes;
  @override
  @JsonKey()
  List<Class> get classes {
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classes);
  }

  @override
  final Group? group;
  @override
  final bool? groupAllowEdit;
  @override
  final bool? groupAdminOnUsers;

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdminOnDataCopyWith<_AdminOnData> get copyWith =>
      __$AdminOnDataCopyWithImpl<_AdminOnData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdminOnDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdminOnData &&
            (identical(other.permissionId, permissionId) ||
                other.permissionId == permissionId) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.areaAllowEdit, areaAllowEdit) ||
                other.areaAllowEdit == areaAllowEdit) &&
            (identical(other.areaAdminOnUsers, areaAdminOnUsers) ||
                other.areaAdminOnUsers == areaAdminOnUsers) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.serviceStudyYearData, serviceStudyYearData) ||
                other.serviceStudyYearData == serviceStudyYearData) &&
            (identical(other.serviceGender, serviceGender) ||
                other.serviceGender == serviceGender) &&
            (identical(other.serviceAllowEdit, serviceAllowEdit) ||
                other.serviceAllowEdit == serviceAllowEdit) &&
            (identical(other.serviceAdminOnUsers, serviceAdminOnUsers) ||
                other.serviceAdminOnUsers == serviceAdminOnUsers) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.groupAllowEdit, groupAllowEdit) ||
                other.groupAllowEdit == groupAllowEdit) &&
            (identical(other.groupAdminOnUsers, groupAdminOnUsers) ||
                other.groupAdminOnUsers == groupAdminOnUsers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      permissionId,
      area,
      areaAllowEdit,
      areaAdminOnUsers,
      service,
      serviceStudyYearData,
      serviceGender,
      serviceAllowEdit,
      serviceAdminOnUsers,
      const DeepCollectionEquality().hash(_classes),
      group,
      groupAllowEdit,
      groupAdminOnUsers);

  @override
  String toString() {
    return 'AdminOnData(permissionId: $permissionId, area: $area, areaAllowEdit: $areaAllowEdit, areaAdminOnUsers: $areaAdminOnUsers, service: $service, serviceStudyYearData: $serviceStudyYearData, serviceGender: $serviceGender, serviceAllowEdit: $serviceAllowEdit, serviceAdminOnUsers: $serviceAdminOnUsers, classes: $classes, group: $group, groupAllowEdit: $groupAllowEdit, groupAdminOnUsers: $groupAdminOnUsers)';
  }
}

/// @nodoc
abstract mixin class _$AdminOnDataCopyWith<$Res>
    implements $AdminOnDataCopyWith<$Res> {
  factory _$AdminOnDataCopyWith(
          _AdminOnData value, $Res Function(_AdminOnData) _then) =
      __$AdminOnDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String permissionId,
      Area? area,
      bool? areaAllowEdit,
      bool? areaAdminOnUsers,
      Service? service,
      StudyYear? serviceStudyYearData,
      bool? serviceGender,
      bool? serviceAllowEdit,
      bool? serviceAdminOnUsers,
      List<Class> classes,
      Group? group,
      bool? groupAllowEdit,
      bool? groupAdminOnUsers});

  @override
  $AreaCopyWith<$Res>? get area;
  @override
  $ServiceCopyWith<$Res>? get service;
  @override
  $StudyYearCopyWith<$Res>? get serviceStudyYearData;
  @override
  $GroupCopyWith<$Res>? get group;
}

/// @nodoc
class __$AdminOnDataCopyWithImpl<$Res> implements _$AdminOnDataCopyWith<$Res> {
  __$AdminOnDataCopyWithImpl(this._self, this._then);

  final _AdminOnData _self;
  final $Res Function(_AdminOnData) _then;

  /// Create a copy of AdminOnData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? permissionId = null,
    Object? area = freezed,
    Object? areaAllowEdit = freezed,
    Object? areaAdminOnUsers = freezed,
    Object? service = freezed,
    Object? serviceStudyYearData = freezed,
    Object? serviceGender = freezed,
    Object? serviceAllowEdit = freezed,
    Object? serviceAdminOnUsers = freezed,
    Object? classes = null,
    Object? group = freezed,
    Object? groupAllowEdit = freezed,
    Object? groupAdminOnUsers = freezed,
  }) {
    return _then(_AdminOnData(
      permissionId: null == permissionId
          ? _self.permissionId
          : permissionId // ignore: cast_nullable_to_non_nullable
              as String,
      area: freezed == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
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
      serviceAllowEdit: freezed == serviceAllowEdit
          ? _self.serviceAllowEdit
          : serviceAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAdminOnUsers: freezed == serviceAdminOnUsers
          ? _self.serviceAdminOnUsers
          : serviceAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      classes: null == classes
          ? _self._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>,
      group: freezed == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      groupAllowEdit: freezed == groupAllowEdit
          ? _self.groupAllowEdit
          : groupAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupAdminOnUsers: freezed == groupAdminOnUsers
          ? _self.groupAdminOnUsers
          : groupAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
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
}

// dart format on
