import 'dart:convert';
import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/migrations/create_new_services.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:csvwriter/csvwriter.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

final String _churchAdminMigrationNamespace = Uuid().v5(
  '71fa3fad-165f-4ccd-810e-7841a1381460',
  'migration-v2-2025-10',
);

/// `recorded_by` value used for migrated `confession_history` / `kodas_history`
/// rows. Those columns are NOT NULL with an FK to `auth.users_data(uid)`, and
/// migrated historical records have no real author.
///
/// IMPORTANT: replace this with the UID of a real (system/migration) user that
/// exists in `auth.users_data` before importing, otherwise the foreign key will
/// reject these rows.
const String migrationRecordedByUid = '00000000-0000-0000-0000-000000000000';

class ChurchAdminCsvExporter {
  final Directory dir;
  final ChurchAdminContext churchAdminContext;

  ChurchAdminCsvExporter(this.churchAdminContext, this.dir);

  Future<void> exportAllUnique() async {
    await _exportChurches();
    await _exportJobs();
    await _exportPersonStates();
    await _exportPersonTypes();
    await _exportQualifications();
    await _exportSchools();
    await _exportShammasLevels();
    await _exportStudyYears();
    await _exportColleges();
    await _exportFathers();
    await _exportAddresses();
    await _exportAreas();
    await _exportAreasStreets();
    await _exportServices();
    await _exportMeetings();
    await _exportClasses();
    await _exportFamilies();
    await _exportFamiliesFamilies();
    await _exportPersonsServices();
    await _exportPersons();
    await _exportStores();
    await _exportStreets();
    await _exportUsers();

    await _exportVisitHistory();
    await _exportCallHistory();
    await _exportConfessionHistory();
    await _exportKodasHistory();

    await _exportAreasIdsMapping();
    await _exportStreetsIdsMapping();
    await _exportFamiliesIdsMapping();
    await _exportStoresIdsMapping();
    await _exportPersonsIdsMapping();
    await _exportServicesIdsMapping();
    await _exportClassesIdsMapping();

    await _exportUsersIdsMapping();
  }

  Future<void> _exportSerializables<T extends ToJson>(
    String filename,
    Iterable<T> serializables,
  ) async {
    if (serializables.isEmpty) {
      return;
    }

    final firstSerializable = serializables.first;

    final file = _getExportFile(filename);
    final writer = CsvWriter.withHeaders(
      file.openWrite(),
      firstSerializable.toJson().keys,
    );

    _writeSerializables(writer, serializables);

    await writer.close();
  }

  File _getExportFile(String name) {
    final file = File(p.join(dir.path, p.setExtension(name, '.csv')));

    file.createSync(recursive: true);

    return file;
  }

  void _writeSerializables(CsvWriter writer, Iterable<ToJson> objects) {
    final writtenIds = <String>{};
    final writtenObjects = <ToJson>{};

    for (final object in objects) {
      if (object case ID(:final id) when writtenIds.contains(id)) {
        continue;
      } else if (writtenObjects.contains(object)) {
        continue;
      }

      writer.writeData(
        data: object.toJson().map(
          (k, v) => switch (v) {
            final String v when k.toLowerCase().endsWith('id') => MapEntry(
              k,
              _uuidFromFirestoreId(v),
            ),
            {'id': final id} => MapEntry(k, id),
            final Map m => MapEntry(k, jsonEncode(m)),
            _ => MapEntry(k, v),
          },
        ),
      );

      if (object case ID(:final id)) {
        writtenIds.add(id);
      }
      writtenObjects.add(object);
    }
  }

  String? _uuidFromFirestoreId(Object? firestoreId) {
    if (firestoreId == null) {
      return null;
    } else if (firestoreId is! String) {
      Logger().w(
        'Expected String seed for UUID generation, got ${firestoreId.runtimeType}. Returning null.',
      );
      return null;
    } else if (Uuid.isValidUUID(fromString: firestoreId)) {
      return firestoreId;
    }

    return Uuid().v5(_churchAdminMigrationNamespace, firestoreId);
  }

  Future<void> _exportChurches() async {
    await _exportSerializables('churches', churchAdminContext.churches.values);
  }

  Future<void> _exportJobs() async {
    await _exportSerializables('jobs', churchAdminContext.jobs.values);
  }

  Future<void> _exportPersonStates() async {
    await _exportSerializables(
      'person_states',
      churchAdminContext.personStates.values,
    );
  }

