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
  StudyYear? get studyYearFrom => throw _privateConstructorUsedError;
  StudyYear? get studyYearTo => throw _privateConstructorUsedError;
  int? get studyYearFromId => throw _privateConstructorUsedError;
  int? get studyYearToId => throw _privateConstructorUsedError;
  Service? get nextService => throw _privateConstructorUsedError;
  String? get nextServiceId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color => throw _privateConstructorUsedError;
  DateTime? get photoUpdatedAt => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;
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
      StudyYear? studyYearFrom,
      StudyYear? studyYearTo,
      int? studyYearFromId,
      int? studyYearToId,
      Service? nextService,
      String? nextServiceId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      List<Class>? classes,
      List<Group>? groups,
      LastRecordedByInfo? lastEdit,
      @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
      List<User>? adminUsers,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      AnalysisData<DateTime>? attendanceHistoryAggregate,
      @JsonKey(fromJson: analysisDataFromJson, toJson: analysisDataToJson)
      AnalysisData<DateTime>? attendanceDaysConstraintsAggregate});

  $StudyYearCopyWith<$Res>? get studyYearFrom;
  $StudyYearCopyWith<$Res>? get studyYearTo;
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
    Object? studyYearFrom = freezed,
    Object? studyYearTo = freezed,
    Object? studyYearFromId = freezed,
    Object? studyYearToId = freezed,
    Object? nextService = freezed,
    Object? nextServiceId = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
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
      studyYearFrom: freezed == studyYearFrom
          ? _value.studyYearFrom
          : studyYearFrom // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      studyYearTo: freezed == studyYearTo
          ? _value.studyYearTo
          : studyYearTo // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      studyYearFromId: freezed == studyYearFromId
          ? _value.studyYearFromId
          : studyYearFromId // ignore: cast_nullable_to_non_nullable
              as int?,
      studyYearToId: freezed == studyYearToId
          ? _value.studyYearToId
          : studyYearToId // ignore: cast_nullable_to_non_nullable
              as int?,
      nextService: freezed == nextService
          ? _value.nextService
          : nextService // ignore: cast_nullable_to_non_nullable
              as Service?,
      nextServiceId: freezed == nextServiceId
          ? _value.nextServiceId
          : nextServiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $StudyYearCopyWith<$Res>? get studyYearFrom {
    if (_value.studyYearFrom == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.studyYearFrom!, (value) {
      return _then(_value.copyWith(studyYearFrom: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudyYearCopyWith<$Res>? get studyYearTo {
    if (_value.studyYearTo == null) {
      return null;
    }

    return $StudyYearCopyWith<$Res>(_value.studyYearTo!, (value) {
      return _then(_value.copyWith(studyYearTo: value) as $Val);
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
      StudyYear? studyYearFrom,
      StudyYear? studyYearTo,
      int? studyYearFromId,
      int? studyYearToId,
      Service? nextService,
      String? nextServiceId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
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
  $StudyYearCopyWith<$Res>? get studyYearFrom;
  @override
  $StudyYearCopyWith<$Res>? get studyYearTo;
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
    Object? studyYearFrom = freezed,
    Object? studyYearTo = freezed,
    Object? studyYearFromId = freezed,
    Object? studyYearToId = freezed,
    Object? nextService = freezed,
    Object? nextServiceId = freezed,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
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
      studyYearFrom: freezed == studyYearFrom
          ? _value.studyYearFrom
          : studyYearFrom // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      studyYearTo: freezed == studyYearTo
          ? _value.studyYearTo
          : studyYearTo // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      studyYearFromId: freezed == studyYearFromId
          ? _value.studyYearFromId
          : studyYearFromId // ignore: cast_nullable_to_non_nullable
              as int?,
      studyYearToId: freezed == studyYearToId
          ? _value.studyYearToId
          : studyYearToId // ignore: cast_nullable_to_non_nullable
              as int?,
      nextService: freezed == nextService
          ? _value.nextService
          : nextService // ignore: cast_nullable_to_non_nullable
              as Service?,
      nextServiceId: freezed == nextServiceId
          ? _value.nextServiceId
          : nextServiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _value.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.studyYearFrom,
      this.studyYearTo,
      this.studyYearFromId,
      this.studyYearToId,
      this.nextService,
      this.nextServiceId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) this.color,
      this.photoUpdatedAt,
      this.blurhash,
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
  final StudyYear? studyYearFrom;
  @override
  final StudyYear? studyYearTo;
  @override
  final int? studyYearFromId;
  @override
  final int? studyYearToId;
  @override
  final Service? nextService;
  @override
  final String? nextServiceId;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
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
    return 'Service(id: $id, name: $name, studyYearFrom: $studyYearFrom, studyYearTo: $studyYearTo, studyYearFromId: $studyYearFromId, studyYearToId: $studyYearToId, nextService: $nextService, nextServiceId: $nextServiceId, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, classes: $classes, groups: $groups, lastEdit: $lastEdit, adminUsers: $adminUsers, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Service &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.studyYearFrom, studyYearFrom) ||
                other.studyYearFrom == studyYearFrom) &&
            (identical(other.studyYearTo, studyYearTo) ||
                other.studyYearTo == studyYearTo) &&
            (identical(other.studyYearFromId, studyYearFromId) ||
                other.studyYearFromId == studyYearFromId) &&
            (identical(other.studyYearToId, studyYearToId) ||
                other.studyYearToId == studyYearToId) &&
            (identical(other.nextService, nextService) ||
                other.nextService == nextService) &&
            (identical(other.nextServiceId, nextServiceId) ||
                other.nextServiceId == nextServiceId) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
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
      studyYearFrom,
      studyYearTo,
      studyYearFromId,
      studyYearToId,
      nextService,
      nextServiceId,
      color,
      photoUpdatedAt,
      blurhash,
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
      final StudyYear? studyYearFrom,
      final StudyYear? studyYearTo,
      final int? studyYearFromId,
      final int? studyYearToId,
      final Service? nextService,
      final String? nextServiceId,
      @JsonKey(fromJson: colorFromInt, toJson: colorToInt) final Color? color,
      final DateTime? photoUpdatedAt,
      final String? blurhash,
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
  StudyYear? get studyYearFrom;
  @override
  StudyYear? get studyYearTo;
  @override
  int? get studyYearFromId;
  @override
  int? get studyYearToId;
  @override
  Service? get nextService;
  @override
  String? get nextServiceId;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  Color? get color;
  @override
  DateTime? get photoUpdatedAt;
  @override
  String? get blurhash;
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
