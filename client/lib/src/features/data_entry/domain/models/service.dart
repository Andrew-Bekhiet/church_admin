import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
@JsonSerializable()
@Queryable(classLabel: 'الخدمات', allowExtension: true)
class Service extends ViewableWithIDAndImage
    with _$Service
    implements SerializableExtra, AttendanceAnalyzable {
  @override
  @JsonKey(defaultValue: '')
  final String id;

  @override
  @JsonKey(defaultValue: '')
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

  @override
  final List<Class>? classes;

  @override
  final List<Group>? groups;

  @override
  final List<Meeting>? meetings;

  @override
  final LastRecordedByInfo? lastEdit;

  @override
  @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
  @QueryableField(manyToManyRelType: AdminOnData)
  final List<User>? adminUsers;

  @override
  final HistoryAggregateData? attendanceHistoryAggregate;

  @override
  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  const Service({
    required this.id,
    required this.name,
    this.studyYearFrom,
    this.studyYearTo,
    this.studyYearFromId,
    this.studyYearToId,
    this.nextService,
    this.nextServiceId,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.classes,
    this.groups,
    this.meetings,
    this.lastEdit,
    this.adminUsers,
    this.attendanceHistoryAggregate,
    this.userCanEdit = false,
  });

  factory Service.fromJson(Map<String, Object?> json) =>
      _$ServiceFromJson(json);

  @override
  Json toJson() => _$ServiceToJson(this);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('services', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().service.name;
}

class ServiceFields extends _ServiceFields {
  ServiceFields();

  @override
  FieldMetadata<User> get adminUsers => adminUsersRel.redirectTo(
    AdminOnDataFields().user,
    label: adminUsersRel.label,
    isExpandable: false,
    isOrderable: false,
  );
}