  Future<void> _exportPersonTypes() async {
    await _exportSerializables(
      'person_types',
      churchAdminContext.personTypes.values,
    );
  }

  Future<void> _exportQualifications() async {
    await _exportSerializables(
      'qualifications',
      churchAdminContext.qualifications.values,
    );
  }

  Future<void> _exportSchools() async {
    await _exportSerializables('schools', churchAdminContext.schools.values);
  }

  Future<void> _exportShammasLevels() async {
    await _exportSerializables(
      'shammas_levels',
      churchAdminContext.shammasLevels.values,
    );
  }

  Future<void> _exportStudyYears() async {
    await _exportSerializables(
      'study_years',
      churchAdminContext.studyYears.values,
    );
  }

  Future<void> _exportColleges() async {
    await _exportSerializables(
      'colleges',
      churchAdminContext.colleges.values.map(
        (c) => _ToJsonAdapter(
          c,
          c.id,
          (college) => {'id': college.id, 'name': college.name},
        ),
      ),
    );
  }

  Future<void> _exportFathers() async {
    await _exportSerializables(
      'fathers',
      churchAdminContext.fathers.values.map(
        (f) => _ToJsonAdapter(
          f,
          f.id,
          (father) => {'id': father.id, 'name': father.name},
        ),
      ),
    );
  }

  Future<void> _exportAddresses() async {
    await _exportSerializables(
      'addresses',
      churchAdminContext.addresses.values.map(
        (address) => _ToJsonAdapter(
          address,
          address.id!,
          (a) => {
            'id': _uuidFromFirestoreId(a.id),
            'country_iso_code': a.countryIsoCode,
            'district_id': _uuidFromFirestoreId(a.district?.id),
            'area_id': _uuidFromFirestoreId(a.area?.id),
            'street_id': _uuidFromFirestoreId(a.street?.id),
            'substreet_name': a.substreetName,
            'geolocation': a.geolocation?.asWKT(),
            'storey_number': a.storeyNumber,
            'house_number': a.houseNumber,
            'apartment_number': a.apartmentNumber,
            'special_landmark': a.specialLandmark,
            'family_id': _uuidFromFirestoreId(a.family?.id),
            'store_id': _uuidFromFirestoreId(a.store?.id),
          },
        ),
      ),
    );
  }

  Future<void> _exportAreas() async {
    await _exportSerializables(
      'areas',
      churchAdminContext.areas.values.map(
        (area) => _ToJsonAdapter(
          area,
          area.id,
          (a) => {
            'id': _uuidFromFirestoreId(a.id),
            'name': a.name,
            'bounds': a.bounds?.asWKT(),
            'color': colorToInt(a.color),
            'photo_updated_at': a.photoUpdatedAt?.toIso8601String(),
            'blurhash': a.blurhash,
          },
        ),
      ),
    );
  }

  Future<void> _exportAreasStreets() async {
    await _exportSerializables(
      'areas_streets',
      churchAdminContext.areasStreets.map(
        (areaStreet) => _ToJsonAdapter(
          areaStreet,
          '${areaStreet.areaId.id}-${areaStreet.streetId.id}',
          (as) => {'area_id': as.areaId.id, 'street_id': as.streetId.id},
        ),
      ),
    );
  }

  Future<void> _exportClasses() async {
    await _exportSerializables(
      'classes',
      churchAdminContext.classes.values.map(
        (class$) => _ToJsonAdapter(
          class$,
          class$.id,
          (c) => {
            'id': _uuidFromFirestoreId(c.id),
            'name': c.name,
            'service_id': _uuidFromFirestoreId(c.service?.id ?? c.serviceId),
            'service_study_year': c.studyYear?.order ?? c.serviceStudyYear,
            'service_gender': c.serviceGender,
            'color': colorToInt(c.color),
            'photo_updated_at': c.photoUpdatedAt?.toIso8601String(),
            'blurhash': c.blurhash,
          },
        ),
      ),
    );
  }

  Future<void> _exportServices() async {
    await _exportSerializables(
      'services',
      churchAdminContext.services.values.map(
        (service) => _ToJsonAdapter(
          service,
          service.id,
          (s) => {
            'id': _uuidFromFirestoreId(s.id),
            'name': s.name,
            'study_year_from_id': s.studyYearFrom?.order ?? s.studyYearFromId,
            'study_year_to_id': s.studyYearTo?.order ?? s.studyYearToId,
            'next_service_id': _uuidFromFirestoreId(
              s.nextService?.id ?? s.nextServiceId,
            ),
            'default_meeting_id': _uuidFromFirestoreId(s.defaultMeeting?.id),
            'color': colorToInt(s.color),
            'photo_updated_at': s.photoUpdatedAt?.toIso8601String(),
            'blurhash': s.blurhash,
          },
        ),
      ),
    );
  }

