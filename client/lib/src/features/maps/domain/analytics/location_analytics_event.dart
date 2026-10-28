part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class LocationAnalyticsEvent extends AnalyticsEvent {
  final Json entityProperties;

  @override
  String get category => 'location';

  @override
  Json get properties => entityProperties;

  LocationAnalyticsEvent(Object entity)
    : entityProperties = AnalyticsEntityType.propertiesOf(entity);
}

final class LocationSet extends LocationAnalyticsEvent {
  final LocationSetMethod setMethod;

  @override
  String get objectAction => 'set';

  @override
  Json get properties => {...super.properties, 'set_method': setMethod.name};

  LocationSet(super.entity, this.setMethod);
}

final class LocationLinkParse extends LocationAnalyticsEvent {
  final LocationLinkInputKind inputKind;
  final bool isPrefilledFromClipboard;
  final bool isSuccess;

  @override
  String get objectAction => 'link_parse';

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
  String get objectAction => 'clipboard_link_show';

  @override
  Json get properties => {...super.properties, 'input_kind': inputKind.name};

  LocationClipboardLinkShow(super.entity, this.inputKind);
}

final class LocationSave extends LocationAnalyticsEvent {
  final LocationSetMethod? lastSetMethod;

  @override
  String get objectAction => 'save';

  @override
  Json get properties => {
    ...super.properties,
    'last_set_method': lastSetMethod?.name,
    'is_changed': lastSetMethod != null,
  };

  LocationSave(super.entity, {required this.lastSetMethod});
}

final class LocationPointsSave extends LocationAnalyticsEvent {
  final int addedPointCount;
  final int removedPointCount;
  final int insertedMidpointCount;
  final bool isClosedShape;

  @override
  String get objectAction => 'points_save';

  @override
  Json get properties => {
    ...super.properties,
    'added_point_count': addedPointCount,
    'removed_point_count': removedPointCount,
    'inserted_midpoint_count': insertedMidpointCount,
    'is_closed_shape': isClosedShape,
  };

  LocationPointsSave(
    super.entity, {
    required this.addedPointCount,
    required this.removedPointCount,
    required this.insertedMidpointCount,
    required this.isClosedShape,
  });
}
