// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Class {
  String get id;
  String get name;
  Color? get color;
  DateTime? get photoUpdatedAt;
  String? get blurhash;
  Service? get service;
  String? get serviceId;
  StudyYear? get studyYear;
  int? get serviceStudyYear;
  bool? get serviceGender;
  LastRecordedByInfo? get lastEdit;
  List<User>? get adminUsers;
  HistoryAggregateData? get attendanceHistoryAggregate;
  HistoryAggregateData? get attendanceDaysConstraintsAggregate;

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClassCopyWith<Class> get copyWith =>
      _$ClassCopyWithImpl<Class>(this as Class, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Class &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.photoUpdatedAt, photoUpdatedAt) ||
                other.photoUpdatedAt == photoUpdatedAt) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.studyYear, studyYear) ||
                other.studyYear == studyYear) &&
            (identical(other.serviceStudyYear, serviceStudyYear) ||
                other.serviceStudyYear == serviceStudyYear) &&
            (identical(other.serviceGender, serviceGender) ||
                other.serviceGender == serviceGender) &&
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
                    attendanceDaysConstraintsAggregate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      color,
      photoUpdatedAt,
      blurhash,
      service,
      serviceId,
      studyYear,
      serviceStudyYear,
      serviceGender,
      lastEdit,
      const DeepCollectionEquality().hash(adminUsers),
      attendanceHistoryAggregate,
      attendanceDaysConstraintsAggregate);

  @override
  String toString() {
    return 'Class(id: $id, name: $name, color: $color, photoUpdatedAt: $photoUpdatedAt, blurhash: $blurhash, service: $service, serviceId: $serviceId, studyYear: $studyYear, serviceStudyYear: $serviceStudyYear, serviceGender: $serviceGender, lastEdit: $lastEdit, adminUsers: $adminUsers, attendanceHistoryAggregate: $attendanceHistoryAggregate, attendanceDaysConstraintsAggregate: $attendanceDaysConstraintsAggregate)';
  }
}

/// @nodoc
abstract mixin class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) _then) =
      _$ClassCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      Color? color,
      DateTime? photoUpdatedAt,
      String? blurhash,
      Service? service,
      String? serviceId,
      StudyYear? studyYear,
      int? serviceStudyYear,
      bool? serviceGender,
      LastRecordedByInfo? lastEdit,
      List<User>? adminUsers,
      HistoryAggregateData? attendanceHistoryAggregate,
      HistoryAggregateData? attendanceDaysConstraintsAggregate});
}

/// @nodoc
class _$ClassCopyWithImpl<$Res> implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._self, this._then);

  final Class _self;
  final $Res Function(Class) _then;

  /// Create a copy of Class
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = freezed,
    Object? photoUpdatedAt = freezed,
    Object? blurhash = freezed,
    Object? service = freezed,
    Object? serviceId = freezed,
    Object? studyYear = freezed,
    Object? serviceStudyYear = freezed,
    Object? serviceGender = freezed,
    Object? lastEdit = freezed,
    Object? adminUsers = freezed,
    Object? attendanceHistoryAggregate = freezed,
    Object? attendanceDaysConstraintsAggregate = freezed,
  }) {
    return _then(Class(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      service: freezed == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service?,
      serviceId: freezed == serviceId
          ? _self.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      studyYear: freezed == studyYear
          ? _self.studyYear
          : studyYear // ignore: cast_nullable_to_non_nullable
              as StudyYear?,
      serviceStudyYear: freezed == serviceStudyYear
          ? _self.serviceStudyYear
          : serviceStudyYear // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceGender: freezed == serviceGender
          ? _self.serviceGender
          : serviceGender // ignore: cast_nullable_to_non_nullable
              as bool?,
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
    ));
  }
}

// dart format on
