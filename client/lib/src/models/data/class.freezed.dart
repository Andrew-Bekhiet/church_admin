// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Class _$ClassFromJson(Map<String, dynamic> json) {
  return _Class.fromJson(json);
}

/// @nodoc
mixin _$Class {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  Service? get service => throw _privateConstructorUsedError;
  bool? get serviceGender => throw _privateConstructorUsedError;
  StudyYear? get studyYear => throw _privateConstructorUsedError;
  LastRecordedByInfo? get lastEdit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  List<User>? get adminUsers => throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceHistoryAggregate =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassCopyWith<Class> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) then) =
      _$ClassCopyWithImpl<$Res, Class>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      Service? service,
      bool? serviceGender,
      StudyYear? studyYear,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      List<User>? adminUsers,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  $ServiceCopyWith<$Res>? get service;
  $StudyYearCopyWith<$Res>? get studyYear;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class _$ClassCopyWithImpl<$Res, $Val extends Class>
    implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? service = freezed,
    Object? serviceGender = freezed,
    Object? studyYear = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      serviceGender: freezed == serviceGender
          ? _value.serviceGender
          : serviceGender // ignore: cast_nullable_to_non_nullable
              as bool?,
      studyYear: freezed == studyYear
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      adminUsers: freezed == adminUsers
          ? _value.adminUsers
          : adminUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      attendanceHistoryAggregate: freezed == attendanceHistoryAggregate
          ? _value.attendanceHistoryAggregate
          : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      attendanceDaysConstraintsAggregate: freezed ==
              attendanceDaysConstraintsAggregate
          ? _value.attendanceDaysConstraintsAggregate
          : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
    ) as $Val);
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
  $StudyYearCopyWith<$Res>? get studyYear {
    if (_value.studyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.studyYear!, (value) {
      return _then(_value.copyWith(studyYear: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit {
    if (_value.lastEdit == null) {
      return null;
    }

    return $LastRecordedByInfoCopyWith<$Res>(_value.lastEdit!, (value) {
      return _then(_value.copyWith(lastEdit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate {
    if (_value.attendanceHistoryAggregate == null) {
      return null;
    }

    return $AnalysisDataCopyWith<DateTime, $Res>(
        _value.attendanceHistoryAggregate!, (value) {
      return _then(_value.copyWith(attendanceHistoryAggregate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalysisDataCopyWith<DateTime, $Res>?
      get attendanceDaysConstraintsAggregate {
    if (_value.attendanceDaysConstraintsAggregate == null) {
      return null;
    }

    return $AnalysisDataCopyWith<DateTime, $Res>(
        _value.attendanceDaysConstraintsAggregate!, (value) {
      return _then(
          _value.copyWith(attendanceDaysConstraintsAggregate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClassCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$$_ClassCopyWith(_$_Class value, $Res Function(_$_Class) then) =
      __$$_ClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      Service? service,
      bool? serviceGender,
      StudyYear? studyYear,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      List<User>? adminUsers,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  @override
  $ServiceCopyWith<$Res>? get service;
  @override
  $StudyYearCopyWith<$Res>? get studyYear;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class __$$_ClassCopyWithImpl<$Res> extends _$ClassCopyWithImpl<$Res, _$_Class>
    implements _$$_ClassCopyWith<$Res> {
  __$$_ClassCopyWithImpl(_$_Class _value, $Res Function(_$_Class) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? service = freezed,
    Object? serviceGender = freezed,
    Object? studyYear = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_$_Class(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      serviceGender: freezed == serviceGender
          ? _value.serviceGender
          : serviceGender // ignore: cast_nullable_to_non_nullable
              as bool?,
      studyYear: freezed == studyYear
          ? _value.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      lastEdit: freezed == lastEdit
          ? _value.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      adminUsers: freezed == adminUsers
          ? _value._adminUsers
          : adminUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      attendanceHistoryAggregate: freezed == attendanceHistoryAggregate
          ? _value.attendanceHistoryAggregate
          : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
      attendanceDaysConstraintsAggregate: freezed ==
              attendanceDaysConstraintsAggregate
          ? _value.attendanceDaysConstraintsAggregate
          : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
              as AnalysisData<DateTime>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Class extends _Class {
  _$_Class(
      {required this.id,
      required this.name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt,
      this.service,
      this.serviceGender,
      this.studyYear,
      this.lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      final List<User>? adminUsers,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      this.attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      this.attendanceDaysConstraintsAggregate})
      : _adminUsers = adminUsers,
        super._();

  factory _$_Class.fromJson(Map<String, dynamic> json) =>
      _$$_ClassFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final Service? service;
  @override
  final bool? serviceGender;
  @override
  final StudyYear? studyYear;
  @override
  final LastRecordedByInfo? lastEdit;
  final List<User>? _adminUsers;
  @override
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  List<User>? get adminUsers {
    final value = _adminUsers;
    if (value == null) return null;
    if (_adminUsers is EqualUnmodifiableListView) return _adminUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? attendanceHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  final AnalysisData<DateTime>? attendanceDaysConstraintsAggregate;

  @override
  String toString() {
    return 'Class(id: $id, name: $name, color: $color, photoUpdatedAt: $photoUpdatedAt, service: $service, serviceGender: $serviceGender, studyYear: $studyYear, lastEdit: $lastEdit, adminUsers: $adminUsers, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Class &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.serviceGender, serviceGender) ||
                other.serviceGender == serviceGender) &&
            (identical(other.studyYear, studyYear) ||
                other.studyYear == studyYear) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            const DeepCollectionEquality()
                .equals(other._adminUsers, _adminUsers) &&
            (identical(other.attendanceHistoryAggregate,
                    attendanceHistoryAggregate) ||
                other.attendanceHistoryAggregate ==
                    attendanceHistoryAggregate) &&
            (identical(other.attendanceDaysConstraintsAggregate,
                    attendanceDaysConstraintsAggregate) ||
                other.attendanceDaysConstraintsAggregate ==
                    attendanceDaysConstraintsAggregate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      color,
      photoUpdatedAt,
      service,
      serviceGender,
      studyYear,
      lastEdit,
      const DeepCollectionEquality().hash(_adminUsers),
      attendanceHistoryAggregate,
      attendanceDaysConstraintsAggregate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      __$$_ClassCopyWithImpl<_$_Class>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassToJson(
      this,
    );
  }
}

abstract class _Class extends Class {
  factory _Class(
      {required final String id,
      required final String name,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) final Color? color,
      final DateTime? photoUpdatedAt,
      final Service? service,
      final bool? serviceGender,
      final StudyYear? studyYear,
      final LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      final List<User>? adminUsers,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      final AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      final AnalysisData<DateTime>?
          attendanceDaysConstraintsAggregate}) = _$_Class;
  _Class._() : super._();

  factory _Class.fromJson(Map<String, dynamic> json) = _$_Class.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  DateTime? get photoUpdatedAt;
  @override
  Service? get service;
  @override
  bool? get serviceGender;
  @override
  StudyYear? get studyYear;
  @override
  LastRecordedByInfo? get lastEdit;
  @override
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  List<User>? get adminUsers;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceHistoryAggregate;
  @override
  @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate;
  @override
  @JsonKey(ignore: true)
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      throw _privateConstructorUsedError;
}
