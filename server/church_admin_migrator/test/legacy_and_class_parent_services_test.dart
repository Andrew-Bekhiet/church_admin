import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/migrations/create_new_services.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:church_admin_migrator/models/meetinghelper/models/data/person.dart'
    as meetinghelper;
import 'package:test/test.dart';

void main() {
  late ChurchAdminContext churchAdminContext;

  setUp(() {
    churchAdminContext = ChurchAdminContext();

    churchAdminContext.services[IdReference.fromPath(
      'Services/خدمة ثانوي',
    )] = const Service(
      id: 'خدمة ثانوي',
      name: 'خدمة ثانوي',
      studyYearFromId: 10,
      studyYearToId: 12,
    );
    churchAdminContext.services[IdReference.fromPath('Services/خدمة قديمة')] =
        const Service(id: 'خدمة قديمة', name: 'خدمة قديمة');
    churchAdminContext.classes[IdReference.fromPath('Classes/c1')] = Class(
      id: 'c1',
      name: 'c1',
      service: churchAdminContext
          .services[IdReference.fromPath('Services/خدمة ثانوي')],
      serviceStudyYear: 11,
    );
  });

  test(
    'legacyAndClassParentServices_whenPersonHasOnlyAClass_returnsTheClassParentService',
    () {
      final person = meetinghelper.Person(
        ref: IdReference.fromPath('Persons/p1'),
        classId: IdReference.fromPath('Classes/c1'),
      );

      final result = legacyAndClassParentServices(churchAdminContext, person);

      expect(result.map((s) => s.id).toSet(), {'خدمة ثانوي'});
    },
  );

  test(
    'legacyAndClassParentServices_whenPersonHasOnlyLegacyServices_returnsThoseServices',
    () {
      final person = meetinghelper.Person(
        ref: IdReference.fromPath('Persons/p2'),
        services: [IdReference.fromPath('Services/خدمة قديمة')],
      );

      final result = legacyAndClassParentServices(churchAdminContext, person);

      expect(result.map((s) => s.id).toSet(), {'خدمة قديمة'});
    },
  );

  test(
    'legacyAndClassParentServices_whenPersonHasBothAClassAndLegacyServices_returnsTheUnion',
    () {
      final person = meetinghelper.Person(
        ref: IdReference.fromPath('Persons/p3'),
        classId: IdReference.fromPath('Classes/c1'),
        services: [IdReference.fromPath('Services/خدمة قديمة')],
      );

      final result = legacyAndClassParentServices(churchAdminContext, person);

      expect(result.map((s) => s.id).toSet(), {'خدمة قديمة', 'خدمة ثانوي'});
    },
  );

  test(
    'legacyAndClassParentServices_whenPersonHasNeitherAClassNorServices_returnsEmpty',
    () {
      final person = meetinghelper.Person(
        ref: IdReference.fromPath('Persons/p4'),
      );

      final result = legacyAndClassParentServices(churchAdminContext, person);

      expect(result, isEmpty);
    },
  );

  test(
    'legacyAndClassParentServices_whenTheClassDidNotMigrate_returnsOnlyLegacyServices',
    () {
      final person = meetinghelper.Person(
        ref: IdReference.fromPath('Persons/p5'),
        classId: IdReference.fromPath('Classes/unmigrated'),
        services: [IdReference.fromPath('Services/خدمة قديمة')],
      );

      final result = legacyAndClassParentServices(churchAdminContext, person);

      expect(result.map((s) => s.id).toSet(), {'خدمة قديمة'});
    },
  );

  test(
    'legacyAndClassParentServices_whenALegacyServiceRefIsDangling_omitsIt',
    () {
      final person = meetinghelper.Person(
        ref: IdReference.fromPath('Persons/p6'),
        classId: IdReference.fromPath('Classes/c1'),
        services: [IdReference.fromPath('Services/غير موجود')],
      );

      final result = legacyAndClassParentServices(churchAdminContext, person);

      expect(result.map((s) => s.id).toSet(), {'خدمة ثانوي'});
    },
  );
}
