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
import 'package:dart_firebase_admin/firestore.dart' show Timestamp;
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

/// When true the migration runs without prompting for merge/family decisions,
/// applying the automatic defaults instead. Kept as a single switch so the
/// interactive UI can be re-enabled in one place.
const bool isSilentMigration = true;

Future<void> migrate({
  required FirebaseAdminApp churchDataApp,
  required FirebaseAdminApp meetingHelperApp,
  required bool migrateAuthUsers,
}) async {
  String? currentStep;
  int? lastStepElapsedMs;

  final stopwatch = Stopwatch()..start();
  logger.i('Migration...');

  await _migrateWithTiming(
    churchDataApp: churchDataApp,
    meetingHelperApp: meetingHelperApp,
    migrateAuthUsers: migrateAuthUsers,
    beforeStepStart: (stepName) {
      if (currentStep != null && lastStepElapsedMs != null) {
        logger.i(
          '$currentStep completed in ${stopwatch.elapsedMilliseconds - (lastStepElapsedMs ?? 0)}ms',
        );
      }
      currentStep = stepName;
      lastStepElapsedMs = stopwatch.elapsedMilliseconds;

      logger.i('$stepName...');
    },
  );

  stopwatch.stop();
  logger.i('Migration completed in ${stopwatch.elapsedMilliseconds}ms');
}

