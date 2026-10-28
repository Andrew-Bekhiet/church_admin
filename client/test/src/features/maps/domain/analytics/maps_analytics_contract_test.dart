import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  final person = Person(id: 'person-1', name: 'مينا');
  const family = Family(id: 'family-1', name: 'عائلة مينا');

  group('Maps and location analytics contract =>', () {
    for (final (event, expectedName, expectedProperties)
        in <(AnalyticsEvent, String, Json)>[
          (
            MapsOptionsApply(
              GeomapOptions(
                layers: const {GeoMapLayer.areas, GeoMapLayer.stores},
                selectedAreas: {
                  const Area(id: 'area-1', name: 'منطقة'),
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
            const MapsDataSelect(
              AnalyticsEntityType.class$,
              selectedCount: 3,
              isSelectAllUsed: true,
              isSearchUsed: false,
            ),
            'maps:data_select',
            {
              'entity_type': 'class',
              'selected_count': 3,
              'is_select_all_used': true,
              'is_search_used': false,
            },
          ),
          (
            const MapsLayerToggle(GeoMapLayer.persons, isEnabled: false),
            'maps:layer_toggle',
            {'layer': 'persons', 'is_enabled': false},
          ),
          (
            MapsMarkerTap(family),
            'maps:marker_tap',
            {'entity_type': 'family', 'family_id': 'family-1'},
          ),
          (
            MapsMarkerTap('not an entity'),
            'maps:marker_tap',
            {},
          ),
          (
            MapsMarkerDetailsOpen(person),
            'maps:marker_details_open',
            {'entity_type': 'person', 'person_id': 'person-1'},
          ),
          (
            const MapsExternalNavigationStart(hasUserLocation: true),
            'maps:external_navigation_start',
            {'has_user_location': true},
          ),
          (const MapsRefreshTap(), 'maps:refresh_tap', {}),
          (
            const MapsLocationPermissionCheck(
              PermissionStatus.permanentlyDenied,
              isLocationServiceEnabled: false,
            ),
            'maps:location_permission_check',
            {
              'permission_status': 'permanentlyDenied',
              'is_location_service_enabled': false,
            },
          ),
          (
            LocationSet(person, LocationSetMethod.current),
            'location:set',
            {
              'entity_type': 'person',
              'person_id': 'person-1',
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
            'location:link_parse',
            {
              'entity_type': 'family',
              'family_id': 'family-1',
              'input_kind': 'shortPlusCode',
              'is_prefilled_from_clipboard': true,
              'is_success': false,
            },
          ),
          (
            LocationClipboardLinkShow(person, LocationLinkInputKind.shortLink),
            'location:clipboard_link_show',
            {
              'entity_type': 'person',
              'person_id': 'person-1',
              'input_kind': 'shortLink',
            },
          ),
          (
            LocationSaveWithChange(person, LocationSetMethod.link),
            'location:save',
            {
              'entity_type': 'person',
              'person_id': 'person-1',
              'last_set_method': 'link',
              'is_changed': true,
            },
          ),
          (
            LocationSaveWithoutChange(family),
            'location:save',
            {
              'entity_type': 'family',
              'family_id': 'family-1',
              'last_set_method': null,
              'is_changed': false,
            },
          ),
          (
            LocationPointsSave(
              const Area(id: 'area-1', name: 'منطقة'),
              addedPointCount: 4,
              removedPointCount: 1,
              insertedMidpointCount: 2,
              isClosedShape: true,
            ),
            'location:points_save',
            {
              'entity_type': 'area',
              'area_id': 'area-1',
              'added_point_count': 4,
              'removed_point_count': 1,
              'inserted_midpoint_count': 2,
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
