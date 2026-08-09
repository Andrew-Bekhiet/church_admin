import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/services/__generated__/mutations.gql.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@freezed
@JsonSerializable()
@Queryable(
  classLabel: 'الخدمات',
  allowExtension: true,
  labelsOverrides: {
    'defaultMeeting': 'الاجتماع الافتراضي',
  },
)
class Service extends ViewableWithIDAndImage
    with _$Service
    implements SerializableExtra {
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
  final Meeting? defaultMeeting;

  @override
  @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
  final Color? color;

  @override
  @LocalDateTimeConverter()
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
  @JsonKey(includeToJson: false)
  final bool userCanEdit;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('services', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => AdvancedQueriesMetadata().service.name;

  const Service({
    required this.id,
    required this.name,
    this.studyYearFrom,
    this.studyYearTo,
    this.studyYearFromId,
    this.studyYearToId,
    this.nextService,
    this.nextServiceId,
    this.defaultMeeting,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.classes,
    this.groups,
    this.meetings,
    this.lastEdit,
    this.adminUsers,
    this.userCanEdit = false,
  });

  factory Service.fromJson(Map<String, Object?> json) =>
      _$ServiceFromJson(json);

  @override
  Json toJson() => _$ServiceToJson(this);

  Variables_Mutation_insertService toInsertInput() =>
      Variables_Mutation_insertService(
        newService: Input_ServicesInsertInput(
          name: name,
          studyYearFromId: studyYearFromId,
          studyYearToId: studyYearToId,
          nextServiceId: nextServiceId?.toUuid(),
          defaultMeeting: switch (defaultMeeting) {
            final meeting? => Input_HistoryMeetingsObjRelInsertInput(
              data: meeting.toInsertInput(),
            ),
            null => null,
          },
          color: color?.argbValue,
        ),
      );

  Variables_Mutation_updateService toUpdateInput(Service oldService) {
    Input_ServicesSetInput result = Input_ServicesSetInput();
    if (name != oldService.name) {
      result = result.copyWith(name: name);
    }
    if (studyYearFromId != oldService.studyYearFromId) {
      result = result.copyWith(studyYearFromId: studyYearFromId);
    }
    if (studyYearToId != oldService.studyYearToId) {
      result = result.copyWith(studyYearToId: studyYearToId);
    }
    if (nextServiceId != oldService.nextServiceId) {
      result = result.copyWith(nextServiceId: nextServiceId?.toUuid());
    }
    if (defaultMeeting?.id != oldService.defaultMeeting?.id) {
      result = result.copyWith(defaultMeetingId: defaultMeeting?.id.toUuid());
    }
    if (color != oldService.color) {
      result = result.copyWith(color: color?.argbValue);
    }

    return Variables_Mutation_updateService(
      serviceId: id.toUuid(),
      newService: result,
    );
  }
}

class ServiceFields extends _ServiceFields {
  @override
  FieldMetadata<User> get adminUsers => adminUsersRel.redirectTo(
    AdminOnDataFields().user,
    label: adminUsersRel.label,
    isExpandable: false,
    isOrderable: false,
  );
  ServiceFields();
}
