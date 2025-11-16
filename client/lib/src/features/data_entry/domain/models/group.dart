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
  allowExtension: true,
)
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

  Input_GroupsInsertInput toInsertInput() {
    return Input_GroupsInsertInput(
      name: name,
      color: colorToInt(color),
      serviceId: service?.id.toUuid() ?? serviceId?.toUuid(),
      validity: validity,
    );
  }

  Input_GroupsSetInput toUpdateInput({
    required Group oldObject,
  }) {
    Input_GroupsSetInput result = Input_GroupsSetInput();

    if (name != oldObject.name) {
      result = result.copyWith(name: name);
    }

    if (color != oldObject.color) {
      result = result.copyWith(color: colorToInt(color));
    }

    if (service?.id != oldObject.service?.id) {
      result = result.copyWith(serviceId: service?.id.toUuid());
    }

    if (validity != oldObject.validity) {
      result = result.copyWith(validity: validity);
    }

    return result;
  }
}

class GroupFields extends _GroupFields {
  GroupFields();

  @override
  FieldMetadata<DateTimeRange> get validity => FieldMetadata<DateTimeRange>(
        parentType: super.validity.parentType,
        type: super.validity.type,
        name: super.validity.name,
        label: super.validity.label,
        isOrderable: super.validity.isOrderable,
        operators: super.validity.operators,
        getValue: super.validity.getValue,
        isCodeOnly: true,
      );

  @override
  FieldMetadata<User> get adminUsers => adminUsersRel.redirectTo(
        AdminOnDataFields().user,
        label: adminUsersRel.label,
        isExpandable: false,
        isOrderable: false,
      );
}
