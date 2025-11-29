import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/models/church_data/models/person_types_additional_data.dart';
import 'package:church_admin_migrator/models/church_data/models/super_classes.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:dart_firebase_admin/firestore.dart';

abstract class MiniModel extends DataObject {
  final String collectionName;
  MiniModel(
    this.collectionName,
    IdReference ref, [
    String name = '',
    Color? color,
  ]) : super(ref, name, color);

  MiniModel.createFromData(
    this.collectionName,
    Map<String, dynamic> data,
    IdReference ref,
  ) : super.createFromData(data, ref);

  MiniModel.createNew(this.collectionName, IdReference ref)
    : super(ref, '', null);
}

class Church extends MiniModel {
  String? address;
  Church(IdReference ref, String name, {this.address})
    : super('Churches', ref, name);
  Church.createFromData(Map<String, dynamic> data, IdReference ref)
    : super.createFromData('Churches', data, ref) {
    address = data['Address'];
  }

  Church.createNew(IdReference ref) : super.createNew('Churches', ref) {
    address = '';
  }

  @override
  bool operator ==(other) {
    return other is Church && ref == other.ref;
  }

  @override
  Map<String, dynamic> getMap() {
    return {'Name': name, 'Address': address};
  }

  static Church fromQueryDoc(QueryDocumentSnapshot data, IdReference ref) =>
      Church.createFromData(data.data(), ref);

  @override
  int get hashCode => Object.hash(ref, super.hashCode);
}

class PersonState extends MiniModel {
  PersonState(IdReference ref, String name, Color color)
    : super('States', ref, name, color);
  PersonState.createFromData(Map<String, dynamic> data, IdReference ref)
    : super.createFromData('States', data, ref) {
    color = Color(int.parse('0xFF${data['Color']}'));
  }

  PersonState.createNew(IdReference ref) : super.createNew('States', ref);

  @override
  bool operator ==(other) {
    return other is PersonState && ref == other.ref;
  }

  @override
  Map<String, dynamic> getMap() {
    return {
      'Name': name,
      'Color': color?.toARGB32().toRadixString(16).padLeft(8, '0').substring(2),
    };
  }

  static PersonState? fromDoc(DocumentSnapshot data) => data.exists
      ? PersonState.createFromData(
          data.data()! as Map<String, dynamic>,
          IdReference.fromPath(data.ref.path),
        )
      : null;

  static PersonState fromQueryDoc(
    QueryDocumentSnapshot data,
    IdReference ref,
  ) => PersonState.createFromData(data.data(), ref);

  @override
  int get hashCode => Object.hash(ref, super.hashCode);
}

class College extends MiniModel {
  College(IdReference ref, String name) : super('Colleges', ref, name);
  College.createFromData(Map<String, dynamic> data, IdReference ref)
    : super.createFromData('Colleges', data, ref);

  College.createNew(IdReference ref) : super.createNew('Colleges', ref);

  @override
  bool operator ==(other) {
    return other is College && ref == other.ref;
  }

  @override
  Map<String, dynamic> getMap() {
    return {'Name': name};
  }

  static College? fromDoc(DocumentSnapshot data, IdReference ref) => data.exists
      ? College.createFromData(data.data()! as Map<String, dynamic>, ref)
      : null;

  static College fromQueryDoc(QueryDocumentSnapshot data, IdReference ref) =>
      College.createFromData(data.data(), ref);

  @override
  int get hashCode => Object.hash(ref, super.hashCode);
}

class Father extends MiniModel {
  IdReference? churchId;
  Father(IdReference ref, String name, this.churchId)
    : super('Fathers', ref, name);
  Father.createFromData(Map<String, dynamic> data, IdReference ref)
    : super.createFromData('Fathers', data, ref) {
    churchId = (data['ChurchId'] as DocumentReference?)?.toIdReference();
  }

  Father.createNew(IdReference ref) : super.createNew('Fathers', ref);

  @override
  bool operator ==(other) {
    return other is Father && ref == other.ref;
  }

  @override
  Map<String, dynamic> getMap() {
    return {'Name': name, 'ChurchId': churchId};
  }

  static Father? fromDoc(DocumentSnapshot data, IdReference ref) => data.exists
      ? Father.createFromData(data.data()! as Map<String, dynamic>, ref)
      : null;

  static Father fromQueryDoc(QueryDocumentSnapshot data, IdReference ref) =>
      Father.createFromData(data.data(), ref);

