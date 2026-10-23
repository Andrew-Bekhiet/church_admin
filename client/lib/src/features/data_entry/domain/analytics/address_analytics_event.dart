import 'package:church_admin/church_admin.dart';

sealed class AddressAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'address';

  const AddressAnalyticsEvent();
}

final class AddressAreaFill extends AddressAnalyticsEvent {
  final AddressAutofillSource autofillSource;
  final Street street;
  final Area area;

  @override
  String get objectAction => 'area_fill';

  @override
  Json get properties => {
    'autofill_source': autofillSource.name,
    'street_id': street.id,
    'area_id': area.id,
  };

  const AddressAreaFill({
    required this.autofillSource,
    required this.street,
    required this.area,
  });
}

final class AddressLocationFill extends AddressAnalyticsEvent {
  final AddressAutofillSource autofillSource;
  final Street street;

  @override
  String get objectAction => 'location_fill';

  @override
  Json get properties => {
    'autofill_source': autofillSource.name,
    'street_id': street.id,
  };

  const AddressLocationFill({
    required this.autofillSource,
    required this.street,
  });
}

final class AddressSuggestionShow extends AddressAnalyticsEvent {
  final Address suggested;

  @override
  String get objectAction => 'suggestion_show';

  @override
  Json get properties => {
    'has_area': suggested.area != null,
    'has_street': suggested.street != null,
    'has_district': suggested.district != null,
  };

  const AddressSuggestionShow(this.suggested);
}

final class AddressSuggestionAccept extends AddressAnalyticsEvent {
  final Address suggested;

  @override
  String get objectAction => 'suggestion_accept';

  @override
  Json get properties => {
    'has_area': suggested.area != null,
    'has_street': suggested.street != null,
    'has_district': suggested.district != null,
  };

  const AddressSuggestionAccept(this.suggested);
}

final class StaleLocationReminderShow extends AddressAnalyticsEvent {
  @override
  String get objectAction => 'stale_location_reminder_show';

  const StaleLocationReminderShow();
}

final class StaleLocationReminderAccept extends AddressAnalyticsEvent {
  @override
  String get objectAction => 'stale_location_reminder_accept';

  const StaleLocationReminderAccept();
}

final class StaleLocationReminderDismiss extends AddressAnalyticsEvent {
  @override
  String get objectAction => 'stale_location_reminder_dismiss';

  const StaleLocationReminderDismiss();
}

final class DistrictCreate extends AddressAnalyticsEvent {
  final District district;

  @override
  String get objectAction => 'district_create';

  @override
  Json get properties => {'district_id': district.id};

  const DistrictCreate(this.district);
}

final class FamilyAddressFill extends AddressAnalyticsEvent {
  final Family family;

  @override
  String get objectAction => 'family_address_fill';

  @override
  Json get properties => {'family_id': family.id};

  const FamilyAddressFill(this.family);
}

enum AddressAutofillSource { singleAreaStreet, geocodedHouseNumber }
