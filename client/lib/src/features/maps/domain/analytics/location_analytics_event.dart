import 'package:church_admin/church_admin.dart';

sealed class LocationAnalyticsEvent extends AnalyticsEvent {
  final Object entity;

  @override
  String get category => 'location';

  @override
  Json get properties => MapsAnalyticsEvent.entityPropertiesOf(entity);

  const LocationAnalyticsEvent(this.entity);
}

final class LocationSet extends LocationAnalyticsEvent {
  final LocationSetMethod method;

  @override
  String get objectAction => 'set';

  @override
  Json get properties => {...super.properties, 'method': method.name};

  const LocationSet(super.entity, this.method);
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

  const LocationLinkParse(
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

  const LocationClipboardLinkShow(super.entity, this.inputKind);
}

final class LocationSave extends LocationAnalyticsEvent {
  final LocationSetMethod? lastMethod;

  @override
  String get objectAction => 'save';

  @override
  Json get properties => {
    ...super.properties,
    'method': lastMethod?.name,
    'is_changed': lastMethod != null,
  };

  const LocationSave(super.entity, {required this.lastMethod});
}

final class LocationPointsSave extends LocationAnalyticsEvent {
  final int pointsAdded;
  final int pointsRemoved;
  final int midpointsInserted;
  final bool isClosedShape;

  @override
  String get objectAction => 'points_save';

  @override
  Json get properties => {
    ...super.properties,
    'points_added': pointsAdded,
    'points_removed': pointsRemoved,
    'midpoints_inserted': midpointsInserted,
    'is_closed_shape': isClosedShape,
  };

  const LocationPointsSave(
    super.entity, {
    required this.pointsAdded,
    required this.pointsRemoved,
    required this.midpointsInserted,
    required this.isClosedShape,
  });
}

enum LocationSetMethod { tap, current, link }
