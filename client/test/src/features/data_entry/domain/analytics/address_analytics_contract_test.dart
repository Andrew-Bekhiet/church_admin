import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const area = Area(id: 'area-1', name: 'شبرا');
  const street = Street(id: 'street-1', name: 'النيل');
  const district = District(id: 'district-1', name: 'حي');

  final contracts = <({AnalyticsEvent event, String name, Json properties})>[
    (
      event: AddressAreaFill(
        autofillSource: AddressAutofillSource.singleAreaStreet,
        street: street,
        area: area,
      ),
      name: 'address:area_fill',
      properties: {
        'autofill_source': 'singleAreaStreet',
        'street_id': street.id,
        'area_id': area.id,
      },
    ),
    (
      event: AddressAreaFill(
        autofillSource: AddressAutofillSource.geocodedHouseNumber,
        street: street,
        area: area,
      ),
      name: 'address:area_fill',
      properties: {
        'autofill_source': 'geocodedHouseNumber',
        'street_id': street.id,
        'area_id': area.id,
      },
    ),
    (
      event: AddressLocationFill(
        autofillSource: AddressAutofillSource.geocodedHouseNumber,
        street: street,
      ),
      name: 'address:location_fill',
      properties: {
        'autofill_source': 'geocodedHouseNumber',
        'street_id': street.id,
      },
    ),
    (
      event: AddressSuggestionShow(
        const Address(area: area, street: street, district: district),
      ),
      name: 'address:suggestion_show',
      properties: {'has_area': true, 'has_street': true, 'has_district': true},
    ),
    (
      event: AddressSuggestionShow(const Address()),
      name: 'address:suggestion_show',
      properties: {
        'has_area': false,
        'has_street': false,
        'has_district': false,
      },
    ),
    (
      event: AddressSuggestionAccept(const Address(street: street)),
      name: 'address:suggestion_accept',
      properties: {
        'has_area': false,
        'has_street': true,
        'has_district': false,
      },
    ),
    (
      event: const StaleLocationReminderShow(),
      name: 'address:stale_location_reminder_show',
      properties: {},
    ),
    (
      event: const StaleLocationReminderAccept(),
      name: 'address:stale_location_reminder_accept',
      properties: {},
    ),
    (
      event: const StaleLocationReminderDismiss(),
      name: 'address:stale_location_reminder_dismiss',
      properties: {},
    ),
    (
      event: DistrictCreate(district),
      name: 'address:district_create',
      properties: {'district_id': district.id},
    ),
    (
      event: FamilyAddressFill(const Family(id: 'family-1', name: 'عائلة')),
      name: 'address:family_address_fill',
      properties: {'family_id': 'family-1'},
    ),
  ];

  for (final (:event, :name, :properties) in contracts) {
    test('$name sends ${properties.isEmpty ? 'nothing' : properties}', () {
      expect(event.name, name);
      expect(event.properties, properties);
    });
  }
}
