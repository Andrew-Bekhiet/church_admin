import 'dart:convert';
import 'dart:io';

import 'package:church_admin_migrator/models/church_data_users_loader.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:dart_firebase_admin/firestore.dart';
import 'package:equatable/equatable.dart';

import 'church_data/models/area.dart';
import 'church_data/models/church_data_user.dart';
import 'church_data/models/family.dart';
import 'church_data/models/mini_models.dart';
import 'church_data/models/person.dart';
import 'church_data/models/street.dart';

class ChurchDataContext with Equatable {
  static FirebaseAdminApp? _deserializationApp;

  final FirebaseAdminApp app;

  final Map<IdReference, Church> churches;
  final Map<IdReference, Father> cFathers;
  final Map<IdReference, College> colleges;
  final Map<IdReference, Job> jobs;
  final Map<IdReference, StudyYear> studyYears;
  final Map<IdReference, ServingType> servingTypes;
  final Map<IdReference, PersonState> personStates;
  final Map<IdReference, PersonType> types;
  final Map<IdReference, String> qualifications;

  final Map<IdReference, Area> areas;
  final Map<IdReference, Street> streets;
  final Map<IdReference, Family> familiesAndStores;
  final Map<IdReference, Person> persons;
  final Map<String, ChurchDataUser> users;

  ChurchDataContext._(this.app)
    : churches = {},
      cFathers = {},
      colleges = {},
      jobs = {},
      studyYears = {},
      servingTypes = {},
      personStates = {},
      types = {},
      qualifications = {},
      areas = {},
      streets = {},
      familiesAndStores = {},
      persons = {},
      users = {};

  factory ChurchDataContext._fromJson(
    Map<String, dynamic> json,
    FirebaseAdminApp app,
  ) {
    final context = ChurchDataContext._(app);
    _deserializationApp = app;

    context.churches.addAll(
      (json['churches'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              Church.createFromData(value as Map<String, dynamic>, idReference),
            );
          }),
    );

