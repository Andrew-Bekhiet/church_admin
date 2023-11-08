// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
@TypeMetadata(ignoreFields: ['validity'])
class Group extends ViewableWithIDAndImage
    with _$Group
    implements ToJson, AttendanceAnalyzable {
  static Map<String, FieldMetadata> get fieldsMetadata => _$GroupFields;

  static final QueryableType<Group> queryableType = QueryableType<Group>(
    name: 'Group',
    label: 'المجموعات',
    fieldsMetadata: fieldsMetadata,
    fromJson: Group.fromJson,
  );

  factory Group({
    required String id,
    required String name,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    String? serviceId,
    Service? service,
    @JsonKey(fromJson: dateRangeFromString, toJson: dateRangeToString)
    DateTimeRange? validity,
    LastRecordedByInfo? lastEdit,
    @JsonKey(fromJson: adminUsersFromJson, toJson: adminUsersToJson)
    List<User>? adminUsers,
    HistoryAggregateData? attendanceHistoryAggregate,
    HistoryAggregateData? attendanceDaysConstraintsAggregate,
  }) = _Group;
  Group._() : super();

  factory Group.fromJson(Map<String, Object?> json) => _$GroupFromJson(json);

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('groups', id, lastUpdatedTime: photoUpdatedAt);
}