  @override
  int get hashCode => Object.hash(ref, super.hashCode);
}

class Job extends MiniModel {
  Job(IdReference ref, String name) : super('Jobs', ref, name);
  Job.createFromData(Map<String, dynamic> data, IdReference ref)
    : super.createFromData('Jobs', data, ref);

  Job.createNew(IdReference ref) : super.createNew('Jobs', ref);

  @override
  bool operator ==(other) {
    return other is Job && ref == other.ref;
  }

  @override
  Map<String, dynamic> getMap() {
    return {'Name': name};
  }

  static Job? fromDoc(DocumentSnapshot data, IdReference ref) => data.exists
      ? Job.createFromData(data.data()! as Map<String, dynamic>, ref)
      : null;

  static Job fromQueryDoc(QueryDocumentSnapshot data, IdReference ref) =>
      Job.createFromData(data.data(), ref);

  @override
  int get hashCode => Object.hash(ref, super.hashCode);
}

class PersonType extends MiniModel {
  //Gender: true -> Male, false -> Female
  final bool gender;
  final MartialStatus martialStatus;

  PersonType(IdReference ref, String name)
    : gender = personTypeAdditionalData[ref.id]?.gender ?? true,
      martialStatus =
          personTypeAdditionalData[ref.id]?.martialStatus ??
          MartialStatus.married,
      super('Types', ref, name);
  PersonType.createFromData(Map<String, dynamic> data, IdReference ref)
    : gender = personTypeAdditionalData[ref.id]?.gender ?? true,
      martialStatus =
          personTypeAdditionalData[ref.id]?.martialStatus ??
          MartialStatus.married,
      super.createFromData('Types', data, ref);

  @override
  bool operator ==(other) {
    return other is PersonType && ref == other.ref;
  }

  @override
  Map<String, dynamic> getMap() {
    return {'Name': name};
  }

  static PersonType? fromDoc(DocumentSnapshot data, IdReference ref) =>
      data.exists
      ? PersonType.createFromData(data.data()! as Map<String, dynamic>, ref)
      : null;

  static PersonType fromQueryDoc(QueryDocumentSnapshot data, IdReference ref) =>
      PersonType.createFromData(data.data(), ref);

  @override
  int get hashCode => Object.hash(ref, super.hashCode);
}

class ServingType extends MiniModel {
  ServingType(IdReference ref, String name) : super('ServingTypes', ref, name);
  ServingType.createFromData(Map<String, dynamic> data, IdReference ref)
    : super.createFromData('ServingTypes', data, ref);

  ServingType.createNew(IdReference ref) : super.createNew('ServingTypes', ref);

  @override
  bool operator ==(other) {
    return other is ServingType && ref == other.ref;
  }

  @override
  Map<String, dynamic> getMap() {
    return {'Name': name};
  }

  static ServingType? fromDoc(DocumentSnapshot data, IdReference ref) =>
      data.exists
      ? ServingType.createFromData(data.data()! as Map<String, dynamic>, ref)
      : null;

  static ServingType fromQueryDoc(
    QueryDocumentSnapshot data,
    IdReference ref,
  ) => ServingType.createFromData(data.data(), ref);

  @override
  int get hashCode => Object.hash(ref, super.hashCode);
}

class StudyYear extends MiniModel {
  int grade;

  StudyYear(IdReference ref, String name, {required this.grade})
    : super('StudyYears', ref, name);

  StudyYear.createFromData(Map<String, dynamic> data, IdReference ref)
    : grade = data['Grade'],
      super.createFromData('StudyYears', data, ref);

  StudyYear.createNew(IdReference ref)
    : grade = 1,
      super.createNew('StudyYears', ref);

  bool get isCollegeYear => grade >= 13;

  @override
  bool operator ==(other) {
    return other is StudyYear && ref == other.ref;
  }

  @override
  Map<String, dynamic> getMap() {
    return {'Name': name, 'Grade': grade};
  }

  static StudyYear? fromDoc(DocumentSnapshot data, IdReference ref) =>
      data.exists
      ? StudyYear.createFromData(data.data()! as Map<String, dynamic>, ref)
      : null;

  static StudyYear fromQueryDoc(QueryDocumentSnapshot data, IdReference ref) =>
      StudyYear.createFromData(data.data(), ref);

  @override
  int get hashCode => Object.hash(ref, super.hashCode);
}
