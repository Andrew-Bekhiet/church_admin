import 'dart:convert';
import 'dart:io';

import 'package:church_admin_migrator/models/church_data/models/mini_models.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/service.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/meta/school.dart';
import 'package:dart_firebase_admin/dart_firebase_admin.dart';
import 'package:dart_firebase_admin/firestore.dart';
import 'package:equatable/equatable.dart';

class MeetingHelperContext with EquatableMixin {
  static FirebaseAdminApp? _deserializationApp;

  final FirebaseAdminApp app;

  final Map<IdReference, Church> churches;
  final Map<IdReference, Father> cFathers;
  final Map<IdReference, College> colleges;
  final Map<IdReference, School> schools;
  final Map<IdReference, StudyYear> studyYears;
  final Map<IdReference, Service> services;
  final Map<IdReference, Class> classes;
  final Map<IdReference, Person> persons;

  MeetingHelperContext._(this.app)
    : churches = {},
      cFathers = {},
      colleges = {},
      schools = {},
      studyYears = {},
      services = {},
      classes = {},
      persons = {};

  factory MeetingHelperContext._fromJson(
    Map<String, dynamic> json,
    FirebaseAdminApp app,
  ) {
    final context = MeetingHelperContext._(app);
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

    context.schools.addAll(
      (json['schools'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              School.createFromData(value as Map<String, dynamic>, idReference),
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

    context.classes.addAll(
      (json['classes'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              Class.fromJson(value as Map<String, dynamic>, idReference),
            );
          }),
    );

    context.services.addAll(
      (json['services'] as Map)
          .cast<String, dynamic>()
          .map(_deserializeFirestoreValues)
          .map((key, value) {
            final idReference = IdReference.fromPath(key);
            return MapEntry(
              idReference,
              Service.fromJson(value as Map<String, dynamic>, idReference),
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
              Person.fromJson(value as Map<String, dynamic>, idReference),
            );
          })
          .entries
          .where((entry) => entry.value.name.isNotEmpty),
    );

    return context;
  }

  static Future<MeetingHelperContext> load(FirebaseAdminApp app) async {
    final context = MeetingHelperContext._(app);

    final cache = await _maybeLoadFromCache(context);

    if (cache != null) return cache;

    await _loadDataContextData(context);

    final cacheFile = File('meetinghelper_context_cache.json');
    await cacheFile.writeAsString(jsonEncode(context.toJson()));

    return context;
  }

  static Future<void> _loadDataContextData(MeetingHelperContext context) async {
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
      firestore.collection('Schools'),
      parse: School.fromQueryDoc,
      afterParse: (ref, parsed) => context.schools[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('StudyYears'),
      parse: StudyYear.fromQueryDoc,
      afterParse: (ref, parsed) => context.studyYears[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Classes'),
      parse: Class.fromQueryDoc,
      afterParse: (ref, parsed) => context.classes[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Services'),
      parse: Service.fromQueryDoc,
      afterParse: (ref, parsed) => context.services[ref] = parsed,
    );

    await _loadDataUsing(
      context,
      firestore.collection('Persons'),
      parse: Person.fromQueryDoc,
      afterParse: (ref, parsed) =>
          parsed.name.isNotEmpty ? context.persons[ref] = parsed : null,
    );
  }

  static Future<MeetingHelperContext?> _maybeLoadFromCache(
    MeetingHelperContext context,
  ) async {
    final cacheFile = File('meetinghelper_context_cache.json');

    if (!cacheFile.existsSync()) return null;

    return MeetingHelperContext._fromJson(
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
      'schools': schools
          .map((key, value) => MapEntry(key, value.toJson()))
          .map(_serializeFirestoreValues),
      'studyYears': studyYears
          .map((key, value) => MapEntry(key, value.getMap()))
          .map(_serializeFirestoreValues),
      'classes': classes
          .map((key, value) => MapEntry(key, value.toJson()))
          .map(_serializeFirestoreValues),
      'services': services
          .map((key, value) => MapEntry(key, value.toJson()))
          .map(_serializeFirestoreValues),
      'persons': persons
          .map((key, value) => MapEntry(key, value.toJson()))
          .map(_serializeFirestoreValues),
    };
  }

  static MapEntry<String, dynamic> _serializeFirestoreValues(
    dynamic key,
    dynamic value,
  ) {
    return MapEntry(key is IdReference ? key.path : key, switch (value) {
      final IdReference value => value.path,
      final DateTime value => value.toIso8601String(),
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
    MeetingHelperContext context,
    Query<DocumentData> collection, {
    required T Function(QueryDocumentSnapshot, IdReference) parse,
    required void Function(IdReference ref, T parsed) afterParse,
  }) async {
    final snapshot = await collection.get();

    for (final doc in snapshot.docs) {
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
    schools,
    classes,
    services,
    persons,
  ];
}
