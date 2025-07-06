import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
@JsonSerializable()
@Queryable(
  classLabel: 'الفصول',
  ignoreFields: ['blurhash', 'serviceStudyYear'],
  allowExtension: true,
)
class Class extends ViewableWithIDAndImage
    with _$Class
    implements SerializableExtra, AttendanceAnalyzable {
  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String name;
  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;
  @override
  final DateTime? photoUpdatedAt;
  @override
  final String? blurhash;
  @override
  final Service? service;
  @override
  final String? serviceId;
  @override
  final StudyYear? studyYear;
  @override
  final int? serviceStudyYear;
  @override
  final bool? serviceGender;
  @override
  final LastRecordedByInfo? lastEdit;
  @override
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  @QueryableField(manyToManyRelType: AdminOnData)
  final List<User>? adminUsers;
  @override
  final HistoryAggregateData? attendanceHistoryAggregate;
  @override
  final HistoryAggregateData? attendanceDaysConstraintsAggregate;

  const Class({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.service,
    this.serviceId,
    this.studyYear,
    this.serviceStudyYear,
    this.serviceGender,
    this.lastEdit,
    this.adminUsers,
    this.attendanceHistoryAggregate,
    this.attendanceDaysConstraintsAggregate,
  });

  factory Class.fromJson(Map<String, Object?> json) => _$ClassFromJson(json);

  @override
  Json toJson() => _$ClassToJson(this);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('classes', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().$class.name;
}

class ClassFields extends _ClassFields {
  ClassFields();

  @override
  FieldMetadata<User> get adminUsers => adminUsersRel.redirectTo(
        AdminOnDataFields().user,
        label: adminUsersRel.label,
        isExpandable: false,
      );
}
