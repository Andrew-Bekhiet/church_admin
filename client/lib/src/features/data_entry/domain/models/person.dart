import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
@TypeMetadata(ignoreFields: ['blurhash', 'otherPhones'])
class Person extends ViewableWithIDAndImage
    with _$Person
    implements SerializableExtra {
  static Map<String, FieldMetadata> get fieldsMetadata => _$PersonFields;

  static final QueryableType<Person> queryableType = QueryableType<Person>(
    name: 'Person',
    label: 'الأشخاص',
    fieldsMetadata: fieldsMetadata,
    fromJson: Person.fromJson,
  );

  factory Person({
    required String id,
    required String name,
    Address? address,
    String? mainPhone,
    @Default({}) Json otherPhones,
    DateTime? birthdate,
    String? birthday,
    @Default(true) bool gender,
    @Default(false) bool isShammas,
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
    @Default(false) bool isStudent,
    Job? job,
    String? jobId,
    String? jobDescription,
    Qualification? qualification,
    String? qualificationId,
    PersonType? personType,
    String? personTypeId,
    PersonState? state,
    String? stateId,
    @Default(false) bool isServant,
    String? notes,
    Family? family,
    String? familyId,
    Store? store,
    String? storeId,
    StudyYear? studyYear,
    int? studyYearId,
    @JsonKey(fromJson: colorFromInt, toJson: colorToInt) Color? color,
    DateTime? photoUpdatedAt,
    String? blurhash,
    LastRecordedByInfo? lastConfession,
    LastRecordedByInfo? lastKodas,
    LastRecordedByInfo? lastCall,
    LastRecordedByInfo? lastVisit,
    LastRecordedByInfo? lastEdit,
    @JsonKey(fromJson: personsClassesFromJson, toJson: personsClassesToJson)
    List<Class>? classes,
    @JsonKey(fromJson: personsGroupsFromJson, toJson: personsGroupsToJson)
    List<Group>? groups,
    @JsonKey(fromJson: personsServicesFromJson, toJson: personsServicesToJson)
    List<Service>? services,
    @JsonKey(fromJson: personsTagsFromJson, toJson: personsTagsToJson)
    List<Tag>? tags,
    @JsonKey(fromJson: personsHobbiesFromJson, toJson: personsHobbiesToJson)
    List<Hobby>? hobbies,
    User? user,
    List<LastRecordedByInfo>? kodasHistory,
    List<LastRecordedByInfo>? confessionHistory,
    List<LastRecordedByInfo>? callHistory,
    List<LastRecordedByInfo>? visitHistory,
    List<LastRecordedByInfo>? editHistory,
    HistoryAggregateData? kodasHistoryAggregate,
    HistoryAggregateData? confessionHistoryAggregate,
    HistoryAggregateData? callHistoryAggregate,
    HistoryAggregateData? visitHistoryAggregate,
    HistoryAggregateData? editHistoryAggregate,
  }) = _Person;
  Person._() : super();

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);

  Point? get geolocation => address?.geolocation;

  @override
  LastRecordedByInfo? get lastConfession =>
      super.lastConfession ??
      confessionHistoryAggregate?.aggregate.max ??
      confessionHistory?.singleOrNull;
  @override
  LastRecordedByInfo? get lastKodas =>
      super.lastKodas ??
      kodasHistoryAggregate?.aggregate.max ??
      kodasHistory?.singleOrNull;
  @override
  LastRecordedByInfo? get lastCall =>
      super.lastCall ??
      callHistoryAggregate?.aggregate.max ??
      callHistory?.singleOrNull;
  @override
  LastRecordedByInfo? get lastVisit =>
      super.lastVisit ??
      visitHistoryAggregate?.aggregate.max ??
      visitHistory?.singleOrNull;
  @override
  LastRecordedByInfo? get lastEdit =>
      super.lastEdit ??
      editHistoryAggregate?.aggregate.max ??
      editHistory?.singleOrNull;

  @override
  ObjectImageInfo get imageInfo =>
      FunctionsObjectImageInfo('persons', id, lastUpdatedTime: photoUpdatedAt);

  @override
  String get typeName => Person.queryableType.name;

  bool spiritDataUpToDate() {
    final thirtyDaysAgo = DateTime.now().subtract(const Duration(days: 60));

    return lastKodas != null &&
        lastConfession != null &&
        !lastKodas!.time.isBefore(thirtyDaysAgo) &&
        !lastConfession!.time.isBefore(thirtyDaysAgo);
  }
}

List<Class>? personsClassesFromJson(List? data) =>
    data?.map((e) => Class.fromJson(e['class'])).toList();
List<Json>? personsClassesToJson(List<Class>? classes) =>
    classes?.map((e) => {'class': e.toJson()}).toList();

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

List<Hobby>? personsHobbiesFromJson(List? data) =>
    data?.map((e) => Hobby.fromJson(e['hobby'])).toList();
List<Json>? personsHobbiesToJson(List<Hobby>? hobbies) =>
    hobbies?.map((e) => {'hobby': e.toJson()}).toList();
