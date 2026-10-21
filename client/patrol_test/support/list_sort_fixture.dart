import 'package:uuid/uuid.dart';

import 'e2e_backend.dart';

/// Entities for every child list of the area, street, family, service and
/// class screens, each list held in the order of the default sort the backend
/// seeds for every user (`default_order_by_preferences()`): streets by last
/// visit, families by address text, persons by person type, persons in a
/// service by name, classes by study year, groups and stores by name. Names
/// start with ب < ت < ث so name order holds under any collation, and the other
/// keys are spread so each disagrees with name order.
class ListSortFixture {
  static const _uuid = Uuid();
  static const _letters = ['ب', 'ت', 'ث'];
  static const _personTypeOrders = [3, 1, 2];
  static const _personStudyYears = [3, 1, 2];
  static const _streetVisitDaysAgo = [3, 2, 1];
  static const _classStudyYearRanges = [(3, 3), (1, 3), (2, 2)];

  static List<String> _newIds(int count) => [
    for (var i = 0; i < count; i++) _uuid.v4(),
  ];

  static List<String> _byStudyYear(List<String> classIds) => [
    classIds[1],
    classIds[2],
    classIds.first,
  ];

  static List<Map<String, Object>> _streetsIn(
    String areaId,
    List<String> ids,
  ) => [
    for (final (i, id) in ids.indexed)
      {
        'id': id,
        'name': 'شارع ${_letters[i]}',
        'areas': {
          'data': [
            {'areaId': areaId},
          ],
        },
      },
  ];

  static List<Map<String, Object>> _visitsTo(List<String> streetIds) => [
    for (final (i, id) in streetIds.indexed)
      {
        'table': 'streets',
        'recordId': id,
        'isFatherVisit': false,
        'time': DateTime.now()
            .subtract(Duration(days: _streetVisitDaysAgo[i]))
            .toUtc()
            .toIso8601String(),
      },
  ];

  static List<Map<String, Object>> _classesIn(
    String serviceId,
    List<String> ids,
  ) => [
    for (final (i, id) in ids.indexed)
      {
        'id': id,
        'name': 'فصل ${_letters[i]}',
        'serviceId': serviceId,
        'serviceStudyYear': _classStudyYearRanges[i].$1,
        'serviceStudyYearTo': _classStudyYearRanges[i].$2,
      },
  ];

  static List<Map<String, Object>> _groupsIn(
    String serviceId,
    List<String> ids,
  ) => [
    for (final (i, id) in ids.indexed)
      {'id': id, 'name': 'مجموعة ${_letters[i]}', 'serviceId': serviceId},
  ];

  final String areaId = _uuid.v4();
  final String otherAreaId = _uuid.v4();
  final List<String> streetIds = _newIds(3);
  final List<String> otherAreaStreetIds = _newIds(3);
  final List<String> childFamilyIds = _newIds(3);
  final String familyId = _uuid.v4();
  final List<String> parentFamilyIds = _newIds(3);
  final List<String> personIdsByName = _newIds(3);
  final List<String> storeIds = _newIds(3);
  final String serviceId = _uuid.v4();
  final String otherServiceId = _uuid.v4();
  final List<String> classIds = _newIds(3);
  final List<String> otherServiceClassIds = _newIds(3);
  final List<String> groupIds = _newIds(3);
  final List<String> otherServiceGroupIds = _newIds(3);

  String get streetId => streetIds.first;

  List<String> get areaFamilyIds => [...childFamilyIds, familyId];

  List<String> get personIdsByType => [
    personIdsByName[1],
    personIdsByName[2],
    personIdsByName.first,
  ];

  List<String> get classIdsByStudyYear => _byStudyYear(classIds);

  List<String> get otherServiceClassIdsByStudyYear =>
      _byStudyYear(otherServiceClassIds);

  String get classWithEveryPersonId => classIds[1];

