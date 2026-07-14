import 'dart:ui';

import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:dart_firebase_admin/firestore.dart';

import 'super_classes.dart';

class Area extends DataObject with PhotoObject {
  String? address;

  bool locationConfirmed;
  List<GeoPoint> locationPoints;

  Timestamp? lastVisit;
  Timestamp? fatherLastVisit;

  List<String> allowedUsers;
  String? lastEdit;

  Area({
    required String name,
    required this.allowedUsers,
    required IdReference ref,
    this.address,
    bool hasPhoto = false,
    this.locationConfirmed = false,
    this.lastVisit,
    this.fatherLastVisit,
    this.lastEdit,
    Color? color,
    List<GeoPoint>? locationPoints,
  }) : locationPoints = locationPoints ?? [],
       super(ref, name, color) {
    this.hasPhoto = hasPhoto;
  }

  Area.fromQueryDoc(QueryDocumentSnapshot doc, IdReference ref)
    : this.createFromData(doc.data() as Map<String, dynamic>, ref);

  Area.createFromData(Map<String, dynamic> data, IdReference ref)
    : allowedUsers = data['Allowed']?.cast<String>() ?? [],
      locationConfirmed = data['LocationConfirmed'] ?? false,
      locationPoints = data['Location']?.cast<GeoPoint>() ?? [],
      super.createFromData(data, ref) {
    address = data['Address'];

    hasPhoto = data['hasPhoto'] ?? false;

    lastVisit = data['LastVisit'];
    fatherLastVisit = data['FatherLastVisit'];

    lastEdit = data['LastEdit'];
  }

  @override
  Map<String, dynamic> getMap() => {
    'Name': name,
    'Address': address,
    'hasPhoto': hasPhoto,
    'Location': locationPoints.sublist(0),
    'LocationConfirmed': locationConfirmed,
    'Color': color?.toARGB32(),
    'LastVisit': lastVisit,
    'FatherLastVisit': fatherLastVisit,
    'Allowed': allowedUsers,
    'LastEdit': lastEdit,
  };
}
