// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_on_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdminOnData _$AdminOnDataFromJson(Map<String, dynamic> json) {
  return _AdminOnData.fromJson(json);
}

/// @nodoc
mixin _$AdminOnData {
  String get permissionId => throw _privateConstructorUsedError;
  Area? get area => throw _privateConstructorUsedError;
  bool? get areaAllowEdit => throw _privateConstructorUsedError;
  bool? get areaAdminOnUsers => throw _privateConstructorUsedError;
  Service? get service => throw _privateConstructorUsedError;
  StudyYear? get serviceStudyYearData => throw _privateConstructorUsedError;
  bool? get serviceGender => throw _privateConstructorUsedError;
  bool? get serviceAllowEdit => throw _privateConstructorUsedError;
  bool? get serviceAdminOnUsers => throw _privateConstructorUsedError;
  List<Class> get classes => throw _privateConstructorUsedError;
  Group? get group => throw _privateConstructorUsedError;
  bool? get groupAllowEdit => throw _privateConstructorUsedError;
  bool? get groupAdminOnUsers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminOnDataCopyWith<AdminOnData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminOnDataCopyWith<$Res> {
  factory $AdminOnDataCopyWith(
          AdminOnData value, $Res Function(AdminOnData) then) =
      _$AdminOnDataCopyWithImpl<$Res, AdminOnData>;
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
class _$AdminOnDataCopyWithImpl<$Res, $Val extends AdminOnData>
    implements $AdminOnDataCopyWith<$Res> {
  _$AdminOnDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      permissionId: null == permissionId
          ? _value.permissionId
          : permissionId // ignore: cast_nullable_to_non_nullable
              as String,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      areaAllowEdit: freezed == areaAllowEdit
          ? _value.areaAllowEdit
          : areaAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      areaAdminOnUsers: freezed == areaAdminOnUsers
          ? _value.areaAdminOnUsers
          : areaAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      serviceStudyYearData: freezed == serviceStudyYearData
          ? _value.serviceStudyYearData
          : serviceStudyYearData // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      serviceGender: freezed == serviceGender
          ? _value.serviceGender
          : serviceGender // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAllowEdit: freezed == serviceAllowEdit
          ? _value.serviceAllowEdit
          : serviceAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAdminOnUsers: freezed == serviceAdminOnUsers
          ? _value.serviceAdminOnUsers
          : serviceAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      classes: null == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      groupAllowEdit: freezed == groupAllowEdit
          ? _value.groupAllowEdit
          : groupAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupAdminOnUsers: freezed == groupAdminOnUsers
          ? _value.groupAdminOnUsers
          : groupAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get serviceStudyYearData {
    if (_value.serviceStudyYearData == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.serviceStudyYearData!, (value) {
      return _then(_value.copyWith(serviceStudyYearData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminOnDataImplCopyWith<$Res>
    implements $AdminOnDataCopyWith<$Res> {
  factory _$$AdminOnDataImplCopyWith(
          _$AdminOnDataImpl value, $Res Function(_$AdminOnDataImpl) then) =
      __$$AdminOnDataImplCopyWithImpl<$Res>;
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
class __$$AdminOnDataImplCopyWithImpl<$Res>
    extends _$AdminOnDataCopyWithImpl<$Res, _$AdminOnDataImpl>
    implements _$$AdminOnDataImplCopyWith<$Res> {
  __$$AdminOnDataImplCopyWithImpl(
      _$AdminOnDataImpl _value, $Res Function(_$AdminOnDataImpl) _then)
      : super(_value, _then);

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
    return _then(_$AdminOnDataImpl(
      permissionId: null == permissionId
          ? _value.permissionId
          : permissionId // ignore: cast_nullable_to_non_nullable
              as String,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      areaAllowEdit: freezed == areaAllowEdit
          ? _value.areaAllowEdit
          : areaAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      areaAdminOnUsers: freezed == areaAdminOnUsers
          ? _value.areaAdminOnUsers
          : areaAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      serviceStudyYearData: freezed == serviceStudyYearData
          ? _value.serviceStudyYearData
          : serviceStudyYearData // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      serviceGender: freezed == serviceGender
          ? _value.serviceGender
          : serviceGender // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAllowEdit: freezed == serviceAllowEdit
          ? _value.serviceAllowEdit
          : serviceAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAdminOnUsers: freezed == serviceAdminOnUsers
          ? _value.serviceAdminOnUsers
          : serviceAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      classes: null == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      groupAllowEdit: freezed == groupAllowEdit
          ? _value.groupAllowEdit
          : groupAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupAdminOnUsers: freezed == groupAdminOnUsers
          ? _value.groupAdminOnUsers
          : groupAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminOnDataImpl extends _AdminOnData {
  const _$AdminOnDataImpl(
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

  factory _$AdminOnDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminOnDataImplFromJson(json);

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

  @override
  String toString() {
    return 'AdminOnData(permissionId: $permissionId, area: $area, areaAllowEdit: $areaAllowEdit, areaAdminOnUsers: $areaAdminOnUsers, service: $service, serviceStudyYearData: $serviceStudyYearData, serviceGender: $serviceGender, serviceAllowEdit: $serviceAllowEdit, serviceAdminOnUsers: $serviceAdminOnUsers, classes: $classes, group: $group, groupAllowEdit: $groupAllowEdit, groupAdminOnUsers: $groupAdminOnUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminOnDataImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminOnDataImplCopyWith<_$AdminOnDataImpl> get copyWith =>
      __$$AdminOnDataImplCopyWithImpl<_$AdminOnDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminOnDataImplToJson(
      this,
    );
  }
}

abstract class _AdminOnData extends AdminOnData {
  const factory _AdminOnData(
      {required final String permissionId,
      final Area? area,
      final bool? areaAllowEdit,
      final bool? areaAdminOnUsers,
      final Service? service,
      final StudyYear? serviceStudyYearData,
      final bool? serviceGender,
      final bool? serviceAllowEdit,
      final bool? serviceAdminOnUsers,
      final List<Class> classes,
      final Group? group,
      final bool? groupAllowEdit,
      final bool? groupAdminOnUsers}) = _$AdminOnDataImpl;
  const _AdminOnData._() : super._();

  factory _AdminOnData.fromJson(Map<String, dynamic> json) =
      _$AdminOnDataImpl.fromJson;

  @override
  String get permissionId;
  @override
  Area? get area;
  @override
  bool? get areaAllowEdit;
  @override
  bool? get areaAdminOnUsers;
  @override
  Service? get service;
  @override
  StudyYear? get serviceStudyYearData;
  @override
  bool? get serviceGender;
  @override
  bool? get serviceAllowEdit;
  @override
  bool? get serviceAdminOnUsers;
  @override
  List<Class> get classes;
  @override
  Group? get group;
  @override
  bool? get groupAllowEdit;
  @override
  bool? get groupAdminOnUsers;
  @override
  @JsonKey(ignore: true)
  _$$AdminOnDataImplCopyWith<_$AdminOnDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
