import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final person = Person(id: 'person-1', name: 'مينا');
  const family = Family(id: 'family-1', name: 'عائلة');
  const area = Area(id: 'area-1', name: 'شبرا');
  const street = Street(id: 'street-1', name: 'النيل');
  const store = Store(id: 'store-1', name: 'مخزن');
  const service = Service(id: 'service-1', name: 'خدمة');
  const group = Group(id: 'group-1', name: 'مجموعة');
  const schoolClass = Class(id: 'class-1', name: 'فصل');
  const user = User(uid: 'user-1', name: 'خادم');

  final contracts = <({AnalyticsEvent event, String name, Json properties})>[
    (
      event: const EntityPropertyCopy(CopiedEntityProperty.address),
      name: 'entity:property_copy',
      properties: {'copied_property': 'address'},
    ),
    (
      event: const EntityPropertyCopy(CopiedEntityProperty.notes),
      name: 'entity:property_copy',
      properties: {'copied_property': 'notes'},
    ),
    (
      event: EntityMapShow(person),
      name: 'entity:map_show',
      properties: {'entity_type': 'person', 'person_id': 'person-1'},
    ),
    (
      event: EntityMapShow(family),
      name: 'entity:map_show',
      properties: {'entity_type': 'family', 'family_id': 'family-1'},
    ),
    (
      event: EntityMapShow(area),
      name: 'entity:map_show',
      properties: {'entity_type': 'area', 'area_id': 'area-1'},
    ),
    (
      event: EntityMapShow(street),
      name: 'entity:map_show',
      properties: {'entity_type': 'street', 'street_id': 'street-1'},
    ),
    (
      event: EntityMapShow(store),
      name: 'entity:map_show',
      properties: {'entity_type': 'store', 'store_id': 'store-1'},
    ),
    (
      event: EntityAttendanceRecordOpen(service),
      name: 'entity:attendance_record_open',
      properties: {'entity_type': 'service', 'service_id': 'service-1'},
    ),
    (
      event: EntityAttendanceRecordOpen(group),
      name: 'entity:attendance_record_open',
      properties: {'entity_type': 'group', 'group_id': 'group-1'},
    ),
    (
      event: EntityStatisticsOpen(schoolClass),
      name: 'entity:statistics_open',
      properties: {'entity_type': 'class', 'class_id': 'class-1'},
    ),
    (
      event: EntityStatisticsOpen(user),
      name: 'entity:statistics_open',
      properties: {'entity_type': 'user', 'user_id': 'user-1'},
    ),
    (
      event: EntityStatisticsOpen(const District(id: 'district-1', name: 'حي')),
      name: 'entity:statistics_open',
      properties: {},
    ),
    (
      event: EntityShowMoreTap([person, person, person]),
      name: 'entity:show_more_tap',
      properties: {'entity_type': 'person', 'item_count': 3},
    ),
    (
      event: EntityShowMoreTap(['not an entity']),
      name: 'entity:show_more_tap',
      properties: {'item_count': 1},
    ),
    (
      event: EntityShowMoreTap([]),
      name: 'entity:show_more_tap',
      properties: {'item_count': 0},
    ),
    (
      event: EntityRelatedCreateTap(
        family,
        AnalyticsEntityType.person,
        relation: EntityRelation.member,
      ),
      name: 'entity:related_create_tap',
      properties: {
        'entity_type': 'family',
        'family_id': 'family-1',
        'related_entity_type': 'person',
        'relation': 'member',
      },
    ),
    (
      event: EntityRelatedCreateTap.unlinkedStore(area),
      name: 'entity:related_create_tap',
      properties: {
        'entity_type': 'area',
        'area_id': 'area-1',
        'related_entity_type': 'store',
        'relation': 'unlinked',
      },
    ),
  ];

  for (final (:event, :name, :properties) in contracts) {
    test('$name sends ${properties.isEmpty ? 'nothing' : properties}', () {
      expect(event.name, name);
      expect(event.properties, properties);
    });
  }
}
