import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/person.dart'
    as meetinghelper;
import 'package:church_admin_migrator/models/meetinghelper_context.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

/// Configuration for merge controllers and their default values
class MergeControllers {
  final ValueNotifier<bool> name;
  final ValueNotifier<bool> birthdate;
  final ValueNotifier<bool> gender;
  final ValueNotifier<bool> mainPhone;
  final ValueNotifier<bool> otherPhones;
  final ValueNotifier<bool> church;
  final ValueNotifier<bool> college;
  final ValueNotifier<bool> color;
  final ValueNotifier<bool> family;
  final ValueNotifier<bool?> address;
  final ValueNotifier<bool> location;
  final ValueNotifier<bool> martialStatus;
  final ValueNotifier<bool> studyYear;
  final ValueNotifier<bool> workStatus;
  final ValueNotifier<bool> job;
  final ValueNotifier<bool> jobDescription;
  final ValueNotifier<bool> qualification;
  final ValueNotifier<bool> personType;
  final ValueNotifier<bool> father;
  final ValueNotifier<bool> shammasLevel;
  final ValueNotifier<bool> isShammas;
  final ValueNotifier<bool> school;
  final ValueNotifier<bool?> notes;

  MergeControllers._({
    required this.name,
    required this.birthdate,
    required this.gender,
    required this.mainPhone,
    required this.otherPhones,
    required this.church,
    required this.college,
    required this.color,
    required this.family,
    required this.address,
    required this.location,
    required this.martialStatus,
    required this.studyYear,
    required this.workStatus,
    required this.job,
    required this.jobDescription,
    required this.qualification,
    required this.personType,
    required this.father,
    required this.shammasLevel,
    required this.isShammas,
    required this.school,
    required this.notes,
  });

  /// Creates merge controllers with default values preferring non-null incoming data
  factory MergeControllers.create({
    required Person existingPerson,
    required meetinghelper.Person newPerson,
    required ChurchAdminContext churchAdminContext,
    required MeetingHelperContext meetingHelperContext,
  }) {
    final newPersonStudyYear =
        churchAdminContext.studyYears[meetingHelperContext
            .studyYears[newPerson.studyYear]
            ?.grade];
    final existingPersonStudyYear = existingPerson.studyYear;

    return MergeControllers._(
      name: ValueNotifier(
        maxBy(
              [newPerson.name, existingPerson.name].nonNulls,
              (e) => e.length,
            ) ==
            newPerson.name,
      ),
      birthdate: ValueNotifier(
        minBy(
              [newPerson.birthDate, existingPerson.birthdate].nonNulls,
              (e) => e,
            ) ==
            newPerson.birthDate,
      ),
      gender: ValueNotifier(
        newPerson.gender != existingPerson.gender && !newPerson.gender,
      ), // Female overrides Male
      mainPhone: ValueNotifier(
        newPerson.phone?.isNotEmpty == true &&
            (existingPerson.mainPhone?.isEmpty ?? true),
      ),
      otherPhones: ValueNotifier(
        newPerson.phones.isNotEmpty && existingPerson.otherPhones.isEmpty,
      ),
      church: ValueNotifier(
        churchAdminContext.churches[newPerson.church] != null &&
            existingPerson.church == null,
      ),
      college: ValueNotifier(
        churchAdminContext.colleges[newPerson.college] != null &&
            existingPerson.college == null,
      ),
      color: ValueNotifier(
        (newPerson.color?.argbValue ?? 0) != 0 &&
            existingPerson.color?.argbValue == null,
      ),
      family: ValueNotifier(false), // Keep existing family
      address: ValueNotifier(null),
      location: ValueNotifier(newPerson.location != null),
      martialStatus: ValueNotifier(
        existingPerson.martialStatus == MartialStatus.married &&
            (minBy(
                      [newPerson.birthDate, existingPerson.birthdate].nonNulls,
                      (e) => e,
                    )?.difference(DateTime.now()).inDays ??
                    double.infinity) <
                (21 * 365),
      ),
      studyYear: ValueNotifier(
        maxBy(
              [newPersonStudyYear, existingPersonStudyYear].nonNulls,
              (e) => e.order,
            ) ==
            newPersonStudyYear,
      ),
      workStatus: ValueNotifier(
        existingPerson.workStatus == WorkStatus.unemployed,
      ),
      job: ValueNotifier(false),
      jobDescription: ValueNotifier(false),
      qualification: ValueNotifier(false),
      personType: ValueNotifier(false),
      father: ValueNotifier(
        churchAdminContext.fathers[newPerson.cFather] != null,
      ),
      shammasLevel: ValueNotifier(
        churchAdminContext.shammasLevels[IdReference.fromPath(
                  'ShammasLevels/${newPerson.shammasLevel}',
                )] !=
                null &&
            existingPerson.shammasLevel == null,
      ),
      isShammas: ValueNotifier(
        newPerson.isShammas && !existingPerson.isShammas,
      ),
      school: ValueNotifier(
        churchAdminContext.schools[newPerson.school] != null &&
            existingPerson.school == null,
      ),
      notes: ValueNotifier(null),
    );
  }

  void dispose() {
    name.dispose();
    birthdate.dispose();
    gender.dispose();
    mainPhone.dispose();
    otherPhones.dispose();
    church.dispose();
    college.dispose();
    color.dispose();
    family.dispose();
    address.dispose();
    location.dispose();
    martialStatus.dispose();
    studyYear.dispose();
    workStatus.dispose();
    job.dispose();
    jobDescription.dispose();
    qualification.dispose();
    personType.dispose();
    father.dispose();
    shammasLevel.dispose();
    isShammas.dispose();
    school.dispose();
    notes.dispose();
  }
}
