import 'dart:ui';

import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:dart_firebase_admin/firestore.dart';
import 'package:meta/meta.dart';

@immutable
class Person {
  // Base fields from DataObject/DocumentObject
  final IdReference ref;
  final String name;
  final Color? color;

  // Photo fields
  final bool hasPhoto;

  // PersonBase fields
  final String? address;
  final GeoPoint? location;
  final DateTime? birthDate;
  final IdReference? school;
  final IdReference? college;
  final IdReference? church;
  final IdReference? cFather;
  final DateTime? lastKodas;
  final DateTime? lastTanawol;
  final DateTime? lastConfession;
  final DateTime? lastCall;
  final DateTime? lastVisit;
  final String? notes;
  final bool isShammas;
  final bool gender; // IsMale?
  final String? shammasLevel;
  final IdReference? studyYear;

  // Meeting helper specific fields
  final IdReference? classId;
  final String? phone;
  final String? fatherPhone;
  final String? motherPhone;
  final Map<String, String> phones;
  final List<IdReference> services;

  Person({
    required this.ref,
    this.classId,
    this.name = '',
    this.color,
    this.hasPhoto = false,
    this.address,
    this.location,
    this.birthDate,
    this.school,
    this.college,
    this.church,
    this.cFather,
    this.lastKodas,
    this.lastTanawol,
    this.lastConfession,
    this.lastCall,
    this.lastVisit,
    this.notes,
    this.isShammas = false,
    this.gender = true,
    this.shammasLevel,
    this.studyYear,
    this.phone,
    Map<String, String>? phones,
    this.fatherPhone,
    this.motherPhone,
    this.services = const [],
  }) : phones = phones ?? {};

  Person.fromQueryDoc(QueryDocumentSnapshot snapshot, IdReference ref)
    : this.fromJson(snapshot.data(), ref);

  Person.fromJson(Map<String, dynamic> json, this.ref)
    : classId = (json['ClassId'] as DocumentReference?)?.toIdReference(),
      name = json['Name'] ?? '',
      color = json['Color'] == null || json['Color'] == 0
          ? null
          : Color(json['Color']),
      hasPhoto = json['HasPhoto'] ?? false,
      address = json['Address'],
      location = json['Location'],
      birthDate = json['BirthDateString'] != null
          ? DateTime.parse(json['BirthDateString'])
          : (json['BirthDate'] as Timestamp?)?.toDate(),
      school = (json['School'] as DocumentReference?)?.toIdReference(),
      college = (json['College'] as DocumentReference?)?.toIdReference(),
      church = (json['Church'] as DocumentReference?)?.toIdReference(),
      cFather = (json['CFather'] as DocumentReference?)?.toIdReference(),
      lastKodas = (json['LastKodas'] as Timestamp?)?.toDate(),
      lastTanawol = (json['LastTanawol'] as Timestamp?)?.toDate(),
      lastConfession = (json['LastConfession'] as Timestamp?)?.toDate(),
      lastCall = (json['LastCall'] as Timestamp?)?.toDate(),
      lastVisit = (json['LastVisit'] as Timestamp?)?.toDate(),
      notes = json['Notes'],
      isShammas = json['IsShammas'] ?? false,
      gender = json['Gender'] ?? true,
      shammasLevel = json['ShammasLevel'],
      studyYear = (json['StudyYear'] as DocumentReference?)?.toIdReference(),
      phone = _deserializePhone(json['Phone']),
      fatherPhone = _deserializePhone(json['FatherPhone']),
      motherPhone = _deserializePhone(json['MotherPhone']),
      phones = (json['Phones'] as Map?)?.cast() ?? {},
      services =
          (json['Services'] as List?)
              ?.map((e) => (e as DocumentReference).toIdReference())
              .toList() ??
          [];

  static String? _deserializePhone(dynamic phone) {
    return phone is DocumentReference ? (phone).path : phone as String?;
  }

  /// The [phones] map combined with the father/mother phones so they are not
  /// lost during migration. Document-reference style values (legacy data where
  /// a phone field pointed at another document) are skipped.
  Map<String, String> get otherPhonesWithParents {
    final result = <String, String>{...phones.cast<String, String>()};

    void addPhone(String label, String? value) {
      final trimmed = value?.trim() ?? '';
      if (trimmed.isEmpty || trimmed.contains('/')) return;
      result[label] = trimmed;
    }

    addPhone('هاتف الأب', fatherPhone);
    addPhone('هاتف الأم', motherPhone);

    return result;
  }

  Map<String, dynamic> toJson() => {
    'Name': name,
    'Color': color?.toARGB32(),
    'HasPhoto': hasPhoto,
    'Address': address,
    'Location': location,
    'Phone': phone,
    'Phones': phones.map(MapEntry.new)
      ..removeWhere((k, v) => v.toString().isEmpty),
    'BirthDate': birthDate,
    'BirthDay': birthDate == null
        ? null
        : DateTime(1970, birthDate!.month, birthDate!.day),
    'School': school,
    'College': college,
    'Church': church,
    'CFather': cFather,
    'LastKodas': lastKodas,
    'LastTanawol': lastTanawol,
    'LastConfession': lastConfession,
    'LastCall': lastCall,
    'LastVisit': lastVisit,
    'Notes': notes,
    'IsShammas': isShammas,
    'Gender': gender,
    'ShammasLevel': shammasLevel,
    'StudyYear': studyYear,
    'ClassId': classId,
    'FatherPhone': fatherPhone,
    'MotherPhone': motherPhone,
    'Services': services,
  };
}

extension on Timestamp? {
  DateTime? toDate() {
    if (this == null) return null;

    return DateTime.fromMillisecondsSinceEpoch(this!.seconds * 1000);
  }
}
