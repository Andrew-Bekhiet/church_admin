import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
@JsonSerializable()
@Queryable(
    classLabel: 'المجموعات',
    ignoreFields: ['validity', 'blurhash'],
    allowExtension: true)
class Group extends ViewableWithIDAndImage
    with _$Group
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
  final String? serviceId;
  @override
  final Service? service;
  @override
  @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
  final DateTimeRange? validity;
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

  const Group({
    required this.id,
    required this.name,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.serviceId,
    this.service,
    this.validity,
    this.lastEdit,
    this.adminUsers,
    this.attendanceHistoryAggregate,
    this.attendanceDaysConstraintsAggregate,
  });

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);

  @override
  Json toJson() => _$GroupToJson(this);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('groups', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().group.name;
}

class GroupFields extends _GroupFields {
  GroupFields();

  @override
  FieldMetadata<User> get adminUsers =>
      adminUsersRel.redirectTo(AdminOnDataFields().user,
          label: adminUsersRel.label, isExpandable: false);
}
