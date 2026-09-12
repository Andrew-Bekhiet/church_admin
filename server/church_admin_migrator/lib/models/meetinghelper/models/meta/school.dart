import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:google_cloud_firestore/google_cloud_firestore.dart';

class School {
  final IdReference ref;
  final String name;
  final String? address;

  School({required this.ref, required this.name, required this.address});

  School.createFromData(Map<String, dynamic> data, IdReference ref)
    : this(ref: ref, name: data['Name'] ?? '', address: data['Address']);

  School.fromQueryDoc(QueryDocumentSnapshot snapshot, IdReference ref)
    : this.createFromData(snapshot.data(), ref);

  Map<String, dynamic> toJson() {
    return {'Name': name, 'Address': address};
  }
}
