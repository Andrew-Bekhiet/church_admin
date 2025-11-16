// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Service {
  String get id;
  String get name;
  StudyYear? get studyYearFrom;
  StudyYear? get studyYearTo;
  int? get studyYearFromId;
  int? get studyYearToId;
  Service? get nextService;
  String? get nextServiceId;
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  List<Class>? get classes;
  List<Group>? get groups;
  LastRecordedByInfo? get lastEdit;
  List<User>? get adminUsers;
  HistoryAggregateData? get attendanceHistoryAggregate;
  HistoryAggregateData? get attendanceDaysConstraintsAggregate;
  bool get userCanEdit;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<Service> get copyWith =>
      _$ServiceCopyWithImpl<Service>(this as Service, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Service &&
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
            const DeepCollectionEquality().equals(other.classes, classes) &&
            const DeepCollectionEquality().equals(other.groups, groups) &&
            (identical(other.lastEdit, lastEdit) ||
                other.lastEdit == lastEdit) &&
            const DeepCollectionEquality()
                .equals(other.adminUsers, adminUsers) &&
            (identical(other.attendanceHistoryAggregate,
                    attendanceHistoryAggregate) ||
                other.attendanceHistoryAggregate ==
                    attendanceHistoryAggregate) &&
            (identical(other.attendanceDaysConstraintsAggregate,
                    attendanceDaysConstraintsAggregate) ||
                other.attendanceDaysConstraintsAggregate ==
                    attendanceDaysConstraintsAggregate) &&
            (identical(other.userCanEdit, userCanEdit) ||
                other.userCanEdit == userCanEdit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(classes),
      const DeepCollectionEquality().hash(groups),
      lastEdit,
      const DeepCollectionEquality().hash(adminUsers),
      attendanceHistoryAggregate,
      attendanceDaysConstraintsAggregate,
      userCanEdit);

  @override
  String toString() {
    return 'Service(id: $id, name: $name, studyYearFrom: $studyYearFrom, studyYearTo: $studyYearTo, studyYearFromId: $studyYearFromId, studyYearToId: $studyYearToId, nextService: $nextService, nextServiceId: $nextServiceId, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, classes: $classes, groups: $groups, lastEdit: $lastEdit, adminUsers: $adminUsers, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate, userCanEdit: $userCanEdit)';
  }
}

/// @nodoc
abstract mixin class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) _then) =
      _$ServiceCopyWithImpl;
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
      Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      List<Class>? classes,
      List<Group>? groups,
      LastRecordedByInfo? lastEdit,
      List<User>? adminUsers,
      HistoryAggregateData? attendanceHistoryAggregate,
      HistoryAggregateData? attendanceDaysConstraintsAggregate,
      bool userCanEdit});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res> implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._self, this._then);

  final Service _self;
  final $Res Function(Service) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
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
    Object? userCanEdit = null,
  }) {
    return _then(Service(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      studyYearFrom: freezed == studyYearFrom
          ? _self.studyYearFrom
          : studyYearFrom // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      studyYearTo: freezed == studyYearTo
          ? _self.studyYearTo
          : studyYearTo // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      studyYearFromId: freezed == studyYearFromId
          ? _self.studyYearFromId
          : studyYearFromId // ignore: cast_nullable_to_non_nullable
              as int?,
      studyYearToId: freezed == studyYearToId
          ? _self.studyYearToId
          : studyYearToId // ignore: cast_nullable_to_non_nullable
              as int?,
      nextService: freezed == nextService
          ? _self.nextService
          : nextService // ignore: cast_nullable_to_non_nullable
              as Service?,
      nextServiceId: freezed == nextServiceId
          ? _self.nextServiceId
          : nextServiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      photoUpdatedAt: freezed == photoUpdatedAt
          ? _self.photoUpdatedAt
          : photoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      blurhash: freezed == blurhash
          ? _self.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      classes: freezed == classes
          ? _self.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Class>?,
      groups: freezed == groups
          ? _self.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
      lastEdit: freezed == lastEdit
          ? _self.lastEdit
          : lastEdit // ignore: cast_nullable_to_non_nullable
              as LastRecordedByInfo?,
      adminUsers: freezed == adminUsers
          ? _self.adminUsers
          : adminUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      attendanceHistoryAggregate: freezed == attendanceHistoryAggregate
          ? _self.attendanceHistoryAggregate
          : attendanceHistoryAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
      attendanceDaysConstraintsAggregate: freezed ==
              attendanceDaysConstraintsAggregate
          ? _self.attendanceDaysConstraintsAggregate
          : attendanceDaysConstraintsAggregate // ignore: cast_nullable_to_non_nullable
              as HistoryAggregateData?,
      userCanEdit: null == userCanEdit
          ? _self.userCanEdit
          : userCanEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
