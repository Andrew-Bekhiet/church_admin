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

  final screens = <({String opening, AppRoute route, Json properties})>[
    (
      opening: 'a blank area',
      route: const EditAreaRoute(),
      properties: {'intent_kind': 'create'},
    ),
    (
      opening: 'an area update',
      route: const EditAreaRoute(intent: UpdateArea(area: area)),
      properties: {'intent_kind': 'update', 'area_id': area.id},
    ),
    (
      opening: 'a blank class',
      route: const EditClassRoute(),
      properties: {'intent_kind': 'create'},
    ),
    (
      opening: 'a class in a service',
      route: const EditClassRoute(
        intent: CreateClassInService(service: service),
      ),
      properties: {'intent_kind': 'inService', 'service_id': service.id},
    ),
    (
      opening: 'a class update',
      route: const EditClassRoute(intent: UpdateClass(class$: schoolClass)),
      properties: {'intent_kind': 'update', 'class_id': schoolClass.id},
    ),
    (
      opening: 'a blank family',
      route: const EditFamilyRoute(),
      properties: {'intent_kind': 'create'},
    ),
    (
      opening: 'a family at a full address',
      route: const EditFamilyRoute(
        intent: CreateFamilyAtAddress(
          address: Address(area: area, street: street),
        ),
      ),
      properties: {
        'intent_kind': 'atAddress',
        'area_id': area.id,
        'street_id': street.id,
      },
    ),
    (
      opening: 'a family at an empty address',
      route: const EditFamilyRoute(
        intent: CreateFamilyAtAddress(address: Address()),
      ),
      properties: {'intent_kind': 'atAddress'},
    ),
    (
      opening: 'a child family',
      route: const EditFamilyRoute(intent: CreateChildFamilyOf(parent: family)),
      properties: {'intent_kind': 'childOf', 'family_id': family.id},
    ),
    (
      opening: 'a parent family',
      route: const EditFamilyRoute(intent: CreateParentFamilyOf(child: family)),
      properties: {'intent_kind': 'parentOf', 'family_id': family.id},
    ),
    (
      opening: 'a family update',
      route: const EditFamilyRoute(intent: UpdateFamily(family: family)),
      properties: {'intent_kind': 'update', 'family_id': family.id},
    ),
    (
      opening: 'a blank group',
      route: const EditGroupRoute(),
      properties: {'intent_kind': 'create'},
    ),
    (
      opening: 'a group in a service',
      route: const EditGroupRoute(
        intent: CreateGroupInService(service: service),
      ),
      properties: {'intent_kind': 'inService', 'service_id': service.id},
    ),
    (
      opening: 'a group update',
      route: const EditGroupRoute(intent: UpdateGroup(group: group)),
      properties: {'intent_kind': 'update', 'group_id': group.id},
    ),
    (
      opening: 'a blank person',
      route: const EditPersonRoute(),
      properties: {'intent_kind': 'create'},
    ),
    (
      opening: 'a person in an area',
      route: const EditPersonRoute(intent: CreatePersonInArea(area: area)),
      properties: {'intent_kind': 'inArea', 'area_id': area.id},
    ),
    (
      opening: 'a person in a class',
      route: const EditPersonRoute(
        intent: CreatePersonInClass(class$: schoolClass),
      ),
      properties: {'intent_kind': 'inClass', 'class_id': schoolClass.id},
    ),
    (
      opening: 'a person in a family',
      route: const EditPersonRoute(
        intent: CreatePersonInFamily(family: family),
      ),
      properties: {'intent_kind': 'inFamily', 'family_id': family.id},
    ),
    (
      opening: 'a person in a group',
      route: const EditPersonRoute(intent: CreatePersonInGroup(group: group)),
      properties: {'intent_kind': 'inGroup', 'group_id': group.id},
    ),
    (
      opening: 'a person in a service',
      route: const EditPersonRoute(
        intent: CreatePersonInService(service: service),
      ),
      properties: {'intent_kind': 'inService', 'service_id': service.id},
    ),
    (
      opening: 'a person on a street',
      route: const EditPersonRoute(
        intent: CreatePersonOnStreet(street: street),
      ),
      properties: {'intent_kind': 'onStreet', 'street_id': street.id},
    ),
    (
      opening: 'a person update',
      route: EditPersonRoute(intent: UpdatePerson(person: person)),
      properties: {'intent_kind': 'update', 'person_id': person.id},
    ),
    (
      opening: 'a blank service',
      route: const EditServiceRoute(),
      properties: {'intent_kind': 'create'},
    ),
    (
      opening: 'a service update',
      route: const EditServiceRoute(intent: UpdateService(service: service)),
      properties: {'intent_kind': 'update', 'service_id': service.id},
    ),
    (
      opening: 'a blank store',
      route: const EditStoreRoute(),
      properties: {'intent_kind': 'create'},
    ),
    (
      opening: 'a store of a family',
      route: const EditStoreRoute(intent: CreateStoreOfFamily(family: family)),
      properties: {'intent_kind': 'ofFamily', 'family_id': family.id},
    ),
    (
      opening: 'a store update',
      route: const EditStoreRoute(intent: UpdateStore(store: store)),
      properties: {'intent_kind': 'update', 'store_id': store.id},
    ),
    (
      opening: 'a blank street',
      route: const EditStreetRoute(),
      properties: {'intent_kind': 'create'},
    ),
    (
      opening: 'a street in an area',
      route: const EditStreetRoute(intent: CreateStreetInArea(area: area)),
      properties: {'intent_kind': 'inArea', 'area_id': area.id},
    ),
    (
      opening: 'a street update',
      route: const EditStreetRoute(intent: UpdateStreet(street: street)),
      properties: {'intent_kind': 'update', 'street_id': street.id},
    ),
  ];

  for (final (:opening, :route, :properties) in screens) {
    test('the editor opened for $opening sends $properties', () {
      expect(route.analyticsProperties, properties);
    });
  }
}
