part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class AddressAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'address';

  const AddressAnalyticsEvent();
}

sealed class AddressAutofillAnalyticsEvent extends AddressAnalyticsEvent {
  final AddressAutofillSource autofillSource;

  @override
  Json get properties => {'autofill_source': autofillSource.name};

  const AddressAutofillAnalyticsEvent({required this.autofillSource});
}

final class AddressAreaFill extends AddressAutofillAnalyticsEvent {
  final String streetId;
  final String areaId;

  @override
  String get objectAction => 'area_fill';

  @override
  Json get properties => {
    ...super.properties,
    AnalyticsEntityType.street.idProperty: streetId,
    AnalyticsEntityType.area.idProperty: areaId,
  };

  AddressAreaFill({
    required Street street,
    required Area area,
    required super.autofillSource,
  }) : streetId = street.id,
       areaId = area.id;
}

final class AddressLocationFill extends AddressAutofillAnalyticsEvent {
  final String streetId;

  @override
  String get objectAction => 'location_fill';

  @override
  Json get properties => {
    ...super.properties,
    AnalyticsEntityType.street.idProperty: streetId,
  };

  AddressLocationFill({required Street street, required super.autofillSource})
    : streetId = street.id;
}

sealed class AddressSuggestionAnalyticsEvent extends AddressAnalyticsEvent {
  final bool hasArea;
  final bool hasStreet;
  final bool hasDistrict;

  @override
  Json get properties => {
    'has_area': hasArea,
    'has_street': hasStreet,
    'has_district': hasDistrict,
  };

  AddressSuggestionAnalyticsEvent(Address suggested)
    : hasArea = suggested.area != null,
      hasStreet = suggested.street != null,
      hasDistrict = suggested.district != null;
}

final class AddressSuggestionShow extends AddressSuggestionAnalyticsEvent {
  @override
  String get objectAction => 'suggestion_show';

  AddressSuggestionShow(super.suggested);
}

final class AddressSuggestionAccept extends AddressSuggestionAnalyticsEvent {
  @override
  String get objectAction => 'suggestion_accept';

  AddressSuggestionAccept(super.suggested);
}

sealed class StaleLocationReminderAnalyticsEvent extends AddressAnalyticsEvent {
  const StaleLocationReminderAnalyticsEvent();
}

final class StaleLocationReminderShow
    extends StaleLocationReminderAnalyticsEvent {
  @override
  String get objectAction => 'stale_location_reminder_show';

  const StaleLocationReminderShow();
}

final class StaleLocationReminderAccept
    extends StaleLocationReminderAnalyticsEvent {
  @override
  String get objectAction => 'stale_location_reminder_accept';

  const StaleLocationReminderAccept();
}

final class StaleLocationReminderDismiss
    extends StaleLocationReminderAnalyticsEvent {
  @override
  String get objectAction => 'stale_location_reminder_dismiss';

  const StaleLocationReminderDismiss();
}

final class PersonAddressFromFamilyFill extends AddressAnalyticsEvent {
  final String familyId;

  @override
  String get objectAction => 'person_address_from_family_fill';

  @override
  Json get properties => {AnalyticsEntityType.family.idProperty: familyId};

  PersonAddressFromFamilyFill(Family family) : familyId = family.id;
}
