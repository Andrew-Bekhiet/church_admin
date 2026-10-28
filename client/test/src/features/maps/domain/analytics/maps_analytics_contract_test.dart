import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const personId = 'person-1';
  const familyId = 'family-1';
  const areaId = 'area-1';
  final person = Person(id: personId, name: 'مينا');
  const family = Family(id: familyId, name: 'عائلة مينا');

  group('Maps and location analytics contract =>', () {
    for (final (event, expectedName, expectedProperties)
        in <(AnalyticsEvent, String, Json)>[
          (
            MapsOptionsApply(
              GeomapOptions(
                layers: const {GeoMapLayer.areas, GeoMapLayer.stores},
                selectedAreas: {
                  const Area(id: areaId, name: 'منطقة'),
                  const Area(id: 'area-2', name: 'منطقة 2'),
                },
                selectedStreets: {const Street(id: 'street-1', name: 'شارع')},
                selectedFamilies: {family},
                selectedStores: {const Store(id: 'store-1', name: 'محل')},
                selectedServices: {
                  const Service(id: 'service-1', name: 'خدمة'),
                },
                selectedClasses: {const Class(id: 'class-1', name: 'فصل')},
                selectedGroups: {const Group(id: 'group-1', name: 'مجموعة')},
              ),
            ),
            'maps:options_apply',
            {
              'layers': ['areas', 'stores'],
              'selected_area_count': 2,
              'selected_street_count': 1,
              'selected_family_count': 1,
              'selected_store_count': 1,
              'selected_service_count': 1,
              'selected_class_count': 1,
              'selected_group_count': 1,
            },
          ),
          (
            const MapsDataSelect(AnalyticsEntityType.class$, selectedCount: 3),
            'maps:data_select',
            {'entity_type': 'class', 'selected_count': 3},
          ),
          (
            const MapsLayerToggle(GeoMapLayer.persons, isEnabled: false),
            'maps:layer_toggle',
            {'layer': 'persons', 'is_enabled': false},
          ),
          (
            MapsMarkerDetailsOpen(person),
            'maps:marker_details_open',
            {'entity_type': 'person', 'person_id': personId},
          ),
          (
            const MapsExternalNavigationStart(hasUserLocation: true),
            'maps:external_navigation_start',
            {'has_user_location': true},
          ),
          (const MapsRefreshTap(), 'maps:refresh_tap', {}),
          (
            LocationSet(person, LocationSetMethod.current),
            'maps:location_set',
            {
              'entity_type': 'person',
              'person_id': personId,
              'set_method': 'current',
            },
          ),
          (
            LocationLinkParse(
              family,
              inputKind: LocationLinkInputKind.shortPlusCode,
              isPrefilledFromClipboard: true,
              isSuccess: false,
            ),
            'maps:location_link_parse',
            {
              'entity_type': 'family',
              'family_id': familyId,
              'input_kind': 'shortPlusCode',
              'is_prefilled_from_clipboard': true,
              'is_success': false,
            },
          ),
          (
            LocationClipboardLinkShow(person, LocationLinkInputKind.shortLink),
            'maps:location_clipboard_link_show',
            {
              'entity_type': 'person',
              'person_id': personId,
              'input_kind': 'shortLink',
            },
          ),
          (
            LocationSaveWithChange(person, LocationSetMethod.link),
            'maps:location_save',
            {
              'entity_type': 'person',
              'person_id': personId,
              'last_set_method': 'link',
              'is_changed': true,
            },
          ),
          (
            LocationSaveWithoutChange(family),
            'maps:location_save',
            {
              'entity_type': 'family',
              'family_id': familyId,
              'last_set_method': null,
              'is_changed': false,
            },
          ),
          (
            LocationPointsSave(
              const Area(id: areaId, name: 'منطقة'),
              isClosedShape: true,
            ),
            'maps:points_save',
            {
              'entity_type': 'area',
              'area_id': areaId,
              'is_closed_shape': true,
            },
          ),
        ]) {
      test('$expectedName sends $expectedProperties', () {
        expect(
          event,
          isA<AnalyticsEvent>()
              .having((event) => event.name, 'name', expectedName)
              .having(
                (event) => event.properties,
                'properties',
                expectedProperties,
              ),
        );
      });
    }
  });
}