  Future<void> _exportMeetings() async {
    await _exportSerializables(
      'meetings',
      churchAdminContext.meetings.values.map(
        (meeting) => _ToJsonAdapter(
          meeting,
          meeting.id,
          (m) => {
            'id': _uuidFromFirestoreId(m.id),
            'name': m.name,
            'service_id': _uuidFromFirestoreId(m.service?.id ?? m.serviceId),
            'service_study_year': m.serviceStudyYear,
            'service_gender': m.serviceGender,
            'group_id': _uuidFromFirestoreId(m.group?.id ?? m.groupId),
            'audience': m.audience.name,
            'is_archived': m.isArchived,
            'color': colorToInt(m.color),
          },
        ),
      ),
    );
  }

  Future<void> _exportFamilies() async {
    await _exportSerializables(
      'families',
      churchAdminContext.families.values
          .map(
            (family) => _ToJsonAdapter(
              family,
              family.id,
              (f) => {
                'id': _uuidFromFirestoreId(f.id),
                'name': f.name,
                'status': f.status.name,
                'marriage_date': f.marriageDate?.toIso8601String(),
                'deceased_spouse_name': f.deceasedSpouseName,
                'notes': f.notes,
                'color': colorToInt(f.color),
                'photo_updated_at': f.photoUpdatedAt?.toIso8601String(),
                'blurhash': f.blurhash,
              },
            ),
          )
          .toList(),
    );
  }

  Future<void> _exportFamiliesFamilies() async {
    await _exportSerializables(
      'families_families',
      churchAdminContext.familiesFamilies.map(
        (familiesFamilies) => _ToJsonAdapter(
          familiesFamilies,
          '${familiesFamilies.parentFamilyId.id}-${familiesFamilies.childFamilyId.id}',
          (ff) => {
            'parent_family_id': ff.parentFamilyId.id,
            'child_family_id': ff.childFamilyId.id,
          },
        ),
      ),
    );
  }

  Future<void> _exportPersons() async {
    await _exportSerializables(
      'persons',
      churchAdminContext.persons.values.map(
        (person) => _ToJsonAdapter(
          person,
          person.id,
          (p) => {
            'id': _uuidFromFirestoreId(p.id),
            'uid': _uuidFromFirestoreId(p.uid),
            'national_id': p.nationalId,
            'name': p.name,
            'main_phone': p.mainPhone,
            'other_phones': p.otherPhones,
            'birthdate': p.birthdate?.toIso8601String(),
            'gender': p.gender,
            'is_shammas': p.isShammas,
            'shammas_level_id': _uuidFromFirestoreId(
              p.shammasLevel?.id ?? p.shammasLevelId,
            ),
            'school_id': _uuidFromFirestoreId(p.school?.id ?? p.schoolId),
            'college_id': _uuidFromFirestoreId(p.college?.id ?? p.collegeId),
            'church_id': _uuidFromFirestoreId(p.church?.id ?? p.churchId),
            'father_id': _uuidFromFirestoreId(p.father?.id ?? p.fatherId),
            'work_status': p.workStatus?.name,
            'job_id': _uuidFromFirestoreId(p.job?.id ?? p.jobId),
            'job_description': p.jobDescription,
            'qualification_id': _uuidFromFirestoreId(
              p.qualification?.id ?? p.qualificationId,
            ),
            'martial_status': p.martialStatus?.name,
            'person_type_id': _uuidFromFirestoreId(
              p.personType?.id ?? p.personTypeId,
            ),
            'state_id': _uuidFromFirestoreId(p.state?.id ?? p.stateId),
            'is_servant': p.isServant,
            'family_id': _uuidFromFirestoreId(p.family?.id ?? p.familyId),
            'store_id': _uuidFromFirestoreId(p.store?.id ?? p.storeId),
            'study_year_id': p.studyYear?.order,
            'color': colorToInt(p.color),
            'photo_updated_at': p.photoUpdatedAt?.toIso8601String(),
            'blurhash': p.blurhash,
            'notes': p.notes,
          },
        ),
      ),
    );
  }

