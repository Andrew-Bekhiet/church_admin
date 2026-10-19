import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';

/// A model as the Ash server stores it: the model's own JSON plus the sort
/// and permission columns the server derives.
class OrganizationRow implements ToJson, ID {
  @override
  final String id;
  final ToJson model;
  final Json derived;

  const OrganizationRow(this.id, this.model, [this.derived = const {}]);

  factory OrganizationRow.service(Service service) =>
      OrganizationRow(service.id, service, {
        'userCanEdit': service.userCanEdit,
        'studyYearFromOrder': service.studyYearFrom?.order,
        'studyYearToOrder': service.studyYearTo?.order,
      });

  factory OrganizationRow.klass(Class class$) =>
      OrganizationRow(class$.id, class$, {
        if (class$.service == null)
          'service': {'id': class$.serviceId, '__typename': 'Service'},
        'userCanEdit': class$.userCanEdit,
        'studyYearFromOrder': class$.studyYear?.order,
      });

  factory OrganizationRow.group(Group group) =>
      OrganizationRow(group.id, group, {'userCanEdit': group.userCanEdit});

  @override
  Json toJson() => {..._asServerObjects(model.toJson()), ...derived};

  static const _typenameOfField = {
    'studyYearFrom': 'StudyYear',
    'studyYearTo': 'StudyYear',
    'classes': 'Class',
    'groups': 'Group',
    'meetings': 'Meeting',
    'defaultMeeting': 'Meeting',
    'nextService': 'Service',
    'service': 'Service',
    'admins': 'User',
    'latestEdit': 'LatestEdit',
    'user': 'User',
  };

  static Json _asServerObjects(Json json) => {
    for (final MapEntry(:key, :value) in json.entries)
      key: switch (value) {
        final List list => [
          for (final item in list)
            _asServerObject(item as Json, _typenameOfField[key]),
        ],
        final Json object => _asServerObject(object, _typenameOfField[key]),
        _ => value,
      },
  };

  static Json _asServerObject(Json object, String? typename) => {
    ..._asServerObjects(object),
    '__typename': ?typename,
    if (object['id'] == null)
      'id': ?switch (typename) {
        'StudyYear' => '${object['order']}',
        'User' => object['uid'],
        'LatestEdit' => object['time'],
        _ => null,
      },
  };
}

abstract final class OrganizationFixtures {
  static final StudyYear firstGrade = StudyYear(order: 1, name: 'أولى ابتدائي');
  static final StudyYear secondGrade = StudyYear(
    order: 2,
    name: 'ثانية ابتدائي',
  );
  static final StudyYear sixthGrade = StudyYear(
    order: 6,
    name: 'سادسة ابتدائي',
  );
  static final StudyYear seventhGrade = StudyYear(
    order: 7,
    name: 'أولى إعدادي',
  );
  static final StudyYear ninthGrade = StudyYear(order: 9, name: 'ثالثة إعدادي');

  static final List<StudyYear> studyYears = [
    firstGrade,
    secondGrade,
    sixthGrade,
    seventhGrade,
    ninthGrade,
  ];

  static const User servant = User(uid: 'servant-1', name: 'خادم');

  static const Meeting serviceMeeting = Meeting(
    id: 'meeting-1',
    name: 'اجتماع الخدمة',
    audience: MeetingAudience.personsAndServants,
    isArchived: false,
  );

  static final Service primaryService = Service(
    id: 'service-1',
    name: 'ابتدائي',
    studyYearFrom: firstGrade,
    studyYearFromId: firstGrade.order,
    studyYearTo: sixthGrade,
    studyYearToId: sixthGrade.order,
    color: const Color(0xFF2196F3),
  );

  static final Service preparatoryService = Service(
    id: 'service-2',
    name: 'إعدادي',
    studyYearFrom: seventhGrade,
    studyYearFromId: seventhGrade.order,
    studyYearTo: ninthGrade,
    studyYearToId: ninthGrade.order,
  );

  static const Service servantsService = Service(
    id: 'service-3',
    name: 'خدام',
  );

  static final Class hopeClass = Class(
    id: 'class-1',
    name: 'فصل الأمل',
    serviceId: primaryService.id,
    serviceStudyYear: firstGrade.order,
    serviceStudyYearTo: firstGrade.order,
    studyYear: firstGrade,
    studyYearTo: firstGrade,
    serviceGender: true,
  );

  static final Class faithClass = Class(
    id: 'class-2',
    name: 'فصل الإيمان',
    serviceId: primaryService.id,
    serviceStudyYear: firstGrade.order,
    serviceStudyYearTo: firstGrade.order,
    studyYear: firstGrade,
    studyYearTo: firstGrade,
    serviceGender: false,
  );

  static final Class loveClass = Class(
    id: 'class-3',
    name: 'فصل المحبة',
    serviceId: primaryService.id,
    serviceStudyYear: secondGrade.order,
    serviceStudyYearTo: sixthGrade.order,
    studyYear: secondGrade,
    studyYearTo: sixthGrade,
  );

  static final Class preparatoryClass = Class(
    id: 'class-4',
    name: 'فصل النور',
    serviceId: preparatoryService.id,
    serviceStudyYear: seventhGrade.order,
    serviceStudyYearTo: seventhGrade.order,
    studyYear: seventhGrade,
    studyYearTo: seventhGrade,
  );

