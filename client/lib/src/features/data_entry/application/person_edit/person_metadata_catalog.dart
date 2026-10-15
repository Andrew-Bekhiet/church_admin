import 'package:church_admin/church_admin.dart';
import 'package:uuid/uuid.dart';

typedef MetadataListController<T extends ViewableWithID> =
    ViewableObjectListController<T> Function(Stream<String?> search);

class PersonMetadataCatalog {
  final MetadataDAO _metadata;

  MetadataListController<StudyYear> get studyYears =>
      SearchableDaoListController.over(_metadata.studyYears);

  MetadataListController<College> get colleges =>
      SearchableDaoListController.over(_metadata.colleges);

  MetadataListController<School> get schools =>
      SearchableDaoListController.over(_metadata.schools);

  MetadataListController<Qualification> get qualifications =>
      SearchableDaoListController.over(_metadata.qualifications);

  MetadataListController<Job> get jobs =>
      SearchableDaoListController.over(_metadata.jobs);

  MetadataListController<Church> get churches =>
      SearchableDaoListController.over(_metadata.churches);

  MetadataListController<Father> get fathers =>
      SearchableDaoListController.over(_metadata.fathers);

  MetadataListController<ShammasLevel> get shammasLevels =>
      SearchableDaoListController.over(_metadata.shammasLevels);

  MetadataListController<PersonState> get personStates =>
      SearchableDaoListController.over(_metadata.personStates);

  MetadataListController<Hobby> get hobbies =>
      SearchableDaoListController.over(_metadata.hobbies);

  MetadataListController<Tag> get tags =>
      SearchableDaoListController.over(_metadata.tags);

  MetadataListController<PersonType> get personTypes =>
      SearchableDaoListController.over(_metadata.personTypes);

  const PersonMetadataCatalog(this._metadata);

  Future<College> createCollege(String name) => _metadata.colleges.createObject(
    newObject: College(id: const Uuid().v4(), name: name),
  );

  Future<School> createSchool(String name) => _metadata.schools.createObject(
    newObject: School(id: const Uuid().v4(), name: name),
  );

  Future<Qualification> createQualification(String name) =>
      _metadata.qualifications.createObject(
        newObject: Qualification(id: const Uuid().v4(), name: name),
      );

  Future<Job> createJob(String name) => _metadata.jobs.createObject(
    newObject: Job(id: const Uuid().v4(), name: name),
  );

  Future<Church> createChurch(String name) => _metadata.churches.createObject(
    newObject: Church(id: const Uuid().v4(), name: name),
  );

  Future<Father> createFather(String name) => _metadata.fathers.createObject(
    newObject: Father(id: const Uuid().v4(), name: name),
  );

  Future<Hobby> createHobby(String name) => _metadata.hobbies.createObject(
    newObject: Hobby(id: const Uuid().v4(), name: name),
  );

  Future<Tag> createTag(String name) => _metadata.tags.createObject(
    newObject: Tag(id: const Uuid().v4(), name: name),
  );

  Future<PersonType> createPersonType(String name) =>
      _metadata.personTypes.createObject(
        newObject: PersonType(id: const Uuid().v4(), name: name),
      );
}
