// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_on_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$AdminOnDataCopyWithImpl<$Res>;
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
  _$AdminOnDataCopyWithImpl(this._value, this._then);

  final AdminOnData _value;
  // ignore: unused_field
  final $Res Function(AdminOnData) _then;

  @override
  $Res call({
    Object? permissionId = freezed,
    Object? area = freezed,
    Object? areaAllowEdit = freezed,
    Object? areaAdminOnUsers = freezed,
    Object? service = freezed,
    Object? serviceStudyYearData = freezed,
    Object? serviceGender = freezed,
    Object? serviceAllowEdit = freezed,
    Object? serviceAdminOnUsers = freezed,
    Object? classes = freezed,
    Object? group = freezed,
    Object? groupAllowEdit = freezed,
    Object? groupAdminOnUsers = freezed,
  }) {
    return _then(_value.copyWith(
      permissionId: permissionId == freezed
          ? _value.permissionId
          : permissionId // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      areaAllowEdit: areaAllowEdit == freezed
          ? _value.areaAllowEdit
          : areaAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      areaAdminOnUsers: areaAdminOnUsers == freezed
          ? _value.areaAdminOnUsers
          : areaAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      serviceStudyYearData: serviceStudyYearData == freezed
          ? _value.serviceStudyYearData
          : serviceStudyYearData // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      serviceGender: serviceGender == freezed
          ? _value.serviceGender
          : serviceGender // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAllowEdit: serviceAllowEdit == freezed
          ? _value.serviceAllowEdit
          : serviceAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAdminOnUsers: serviceAdminOnUsers == freezed
          ? _value.serviceAdminOnUsers
          : serviceAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      classes: classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      groupAllowEdit: groupAllowEdit == freezed
          ? _value.groupAllowEdit
          : groupAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupAdminOnUsers: groupAdminOnUsers == freezed
          ? _value.groupAdminOnUsers
          : groupAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $AreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $AreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value));
    });
  }

  @override
  $ServiceCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value));
    });
  }

  @override
  $StudyYearCopyWith<$Res>? get serviceStudyYearData {
    if (_value.serviceStudyYearData == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.serviceStudyYearData!, (value) {
      return _then(_value.copyWith(serviceStudyYearData: value));
    });
  }

  @override
  $GroupCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc
abstract class _$$_AdminOnDataCopyWith<$Res>
    implements $AdminOnDataCopyWith<$Res> {
  factory _$$_AdminOnDataCopyWith(
          _$_AdminOnData value, $Res Function(_$_AdminOnData) then) =
      __$$_AdminOnDataCopyWithImpl<$Res>;
  @override
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
class __$$_AdminOnDataCopyWithImpl<$Res> extends _$AdminOnDataCopyWithImpl<$Res>
    implements _$$_AdminOnDataCopyWith<$Res> {
  __$$_AdminOnDataCopyWithImpl(
      _$_AdminOnData _value, $Res Function(_$_AdminOnData) _then)
      : super(_value, (v) => _then(v as _$_AdminOnData));

  @override
  _$_AdminOnData get _value => super._value as _$_AdminOnData;

  @override
  $Res call({
    Object? permissionId = freezed,
    Object? area = freezed,
    Object? areaAllowEdit = freezed,
    Object? areaAdminOnUsers = freezed,
    Object? service = freezed,
    Object? serviceStudyYearData = freezed,
    Object? serviceGender = freezed,
    Object? serviceAllowEdit = freezed,
    Object? serviceAdminOnUsers = freezed,
    Object? classes = freezed,
    Object? group = freezed,
    Object? groupAllowEdit = freezed,
    Object? groupAdminOnUsers = freezed,
  }) {
    return _then(_$_AdminOnData(
      permissionId: permissionId == freezed
          ? _value.permissionId
          : permissionId // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area?,
      areaAllowEdit: areaAllowEdit == freezed
          ? _value.areaAllowEdit
          : areaAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      areaAdminOnUsers: areaAdminOnUsers == freezed
          ? _value.areaAdminOnUsers
          : areaAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      serviceStudyYearData: serviceStudyYearData == freezed
          ? _value.serviceStudyYearData
          : serviceStudyYearData // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      serviceGender: serviceGender == freezed
          ? _value.serviceGender
          : serviceGender // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAllowEdit: serviceAllowEdit == freezed
          ? _value.serviceAllowEdit
          : serviceAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      serviceAdminOnUsers: serviceAdminOnUsers == freezed
          ? _value.serviceAdminOnUsers
          : serviceAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
      classes: classes == freezed
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      groupAllowEdit: groupAllowEdit == freezed
          ? _value.groupAllowEdit
          : groupAllowEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupAdminOnUsers: groupAdminOnUsers == freezed
          ? _value.groupAdminOnUsers
          : groupAdminOnUsers // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminOnData implements _AdminOnData {
  const _$_AdminOnData(
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
      : _classes = classes;

  factory _$_AdminOnData.fromJson(Map<String, dynamic> json) =>
      _$$_AdminOnDataFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminOnData &&
            const DeepCollectionEquality()
                .equals(other.permissionId, permissionId) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality()
                .equals(other.areaAllowEdit, areaAllowEdit) &&
            const DeepCollectionEquality()
                .equals(other.areaAdminOnUsers, areaAdminOnUsers) &&
            const DeepCollectionEquality().equals(other.service, service) &&
            const DeepCollectionEquality()
                .equals(other.serviceStudyYearData, serviceStudyYearData) &&
            const DeepCollectionEquality()
                .equals(other.serviceGender, serviceGender) &&
            const DeepCollectionEquality()
                .equals(other.serviceAllowEdit, serviceAllowEdit) &&
            const DeepCollectionEquality()
                .equals(other.serviceAdminOnUsers, serviceAdminOnUsers) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality()
                .equals(other.groupAllowEdit, groupAllowEdit) &&
            const DeepCollectionEquality()
                .equals(other.groupAdminOnUsers, groupAdminOnUsers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(permissionId),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(areaAllowEdit),
      const DeepCollectionEquality().hash(areaAdminOnUsers),
      const DeepCollectionEquality().hash(service),
      const DeepCollectionEquality().hash(serviceStudyYearData),
      const DeepCollectionEquality().hash(serviceGender),
      const DeepCollectionEquality().hash(serviceAllowEdit),
      const DeepCollectionEquality().hash(serviceAdminOnUsers),
      const DeepCollectionEquality().hash(_classes),
      const DeepCollectionEquality().hash(group),
      const DeepCollectionEquality().hash(groupAllowEdit),
      const DeepCollectionEquality().hash(groupAdminOnUsers));

  @JsonKey(ignore: true)
  @override
  _$$_AdminOnDataCopyWith<_$_AdminOnData> get copyWith =>
      __$$_AdminOnDataCopyWithImpl<_$_AdminOnData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminOnDataToJson(
      this,
    );
  }
}

abstract class _AdminOnData implements AdminOnData {
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
      final bool? groupAdminOnUsers}) = _$_AdminOnData;

  factory _AdminOnData.fromJson(Map<String, dynamic> json) =
      _$_AdminOnData.fromJson;

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
  _$$_AdminOnDataCopyWith<_$_AdminOnData> get copyWith =>
      throw _privateConstructorUsedError;
}
