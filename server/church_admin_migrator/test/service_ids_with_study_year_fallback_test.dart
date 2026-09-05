import 'package:church_admin/church_admin.dart';
import 'package:church_admin_migrator/migrations/create_new_services.dart';
import 'package:church_admin_migrator/models/church_admin_context.dart';
import 'package:church_admin_migrator/models/id_reference.dart';
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
  });

  test(
    'serviceIdsWithStudyYearFallback_whenPersonHasLegacyServices_returnsOnlyThoseServices',
    () {
      final person = Person(
        id: 'person-1',
        name: 'Test Person',
        services: [const Service(id: 'خدمة قديمة', name: 'خدمة قديمة')],
        studyYear: StudyYear(order: 11, name: 'ثانية ثانوي'),
      );

      final result = serviceIdsWithStudyYearFallback(churchAdminContext, person);

      expect(result, {'خدمة قديمة'});
    },
  );

  test(
    'serviceIdsWithStudyYearFallback_whenPersonHasNoServicesButAStudyYear_returnsTheStandardStudyYearService',
    () {
      final person = Person(
        id: 'person-2',
        name: 'Test Person',
        studyYear: StudyYear(order: 11, name: 'ثانية ثانوي'),
      );

      final result = serviceIdsWithStudyYearFallback(churchAdminContext, person);

      expect(result, {'خدمة ثانوي'});
    },
  );

  test(
    'serviceIdsWithStudyYearFallback_whenPersonHasNoServicesAndNoStudyYear_returnsEmpty',
    () {
      final person = Person(id: 'person-3', name: 'Test Person');

      final result = serviceIdsWithStudyYearFallback(churchAdminContext, person);

      expect(result, isEmpty);
    },
  );

  test(
    'serviceIdsWithStudyYearFallback_whenStudyYearFallsOutsideEveryServiceRange_returnsEmpty',
    () {
      final person = Person(
        id: 'person-4',
        name: 'Test Person',
        studyYear: StudyYear(order: 20, name: 'Beyond University'),
      );

      final result = serviceIdsWithStudyYearFallback(churchAdminContext, person);

      expect(result, isEmpty);
    },
  );
}
