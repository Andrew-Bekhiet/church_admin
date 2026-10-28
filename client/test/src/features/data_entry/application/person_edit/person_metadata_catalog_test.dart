import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/churches_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/colleges_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/fathers_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/hobbies_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/jobs_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/person_types_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/qualifications_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/schools_dao.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/metadata/tags_dao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_metadata_dao.dart';
import '../../../../fakes/recording_analytics_provider.dart';

void main() {
  late MockMetadataDAO metadata;
  late _MockCollegesDAO colleges;
  late RecordingAnalyticsProvider analytics;
  late PersonMetadataCatalog catalog;

  setUpAll(() {
    registerFallbackValue(const College(id: '', name: ''));
    registerFallbackValue(const School(id: '', name: ''));
    registerFallbackValue(const Qualification(id: '', name: ''));
    registerFallbackValue(const Job(id: '', name: ''));
    registerFallbackValue(const Church(id: '', name: ''));
    registerFallbackValue(const Father(id: '', name: ''));
    registerFallbackValue(const Hobby(id: '', name: ''));
    registerFallbackValue(const Tag(id: '', name: ''));
    registerFallbackValue(const PersonType(id: '', name: ''));
  });

  setUp(() {
    metadata = MockMetadataDAO();
    colleges = _MockCollegesDAO();
    analytics = RecordingAnalyticsProvider();
    catalog = PersonMetadataCatalog(
      metadata,
      AnalyticsService([analytics], FakeLoggingService()),
    );

    final schools = _MockSchoolsDAO();
    final qualifications = _MockQualificationsDAO();
    final jobs = _MockJobsDAO();
    final churches = _MockChurchesDAO();
    final fathers = _MockFathersDAO();
    final hobbies = _MockHobbiesDAO();
    final tags = _MockTagsDAO();
    final personTypes = _MockPersonTypesDAO();

    when(() => metadata.colleges).thenReturn(colleges);
    when(() => metadata.schools).thenReturn(schools);
    when(() => metadata.qualifications).thenReturn(qualifications);
    when(() => metadata.jobs).thenReturn(jobs);
    when(() => metadata.churches).thenReturn(churches);
    when(() => metadata.fathers).thenReturn(fathers);
    when(() => metadata.hobbies).thenReturn(hobbies);
    when(() => metadata.tags).thenReturn(tags);
    when(() => metadata.personTypes).thenReturn(personTypes);

    when(
      () => colleges.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer((call) async => call.namedArguments[#newObject] as College);
    when(
      () => schools.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer((call) async => call.namedArguments[#newObject] as School);
    when(
      () => qualifications.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer(
      (call) async => call.namedArguments[#newObject] as Qualification,
    );
    when(
      () => jobs.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer((call) async => call.namedArguments[#newObject] as Job);
    when(
      () => churches.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer((call) async => call.namedArguments[#newObject] as Church);
    when(
      () => fathers.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer((call) async => call.namedArguments[#newObject] as Father);
    when(
      () => hobbies.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer((call) async => call.namedArguments[#newObject] as Hobby);
    when(
      () => tags.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer((call) async => call.namedArguments[#newObject] as Tag);
    when(
      () => personTypes.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer((call) async => call.namedArguments[#newObject] as PersonType);
  });

  final creations =
      <
        ({
          String item,
          Future<ViewableWithID> Function(PersonMetadataCatalog) create,
          PickerObjectType type,
        })
      >[
        (
          item: 'college',
          create: (catalog) => catalog.createCollege('هندسة'),
          type: PickerObjectType.college,
        ),
        (
          item: 'school',
          create: (catalog) => catalog.createSchool('مدرسة'),
          type: PickerObjectType.school,
        ),
        (
          item: 'qualification',
          create: (catalog) => catalog.createQualification('بكالوريوس'),
          type: PickerObjectType.qualification,
        ),
        (
          item: 'job',
          create: (catalog) => catalog.createJob('مهندس'),
          type: PickerObjectType.job,
        ),
        (
          item: 'church',
          create: (catalog) => catalog.createChurch('كنيسة'),
          type: PickerObjectType.church,
        ),
        (
          item: 'father',
          create: (catalog) => catalog.createFather('أبونا'),
          type: PickerObjectType.father,
        ),
        (
          item: 'hobby',
          create: (catalog) => catalog.createHobby('رسم'),
          type: PickerObjectType.hobby,
        ),
        (
          item: 'tag',
          create: (catalog) => catalog.createTag('وسم'),
          type: PickerObjectType.tag,
        ),
        (
          item: 'person type',
          create: (catalog) => catalog.createPersonType('خادم'),
          type: PickerObjectType.personType,
        ),
      ];

  for (final (:item, :create, :type) in creations) {
    test('creating a $item tracks a custom ${type.name} picker item', () async {
      await create(catalog);

      expect(analytics.trackedEventsOf<PickerCustomItemCreate>(), [
        isA<PickerCustomItemCreate>().having(
          (event) => event.pickerObjectType,
          'pickerObjectType',
          type,
        ),
      ]);
    });
  }

  test('a college that fails to be created tracks nothing', () async {
    when(
      () => colleges.createObject(newObject: any(named: 'newObject')),
    ).thenAnswer((_) => Future.error(StateError('offline')));

    await expectLater(catalog.createCollege('هندسة'), throwsStateError);

    expect(analytics.trackedEvents, isEmpty);
  });
}

final class _MockCollegesDAO extends Mock implements CollegesDAO {}

final class _MockSchoolsDAO extends Mock implements SchoolsDAO {}

final class _MockQualificationsDAO extends Mock implements QualificationsDAO {}

final class _MockJobsDAO extends Mock implements JobsDAO {}

final class _MockChurchesDAO extends Mock implements ChurchesDAO {}

final class _MockFathersDAO extends Mock implements FathersDAO {}

final class _MockHobbiesDAO extends Mock implements HobbiesDAO {}

final class _MockTagsDAO extends Mock implements TagsDAO {}

final class _MockPersonTypesDAO extends Mock implements PersonTypesDAO {}