Future<void> _migrateWithTiming({
  required FirebaseAdminApp churchDataApp,
  required FirebaseAdminApp meetingHelperApp,
  required bool migrateAuthUsers,
  required void Function(String stepName) beforeStepStart,
}) async {
  final churchAdminContext = ChurchAdminContext();

  beforeStepStart('Loading Church Data context');
  final churchDataContext = await ChurchDataContext.load(churchDataApp);

  beforeStepStart('Loading Meeting Helper context');
  final meetingHelperContext = await MeetingHelperContext.load(
    meetingHelperApp,
  );

  beforeStepStart('Creating new StudyYears');
  await createNewStudyYears(
    churchDataContext,
    meetingHelperContext,
    churchAdminContext,
  );

  beforeStepStart('Migrating and creating new Services');
  await migrateAndCreateNewServices(meetingHelperContext, churchAdminContext);

  beforeStepStart('Migrating Classes');
  _migrateClasses(meetingHelperContext, churchAdminContext);

  beforeStepStart('Migrating ShammasLevels');
  _migrateShammasLevels(meetingHelperContext, churchAdminContext);

  beforeStepStart('Migrating Churches');
  _migrateChurches(churchDataContext, meetingHelperContext, churchAdminContext);

  beforeStepStart('Migrating Fathers');
  _migrateFathers(churchDataContext, meetingHelperContext, churchAdminContext);

  beforeStepStart('Migrating Schools');
  _migrateSchools(meetingHelperContext, churchAdminContext);

  beforeStepStart('Migrating Colleges');
  _migrateColleges(churchDataContext, meetingHelperContext, churchAdminContext);

  beforeStepStart('Migrating Jobs');
  _migrateJobs(churchDataContext, churchAdminContext);

  beforeStepStart('Migrating Qualifications');
  _migrateQualifications(churchDataContext, churchAdminContext);

  beforeStepStart('Migrating Areas');
  _migrateAreas(churchDataContext, churchAdminContext);

  beforeStepStart('Migrating Streets');
  _migrateStreets(churchDataContext, churchAdminContext);
  beforeStepStart('Migrating Families');
  _migrateFamilies(churchDataContext, churchAdminContext);

  beforeStepStart('Migrating Stores');
  _migrateStores(churchDataContext, churchAdminContext);
  beforeStepStart('Migrating ChurchData Persons');
  _migrateChurchDataPersons(churchDataContext, churchAdminContext);

  beforeStepStart('Migrating Meeting Helper Persons');
  _migrateMeetingHelperPersons(meetingHelperContext, churchAdminContext);

  beforeStepStart('Migrating Persons States from persons');
  _migratePersonsStates(churchAdminContext);

  beforeStepStart('Migrating Persons Types from persons');
  _migratePersonsTypes(churchAdminContext);

  if (migrateAuthUsers) {
    beforeStepStart('Migrating Auth Users');
    await _migrateAuthUsers(
      churchDataContext: churchDataContext,
      meetingHelperContext: meetingHelperContext,
      churchAdminContext: churchAdminContext,
    );
  }

  beforeStepStart('Exporting to CSV');
  await _exportToCsv(churchAdminContext);
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
    final newRef = IdReference.fromPath('Persons/${person.id}');

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
      color: person.color,
      family: churchAdminContext.families[person.familyId],
      store: churchAdminContext.stores[person.familyId],
      martialStatus: personTypeData?.martialStatus ?? MartialStatus.married,
      studyYear: studyYear,
      job: person.job != null ? churchAdminContext.jobs[person.job] : null,
      jobDescription: person.jobDescription,
      qualification:
          churchAdminContext.qualifications[IdReference.fromPath(
            'Qualifications/${person.qualification}',
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
        color: personStateData?.color,
      ),
      notes: person.notes,
    );

    churchAdminContext.persons[newRef] = newPerson;
    churchAdminContext.persons[oldRef] = newPerson;

    _recordPersonHistory(
      churchAdminContext,
      personId: newRef.id,
      lastConfession: person.lastConfession,
      lastTanawol: person.lastTanawol,
      lastCall: person.lastCall,
    );
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

  // Build the person/family match indexes once from the already-migrated
  // (ChurchData) records. They grow as MeetingHelper persons are added so that
  // later persons can still de-duplicate against earlier ones.
  final personIndex = _PersonMatchIndex();
  for (final person in _dedupById(churchAdminContext.persons.values)) {
    personIndex.add(
      _PersonMatchEntry.of(
        person,
        addressesByFamilyId[person.family?.id]?.specialLandmark,
      ),
    );
  }

  final familyIndex = _FamilyMatchIndex();
  final membersByFamilyId = <String, List<Person>>{};
  for (final person in _dedupById(churchAdminContext.persons.values)) {
    final familyId = person.family?.id;
    if (familyId != null) {
      membersByFamilyId.putIfAbsent(familyId, () => []).add(person);
    }
  }
  for (final family in _dedupById(churchAdminContext.families.values)) {
    familyIndex.add(family, membersByFamilyId[family.id] ?? const []);
  }

  logger.i('Migrating Meeting Helper Persons');
  for (final MapEntry(key: oldRef, value: person)
      in meetingHelperContext.persons.entries
          .take(isDryRun ? 10 : meetingHelperContext.persons.length)
          .sortedBy((e) => e.value.name)) {
    // Pre-normalize the incoming person once and reuse across all candidates.
    final personNormName = person.name.normalize();
    final personNormFirstName = person.name.split(' ').first.normalize();
    final personPhoneDigits = (person.phone ?? '').replaceAll(
      RegExp(r'\D'),
      '',
    );
    final personNormAddress = person.address?.normalize();

    // Only score candidates that share a (normalized) first name or phone,
    // instead of every migrated person.
    ({Person person, double score})? duplicate;
    var bestScore = 0.84;
    for (final candidate in personIndex.candidatesFor(
      firstName: personNormFirstName,
      phoneDigits: personPhoneDigits,
    )) {
      final score = PersonSimilarity(
        firstName1: candidate.normFirstName,
        firstName2: personNormFirstName,
        name1: candidate.normName,
        name2: personNormName,
        birthdate1: candidate.person.birthdate,
        birthdate2: person.birthDate,
        phoneDigits1: candidate.phoneDigits,
        phoneDigits2: personPhoneDigits,
        address1: candidate.normAddress,
        address2: personNormAddress,
      ).calculate();

      if (score > bestScore) {
        bestScore = score;
        duplicate = (person: candidate.person, score: score);
      }
    }

    if (duplicate != null) {
      final newAddress = Address(
        id: 'family_${duplicate.person.family?.id}_address',
      );
      final existingFamilyAddress =
          addressesByFamilyId[duplicate.person.family?.id] ?? newAddress;
      final merged = await _maybeMergePersons(
        silent: isSilentMigration,
        existingFamilyAddress: existingFamilyAddress,
        person: person,
        duplicate: duplicate,
        churchAdminContext: churchAdminContext,
        meetingHelperContext: meetingHelperContext,
      );

      if (merged) {
        // Keep the index current so later persons can match the merged record.
        final mergedPerson = churchAdminContext
            .persons[IdReference.fromPath('Persons/${duplicate.person.id}')];
        if (mergedPerson != null) {
          personIndex.add(
            _PersonMatchEntry.of(
              mergedPerson,
              existingFamilyAddress.specialLandmark,
            ),
          );
        }
        continue;
      }
    }

    // Find the most similar existing family by (family name vs full name) and
    // best phone match among its members.
    _FamilyMatchEntry? similarFamily;
    var bestFamilyScore = 0.9;
    for (final entry in familyIndex.entries) {
      final nameScore = entry.normName.levenshteinSimilarity(
        personNormName,
        threshold: 0.85,
      );
      if (nameScore < 0.85) continue;

      var phoneScore = 0.0;
      if (personPhoneDigits.isNotEmpty) {
        for (final memberDigits in entry.memberPhoneDigits) {
          final score = memberDigits.levenshteinSimilarity(personPhoneDigits);
          if (score > phoneScore) phoneScore = score;
        }
      }

      final combinedScore = (nameScore + 1.3 * phoneScore) / 2.3;
      if (combinedScore > bestFamilyScore) {
        bestFamilyScore = combinedScore;
        similarFamily = entry;
      }
    }

    Family? family = similarFamily?.family;

    final matchedFamily = similarFamily;
    if (matchedFamily != null) {
      final shouldUseExistingFamily = isSilentMigration
          ? true
          : await showUIForResult<bool>((context, complete) {
              return showFamilySelectionDialog(
                silent: false,
                complete: complete,
                family: matchedFamily.family,
                familyMembers: matchedFamily.members,
                personName: person.name,
                personPhone: person.phone,
                personAddress: person.address,
                personNotes: person.notes,
              );
            });

      if (!shouldUseExistingFamily) {
        family = null;
        similarFamily = null;
      }
    }

    if (family == null) {
      final familyId = IdReference.fromPath(
        'Families/person_${person.ref.id}_family',
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

      // Make the new family discoverable for subsequent persons.
      similarFamily = familyIndex.add(family, const []);
    }

    final newRef = IdReference.fromPath('Persons/${person.ref.id}');

    final shammasLevel =
        churchAdminContext.shammasLevels[IdReference.fromPath(
          'ShammasLevels/${person.shammasLevel}',
        )];
    final isShammas = shammasLevel != null && person.gender && person.isShammas;

    final newPerson = Person(
      id: newRef.id,
      name: person.name,
      birthdate: person.birthDate,
      gender: person.gender,
      mainPhone: person.phone,
      otherPhones: person.otherPhonesWithParents,
      church: churchAdminContext.churches[person.church],
      college: churchAdminContext.colleges[person.college],
      color: person.color,
      family: family,
      martialStatus: MartialStatus.single,
      studyYear: churchAdminContext
          .studyYears[meetingHelperContext.studyYears[person.studyYear]?.grade],
      services: legacyAndClassParentServices(churchAdminContext, person),
      workStatus: WorkStatus.student,
      father: churchAdminContext.fathers[person.cFather],
      // shammas_level_id must be null when is_shammas is false to satisfy the
      // persons_shammas_level check constraint.
      shammasLevel: isShammas ? shammasLevel : null,
      isShammas: isShammas,
      school: churchAdminContext.schools[person.school],
      notes: person.notes,
    );

    churchAdminContext.persons[newRef] = newPerson;
    churchAdminContext.persons[oldRef] = newPerson;

    _recordPersonHistory(
      churchAdminContext,
      personId: newRef.id,
      lastConfession: person.lastConfession,
      lastKodas: person.lastKodas,
      lastTanawol: person.lastTanawol,
      lastCall: person.lastCall,
      lastVisit: person.lastVisit,
    );

    // Keep both indexes current for later persons.
    personIndex.add(_PersonMatchEntry.of(newPerson, person.address));
    similarFamily!.addMember(newPerson);
  }
}

/// De-duplicates a collection of identifiable objects by their `id`, preserving
/// order. Migrated records are stored under multiple keys, so iterating `.values`
/// can yield the same object more than once.
Iterable<T> _dedupById<T extends ID>(Iterable<T> items) sync* {
  final seen = <String>{};
  for (final item in items) {
    if (seen.add(item.id)) yield item;
  }
}

/// A migrated person with its match keys pre-computed once.
class _PersonMatchEntry {
  final Person person;
  final String normFirstName;
  final String normName;
  final String phoneDigits;
  final String? normAddress;

  _PersonMatchEntry({
    required this.person,
    required this.normFirstName,
    required this.normName,
    required this.phoneDigits,
    required this.normAddress,
  });

  factory _PersonMatchEntry.of(Person person, String? addressText) {
    return _PersonMatchEntry(
      person: person,
      normFirstName: person.name.split(' ').first.normalize(),
      normName: person.name.normalize(),
      phoneDigits: (person.mainPhone ?? '').replaceAll(RegExp(r'\D'), ''),
      normAddress: addressText?.normalize(),
    );
  }
}

/// Blocking index over migrated persons keyed by normalized first name and by
/// phone digits, so an incoming person is only compared against plausible
/// candidates instead of every record.
class _PersonMatchIndex {
  final Map<String, List<_PersonMatchEntry>> _byFirstName = {};
  final Map<String, List<_PersonMatchEntry>> _byPhone = {};

  void add(_PersonMatchEntry entry) {
    _byFirstName.putIfAbsent(entry.normFirstName, () => []).add(entry);
    if (entry.phoneDigits.isNotEmpty) {
      _byPhone.putIfAbsent(entry.phoneDigits, () => []).add(entry);
    }
  }

  Iterable<_PersonMatchEntry> candidatesFor({
    required String firstName,
    required String phoneDigits,
  }) {
    final seen = <_PersonMatchEntry>{};
    final result = <_PersonMatchEntry>[];
    for (final entry in [
      ...?_byFirstName[firstName],
      if (phoneDigits.isNotEmpty) ...?_byPhone[phoneDigits],
    ]) {
      if (seen.add(entry)) result.add(entry);
    }
    return result;
  }
}

/// A migrated family with its match keys and members' phone digits cached.
class _FamilyMatchEntry {
  final Family family;
  final String normName;
  final List<Person> members;
  final List<String> memberPhoneDigits;

  _FamilyMatchEntry(this.family, this.normName, this.members)
    : memberPhoneDigits = [
        for (final m in members)
          if ((m.mainPhone ?? '').replaceAll(RegExp(r'\D'), '').isNotEmpty)
            m.mainPhone!.replaceAll(RegExp(r'\D'), ''),
      ];

  void addMember(Person person) {
    members.add(person);
    final digits = (person.mainPhone ?? '').replaceAll(RegExp(r'\D'), '');
    if (digits.isNotEmpty) memberPhoneDigits.add(digits);
  }
}

class _FamilyMatchIndex {
  final List<_FamilyMatchEntry> entries = [];

  _FamilyMatchEntry add(Family family, List<Person> members) {
    final entry = _FamilyMatchEntry(family, family.name.normalize(), [
      ...members,
    ]);
    entries.add(entry);
    return entry;
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

  final newRef = IdReference.fromPath('Persons/${duplicate.person.id}');
  final oldRef = IdReference.fromPath('Persons/${person.ref.id}');

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
          )] =
          newFamily;

      newAddress = newAddress.copyWith(family: newFamily);
    }

    final addressId = IdReference.fromPath('Addresses/${newAddress.id}');
    churchAdminContext.addresses[addressId] = newAddress;
  }

  churchAdminContext.persons[newRef] = mergedPerson.copyWith(id: newRef.id);
  churchAdminContext.persons[oldRef] = mergedPerson.copyWith(id: newRef.id);

  _recordPersonHistory(
    churchAdminContext,
    personId: newRef.id,
    lastConfession: person.lastConfession,
    lastKodas: person.lastKodas,
    lastTanawol: person.lastTanawol,
    lastCall: person.lastCall,
    lastVisit: person.lastVisit,
  );

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

    final newRef = IdReference.fromPath('Stores/${store.id}');

    final family1Ref = store.insideFamily;
    final family2Ref = store.insideFamily2;

    final newStore = Store(
      id: newRef.id,
      name: store.name,
      family:
          churchAdminContext.families[family1Ref] ??
          churchAdminContext.families[family2Ref],
      color: store.color,
    );

    final addressId = IdReference.fromPath(
      'Addresses/store_${newStore.id}_address',
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

    _recordVisitHistory(
      churchAdminContext,
      table: 'stores',
      recordId: newStore.id,
      lastVisit: store.lastVisit,
      fatherLastVisit: store.fatherLastVisit,
    );
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

    final newRef = IdReference.fromPath('Families/${family.id}');

    final family1Ref = family.insideFamily;

    final family2Ref = family.insideFamily2;

    if (family1Ref != null &&
        churchDataContext.familiesAndStores[family1Ref] != null) {
      churchAdminContext.familiesFamilies.add((
        parentFamilyId: IdReference.fromPath(family1Ref.path),
        childFamilyId: newRef,
      ));
    }
    if (family2Ref != null &&
        churchDataContext.familiesAndStores[family2Ref] != null) {
      churchAdminContext.familiesFamilies.add((
        parentFamilyId: IdReference.fromPath(family2Ref.path),
        childFamilyId: newRef,
      ));
    }

    final newFamily = Family(
      id: newRef.id,
      name: family.name,
      notes: family.notes,
      color: family.color,
    );

    final addressId = IdReference.fromPath(
      'Addresses/family_${newFamily.id}_address',
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

    _recordVisitHistory(
      churchAdminContext,
      table: 'families',
      recordId: newFamily.id,
      lastVisit: family.lastVisit,
      fatherLastVisit: family.fatherLastVisit,
    );
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
      color: street.color,
    );

    final newRef = IdReference.fromPath('Streets/${newStreet.id}');

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
      color: area.color,
    );

    final newRef = IdReference.fromPath('Areas/${newArea.id}');

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

    final newRef = IdReference.fromPath('Churches/${church.id}');

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

    final newRef = IdReference.fromPath('Fathers/${father.id}');

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

    final newRef = IdReference.fromPath('Colleges/${college.id}');

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

    final newRef = IdReference.fromPath('Jobs/${job.id}');

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

    final newRef = IdReference.fromPath('Schools/${school.ref.id}');

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
    final oldRef = IdReference.fromPath('Qualifications/$qualification');

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

