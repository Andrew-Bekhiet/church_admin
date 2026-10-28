part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class MapsAnalyticsEvent extends AnalyticsEvent {
  @override
  String get category => 'maps';

  const MapsAnalyticsEvent();
}

final class MapsOptionsApply extends MapsAnalyticsEvent {
  @override
  final Json properties;

  @override
  String get objectAction => 'options_apply';

  MapsOptionsApply(GeomapOptions options)
    : properties = {
        'layers': [for (final layer in options.layers) layer.name],
        'selected_area_count': options.selectedAreas.length,
        'selected_street_count': options.selectedStreets.length,
        'selected_family_count': options.selectedFamilies.length,
        'selected_store_count': options.selectedStores.length,
        'selected_service_count': options.selectedServices.length,
        'selected_class_count': options.selectedClasses.length,
        'selected_group_count': options.selectedGroups.length,
      };
}

final class MapsDataSelect extends MapsAnalyticsEvent {
  final AnalyticsEntityType entityType;
  final int selectedCount;
  final bool isSelectAllUsed;
  final bool isSearchUsed;

  @override
  String get objectAction => 'data_select';

  @override
  Json get properties => {
    'entity_type': entityType.key,
    'selected_count': selectedCount,
    'is_select_all_used': isSelectAllUsed,
    'is_search_used': isSearchUsed,
  };

  const MapsDataSelect(
    this.entityType, {
    required this.selectedCount,
    required this.isSelectAllUsed,
    required this.isSearchUsed,
  });
}

final class MapsLayerToggle extends MapsAnalyticsEvent {
  final GeoMapLayer layer;
  final bool isEnabled;

  @override
  String get objectAction => 'layer_toggle';

  @override
  Json get properties => {'layer': layer.name, 'is_enabled': isEnabled};

  const MapsLayerToggle(this.layer, {required this.isEnabled});
}

sealed class MapsMarkerAnalyticsEvent extends MapsAnalyticsEvent {
  @override
  final Json properties;

  MapsMarkerAnalyticsEvent(Object entity)
    : properties = AnalyticsEntityType.propertiesOf(entity);
}

final class MapsMarkerTap extends MapsMarkerAnalyticsEvent {
  @override
  String get objectAction => 'marker_tap';

  MapsMarkerTap(super.entity);
}

final class MapsMarkerDetailsOpen extends MapsMarkerAnalyticsEvent {
  @override
  String get objectAction => 'marker_details_open';

  MapsMarkerDetailsOpen(super.entity);
}

final class MapsExternalNavigationStart extends MapsAnalyticsEvent {
  final bool hasUserLocation;

  @override
  String get objectAction => 'external_navigation_start';

  @override
  Json get properties => {'has_user_location': hasUserLocation};

  const MapsExternalNavigationStart({required this.hasUserLocation});
}

final class MapsRefreshTap extends MapsAnalyticsEvent {
  @override
  String get objectAction => 'refresh_tap';

  const MapsRefreshTap();
}

final class MapsLocationPermissionCheck extends MapsAnalyticsEvent {
  final PermissionStatus permissionStatus;
  final bool isLocationServiceEnabled;

  @override
  String get objectAction => 'location_permission_check';

  @override
  Json get properties => {
    'permission_status': permissionStatus.name,
    'is_location_service_enabled': isLocationServiceEnabled,
  };

  const MapsLocationPermissionCheck(
    this.permissionStatus, {
    required this.isLocationServiceEnabled,
  });
}