  static final Group choirGroup = Group(
    id: 'group-1',
    name: 'كورال',
    serviceId: primaryService.id,
    validity: DateTimeRange(
      start: DateTime(2026, 9),
      end: DateTime(2027, 6, 30),
    ),
  );

  static final Group readingGroup = Group(
    id: 'group-2',
    name: 'مجموعة القراءة',
    serviceId: primaryService.id,
    validity: DateTimeRange(
      start: DateTime(2026, 10),
      end: DateTime(2027, 3, 31),
    ),
  );

  static final Group openGroup = Group(
    id: 'group-3',
    name: 'فريق التمثيل',
    serviceId: preparatoryService.id,
  );

  static Json studyYearRow(StudyYear year) => {
    ...year.toJson(),
    'id': year.id,
    '__typename': 'StudyYear',
  };
}

/// The service, class and group commands of the Ash server over in-memory
/// tables: each stores what it is asked for the way the resource does and
/// answers it in `result`, or rejects with the code the resource uses.
class FakeOrganizationServer {
  final FakeAshTable services = FakeAshTable(
    typename: 'Service',
    projectsSelections: true,
    listRoot: 'services',
  );
  final FakeAshTable classes = FakeAshTable(
    typename: 'Class',
    projectsSelections: true,
    listRoot: 'classes',
  );
  final FakeAshTable groups = FakeAshTable(
    typename: 'Group',
    projectsSelections: true,
    listRoot: 'groups',
  );

  int _created = 0;

  List<FakeAshTable> get tables => [services, classes, groups];

  late final Map<String, FakeAshMutation> mutations = {
    'createService': _createService,
    'updateService': _updateService,
    'deleteService': (variables) => _destroy(services, variables),
    'createClass': (variables) => _create(classes, variables),
    'updateClass': (variables) => _update(classes, variables),
    'deleteClass': (variables) => _destroy(classes, variables),
    'createGroup': (variables) => _create(groups, variables),
    'updateGroup': _updateGroup,
    'deleteGroup': (variables) => _destroy(groups, variables),
  };

  FakeOrganizationServer({
    List<Service> services = const [],
    List<Class> classes = const [],
    List<Group> groups = const [],
  }) {
    services.map(OrganizationRow.service).forEach(this.services.add);
    classes.map(OrganizationRow.klass).forEach(this.classes.add);
    groups.map(OrganizationRow.group).forEach(this.groups.add);
  }

  FakeAshBackend backend() => FakeAshBackend(tables, mutations: mutations);

  Json _input(Json variables) => (variables['input'] as Map).cast();

  Json? _studyYearOf(Object? order) => switch (order) {
    final int order => OrganizationFixtures.studyYearRow(
      OrganizationFixtures.studyYears.singleWhere(
        (year) => year.order == order,
      ),
    ),
    _ => null,
  };

  Json _create(FakeAshTable table, Json variables) {
    final row = {
      'id': '${table.listRoot}-created-${++_created}',
      ..._input(variables),
      '__typename': table.typename,
    };
    table.rows.add(row);

    return row;
  }

  Json _createService(Json variables) {
    final input = _input(variables);
    final name = input['name'];
    if (services.rows.any((row) => row['name'] == name)) {
      throw const FakeAshRejection('service/name-taken');
    }

    final meeting = input['defaultMeeting'] as Map?;
    final row = {
      'id': 'services-created-${++_created}',
      ...input..remove('defaultMeeting'),
      'studyYearFrom': _studyYearOf(input['studyYearFromId']),
      'studyYearTo': _studyYearOf(input['studyYearToId']),
      'defaultMeeting': ?switch (meeting) {
        final meeting? => {
          ...meeting.cast<String, dynamic>(),
          'id': 'meetings-created-${++_created}',
          '__typename': 'Meeting',
        },
        null => null,
      },
      '__typename': 'Service',
    };
    services.rows.add(row);

    return row;
  }

  Json? _updateService(Json variables) {
    final input = _input(variables);
    final taken = services.rows.any(
      (row) => row['id'] != variables['id'] && row['name'] == input['name'],
    );
    if (taken) throw const FakeAshRejection('service/name-taken');

    final row = _update(services, variables);

    return row == null
        ? null
        : (row
            ..['studyYearFrom'] = _studyYearOf(row['studyYearFromId'])
            ..['studyYearTo'] = _studyYearOf(row['studyYearToId']));
  }

  Json? _updateGroup(Json variables) {
    final input = _input(variables);
    final meetingId = input['defaultMeetingId'];
    final group = groups.rows.firstWhere((row) => row['id'] == variables['id']);
    final ownMeetings = (group['meetings'] as List? ?? const [])
        .cast<Map<String, dynamic>>();
    final defaultMeeting = ownMeetings.firstWhereOrNull(
      (meeting) => meeting['id'] == meetingId,
    );
    if (meetingId != null && defaultMeeting == null) {
      throw const FakeAshRejection('group/default-meeting-mismatch');
    }

    return _update(groups, variables)
      ?..remove('defaultMeetingId')
      ..['defaultMeeting'] = defaultMeeting;
  }

  Json? _update(FakeAshTable table, Json variables) {
    final row = table.rows.where((row) => row['id'] == variables['id']);

    return row.isEmpty ? null : (row.single..addAll(_input(variables)));
  }

  Json? _destroy(FakeAshTable table, Json variables) {
    final index = table.rows.indexWhere((row) => row['id'] == variables['id']);

    return index < 0 ? null : table.rows.removeAt(index);
  }
}