void _migrateClasses(
  MeetingHelperContext meetingHelperContext,
  ChurchAdminContext churchAdminContext,
) {
  logger.i('Migrating Classes');

  var skipped = 0;
  for (final MapEntry(key: oldRef, value: mhClass)
      in meetingHelperContext.classes.entries) {
    final grade = mhClass.studyYear != null
        ? meetingHelperContext.studyYears[mhClass.studyYear]?.grade
        : null;
    final studyYear = grade != null
        ? churchAdminContext.studyYears[grade]
        : null;

    // classes.service_id and classes.service_study_year are NOT NULL, so a
    // class we cannot anchor to a study year/service cannot be represented.
    if (studyYear == null) {
      skipped++;
      continue;
    }

    final service = serviceForStudyYearOrder(
      churchAdminContext,
      studyYear.order,
    );
    if (service == null) {
      skipped++;
      continue;
    }

    final newClass = Class(
      id: mhClass.ref.id,
      name: mhClass.name,
      color: mhClass.color,
      service: service,
      serviceId: service.id,
      studyYear: studyYear,
      serviceStudyYear: studyYear.order,
      serviceGender: mhClass.gender,
    );

    final newRef = IdReference.fromPath('Classes/${newClass.id}');
    churchAdminContext.classes[newRef] = newClass;
    churchAdminContext.classes[oldRef] = newClass;
  }

  if (skipped > 0) {
    logger.w(
      'Skipped $skipped class(es) without a resolvable study year/service',
    );
  }
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
    final oldRef = IdReference.fromPath('ShammasLevels/$shammasLevel');

    final newRef = IdReference.fromPath('ShammasLevels/${shammasLevel.trim()}');

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
        )] =
        personType;
    migratedIds.add(personType.id);
  }
}