  Future<void> _exportPersonsServices() async {
    await _exportSerializables(
      'persons_services',
      churchAdminContext.persons.values
          .expand(
            (p) => serviceIdsWithStudyYearFallback(
              churchAdminContext,
              p,
            ).map((serviceId) => (personId: p.id, serviceId: serviceId)),
          )
          .map(
            (ps) => _ToJsonAdapter(
              ps,
              '${ps.personId}-${ps.serviceId}',
              (p) => {
                'person_id': _uuidFromFirestoreId(p.personId),
                'service_id': _uuidFromFirestoreId(p.serviceId),
              },
            ),
          ),
    );
  }

  Future<void> _exportStores() async {
    await _exportSerializables(
      'stores',
      churchAdminContext.stores.values.map(
        (store) => _ToJsonAdapter(
          store,
          store.id,
          (s) => {
            'id': _uuidFromFirestoreId(s.id),
            'name': s.name,
            'admin_family': _uuidFromFirestoreId(s.familyId),
            'color': colorToInt(s.color),
            'photo_updated_at': s.photoUpdatedAt?.toIso8601String(),
            'blurhash': s.blurhash,
          },
        ),
      ),
    );
  }

  Future<void> _exportStreets() async {
    await _exportSerializables(
      'streets',
      churchAdminContext.streets.values.map(
        (street) => _ToJsonAdapter(
          street,
          street.id,
          (s) => {
            'id': _uuidFromFirestoreId(s.id),
            'name': s.name,
            'line': s.line?.asWKT(),
            'color': colorToInt(s.color),
            'photo_updated_at': s.photoUpdatedAt?.toIso8601String(),
            'blurhash': s.blurhash,
          },
        ),
      ),
    );
  }

  Future<void> _exportVisitHistory() async {
    final seen = <String>{};
    final rows = <Map<String, Object?>>[];

    for (final visit in churchAdminContext.visitHistory) {
      final recordId = _uuidFromFirestoreId(visit.recordId);
      if (recordId == null) continue;

      final key =
          '${visit.table}|$recordId|${visit.isFatherVisit}|${visit.time.toIso8601String()}';
      if (!seen.add(key)) continue;

      rows.add({
        'table': visit.table,
        'record_id': recordId,
        'time': visit.time.toUtc().toIso8601String(),
        'is_father_visit': visit.isFatherVisit,
      });
    }

    await _exportRaw('visit_history', rows);
  }

  Future<void> _exportCallHistory() async {
    final seen = <String>{};
    final rows = <Map<String, Object?>>[];

    for (final call in churchAdminContext.callHistory) {
      final personId = _uuidFromFirestoreId(call.personId);
      if (personId == null) continue;

      final key = '$personId|${call.time.toIso8601String()}';
      if (!seen.add(key)) continue;

      rows.add({
        'person_id': personId,
        'time': call.time.toUtc().toIso8601String(),
      });
    }

    await _exportRaw('call_history', rows);
  }

  Future<void> _exportConfessionHistory() async {
    await _exportRaw(
      'confession_history',
      _personDayRows(churchAdminContext.confessionHistory),
    );
  }

  Future<void> _exportKodasHistory() async {
    await _exportRaw(
      'kodas_history',
      _personDayRows(churchAdminContext.kodasHistory),
    );
  }

  /// Builds `{day_id, person_id, recorded_by}` rows for the confession/kodas
  /// history tables, de-duplicated per (person, day). The `time` column on
  /// those tables is generated from `day_id`, so it is intentionally omitted.
  List<Map<String, Object?>> _personDayRows(
    List<({String personId, DateTime time})> records,
  ) {
    final seen = <String>{};
    final rows = <Map<String, Object?>>[];

    for (final record in records) {
      final personId = _uuidFromFirestoreId(record.personId);
      if (personId == null) continue;

      final day = _dateOnly(record.time);
      final key = '$personId|$day';
      if (!seen.add(key)) continue;

      rows.add({
        'day_id': day,
        'person_id': personId,
        'recorded_by': migrationRecordedByUid,
      });
    }

    return rows;
  }

  String _dateOnly(DateTime dt) =>
      '${dt.year.toString().padLeft(4, '0')}-'
      '${dt.month.toString().padLeft(2, '0')}-'
      '${dt.day.toString().padLeft(2, '0')}';

  /// Writes rows verbatim (no `*_id` → UUID transformation). Used for history
  /// tables whose `day_id` column holds a date, not an id.
  Future<void> _exportRaw(
    String filename,
    List<Map<String, Object?>> rows,
  ) async {
    if (rows.isEmpty) return;

    final file = _getExportFile(filename);
    final writer = CsvWriter.withHeaders(file.openWrite(), rows.first.keys);

    for (final row in rows) {
      writer.writeData(data: row);
    }

    await writer.close();
  }