  Future<void> seed() async {
    final personTypes = await E2eBackend.hasuraQuery(
      r'''
      query PersonTypesByOrder($orders: [Int!]!) {
        personTypes(where: {order: {_in: $orders}}) { id order }
      }
      ''',
      variables: {'orders': _personTypeOrders},
    );
    final personTypeIdByOrder = {
      for (final type in personTypes['personTypes'] as List)
        (type as Map)['order'] as int: type['id'] as String,
    };

    await E2eBackend.hasuraQuery(
      r'''
      mutation SeedListSortFixture(
        $services: [ServicesInsertInput!]!
        $areas: [AreasInsertInput!]!
        $streets: [StreetsInsertInput!]!
        $families: [FamiliesInsertInput!]!
        $familyLinks: [FamiliesFamiliesInsertInput!]!
        $persons: [PersonsInsertInput!]!
        $stores: [StoresInsertInput!]!
        $classes: [ClassesInsertInput!]!
        $groups: [GroupsInsertInput!]!
        $visits: [HistoryVisitHistoryInsertInput!]!
      ) {
        insertServices(objects: $services) { affectedRows }
        insertAreas(objects: $areas) { affectedRows }
        insertStreets(objects: $streets) { affectedRows }
        insertFamilies(objects: $families) { affectedRows }
        insertFamiliesFamilies(objects: $familyLinks) { affectedRows }
        insertPersons(objects: $persons) { affectedRows }
        insertStores(objects: $stores) { affectedRows }
        insertClasses(objects: $classes) { affectedRows }
        insertGroups(objects: $groups) { affectedRows }
        insertHistoryVisitHistory(objects: $visits) { affectedRows }
      }
      ''',
      variables: {
        'services': [
          {'id': serviceId, 'name': 'خدمة الترتيب'},
          {'id': otherServiceId, 'name': 'خدمة الترتيب الأخرى'},
        ],
        'areas': [
          {'id': areaId, 'name': 'منطقة الترتيب'},
          {'id': otherAreaId, 'name': 'منطقة الترتيب الأخرى'},
        ],
        'streets': [
          ..._streetsIn(areaId, streetIds),
          ..._streetsIn(otherAreaId, otherAreaStreetIds),
        ],
        'families': [
          for (final (i, id) in childFamilyIds.indexed)
            _familyOnStreet(id, 'عائلة ${_letters[i]}', houseNumber: i + 1),
          _familyOnStreet(familyId, 'عائلة ج', houseNumber: 4),
          for (final (i, id) in parentFamilyIds.indexed)
            {
              'id': id,
              'name': 'عائلة ${['ح', 'خ', 'د'][i]}',
              'address': {
                'data': {
                  'areaId': otherAreaId,
                  'streetId': otherAreaStreetIds.first,
                  'houseNumber': i + 5,
                },
              },
            },
        ],
        'familyLinks': [
          for (final childId in childFamilyIds)
            {'parentFamilyId': familyId, 'childFamilyId': childId},
          for (final parentId in parentFamilyIds)
            {'parentFamilyId': parentId, 'childFamilyId': familyId},
        ],
        'persons': [
          for (final (i, id) in personIdsByName.indexed)
            {
              'id': id,
              'name': 'مخدوم ${_letters[i]}',
              'familyId': familyId,
              'studyYearId': _personStudyYears[i],
              'personTypeId': personTypeIdByOrder[_personTypeOrders[i]]!,
              'services': {
                'data': [
                  {'serviceId': serviceId},
                ],
              },
            },
        ],
        'stores': [
          for (final (i, id) in storeIds.indexed)
            {
              'id': id,
              'name': 'متجر ${_letters[i]}',
              'adminFamily': familyId,
              'address': {
                'data': {'areaId': areaId, 'streetId': streetId},
              },
            },
        ],
        'classes': [
          ..._classesIn(serviceId, classIds),
          ..._classesIn(otherServiceId, otherServiceClassIds),
        ],
        'groups': [
          ..._groupsIn(serviceId, groupIds),
          ..._groupsIn(otherServiceId, otherServiceGroupIds),
        ],
        'visits': [
          ..._visitsTo(streetIds),
          ..._visitsTo(otherAreaStreetIds),
        ],
      },
    );
  }

  Map<String, Object> _familyOnStreet(
    String id,
    String name, {
    required int houseNumber,
  }) => {
    'id': id,
    'name': name,
    'address': {
      'data': {
        'areaId': areaId,
        'streetId': streetId,
        'houseNumber': houseNumber,
      },
    },
  };
}
