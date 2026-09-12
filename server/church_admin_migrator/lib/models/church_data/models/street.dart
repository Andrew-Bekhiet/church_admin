import 'dart:ui';

import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:google_cloud_firestore/google_cloud_firestore.dart';

import 'super_classes.dart';

class Street extends DataObject with PhotoObject {
  IdReference? areaId;

  bool locationConfirmed;
  List<GeoPoint> locationPoints;

  Timestamp? lastVisit;
  Timestamp? fatherLastVisit;

  String? lastEdit;

  Street({
    required this.areaId,
    required String name,
    required IdReference ref,
    this.lastVisit,
    this.lastEdit,
    Color? color,
    List<GeoPoint>? locationPoints,
    this.locationConfirmed = false,
  }) : locationPoints = locationPoints ?? [],
       super(ref, name, color);

  Street.fromQueryDoc(QueryDocumentSnapshot doc, IdReference ref)
    : this.createFromData(doc.data() as Map<String, dynamic>, ref);

  Street.createFromData(Map<String, dynamic> data, IdReference ref)
    : areaId = (data['AreaId'] as DocumentReference?)?.toIdReference(),
      locationConfirmed = data['LocationConfirmed'] ?? false,
      locationPoints = data['Location']?.cast<GeoPoint>() ?? [],
      super.createFromData(data, ref) {
    lastVisit = data['LastVisit'];
    fatherLastVisit = data['FatherLastVisit'];

    lastEdit = data['LastEdit'];
  }

  @override
  Map<String, dynamic> getMap() => {
    'Name': name,
    'AreaId': areaId,
    'Color': color?.toARGB32(),
    'Location': locationPoints.sublist(0),
    'LocationConfirmed': locationConfirmed,
    'LastVisit': lastVisit,
    'FatherLastVisit': fatherLastVisit,
    'LastEdit': lastEdit,
  };
}
