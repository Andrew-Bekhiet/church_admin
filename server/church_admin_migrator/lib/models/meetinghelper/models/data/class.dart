import 'dart:ui';

import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:dart_firebase_admin/firestore.dart';

class Class {
  final IdReference? studyYear;
  //Male=true, Female=false, Both=null
  final bool? gender;

  final Color? color;

  final bool hasPhoto;

  final IdReference ref;
  final String name;

  Class({
    required this.ref,
    required this.name,
    this.studyYear,
    this.gender = true,
    this.hasPhoto = false,
    this.color,
  });

  Class.fromQueryDoc(QueryDocumentSnapshot snapshot, IdReference ref)
    : this.fromJson(snapshot.data(), ref);

  Class.fromJson(Map<String, dynamic> data, this.ref)
    : name = data['Name'] ?? '',
      gender = data['Gender'],
      studyYear = (data['StudyYear'] as DocumentReference?)?.toIdReference(),
      hasPhoto = data['HasPhoto'] ?? false,
      color = data['Color'] == null || data['Color'] == 0
          ? null
          : Color(data['Color']);

  Map<String, dynamic> toJson() => {
    'Name': name,
    'StudyYear': studyYear,
    'Gender': gender,
    'HasPhoto': hasPhoto,
    'Color': color?.toARGB32(),
  };
}
