import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart';

class MetadataQuickCreate {
  static Future<Church> church(String name) =>
      DatabaseService.I.metadata.churches.createObject(
        newObject: Church(id: const Uuid().v4(), name: name),
      );

  static Future<College> college(String name) =>
      DatabaseService.I.metadata.colleges.createObject(
        newObject: College(id: const Uuid().v4(), name: name),
      );

  static Future<Father> father(String name) =>
      DatabaseService.I.metadata.fathers.createObject(
        newObject: Father(id: const Uuid().v4(), name: name),
      );

  static Future<Hobby> hobby(String name) =>
      DatabaseService.I.metadata.hobbies.createObject(
        newObject: Hobby(id: const Uuid().v4(), name: name),
      );

  static Future<Job> job(String name) =>
      DatabaseService.I.metadata.jobs.createObject(
        newObject: Job(id: const Uuid().v4(), name: name),
      );

  static Future<PersonType> personType(String name) =>
      DatabaseService.I.metadata.personTypes.createObject(
        newObject: PersonType(id: const Uuid().v4(), name: name),
      );

  static Future<Qualification> qualification(String name) =>
      DatabaseService.I.metadata.qualifications.createObject(
        newObject: Qualification(id: const Uuid().v4(), name: name),
      );

  static Future<School> school(String name) =>
      DatabaseService.I.metadata.schools.createObject(
        newObject: School(id: const Uuid().v4(), name: name),
      );

  static Future<Tag> tag(String name) =>
      DatabaseService.I.metadata.tags.createObject(
        newObject: Tag(id: const Uuid().v4(), name: name),
      );
}
