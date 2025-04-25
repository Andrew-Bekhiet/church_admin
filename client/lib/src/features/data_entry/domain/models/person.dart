import 'package:church_admin/annotations.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

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

  Input_PersonsInsertInput toInsertInput() => Input_PersonsInsertInput(
        name: name,
        mainPhone: mainPhone,
        otherPhones: otherPhones,
        birthdate: birthdate,
        gender: gender,
        isShammas: isShammas,
        shammasLevelId: shammasLevel?.id.toUuid(),
        schoolId: school?.id.toUuid(),
        collegeId: college?.id.toUuid(),
        churchId: church?.id.toUuid(),
        fatherId: father?.id.toUuid(),
        isStudent: isStudent,
        jobId: job?.id.toUuid(),
        jobDescription: jobDescription,
        qualificationId: qualification?.id.toUuid(),
        personTypeId: personType?.id.toUuid(),
        stateId: state?.id.toUuid(),
        isServant: isServant,
        notes: notes,
        family: family == null && address != null
            ? Input_FamiliesObjRelInsertInput(
                data: Family(
                  id: family?.id ?? Namespace.nil.value,
                  name: name.split(' ').sublist(1).join(' '),
                  address: address!.copyWith(family: null),
                ).toInsertInput(),
              )
            : null,
        familyId: family?.id.toUuid(),
        storeId: store?.id.toUuid(),
        studyYearId: studyYear?.order,
        groups: groups != null
            ? Input_PersonsGroupsArrRelInsertInput(
                data: groups!
                    .map(
                      (g) => Input_PersonsGroupsInsertInput(
                        groupId: g.id.toUuid(),
                      ),
                    )
                    .toList(),
              )
            : null,
        services: services != null
            ? Input_PersonsServicesArrRelInsertInput(
                data: services!
                    .map(
                      (s) => Input_PersonsServicesInsertInput(
                        serviceId: s.id.toUuid(),
                      ),
                    )
                    .toList(),
              )
            : null,
        tags: tags != null
            ? Input_PersonsTagsArrRelInsertInput(
                data: tags!
                    .map(
                      (t) => Input_PersonsTagsInsertInput(tagId: t.id.toUuid()),
                    )
                    .toList(),
              )
            : null,
        hobbies: hobbies != null
            ? Input_PersonsHobbiesArrRelInsertInput(
                data: hobbies!
                    .map(
                      (h) => Input_PersonsHobbiesInsertInput(
                        hobbyId: h.id.toUuid(),
                      ),
                    )
                    .toList(),
              )
            : null,
        color: colorToInt(color),
      );

  Input_PersonsSetInput toUpdateInput(Person oldPerson) {
    Input_PersonsSetInput result = Input_PersonsSetInput();

    if (name != oldPerson.name) {
      result = result.copyWith(name: name);
    }

    if (mainPhone != oldPerson.mainPhone) {
      result = result.copyWith(mainPhone: mainPhone);
    }

    if (otherPhones != oldPerson.otherPhones) {
      result = result.copyWith(otherPhones: otherPhones);
    }

    if (birthdate != oldPerson.birthdate) {
      result = result.copyWith(birthdate: birthdate);
    }

    if (gender != oldPerson.gender) {
      result = result.copyWith(gender: gender);
    }

    if (isShammas != oldPerson.isShammas) {
      result = result.copyWith(isShammas: isShammas);
    }

    if (isStudent != oldPerson.isStudent) {
      result = result.copyWith(isStudent: isStudent);
    }

    if (jobDescription != oldPerson.jobDescription) {
      result = result.copyWith(jobDescription: jobDescription);
    }

    if (isServant != oldPerson.isServant) {
      result = result.copyWith(isServant: isServant);
    }

    if (notes != oldPerson.notes) {
      result = result.copyWith(notes: notes);
    }

    if (color != oldPerson.color) {
      result = result.copyWith(color: colorToInt(color));
    }

    if (studyYear?.order != oldPerson.studyYear?.order) {
      result = result.copyWith(studyYearId: studyYear?.order);
    }

    if (shammasLevel?.id != oldPerson.shammasLevel?.id) {
      result = result.copyWith(shammasLevelId: shammasLevel?.id.toUuid());
    }

    if (school?.id != oldPerson.school?.id) {
      result = result.copyWith(schoolId: school?.id.toUuid());
    }

    if (college?.id != oldPerson.college?.id) {
      result = result.copyWith(collegeId: college?.id.toUuid());
    }

    if (church?.id != oldPerson.church?.id) {
      result = result.copyWith(churchId: church?.id.toUuid());
    }

    if (father?.id != oldPerson.father?.id) {
      result = result.copyWith(fatherId: father?.id.toUuid());
    }

    if (job?.id != oldPerson.job?.id) {
      result = result.copyWith(jobId: job?.id.toUuid());
    }

    if (qualification?.id != oldPerson.qualification?.id) {
      result = result.copyWith(qualificationId: qualification?.id.toUuid());
    }

    if (personType?.id != oldPerson.personType?.id) {
      result = result.copyWith(personTypeId: personType?.id.toUuid());
    }

    if (state?.id != oldPerson.state?.id) {
      result = result.copyWith(stateId: state?.id.toUuid());
    }

    if (family?.id != oldPerson.family?.id) {
      result = result.copyWith(familyId: family?.id.toUuid());
    }

    if (store?.id != oldPerson.store?.id) {
      result = result.copyWith(storeId: store?.id.toUuid());
    }

    return result;
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
