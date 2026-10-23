import 'e2e_ash.dart';
import 'e2e_backend.dart';

/// Entities for every child list of the area, street, family, service and
/// class screens, each list held in the order of the default sort the backend
/// seeds for every user (`default_order_by_preferences()`): streets by last
/// visit, families by address text, persons by person type, persons in a
/// service by name, classes by study year, groups and stores by name. Names
/// start with ب < ت < ث so name order holds under any collation, and the other
/// keys are spread so each disagrees with name order. The ids exist once
/// [seed] has run.
class ListSortFixture {
  static const _letters = ['ب', 'ت', 'ث'];
  static const _parentFamilyLetters = ['ح', 'خ', 'د'];
  static const _personTypeOrders = [3, 1, 2];
  static const _personStudyYears = [3, 1, 2];
  static const _streetVisitDaysAgo = [3, 2, 1];
  static const _classStudyYearRanges = [(3, 3), (1, 3), (2, 2)];

  static List<String> _byStudyYear(List<String> classIds) => [
    classIds[1],
    classIds[2],
    classIds.first,
  ];

  late final String areaId;
  late final String otherAreaId;
  late final List<String> streetIds;
  late final List<String> otherAreaStreetIds;
  late final List<String> childFamilyIds;
  late final String familyId;
  late final List<String> parentFamilyIds;
  late final List<String> personIdsByName;
  late final List<String> storeIds;
  late final String serviceId;
  late final String otherServiceId;
  late final List<String> classIds;
  late final List<String> otherServiceClassIds;
  late final List<String> groupIds;
  late final List<String> otherServiceGroupIds;

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
    serviceId = await _createService('خدمة الترتيب');
    otherServiceId = await _createService('خدمة الترتيب الأخرى');
    areaId = await E2eBackend.insertArea('منطقة الترتيب');
    otherAreaId = await E2eBackend.insertArea('منطقة الترتيب الأخرى');
    streetIds = await _createStreetsIn(areaId);
    otherAreaStreetIds = await _createStreetsIn(otherAreaId);
    childFamilyIds = [
      for (final (i, letter) in _letters.indexed)
        await _createFamilyOnStreet(
          'عائلة $letter',
          areaId: areaId,
          streetId: streetId,
          houseCode: '${i + 1}',
        ),
    ];
    parentFamilyIds = [
      for (final (i, letter) in _parentFamilyLetters.indexed)
        await _createFamilyOnStreet(
          'عائلة $letter',
          areaId: otherAreaId,
          streetId: otherAreaStreetIds.first,
          houseCode: '${i + 5}',
        ),
    ];
    familyId = await _createFamilyOnStreet(
      'عائلة ج',
      areaId: areaId,
      streetId: streetId,
      houseCode: '4',
      parentFamilyIds: parentFamilyIds,
      childFamilyIds: childFamilyIds,
    );
    personIdsByName = await _createPersonsInFamily();
    storeIds = [
      for (final letter in _letters)
        await E2eAsh.createRecordId('Store', {
          'name': 'متجر $letter',
          'adminFamilyId': familyId,
          'address': {'areaId': areaId, 'streetId': streetId},
        }),
    ];
    classIds = await _createClassesIn(serviceId);
    otherServiceClassIds = await _createClassesIn(otherServiceId);
    groupIds = await _createGroupsIn(serviceId);
    otherServiceGroupIds = await _createGroupsIn(otherServiceId);
    await _recordVisitsTo(streetIds);
    await _recordVisitsTo(otherAreaStreetIds);
  }

  Future<String> _createService(String name) =>
      E2eAsh.createRecordId('Service', {'name': name});

  Future<List<String>> _createStreetsIn(String areaId) async => [
    for (final letter in _letters)
      await E2eBackend.insertStreet('شارع $letter', areaId: areaId),
  ];

  Future<String> _createFamilyOnStreet(
    String name, {
    required String areaId,
    required String streetId,
    required String houseCode,
    List<String>? parentFamilyIds,
    List<String>? childFamilyIds,
  }) => E2eAsh.createRecordId('Family', {
    'name': name,
    'address': {
      'areaId': areaId,
      'streetId': streetId,
      'houseCode': houseCode,
    },
    'parents': ?parentFamilyIds,
    'children': ?childFamilyIds,
  });

  Future<List<String>> _createPersonsInFamily() async {
    final personTypes = await E2eAsh.pageResults(
      r'''
      query PersonTypesByOrder($orders: [Int!]!) {
        personTypes(filter: {order: {in: $orders}}) { results { id order } }
      }
      ''',
      'personTypes',
      variables: {'orders': _personTypeOrders},
    );
    final personTypeIdByOrder = {
      for (final type in personTypes)
        (type as Map)['order'] as int: type['id'] as String,
    };

    return [
      for (final (i, letter) in _letters.indexed)
        await E2eAsh.createRecordId('Person', {
          'name': 'مخدوم $letter',
          'familyId': familyId,
          'studyYearId': _personStudyYears[i],
          'personTypeId': personTypeIdByOrder[_personTypeOrders[i]],
          'services': [serviceId],
        }),
    ];
  }

  Future<List<String>> _createClassesIn(String serviceId) async => [
    for (final (i, letter) in _letters.indexed)
      await E2eAsh.createRecordId('Class', {
        'name': 'فصل $letter',
        'serviceId': serviceId,
        'serviceStudyYear': _classStudyYearRanges[i].$1,
        'serviceStudyYearTo': _classStudyYearRanges[i].$2,
      }),
  ];

  Future<List<String>> _createGroupsIn(String serviceId) async => [
    for (final letter in _letters)
      await E2eAsh.createRecordId('Group', {
        'name': 'مجموعة $letter',
        'serviceId': serviceId,
      }),
  ];

  Future<void> _recordVisitsTo(List<String> streetIds) async {
    for (final (i, streetId) in streetIds.indexed) {
      await E2eAsh.mutation(
        r'''
        mutation RecordStreetVisit($input: RecordVisitInput!) {
          recordVisit(input: $input) {
            result { id }
            errors { code message fields }
          }
        }
        ''',
        field: 'recordVisit',
        variables: {
          'input': {
            'subject': 'STREETS',
            'recordId': streetId,
            'isFatherVisit': false,
            'time': DateTime.now()
                .subtract(Duration(days: _streetVisitDaysAgo[i]))
                .toUtc()
                .toIso8601String(),
          },
        },
      );
    }
  }
}
