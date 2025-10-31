import 'dart:developer';

import 'package:church_admin_migrator/models/color.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:dart_firebase_admin/firestore.dart';

import 'super_classes.dart';

class Person extends DataObject with PhotoObject {
  IdReference? _familyId;

  IdReference? get familyId => _familyId;

  set familyId(IdReference? familyId) {
    if (familyId != null && _familyId != familyId) {
      _familyId = familyId;
      return;
    }
    _familyId = familyId;
  }

  IdReference? _streetId;

  IdReference? get streetId => _streetId;

  set streetId(IdReference? streetId) {
    if (streetId != null && _streetId != streetId) {
      _streetId = streetId;
      return;
    }
    _streetId = streetId;
  }

  IdReference? areaId;

  String? phone;
  Map<String, dynamic> phones; //Other phones if any
  Timestamp? birthDate;

  Timestamp? lastConfession;
  Timestamp? lastTanawol;
  Timestamp? lastCall;

  bool isStudent;
  IdReference? studyYear;
  IdReference? college;
  IdReference? job;
  String? jobDescription;
  String? qualification;
  IdReference? type;
  bool isServant;

  IdReference? servingAreaId;

  IdReference? church;
  String? meeting;

  IdReference? cFather;
  IdReference? state;
  String? notes;
  IdReference? servingType;

  String? lastEdit;

  Person({
    required IdReference ref,
    required this.areaId,
    required IdReference? streetId,
    required IdReference? familyId,
    String name = '',
    this.phone = '',
    Map<String, dynamic>? phones,
    bool hasPhoto = false,
    this.birthDate,
    this.lastTanawol,
    this.lastCall,
    this.lastConfession,
    this.isStudent = false,
    this.studyYear,
    this.job,
    this.college,
    this.jobDescription = '',
    this.qualification = '',
    this.type,
    this.notes = '',
    this.isServant = false,
    this.servingAreaId,
    this.church,
    this.meeting = '',
    this.cFather,
    this.state,
    this.servingType,
    this.lastEdit,
    Color? color,
  }) : _familyId = familyId,
       _streetId = streetId,
       phones = phones ?? {},
       super(ref, name, color) {
    this.hasPhoto = hasPhoto;
    phones ??= {};
  }

  Person.fromQueryDoc(QueryDocumentSnapshot doc, IdReference ref)
    : this.createFromData(doc.data() as Map<String, dynamic>, ref);

  Person.createFromData(Map<String, dynamic> data, IdReference ref)
    : isStudent = data['IsStudent'] ?? false,
      isServant = data['IsServant'] ?? false,
      phones = data['Phones']?.cast<String, dynamic>() ?? {},
      super.createFromData(data, ref) {
    _familyId = (data['FamilyId'] as DocumentReference?)?.toIdReference();
    _streetId = (data['StreetId'] as DocumentReference?)?.toIdReference();
    areaId = (data['AreaId'] as DocumentReference?)?.toIdReference();

    phone = data['Phone'];

    hasPhoto = data['HasPhoto'] ?? false;

    studyYear = (data['StudyYear'] as DocumentReference?)?.toIdReference();
    college = (data['College'] as DocumentReference?)?.toIdReference();

    birthDate = data['BirthDate'];
    lastConfession = data['LastConfession'];
    lastTanawol = data['LastTanawol'];
    lastCall = data['LastCall'];

    job = (data['Job'] as DocumentReference?)?.toIdReference();
    jobDescription = data['JobDescription'];
    qualification = data['Qualification'];

    type = data['Type'] is String && data['Type'].isNotEmpty
        ? IdReference.fromPath('Types/${data['Type']}')
        : data['Type'] is DocumentReference
        ? (data['Type'] as DocumentReference).toIdReference()
        : null;

    if (type == null && (data['Type'] ?? '') != '') {
      debugger();
    }

    notes = data['Notes'];
    servingAreaId = (data['ServingAreaId'] as DocumentReference?)
        ?.toIdReference();

    church = (data['Church'] as DocumentReference?)?.toIdReference();
    meeting = data['Meeting'];
    cFather = (data['CFather'] as DocumentReference?)?.toIdReference();

    state = (data['State'] as DocumentReference?)?.toIdReference();
    servingType = (data['ServingType'] as DocumentReference?)?.toIdReference();

    lastEdit = data['LastEdit'];
  }

  @override
  Map<String, dynamic> getMap() => {
    'FamilyId': familyId,
    'StreetId': streetId,
    'AreaId': areaId,
    'Name': name,
    'Phone': phone,
    'Phones': (phones.map(MapEntry.new))
      ..removeWhere((k, v) => v.toString().isEmpty),
    'HasPhoto': hasPhoto,
    'Color': color?.value,
    'BirthDate': birthDate,
    'IsStudent': isStudent,
    'StudyYear': studyYear,
    'College': college,
    'Job': job,
    'JobDescription': jobDescription,
    'Qualification': qualification,
    'Type': type,
    'Notes': notes,
    'IsServant': isServant,
    'ServingAreaId': servingAreaId,
    'Church': church,
    'Meeting': meeting,
    'CFather': cFather,
    'State': state,
    'ServingType': servingType,
    'LastTanawol': lastTanawol,
    'LastCall': lastCall,
    'LastConfession': lastConfession,
    'LastEdit': lastEdit,
  };
}