  Future<void> _exportIdMappings<T extends ID>(
    String filename,
    Map<IdReference, T> items,
  ) async {
    final file = _getExportFile(filename);
    final writer = CsvWriter.withHeaders(file.openWrite(), [
      'original_id',
      'new_id',
    ]);

    for (final entry in items.entries) {
      writer.writeData(
        data: {
          'original_id': entry.key.id,
          'new_id': _uuidFromFirestoreId(entry.value.id),
        },
      );
    }

    await writer.close();
  }

  Future<void> _exportClassesIdsMapping() async {
    await _exportIdMappings('classes_ids_mapping', churchAdminContext.classes);
  }

  Future<void> _exportServicesIdsMapping() async {
    await _exportIdMappings(
      'services_ids_mapping',
      churchAdminContext.services,
    );
  }

  Future<void> _exportPersonsIdsMapping() async {
    await _exportIdMappings('persons_ids_mapping', churchAdminContext.persons);
  }

  Future<void> _exportStoresIdsMapping() async {
    await _exportIdMappings('stores_ids_mapping', churchAdminContext.stores);
  }

  Future<void> _exportFamiliesIdsMapping() async {
    await _exportIdMappings(
      'families_ids_mapping',
      churchAdminContext.families,
    );
  }

  Future<void> _exportStreetsIdsMapping() async {
    await _exportIdMappings('streets_ids_mapping', churchAdminContext.streets);
  }

  Future<void> _exportAreasIdsMapping() async {
    await _exportIdMappings('areas_ids_mapping', churchAdminContext.areas);
  }

  Future<void> _exportUsers() async {
    await _exportSerializables(
      'users_data',
      churchAdminContext.users.values.map(
        (user) => _ToJsonAdapter(
          user,
          user.id,
          (u) => {
            'id': _uuidFromFirestoreId(u.id),
            'email': u.email,
            'name': u.name,
            'photo_updated_at': u.photoUpdatedAt?.toIso8601String(),
            'auth_id': null,
          },
        ),
      ),
    );
    await _exportSerializables(
      'users_admin_on',
      churchAdminContext.users.values.expand(
        (user) => (user.adminOn ?? [])
            .map(
              (scope) => _ToJsonAdapter(
                scope,
                scope.permissionId,
                (s) => {
                  'uid': _uuidFromFirestoreId(user.id),
                  'permission_id': _uuidFromFirestoreId(s.permissionId),
                  'admin_on_service': _uuidFromFirestoreId(s.service?.id),
                  'service_gender': s.serviceGender,
                  'service_study_year': s.serviceStudyYearData?.order,
                  'service_allow_edit': s.serviceAllowEdit,
                  'service_admin_on_users': s.serviceAdminOnUsers,
                  'admin_on_area': _uuidFromFirestoreId(s.area?.id),
                  'area_allow_edit': s.areaAllowEdit,
                  'area_admin_on_users': s.areaAdminOnUsers,
                  'service_write_related_families':
                      s.serviceWriteRelatedFamilies ?? false,
                  'group_write_related_families':
                      s.groupWriteRelatedFamilies ?? false,
                  'area_allow_export': s.areaAllowExport,
                  'service_allow_export': s.serviceAllowExport,
                  'service_allow_record_attendance':
                      s.serviceAllowRecordAttendance,
                  'service_allow_record_servants_attendance':
                      s.serviceAllowRecordServantsAttendance,
                },
              ),
            )
            .toList(),
      ),
    );
    await _exportSerializables(
      'users_permissions',
      churchAdminContext.users.values.expand(
        (user) => user.permissions
            .map(
              (p) => _ToJsonAdapter(
                (uid: user.id, permission: p.name),
                user.id + p.name,
                (r) => {
                  'uid': _uuidFromFirestoreId(r.uid),
                  'permission': r.permission,
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Future<void> _exportUsersIdsMapping() async {
    await _exportIdMappings('users_ids_mapping', churchAdminContext.users);
  }
}

class _ToJsonAdapter<T> implements ToJson, ID {
  final String primaryKey;
  final T object;
  final Map<String, Object?> Function(T) toJsonFunction;

  _ToJsonAdapter(this.object, this.primaryKey, this.toJsonFunction);

  @override
  Map<String, Object?> toJson() => toJsonFunction(object);

  @override
  String get id => primaryKey;
}
