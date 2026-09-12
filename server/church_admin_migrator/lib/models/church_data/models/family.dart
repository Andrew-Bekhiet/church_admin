import 'dart:ui';

import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:google_cloud_firestore/google_cloud_firestore.dart';

import 'super_classes.dart';

class Family extends DataObject with PhotoObject {
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

  IdReference? insideFamily;
  IdReference? insideFamily2;

  String? address;
  String? notes;

  bool locationConfirmed;
  GeoPoint? locationPoint;

  Timestamp? lastVisit;
  Timestamp? fatherLastVisit;

  String? lastEdit;

  bool isStore;

  Family({
    required this.areaId,
    required IdReference? streetId,
    required String name,
    required IdReference ref,
    this.address,
    this.lastVisit,
    this.fatherLastVisit,
    this.lastEdit,
    Color? color,
    this.isStore = false,
    this.locationPoint,
    this.insideFamily,
    this.insideFamily2,
    this.locationConfirmed = false,
    this.notes,
  }) : _streetId = streetId,
       super(ref, name, color) {
    hasPhoto = false;
  }

  Family.fromQueryDoc(QueryDocumentSnapshot doc, IdReference ref)
    : this.createFromData(doc.data() as Map<String, dynamic>, ref);

  Family.createFromData(Map<String, dynamic> data, IdReference ref)
    : locationConfirmed = data['LocationConfirmed'] ?? false,
      isStore = data['IsStore'] ?? false,
      super.createFromData(data, ref) {
    areaId = (data['AreaId'] as DocumentReference?)?.toIdReference();
    _streetId = (data['StreetId'] as DocumentReference?)?.toIdReference();
    insideFamily = (data['InsideFamily'] as DocumentReference?)
        ?.toIdReference();
    insideFamily2 = (data['InsideFamily2'] as DocumentReference?)
        ?.toIdReference();

    address = data['Address'];
    notes = data['Notes'];

    locationPoint = data['Location'];

    lastVisit = data['LastVisit'];
    fatherLastVisit = data['FatherLastVisit'];

    lastEdit = data['LastEdit'];

    hasPhoto = false;
  }

  @override
  Map<String, dynamic> getMap() => {
    'AreaId': areaId,
    'StreetId': streetId,
    'Name': name,
    'Address': address,
    'Notes': notes,
    'Color': color?.toARGB32(),
    'Location': locationPoint,
    'LocationConfirmed': locationConfirmed,
    'LastVisit': lastVisit,
    'FatherLastVisit': fatherLastVisit,
    'LastEdit': lastEdit,
    'InsideFamily': insideFamily,
    'InsideFamily2': insideFamily2,
    'IsStore': isStore,
  };
}
