// ignore_for_file: invalid_annotation_target, always_put_required_named_parameters_first

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show AsyncMemoizerCache, PhotoObjectBase, ViewableWithID;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person extends ViewableWithID with _$Person implements PhotoObjectBase {
  factory Person({
    required String id,
    required String name,
    String? address,
    @JsonKey(fromJson: pointFromJson, toJson: pointToJson)
        Point? geolocation,
    String? mainPhone,
    @Default({})
        Json otherPhones,
    DateTime? birthdate,
    @Default(true)
        bool gender,
    @Default(false)
        bool isShammas,
    String? shammasLevelId,
    ShammasLevel? shammasLevel,
    School? school,
    String? schoolId,
    College? college,
    String? collegeId,
    Church? church,
    String? churchId,
    Father? father,
    String? fatherId,
    @Default(false)
        bool isStudent,
    Job? job,
    String? jobId,
    String? jobDescription,
    Qualification? qualification,
    String? qualificationId,
    PersonType? personType,
    String? personTypeId,
    PersonState? state,
    String? stateId,
    @Default(false)
        bool isServant,
    String? notes,
    Family? family,
    String? familyId,
    String? storeId,
    StudyYear? studyYear,
    int? studyYearId,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt)
        Color? color,
    DateTime? photoUpdatedAt,
    LastRecordedByInfo? lastConfession,
    LastRecordedByInfo? lastKodas,
    LastRecordedByInfo? lastCall,
    LastRecordedByInfo? lastVisit,
    LastRecordedByInfo? lastEdit,
    List<Class>? classes,
    @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
        List<Group>? groups,
    @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
        List<Service>? services,
    List<Area>? areas,
    List<Street>? streets,
    @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
        List<Tag>? tags,
    User? user,
    @JsonKey(
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson,
    )
        AnalysisData<DateTime>? kodasHistoryAggregate,
    @JsonKey(
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson,
    )
        AnalysisData<DateTime>? confessionHistoryAggregate,
    @JsonKey(
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson,
    )
        AnalysisData<DateTime>? callHistoryAggregate,
    @JsonKey(
      fromJson: analysisDataFromJson,
      toJson: analysisDataToJson,
    )
        AnalysisData<DateTime>? visitHistoryAggregate,
  }) = _Person;
  Person._() : super();

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);

  @override
  IconData get defaultIcon => Icons.person;

  @override
  bool get hasPhoto => photoUpdatedAt != null;

  @override
  CAStorageReference? get photoRef => hasPhoto
      ? CAStorageReference(
          photoUpdatedAt: photoUpdatedAt!,
          downloadUrl: () =>
              GetIt.I<CAFunctionsService>().getDownloadUrl('persons', id),
          fullPath: 'persons/$id.jpg',
        )
      : null;

  @override
  final AsyncMemoizerCache<String> photoUrlCache = AsyncMemoizerCache();

  bool spiritDataUpToDate() {
    final thirtyDaysAgo = DateTime.now().subtract(const Duration(days: 30));

    return CAAuthRepository.I.currentUserData?.lastKodas != null &&
        CAAuthRepository.I.currentUserData!.lastConfession != null &&
        !CAAuthRepository.I.currentUserData!.lastKodas!.time.isBefore(
          thirtyDaysAgo,
        ) &&
        !CAAuthRepository.I.currentUserData!.lastConfession!.time.isBefore(
          thirtyDaysAgo,
        );
  }
}

List<Group>? personsGroupsFromJson(List? data) =>
    data?.map((e) => Group.fromJson(e['group'])).toList();
List<Json>? personsGroupsToJson(List<Group>? groups) =>
    groups?.map((e) => {'group': e.toJson()}).toList();

List<Service>? personsServicesFromJson(List? data) =>
    data?.map((e) => Service.fromJson(e['service'])).toList();
List<Json>? personsServicesToJson(List<Service>? services) =>
    services?.map((e) => {'service': e.toJson()}).toList();

List<Tag>? personsTagsFromJson(List? data) =>
    data?.map((e) => Tag.fromJson(e['tag'])).toList();
List<Json>? personsTagsToJson(List<Tag>? tags) =>
    tags?.map((e) => {'tag': e.toJson()}).toList();
