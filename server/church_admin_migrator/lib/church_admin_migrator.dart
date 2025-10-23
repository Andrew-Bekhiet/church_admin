import 'dart:async';
import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/church_admin_csv_exporter.dart';
import 'package:church_admin_migrator/migrations/create_new_services.dart';
import 'package:church_admin_migrator/migrations/create_new_study_years.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/church_data/models/mini_models.dart'
    as churchdata;
import 'package:church_admin_migrator/models/church_data_context.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/person.dart'
    as meetinghelper;
import 'package:church_admin_migrator/models/meetinghelper/models/meta/school.dart'
    as meetinghelper;
import 'package:church_admin_migrator/models/meetinghelper_context.dart';
import 'package:church_admin_migrator/ui/family_selection_dialog.dart';
import 'package:church_admin_migrator/ui/person_merge_dialog.dart';
import 'package:church_admin_migrator/utils/fuzzy_match.dart';
import 'package:church_admin_migrator/utils/normalize_string.dart';
import 'package:collection/collection.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    noBoxingByDefault: true,
    dateTimeFormat: DateTimeFormat.dateAndTime,
  ),
);
final bool isDryRun = bool.fromEnvironment('dryRun', defaultValue: false);

Future<void> migrate({
  required FirebaseAdminApp churchDataApp,
  required FirebaseAdminApp meetingHelperApp,
}) async {
  await _benchmarkStep('Migration', () async {
    final churchDataContext = await _benchmarkStep(
      'Loading Church Data context',
      () => ChurchDataContext.load(churchDataApp),
    );

    final meetingHelperContext = await _benchmarkStep(
      'Loading Meeting Helper context',
      () => MeetingHelperContext.load(meetingHelperApp),
    );

    final churchAdminContext = ChurchAdminContext();

    await _benchmarkStep(
      'Creating new StudyYears',
      () => createNewStudyYears(
        churchDataContext,
        meetingHelperContext,
        churchAdminContext,
      ),
    );

    await _benchmarkStep(
      'Migrating and creating new Services',
      () =>
          migrateAndCreateNewServices(meetingHelperContext, churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating ShammasLevels',
      () => _migrateShammasLevels(meetingHelperContext, churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating Churches',
      () => _migrateChurches(
        churchDataContext,
        meetingHelperContext,
        churchAdminContext,
      ),
    );

    await _benchmarkStep(
      'Migrating Fathers',
      () => _migrateFathers(
        churchDataContext,
        meetingHelperContext,
        churchAdminContext,
      ),
    );

    await _benchmarkStep(
      'Migrating Schools',
      () => _migrateSchools(meetingHelperContext, churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating Colleges',
      () => _migrateColleges(
        churchDataContext,
        meetingHelperContext,
        churchAdminContext,
      ),
    );

    await _benchmarkStep(
      'Migrating Jobs',
      () => _migrateJobs(churchDataContext, churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating Qualifications',
      () => _migrateQualifications(churchDataContext, churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating Persons Types',
      () => _migrateQualifications(churchDataContext, churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating Areas',
      () => _migrateAreas(churchDataContext, churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating Streets',
      () => _migrateStreets(churchDataContext, churchAdminContext),
    );
    await _benchmarkStep(
      'Migrating Families',
      () => _migrateFamilies(churchDataContext, churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating Stores',
      () => _migrateStores(churchDataContext, churchAdminContext),
    );
    await _benchmarkStep(
      'Migrating ChurchData Persons',
      () => _migrateChurchDataPersons(churchDataContext, churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating Meeting Helper Persons',
      () => _migrateMeetingHelperPersons(
        meetingHelperContext,
        churchAdminContext,
      ),
    );

    await _benchmarkStep(
      'Migrating Persons States from persons',
      () => _migratePersonsStates(churchAdminContext),
    );

    await _benchmarkStep(
      'Migrating Persons Types from persons',
      () => _migratePersonsTypes(churchAdminContext),
    );

    await _benchmarkStep(
      'Exporting to CSV',
      () => _exportToCsv(churchAdminContext),
    );
  });
}

FutureOr<T> _benchmarkStep<T>(
  String stepName,
  FutureOr<T> Function() stepFunction,
) async {
  final stopwatch = Stopwatch()..start();
  logger.i('$stepName...');

  FutureOr<T> result = stepFunction();
  if (result is Future<T>) {
    result = await result;
  }

  stopwatch.stop();
  logger.i('$stepName completed in ${stopwatch.elapsedMilliseconds}ms');

  return result;
}

void _migrateChurchDataPersons(
  ChurchDataContext churchDataContext,
  ChurchAdminContext churchAdminContext,
) {
  logger.i('Migrating ChurchData Persons');
  for (final MapEntry(key: oldRef, value: person)
      in churchDataContext.persons.entries.take(
        isDryRun ? 10 : churchDataContext.persons.length,
      )) {
    final newRef = IdReference.fromPath(
      'Persons/${person.id}',
      context: churchAdminContext,
    );

    final birthdate = person.birthDate != null
        ? DateTime.fromMillisecondsSinceEpoch(person.birthDate!.seconds * 1000)
        : null;
    final isRetired =
        birthdate != null &&
        DateTime.now().difference(birthdate).inDays / 365 >= 60;

    final personTypeData = churchDataContext.types[person.type];

    final studyYear = churchAdminContext
        .studyYears[churchDataContext.studyYears[person.studyYear]?.grade];

    var personStateData = churchDataContext.personStates[person.state];

    final newPerson = Person(
      id: newRef.id,
      name: person.name,
      birthdate: birthdate,
      gender: personTypeData?.gender ?? true,
      mainPhone: person.phone,
      otherPhones: person.phones.cast<String, String>(),
      church: churchAdminContext.churches[person.church],
      college: churchAdminContext.colleges[person.college],
      color: person.color?.toUiColor(),
      family: churchAdminContext.families[person.familyId],
      store: churchAdminContext.stores[person.familyId],
      martialStatus: personTypeData?.martialStatus ?? MartialStatus.married,
      studyYear: studyYear,
      job: person.job != null ? churchAdminContext.jobs[person.job] : null,
      jobDescription: person.jobDescription,
      qualification:
          churchAdminContext.qualifications[IdReference.fromPath(
            'Qualifications/${person.qualification}',
            context: churchAdminContext,
          )],
      personType: PersonType(
        id: personTypeData?.name ?? "غير محدد",
        name: personTypeData?.name ?? "غير محدد",
        isHidden: true,
        isFamilyAdmin: false,
      ),
      workStatus: isRetired
          ? WorkStatus.retired
          : person.job != null || (person.jobDescription?.isNotEmpty ?? false)
          ? WorkStatus.employed
          : person.isStudent || studyYear != null
          ? WorkStatus.student
          : WorkStatus.unemployed,
      isServant: person.isServant,
      father: churchAdminContext.fathers[person.cFather],
      state: PersonState(
        id: personStateData?.id ?? 'غير محدد',
        name: personStateData?.name ?? 'غير محدد',
        color: personStateData?.color?.toUiColor(),
      ),
      notes: person.notes,
    );

    churchAdminContext.persons[newRef] = newPerson;
    churchAdminContext.persons[oldRef] = newPerson;
  }
}

Future<void> _migrateMeetingHelperPersons(
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) async {
  final addressesByFamilyId = {
    for (final a in churchAdminContext.addresses.values.where(
      (a) => a.family != null,
    ))
      a.family!.id: a,
  };

  logger.i('Migrating Meeting Helper Persons');
  for (final MapEntry(key: oldRef, value: person)
      in meetingHelperContext.persons.entries
          .take(isDryRun ? 10 : meetingHelperContext.persons.length)
          .sortedBy((e) => e.value.name)) {
    final duplicate = churchAdminContext.persons.values
        .map((p) {
          final similarity = PersonSimilarity(
            name1: p.name,
            name2: person.name,
            birthdate1: p.birthdate,
            birthdate2: person.birthDate,
            phone1: p.mainPhone,
            phone2: person.phone,
            address1: addressesByFamilyId[p.family?.id]?.specialLandmark,
            address2: person.address,
          );

          return (person: p, score: similarity.calculate());
        })
        .where((e) => e.score > 0.84)
        .sorted((a, b) => b.score.compareTo(a.score))
        .firstOrNull;

    final bool merged;
    if (duplicate != null) {
      final newAddress = Address(
        id: 'family_${duplicate.person.family?.id}_address',
      );
      final existingFamilyAddress =
          addressesByFamilyId[duplicate.person.family?.id] ?? newAddress;
      merged = await _maybeMergePersons(
        silent: true || duplicate.score > 0.84,
        existingFamilyAddress: existingFamilyAddress,
        person: person,
        duplicate: duplicate,
        churchAdminContext: churchAdminContext,
        meetingHelperContext: meetingHelperContext,
      );

      if (merged) {
        continue;
      }
    } else {
      merged = false;
    }

    var similarFamily = churchAdminContext.families.values
        .map((f) {
          final familyNameScore = f.name.normalize().levenshteinSimilarity(
            person.name.normalize(),
          );

          if (familyNameScore < 0.85) {
            return (family: f, score: 0.0, familyMembers: <Person>[]);
          }

          final familyMembers = churchAdminContext.persons.values
              .where((p) => p.family?.id == f.id)
              .toList();

          final phoneScore = familyMembers
              .map((member) {
                if (member.mainPhone == null || person.phone == null) {
                  return 0.0;
                }

                return member.mainPhone!
                    .replaceAll(RegExp(r'\D'), '')
                    .levenshteinSimilarity(
                      person.phone!.replaceAll(RegExp(r'\D'), ''),
                    );
              })
              .fold(0.0, (max, score) => score > max ? score : max);

          final combinedScore = (familyNameScore + 1.3 * phoneScore) / 2.3;

          return (
            family: f,
            score: combinedScore,
            familyMembers: familyMembers,
          );
        })
        .where((e) => e.score > 0.9)
        .sorted((a, b) => b.score.compareTo(a.score))
        .firstOrNull;

    var family = similarFamily?.family;

    if (similarFamily != null) {
      final familyMembers = similarFamily.familyMembers;

      final shouldUseExistingFamily = await showUIForResult<bool>((
        context,
        complete,
      ) {
        return showFamilySelectionDialog(
          silent: true,
          complete: complete,
          family: similarFamily.family,
          familyMembers: familyMembers,
          personName: person.name,
          personPhone: person.phone,
          personAddress: person.address,
          personNotes: person.notes,
        );
      });

      if (!shouldUseExistingFamily) {
        family = null;
      }
    }

    if (family == null) {
      final familyId = IdReference.fromPath(
        'Families/person_${person.ref.id}_family',
        context: churchAdminContext,
      );

      family = Family(
        id: familyId.id,
        name: person.name.split(' ').sublist(1).join(' '),
        church: churchAdminContext.churches[person.church],
        status: MartialStatus.married,
      );

      churchAdminContext.families[familyId] = family;

      final addressId = IdReference.fromPath(
        'Addresses/family_${family.id}_address',
        context: churchAdminContext,
      );
      final address = Address(
        id: addressId.id,
        family: family,
        specialLandmark: person.address,
        geolocation: person.location != null
            ? Point(person.location!.latitude, person.location!.longitude)
            : null,
      );

      churchAdminContext.addresses[addressId] = address;
      churchAdminContext.families[familyId] = family;
    }

    if (merged) continue;

    final newRef = IdReference.fromPath(
      'Persons/${person.ref.id}',
      context: churchAdminContext,
    );

    final birthdate = person.birthDate;

    var shammasLevel =
        churchAdminContext.shammasLevels[IdReference.fromPath(
          'ShammasLevels/${person.shammasLevel}',
          context: churchAdminContext,
        )];
    final newPerson = Person(
      id: newRef.id,
      name: person.name,
      birthdate: birthdate,
      gender: person.gender,
      mainPhone: person.phone,
      otherPhones: person.phones.cast<String, String>(),
      church: churchAdminContext.churches[person.church],
      college: churchAdminContext.colleges[person.college],
      color: person.color?.toUiColor(),
      family: family,
      martialStatus: MartialStatus.single,
      studyYear: churchAdminContext
          .studyYears[meetingHelperContext.studyYears[person.studyYear]?.grade],
      services: [
        for (final serviceRef in person.services)
          ?churchAdminContext.services[serviceRef],
      ],
      workStatus: WorkStatus.student,
      father: churchAdminContext.fathers[person.cFather],
      shammasLevel: shammasLevel,
      isShammas: shammasLevel != null && person.gender && person.isShammas,
      school: churchAdminContext.schools[person.school],
      notes: person.notes,
    );

    churchAdminContext.persons[newRef] = newPerson;
    churchAdminContext.persons[oldRef] = newPerson;
  }
}

Future<bool> _maybeMergePersons({
  required meetinghelper.Person person,
  required Address existingFamilyAddress,
  required ({Person person, double score}) duplicate,
  required ChurchAdminContext churchAdminContext,
  required MeetingHelperContext meetingHelperContext,
  bool silent = false,
}) async {
  final existingPerson = duplicate.person.copyWith(
    color: duplicate.person.color?.argbValue == 0
        ? null
        : duplicate.person.color,
  );

  final (mergedPerson, address) = silent
      ? mergePersons(
          existingPersonFamilyAddress: existingFamilyAddress,
          existingPerson: existingPerson,
          newPerson: person,
          similarityScore: duplicate.score,
          churchAdminContext: churchAdminContext,
          meetingHelperContext: meetingHelperContext,
        )
      : await showUIForResult<(Person?, Address?)>((context, complete) {
          return showPersonMergeDialog(
            complete: complete,
            existingPersonFamilyAddress: existingFamilyAddress,
            existingPerson: existingPerson,
            newPerson: person,
            similarityScore: duplicate.score,
            churchAdminContext: churchAdminContext,
            meetingHelperContext: meetingHelperContext,
          );
        });

  if (mergedPerson == null) {
    return false;
  }

  final newRef = IdReference.fromPath(
    'Persons/${duplicate.person.id}',
    context: churchAdminContext,
  );
  final oldRef = IdReference.fromPath(
    'Persons/${person.ref.id}',
    context: churchAdminContext,
  );

  if (address != null) {
    Address newAddress = address;
    if (newAddress.family == null && newAddress.store == null) {
      final newFamily = Family(
        id: 'person_${mergedPerson.id}_family',
        name: mergedPerson.name.split(' ').sublist(1).join(' '),
        church: churchAdminContext.churches[person.church],
        status: MartialStatus.married,
      );

      churchAdminContext.families[IdReference.fromPath(
            'Families/${newFamily.id}',
            context: churchAdminContext,
          )] =
          newFamily;

      newAddress = newAddress.copyWith(family: newFamily);
    }

    // if (existingPerson.address?.specialLandmark != newAddress.specialLandmark ||
    //     existingPerson.address?.geolocation != newAddress.geolocation) {
    //   debugger();
    // }

    final addressId = IdReference.fromPath(
      'Addresses/${newAddress.id}',
      context: churchAdminContext,
    );
    churchAdminContext.addresses[addressId] = newAddress;
  }

  churchAdminContext.persons[newRef] = mergedPerson.copyWith(id: newRef.id);
  churchAdminContext.persons[oldRef] = mergedPerson.copyWith(id: newRef.id);

  return true;
}

void _migrateStores(
  ChurchDataContext churchDataContext,
  ChurchAdminContext churchAdminContext,
) {
  logger.i('Migrating Stores');
  for (final MapEntry(key: oldRef, value: store)
      in churchDataContext.familiesAndStores.entries) {
    if (!store.isStore) continue;

    final newRef = IdReference.fromPath(
      'Stores/${store.id}',
      context: churchAdminContext,
    );

    final family1Ref = store.insideFamily;
    final family2Ref = store.insideFamily2;

    final newStore = Store(
      id: newRef.id,
      name: store.name,
      family:
          churchAdminContext.families[family1Ref] ??
          churchAdminContext.families[family2Ref],
      color: store.color?.toUiColor(),
    );

    final addressId = IdReference.fromPath(
      'Addresses/store_${newStore.id}_address',
      context: churchAdminContext,
    );

    churchAdminContext.addresses[addressId] = Address(
      id: addressId.id,
      area: churchAdminContext.areas[store.areaId],
      street: churchAdminContext.streets[store.streetId],
      store: newStore,
      geolocation: store.locationPoint != null
          ? Point(store.locationPoint!.latitude, store.locationPoint!.longitude)
          : null,
      specialLandmark: store.address,
    );

    churchAdminContext.stores[newRef] = newStore;
    churchAdminContext.stores[oldRef] = newStore;
  }
}

void _migrateFamilies(
  ChurchDataContext churchDataContext,
  ChurchAdminContext churchAdminContext,
) {
  logger.i('Migrating Families');
  for (final MapEntry(key: oldRef, value: family)
      in churchDataContext.familiesAndStores.entries.take(
        isDryRun ? 10 : churchDataContext.familiesAndStores.length,
      )) {
    if (family.isStore) continue;

    final newRef = IdReference.fromPath(
      'Families/${family.id}',
      context: churchAdminContext,
    );

    final family1Ref = family.insideFamily;

    final family2Ref = family.insideFamily2;

    if (family1Ref != null &&
        churchDataContext.familiesAndStores[family1Ref] != null) {
      churchAdminContext.familiesFamilies.add((
        parentFamilyId: IdReference.fromPath(
          family1Ref.path,
          context: churchAdminContext,
        ),
        childFamilyId: newRef,
      ));
    }
    if (family2Ref != null &&
        churchDataContext.familiesAndStores[family2Ref] != null) {
      churchAdminContext.familiesFamilies.add((
        parentFamilyId: IdReference.fromPath(
          family2Ref.path,
          context: churchAdminContext,
        ),
        childFamilyId: newRef,
      ));
    }

    final newFamily = Family(
      id: newRef.id,
      name: family.name,
      notes: family.notes,
      color: family.color?.toUiColor(),
    );

    final addressId = IdReference.fromPath(
      'Addresses/family_${newFamily.id}_address',
      context: churchAdminContext,
    );

    churchAdminContext.addresses[addressId] = Address(
      id: addressId.id,
      area: churchAdminContext.areas[family.areaId],
      street: churchAdminContext.streets[family.streetId],
      family: newFamily,
      geolocation: family.locationPoint != null
          ? Point(
              family.locationPoint!.latitude,
              family.locationPoint!.longitude,
            )
          : null,
      specialLandmark: family.address,
    );

    churchAdminContext.families[newRef] = newFamily;
    churchAdminContext.families[oldRef] = newFamily;
  }

  for (final (:childFamilyId, :parentFamilyId)
      in churchAdminContext.familiesFamilies) {
    final parentFamily = churchAdminContext.families[parentFamilyId];
    final childFamily = churchAdminContext.families[childFamilyId];

    if (parentFamily == null || childFamily == null) {
      logger.w(
        'Family relationship broken: ${parentFamilyId.path} -> ${childFamilyId.path}',
      );
      continue;
    }

    churchAdminContext.families[parentFamilyId] = parentFamily.copyWith(
      children: [...?parentFamily.children, childFamily],
    );
    churchAdminContext.families[childFamilyId] = childFamily.copyWith(
      parents: [...?childFamily.parents, parentFamily],
    );
  }
}

void _migrateStreets(
  ChurchDataContext churchDataContext,
  ChurchAdminContext churchAdminContext,
) {
  logger.i('Migrating Streets');
  for (final MapEntry(key: oldRef, value: street)
      in churchDataContext.streets.entries) {
    final newStreet = Street(
      id: street.id,
      areas: [?churchAdminContext.areas[street.areaId]],
      name: street.name,
      line: street.locationPoints.isNotEmpty
          ? Line(
              street.locationPoints
                  .map((p) => Point(p.latitude, p.longitude))
                  .toList(),
            )
          : null,
      color: street.color?.toUiColor(),
    );

    final newRef = IdReference.fromPath(
      'Streets/${newStreet.id}',
      context: churchAdminContext,
    );

    churchAdminContext.streets[newRef] = newStreet;
    churchAdminContext.streets[oldRef] = newStreet;

    if (street.areaId != null) {
      churchAdminContext.areasStreets.add((
        areaId: street.areaId!,
        streetId: newRef,
      ));
    }
  }
}

void _migrateAreas(
  ChurchDataContext churchDataContext,
  ChurchAdminContext churchAdminContext,
) {
  logger.i('Migrating Areas');
  for (final MapEntry(key: oldRef, value: area)
      in churchDataContext.areas.entries) {
    final newArea = Area(
      id: area.id,
      name: area.name,
      bounds: area.locationPoints.isNotEmpty
          ? Polygon(
              area.locationPoints
                  .map((p) => Point(p.latitude, p.longitude))
                  .toList(),
            )
          : null,
      color: area.color?.toUiColor(),
    );

    final newRef = IdReference.fromPath(
      'Areas/${newArea.id}',
      context: churchAdminContext,
    );

    churchAdminContext.areas[newRef] = newArea;
    churchAdminContext.areas[oldRef] = newArea;
  }
}

void _migrateChurches(
  ChurchDataContext churchDataContext,
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) {
  final migratedChurches = <Church>[];
  final mergedPairs = <(churchdata.Church, Church, double)>[];

  for (final MapEntry(key: oldRef, value: church)
      in churchDataContext.churches.entries.followedBy(
        meetingHelperContext.churches.entries,
      )) {
    final duplicate = migratedChurches
        .map(
          (c) => (
            church: c,
            score: c.name
                .normalize()
                .replaceAll('كنيسه', '')
                .trim()
                .levenshteinSimilarity(
                  church.name.normalize().replaceAll('كنيسه', '').trim(),
                ),
          ),
        )
        .where((e) => e.score > 0.86)
        .sorted((a, b) => b.score.compareTo(a.score))
        .firstOrNull;
    if (duplicate != null) {
      churchAdminContext.churches[oldRef] = duplicate.church;
      mergedPairs.add((church, duplicate.church, duplicate.score));
      continue;
    }

    final newRef = IdReference.fromPath(
      'Churches/${church.id}',
      context: churchAdminContext,
    );

    final newChurch = Church(id: church.id, name: church.name.trim());
    churchAdminContext.churches[newRef] = newChurch;
    churchAdminContext.churches[oldRef] = newChurch;

    migratedChurches.add(newChurch);
  }

  final prettyPrintMerged = mergedPairs
      .sortedBy((e) => e.$3)
      .map((e) => ' - "${e.$1.name}" <-> "${e.$2.name}" (score: ${e.$3})')
      .join('\n');
  logger.i('Merged Churches:\n$prettyPrintMerged');
}

void _migrateFathers(
  ChurchDataContext churchDataContext,
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) {
  final migratedFathers = <Father>[];
  final mergedPairs = <(churchdata.Father, Father, double)>[];

  for (final MapEntry(key: oldRef, value: father)
      in churchDataContext.cFathers.entries.followedBy(
        meetingHelperContext.cFathers.entries,
      )) {
    final duplicate = migratedFathers
        .map(
          (c) => (
            father: c,
            score: c.name
                .normalize()
                .replaceAll('(ابونا|القمص|القس)', '')
                .trim()
                .levenshteinSimilarity(
                  father.name
                      .normalize()
                      .replaceAll('(ابونا|القمص|القس)', '')
                      .trim(),
                ),
          ),
        )
        .where((e) => e.score > 0.86)
        .sorted((a, b) => b.score.compareTo(a.score))
        .firstOrNull;
    if (duplicate != null) {
      churchAdminContext.fathers[oldRef] = duplicate.father;
      mergedPairs.add((father, duplicate.father, duplicate.score));
      continue;
    }

    final newRef = IdReference.fromPath(
      'Fathers/${father.id}',
      context: churchAdminContext,
    );

    final newFather = Father(id: father.id, name: father.name.trim());
    churchAdminContext.fathers[newRef] = newFather;
    churchAdminContext.fathers[oldRef] = newFather;

    migratedFathers.add(newFather);
  }

  final prettyPrintMerged = mergedPairs
      .sortedBy((e) => e.$3)
      .map((e) => ' - "${e.$1.name}" <-> "${e.$2.name}" (score: ${e.$3})')
      .join('\n');
  logger.i('Merged Fathers:\n$prettyPrintMerged');
}

void _migrateColleges(
  ChurchDataContext churchDataContext,
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) {
  final migratedColleges = <College>[];
  final mergedPairs = <(churchdata.College, College, double)>[];

  for (final MapEntry(key: oldRef, value: college)
      in churchDataContext.colleges.entries.followedBy(
        meetingHelperContext.colleges.entries,
      )) {
    final duplicate = migratedColleges
        .map(
          (c) => (
            college: c,
            score: c.name
                .normalize()
                .replaceAll('كليه', '')
                .trim()
                .levenshteinSimilarity(
                  college.name.normalize().replaceAll('كليه', '').trim(),
                ),
          ),
        )
        .where((e) => e.score > 0.86)
        .sorted((a, b) => b.score.compareTo(a.score))
        .firstOrNull;
    if (duplicate != null) {
      churchAdminContext.colleges[oldRef] = duplicate.college;
      mergedPairs.add((college, duplicate.college, duplicate.score));
      continue;
    }

    final newRef = IdReference.fromPath(
      'Colleges/${college.id}',
      context: churchAdminContext,
    );

    final newCollege = College(id: college.id, name: college.name.trim());
    churchAdminContext.colleges[newRef] = newCollege;
    churchAdminContext.colleges[oldRef] = newCollege;

    migratedColleges.add(newCollege);
  }

  final prettyPrintMerged = mergedPairs
      .sortedBy((e) => e.$3)
      .map((e) => ' - "${e.$1.name}" <-> "${e.$2.name}" (score: ${e.$3})')
      .join('\n');
  logger.i('Merged Colleges:\n$prettyPrintMerged');
}

void _migrateJobs(
  ChurchDataContext churchDataContext,
  ChurchAdminContext churchAdminContext,
) {
  final migratedJobs = <Job>[];
  final mergedPairs = <(churchdata.Job, Job, double)>[];

  for (final MapEntry(key: oldRef, value: job)
      in churchDataContext.jobs.entries) {
    final duplicate = migratedJobs
        .map(
          (c) => (
            job: c,
            score: c.name.normalize().levenshteinSimilarity(
              job.name.normalize(),
            ),
          ),
        )
        .where((e) => e.score > 0.86)
        .sorted((a, b) => b.score.compareTo(a.score))
        .firstOrNull;
    if (duplicate != null) {
      churchAdminContext.jobs[oldRef] = duplicate.job;
      mergedPairs.add((job, duplicate.job, duplicate.score));
      continue;
    }

    final newRef = IdReference.fromPath(
      'Jobs/${job.id}',
      context: churchAdminContext,
    );

    final newJob = Job(id: job.id, name: job.name.trim());
    churchAdminContext.jobs[newRef] = newJob;
    churchAdminContext.jobs[oldRef] = newJob;

    migratedJobs.add(newJob);
  }

  final prettyPrintMerged = mergedPairs
      .sortedBy((e) => e.$3)
      .map((e) => ' - "${e.$1.name}" <-> "${e.$2.name}" (score: ${e.$3})')
      .join('\n');
  logger.i('Merged Jobs:\n$prettyPrintMerged');
}

void _migrateSchools(
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) {
  final migratedSchools = <School>[];
  final mergedPairs = <(meetinghelper.School, School, double)>[];

  for (final MapEntry(key: oldRef, value: school)
      in meetingHelperContext.schools.entries) {
    final duplicate = migratedSchools
        .map(
          (c) => (
            school: c,
            score: c.name.normalize().levenshteinSimilarity(
              school.name.normalize(),
            ),
          ),
        )
        .where((e) => e.score > 0.86)
        .sorted((a, b) => b.score.compareTo(a.score))
        .firstOrNull;
    if (duplicate != null) {
      churchAdminContext.schools[oldRef] = duplicate.school;
      mergedPairs.add((school, duplicate.school, duplicate.score));
      continue;
    }

    final newRef = IdReference.fromPath(
      'Schools/${school.ref.id}',
      context: churchAdminContext,
    );

    final newSchool = School(id: school.ref.id, name: school.name.trim());
    churchAdminContext.schools[newRef] = newSchool;
    churchAdminContext.schools[oldRef] = newSchool;

    migratedSchools.add(newSchool);
  }

  final prettyPrintMerged = mergedPairs
      .sortedBy((e) => e.$3)
      .map((e) => ' - "${e.$1.name}" <-> "${e.$2.name}" (score: ${e.$3})')
      .join('\n');
  logger.i('Merged Schools:\n$prettyPrintMerged');
}

void _migrateQualifications(
  ChurchDataContext churchDataContext,
  ChurchAdminContext churchAdminContext,
) {
  final migratedQualifications = <Qualification>[];
  final mergedPairs = <(String, Qualification, double)>[];

  for (final qualification
      in churchDataContext.persons.values
          .map((p) => p.qualification ?? '')
          .where((q) => q.trim().isNotEmpty)
          .toSet()) {
    final oldRef = IdReference.fromPath(
      'Qualifications/$qualification',
      context: churchAdminContext,
    );

    final duplicate = migratedQualifications
        .map(
          (c) => (
            qualification: c,
            score: c.name.normalize().levenshteinSimilarity(
              qualification.normalize(),
            ),
          ),
        )
        .where((e) => e.score > 0.9)
        .sorted((a, b) => b.score.compareTo(a.score))
        .firstOrNull;
    if (duplicate != null) {
      churchAdminContext.qualifications[oldRef] = duplicate.qualification;
      mergedPairs.add((
        qualification,
        duplicate.qualification,
        duplicate.score,
      ));
      continue;
    }

    final newRef = IdReference.fromPath(
      'Qualifications/${qualification.trim()}',
      context: churchAdminContext,
    );

    final newQualification = Qualification(
      id: qualification.trim(),
      name: qualification.trim(),
    );
    churchAdminContext.qualifications[newRef] = newQualification;
    churchAdminContext.qualifications[oldRef] = newQualification;

    migratedQualifications.add(newQualification);
  }

  final prettyPrintMerged = mergedPairs
      .sortedBy((e) => e.$3)
      .map((e) => ' - "${e.$1}" <-> "${e.$2.name}" (score: ${e.$3})')
      .join('\n');
  logger.i('Merged Qualifications:\n$prettyPrintMerged');
}

void _migrateShammasLevels(
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) {
  final migratedShammasLevels = <ShammasLevel>[];
  final List<String> shammasLevels = [
    'ابصالتس',
    'اغأناغنوستيس',
    'أيبودياكون',
    'دياكون',
    'أرشيدياكون',
  ];

  for (int i = 0; i < shammasLevels.length; i++) {
    final shammasLevel = shammasLevels[i];
    final oldRef = IdReference.fromPath(
      'ShammasLevels/$shammasLevel',
      context: churchAdminContext,
    );

    final newRef = IdReference.fromPath(
      'ShammasLevels/${shammasLevel.trim()}',
      context: churchAdminContext,
    );

    final newShammasLevel = ShammasLevel(
      id: shammasLevel.trim(),
      name: shammasLevel.trim(),
      order: i,
    );
    churchAdminContext.shammasLevels[newRef] = newShammasLevel;
    churchAdminContext.shammasLevels[oldRef] = newShammasLevel;

    migratedShammasLevels.add(newShammasLevel);
  }

  final prettyPrintMigrated = migratedShammasLevels
      .map((e) => ' - "${e.name}" (order: ${e.order})')
      .join('\n');
  logger.i('Migrated ShammasLevels:\n$prettyPrintMigrated');
}

void _migratePersonsStates(ChurchAdminContext churchAdminContext) {
  final migratedIds = <String>{};

  for (final personState
      in churchAdminContext.persons.values.map((p) => p.state).toSet()) {
    if (personState == null) {
      continue;
    } else if (migratedIds.contains(personState.id)) {
      continue;
    }

    churchAdminContext.personStates[IdReference.fromPath(
          'PersonStates/${personState.id}',
          context: churchAdminContext,
        )] =
        personState;
    migratedIds.add(personState.id);
  }
}

void _migratePersonsTypes(ChurchAdminContext churchAdminContext) {
  final migratedIds = <String>{};

  for (final personType
      in churchAdminContext.persons.values.map((p) => p.personType).toSet()) {
    if (personType == null) {
      continue;
    } else if (migratedIds.contains(personType.id)) {
      continue;
    }

    churchAdminContext.personTypes[IdReference.fromPath(
          'PersonTypes/${personType.id}',
          context: churchAdminContext,
        )] =
        personType;
    migratedIds.add(personType.id);
  }
}

Future<T> showUIForResult<T>(
  Widget Function(BuildContext, void Function(T)) widgetBuilder,
) async {
  final completer = Completer<T>();

  runApp(
    MaterialApp(
      home: Builder(
        builder: (context) => widgetBuilder(context, completer.complete),
      ),
    ),
  );

  return completer.future;
}

Future<void> _exportToCsv(ChurchAdminContext churchAdminContext) async {
  final exportDir = await Directory('./export').create();

  final csvExporter = ChurchAdminCsvExporter(churchAdminContext, exportDir);
  await csvExporter.exportAllUnique();
}