    context.cFathers.addAll(
      (json['cFathers'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              Father.createFromData(value as Map<String, dynamic>, idReference),
            );
          }),
    );

    context.colleges.addAll(
      (json['colleges'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              College.createFromData(
                value as Map<String, dynamic>,
                idReference,
              ),
            );
          }),
    );

    context.jobs.addAll(
      (json['jobs'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              Job.createFromData(value as Map<String, dynamic>, idReference),
            );
          }),
    );

    context.studyYears.addAll(
      (json['studyYears'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              StudyYear.createFromData(
                value as Map<String, dynamic>,
                idReference,
              ),
            );
          }),
    );

    context.servingTypes.addAll(
      (json['servingTypes'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              ServingType.createFromData(
                value as Map<String, dynamic>,
                idReference,
              ),
            );
          }),
    );

    context.personStates.addAll(
      (json['personStates'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              PersonState.createFromData(
                value as Map<String, dynamic>,
                idReference,
              ),
            );
          }),
    );

    context.types.addAll(
      (json['types'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              PersonType.createFromData(
                value as Map<String, dynamic>,
                idReference,
              ),
            );
          }),
    );

    context.qualifications.addAll(
      (json['qualifications'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map(
            (key, value) =>
                MapEntry(IdReference.fromPath(key), value as String),
          ),
    );

    context.areas.addAll(
      (json['areas'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              Area.createFromData(value as Map<String, dynamic>, idReference),
            );
          }),
    );

    context.streets.addAll(
      (json['streets'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              Street.createFromData(value as Map<String, dynamic>, idReference),
            );
          }),
    );

    context.familiesAndStores.addAll(
      (json['familiesAndStores'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              Family.createFromData(value as Map<String, dynamic>, idReference),
            );
          }),
    );

    context.persons.addEntries(
      (json['persons'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              Person.createFromData(value as Map<String, dynamic>, idReference),
            );
          })
          .entries
          .where((entry) => entry.value.name.isNotEmpty),
    );

    context.users.addAll(ChurchDataUsersLoader.fromCache(json));

    return context;
  }

  static Future<ChurchDataContext> load(FirebaseAdminApp app) async {
    final context = ChurchDataContext._(app);

    final cache = await _maybeLoadFromCache(context);

    if (cache != null) return cache;

    await _loadDataContextData(context);

    final cacheFile = File('church_data_context_cache.json');
    await cacheFile.writeAsString(jsonEncode(context.toJson()));

    return context;
  }

  static Future<void> _loadDataContextData(ChurchDataContext context) async {
    _deserializationApp = context.app;

    final firestore = Firestore(context.app);

    await _loadDataUsing(
      context,
      firestore.collection('Churches'),
      parse: Church.fromQueryDoc,
      afterParse: (ref, parsed) => context.churches[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Fathers'),
      parse: Father.fromQueryDoc,
      afterParse: (ref, parsed) => context.cFathers[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Colleges'),
      parse: College.fromQueryDoc,
      afterParse: (ref, parsed) => context.colleges[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Jobs'),
      parse: Job.fromQueryDoc,
      afterParse: (ref, parsed) => context.jobs[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('StudyYears'),
      parse: StudyYear.fromQueryDoc,
      afterParse: (ref, parsed) => context.studyYears[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('ServingTypes'),
      parse: ServingType.fromQueryDoc,
      afterParse: (ref, parsed) => context.servingTypes[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('States'),
      parse: PersonState.fromQueryDoc,
      afterParse: (ref, parsed) => context.personStates[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Types'),
      parse: PersonType.fromQueryDoc,
      afterParse: (ref, parsed) => context.types[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Areas'),
      parse: Area.fromQueryDoc,
      afterParse: (ref, parsed) => context.areas[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Streets'),
      parse: Street.fromQueryDoc,
      afterParse: (ref, parsed) => context.streets[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Families'),
      parse: Family.fromQueryDoc,
      afterParse: (ref, parsed) => context.familiesAndStores[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Persons'),
      parse: Person.fromQueryDoc,
      afterParse: (ref, parsed) =>
          parsed.name.isNotEmpty ? context.persons[ref] = parsed : null,
    );

    context.users.addAll(await ChurchDataUsersLoader.load(context.app));
  }

  static Future<ChurchDataContext?> _maybeLoadFromCache(
    ChurchDataContext context,
  ) async {
    final cacheFile = File('church_data_context_cache.json');

    if (!cacheFile.existsSync()) return null;

    return ChurchDataContext._fromJson(
      jsonDecode(await cacheFile.readAsString()) as Map<String, dynamic>,
      context.app,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'churches': churches
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'cFathers': cFathers
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'colleges': colleges
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'jobs': jobs
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'studyYears': studyYears
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'servingTypes': servingTypes
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'personStates': personStates
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'types': types
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'qualifications': qualifications
          .map((key, value) => MapEntry(key.path, value))
          .map(_serializeFirestoreValues),
      'areas': areas
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'streets': streets
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'familiesAndStores': familiesAndStores
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'persons': persons
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'users': ChurchDataUsersLoader.toJson(users),
    };
  }

  static MapEntry<String, dynamic> _serializeFirestoreValues(
    dynamic key,
    dynamic value,
  ) {
    return MapEntry(key is IdReference ? key.path : key, switch (value) {
      final IdReference value => value.path,
      final Timestamp value => DateTime.fromMillisecondsSinceEpoch(
        value.seconds * 1000,
      ).toIso8601String(),
      final DocumentReference value => value.path,
      final GeoPoint value => [value.latitude, value.longitude],
      final List value =>
        value.map((e) => _serializeFirestoreValues(key, e).value).toList(),
      final Map<String, dynamic> value => value.map(_serializeFirestoreValues),
      _ => value,
    });
  }

  static MapEntry<String, dynamic> _deserializeFirestoreValues(
    String key,
    dynamic value,
  ) {
    final date = value is String && int.tryParse(value) == null
        ? DateTime.tryParse(value)
        : null;
    if (date != null) {
      return MapEntry(key, Timestamp.fromDate(date));
    }

    if (value is String &&
        value.runes.every((r) => r >= 0 && r <= 256) &&
        value.contains('/')) {
      final parts = value.split('/');

      if (parts.length == 2) {
        final collection = parts[0];
        final id = parts[1];

        return MapEntry(
          key,
          Firestore(_deserializationApp!).collection(collection).doc(id),
        );
      }
    }

    if (value case [final double lat, final double lng]) {
      return MapEntry(key, GeoPoint(latitude: lat, longitude: lng));
    }

    if (value is List) {
      return MapEntry(
        key,
        value.map((e) => _deserializeFirestoreValues('', e).value).toList(),
      );
    }

    if (value is Map<String, dynamic>) {
      return MapEntry(key, value.map(_deserializeFirestoreValues));
    }

    return MapEntry(key, value);
  }

  static Future<void> _loadDataUsing<T>(
    ChurchDataContext context,
    CollectionReference<DocumentData> collection, {
    required T Function(QueryDocumentSnapshot, IdReference) parse,
    required void Function(IdReference ref, T parsed) afterParse,
  }) async {
    final snapshot = await collection.get();

    for (final doc in snapshot.docs) {
      if (!doc.exists || doc.id == 'null' || doc.data().isEmpty) continue;

      final idReference = IdReference.fromPath(doc.ref.path);
      final parsed = parse(doc, idReference);
      afterParse(idReference, parsed);
    }
  }

  @override
  List<Object?> get props => [
    churches,
    cFathers,
    colleges,
    jobs,
    servingTypes,
    personStates,
    types,
    qualifications,
    areas,
    streets,
    familiesAndStores,
    persons,
    users,
  ];
}
