part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class LocationAnalyticsEvent extends MapsAnalyticsEvent {
  final Json entityProperties;

  @override
  Json get properties => entityProperties;

  LocationAnalyticsEvent(Object entity)
    : entityProperties = AnalyticsEntityType.propertiesOf(entity);
}

final class LocationSet extends LocationAnalyticsEvent {
  final LocationSetMethod setMethod;

  @override
  String get objectAction => 'location_set';

  @override
  Json get properties => {...super.properties, 'set_method': setMethod.name};

  LocationSet(super.entity, this.setMethod);
}

final class LocationLinkParse extends LocationAnalyticsEvent {
  final LocationLinkInputKind inputKind;
  final bool isPrefilledFromClipboard;
  final bool isSuccess;

  @override
  String get objectAction => 'location_link_parse';

  @override
  Json get properties => {
    ...super.properties,
    'input_kind': inputKind.name,
    'is_prefilled_from_clipboard': isPrefilledFromClipboard,
    'is_success': isSuccess,
  };

  LocationLinkParse(
    super.entity, {
    required this.inputKind,
    required this.isPrefilledFromClipboard,
    required this.isSuccess,
  });
}

final class LocationClipboardLinkShow extends LocationAnalyticsEvent {
  final LocationLinkInputKind inputKind;

  @override
  String get objectAction => 'location_clipboard_link_show';

  @override
  Json get properties => {...super.properties, 'input_kind': inputKind.name};

  LocationClipboardLinkShow(super.entity, this.inputKind);
}

sealed class LocationSave extends LocationAnalyticsEvent {
  @override
  String get objectAction => 'location_save';

  LocationSave(super.entity);
}

final class LocationSaveWithChange extends LocationSave {
  final LocationSetMethod lastSetMethod;

  @override
  Json get properties => {
    ...super.properties,
    'last_set_method': lastSetMethod.name,
    'is_changed': true,
  };

  LocationSaveWithChange(super.entity, this.lastSetMethod);
}

final class LocationSaveWithoutChange extends LocationSave {
  @override
  Json get properties => {
    ...super.properties,
    'last_set_method': null,
    'is_changed': false,
  };

  LocationSaveWithoutChange(super.entity);
}