DateTime? _asDateTime(Object? value) {
  if (value == null) return null;
  if (value is DateTime) return value;
  if (value is Timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(value.seconds * 1000);
  }
  return null;
}

/// Records the legacy "last ..." timestamps of a person into the corresponding
/// history collections. [lastTanawol] has no dedicated table in the new schema,
/// so (per migration decision) it is recorded as a kodas-history entry.
void _recordPersonHistory(
  ChurchAdminContext churchAdminContext, {
  required String personId,
  Object? lastConfession,
  Object? lastKodas,
  Object? lastTanawol,
  Object? lastCall,
  Object? lastVisit,
}) {
  final confession = _asDateTime(lastConfession);
  if (confession != null) {
    churchAdminContext.confessionHistory.add((
      personId: personId,
      time: confession,
    ));
  }

  for (final kodas in [_asDateTime(lastKodas), _asDateTime(lastTanawol)]) {
    if (kodas != null) {
      churchAdminContext.kodasHistory.add((personId: personId, time: kodas));
    }
  }

  final call = _asDateTime(lastCall);
  if (call != null) {
    churchAdminContext.callHistory.add((personId: personId, time: call));
  }

  final visit = _asDateTime(lastVisit);
  if (visit != null) {
    churchAdminContext.visitHistory.add((
      table: 'persons',
      recordId: personId,
      time: visit,
      isFatherVisit: false,
    ));
  }
}

/// Records the legacy visit timestamps of a family/store into visit history.
void _recordVisitHistory(
  ChurchAdminContext churchAdminContext, {
  required String table,
  required String recordId,
  Object? lastVisit,
  Object? fatherLastVisit,
}) {
  final visit = _asDateTime(lastVisit);
  if (visit != null) {
    churchAdminContext.visitHistory.add((
      table: table,
      recordId: recordId,
      time: visit,
      isFatherVisit: false,
    ));
  }

  final fatherVisit = _asDateTime(fatherLastVisit);
  if (fatherVisit != null) {
    churchAdminContext.visitHistory.add((
      table: table,
      recordId: recordId,
      time: fatherVisit,
      isFatherVisit: true,
    ));
  }
}

Future<void> _migrateAuthUsers({
  required ChurchDataContext churchDataContext,
  required ChurchAdminContext churchAdminContext,
  required MeetingHelperContext meetingHelperContext,
}) async {}

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
