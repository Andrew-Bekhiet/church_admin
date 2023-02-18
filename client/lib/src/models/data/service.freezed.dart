// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  StudyYear? get fromStudyYear => throw _privateConstructorUsedError;
  StudyYear? get toStudyYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'nextServiceObject')
  Service? get nextService => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  List<Class>? get classes => throw _privateConstructorUsedError;
  List<Group>? get groups => throw _privateConstructorUsedError;
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
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {String id,
      String name,
      StudyYear? fromStudyYear,
      StudyYear? toStudyYear,
      @JsonKey(name: 'nextServiceObject')
          Service? nextService,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      List<Class>? classes,
      List<Group>? groups,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
          List<User>? adminUsers,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  $StudyYearCopyWith<$Res>? get fromStudyYear;
  $StudyYearCopyWith<$Res>? get toStudyYear;
  $ServiceCopyWith<$Res>? get nextService;
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fromStudyYear = freezed,
    Object? toStudyYear = freezed,
    Object? nextService = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
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
      fromStudyYear: freezed == fromStudyYear
          ? _value.fromStudyYear
          : fromStudyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      toStudyYear: freezed == toStudyYear
          ? _value.toStudyYear
          : toStudyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      nextService: freezed == nextService
          ? _value.nextService
          : nextService // ignore: cast_nullable_to_non_nullable
              as Service?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      classes: freezed == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>?,
      groups: freezed == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
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
  $StudyYearCopyWith<$Res>? get fromStudyYear {
    if (_value.fromStudyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.fromStudyYear!, (value) {
      return _then(_value.copyWith(fromStudyYear: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get toStudyYear {
    if (_value.toStudyYear == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.toStudyYear!, (value) {
      return _then(_value.copyWith(toStudyYear: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res>? get nextService {
    if (_value.nextService == null) {
      return null;
    }

    return $ServiceCopyWith<$Res>(_value.nextService!, (value) {
      return _then(_value.copyWith(nextService: value) as $Val);
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
abstract class _$$_ServiceCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$_ServiceCopyWith(
          _$_Service value, $Res Function(_$_Service) then) =
      __$$_ServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      StudyYear? fromStudyYear,
      StudyYear? toStudyYear,
      @JsonKey(name: 'nextServiceObject')
          Service? nextService,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          Color? color,
      DateTime? photoUpdatedAt,
      List<Class>? classes,
      List<Group>? groups,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
          List<User>? adminUsers,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  @override
  $StudyYearCopyWith<$Res>? get fromStudyYear;
  @override
  $StudyYearCopyWith<$Res>? get toStudyYear;
  @override
  $ServiceCopyWith<$Res>? get nextService;
  @override
  $LastRecordedByInfoCopyWith<$Res>? get lastEdit;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceHistoryAggregate;
  @override
  $AnalysisDataCopyWith<DateTime, $Res>? get attendanceDaysConstraintsAggregate;
}

/// @nodoc
class __$$_ServiceCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$_Service>
    implements _$$_ServiceCopyWith<$Res> {
  __$$_ServiceCopyWithImpl(_$_Service _value, $Res Function(_$_Service) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fromStudyYear = freezed,
    Object? toStudyYear = freezed,
    Object? nextService = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? classes = freezed,
    Object? groups = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(_$_Service(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fromStudyYear: freezed == fromStudyYear
          ? _value.fromStudyYear
          : fromStudyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      toStudyYear: freezed == toStudyYear
          ? _value.toStudyYear
          : toStudyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      nextService: freezed == nextService
          ? _value.nextService
          : nextService // ignore: cast_nullable_to_non_nullable
              as Service?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      classes: freezed == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>?,
      groups: freezed == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
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
class _$_Service extends _Service {
  _$_Service(
      {required this.id,
      required this.name,
      this.fromStudyYear,
      this.toStudyYear,
      @JsonKey(name: 'nextServiceObject')
          this.nextService,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          this.color,
      this.photoUpdatedAt,
      final List<Class>? classes,
      final List<Group>? groups,
      this.lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
          final List<User>? adminUsers,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          this.attendanceDaysConstraintsAggregate})
      : _classes = classes,
        _groups = groups,
        _adminUsers = adminUsers,
        super._();

  factory _$_Service.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final StudyYear? fromStudyYear;
  @override
  final StudyYear? toStudyYear;
  @override
  @JsonKey(name: 'nextServiceObject')
  final Service? nextService;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  final List<Class>? _classes;
  @override
  List<Class>? get classes {
    final value = _classes;
    if (value == null) return null;
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Group>? _groups;
  @override
  List<Group>? get groups {
    final value = _groups;
    if (value == null) return null;
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'Service(id: $id, name: $name, fromStudyYear: $fromStudyYear, toStudyYear: $toStudyYear, nextService: $nextService, color: $color, photoUpdatedAt: $photoUpdatedAt, classes: $classes, groups: $groups, lastEdit: $lastEdit, adminUsers: $adminUsers, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fromStudyYear, fromStudyYear) ||
                other.fromStudyYear == fromStudyYear) &&
            (identical(other.toStudyYear, toStudyYear) ||
                other.toStudyYear == toStudyYear) &&
            (identical(other.nextService, nextService) ||
                other.nextService == nextService) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
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
      fromStudyYear,
      toStudyYear,
      nextService,
      color,
      photoUpdatedAt,
      const DeepCollectionEquality().hash(_classes),
      const DeepCollectionEquality().hash(_groups),
      lastEdit,
      const DeepCollectionEquality().hash(_adminUsers),
      attendanceHistoryAggregate,
      attendanceDaysConstraintsAggregate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      __$$_ServiceCopyWithImpl<_$_Service>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceToJson(
      this,
    );
  }
}

abstract class _Service extends Service {
  factory _Service(
      {required final String id,
      required final String name,
      final StudyYear? fromStudyYear,
      final StudyYear? toStudyYear,
      @JsonKey(name: 'nextServiceObject')
          final Service? nextService,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
          final Color? color,
      final DateTime? photoUpdatedAt,
      final List<Class>? classes,
      final List<Group>? groups,
      final LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
          final List<User>? adminUsers,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
          final AnalysisData<DateTime>?
              attendanceDaysConstraintsAggregate}) = _$_Service;
  _Service._() : super._();

  factory _Service.fromJson(Map<String, dynamic> json) = _$_Service.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  StudyYear? get fromStudyYear;
  @override
  StudyYear? get toStudyYear;
  @override
  @JsonKey(name: 'nextServiceObject')
  Service? get nextService;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  DateTime? get photoUpdatedAt;
  @override
  List<Class>? get classes;
  @override
  List<Group>? get groups;
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
  _$$_ServiceCopyWith<_$_Service> get copyWith =>
      throw _privateConstructorUsedError;
}
