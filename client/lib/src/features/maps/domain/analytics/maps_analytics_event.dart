import 'package:church_admin/church_admin.dart';
import 'package:permission_handler/permission_handler.dart';

sealed class MapsAnalyticsEvent extends AnalyticsEvent {
  static Json entityPropertiesOf(Object object) => switch (object) {
    Area(:final id) => {'entity_type': MapsEntityType.area.name, 'area_id': id},
    Street(:final id) => {
      'entity_type': MapsEntityType.street.name,
      'street_id': id,
    },
    Family(:final id) => {
      'entity_type': MapsEntityType.family.name,
      'family_id': id,
    },
    Store(:final id) => {
      'entity_type': MapsEntityType.store.name,
      'store_id': id,
    },
    Person(:final id) => {
      'entity_type': MapsEntityType.person.name,
      'person_id': id,
    },
    _ => {'entity_type': MapsEntityType.other.name},
  };

  @override
  String get category => 'maps';

  const MapsAnalyticsEvent();
}

final class MapsOptionsApply extends MapsAnalyticsEvent {
  final GeomapOptions options;

  @override
  String get objectAction => 'options_apply';

  @override
  Json get properties => {
    'layers': [for (final layer in options.layers) layer.name],
    'selected_area_count': options.selectedAreas.length,
    'selected_street_count': options.selectedStreets.length,
    'selected_family_count': options.selectedFamilies.length,
    'selected_store_count': options.selectedStores.length,
    'selected_service_count': options.selectedServices.length,
    'selected_class_count': options.selectedClasses.length,
    'selected_group_count': options.selectedGroups.length,
  };

  const MapsOptionsApply(this.options);
}

final class MapsDataSelect extends MapsAnalyticsEvent {
  final MapsEntityType entityType;
  final int selectedCount;
  final bool isSelectAllUsed;
  final bool isSearchUsed;

  @override
  String get objectAction => 'data_select';

  @override
  Json get properties => {
    'entity_type': entityType.name,
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

final class MapsMarkerTap extends MapsAnalyticsEvent {
  final Object object;

  @override
  String get objectAction => 'marker_tap';

  @override
  Json get properties => MapsAnalyticsEvent.entityPropertiesOf(object);

  const MapsMarkerTap(this.object);
}

final class MapsMarkerDetailsOpen extends MapsAnalyticsEvent {
  final Object object;

  @override
  String get objectAction => 'marker_details_open';

  @override
  Json get properties => MapsAnalyticsEvent.entityPropertiesOf(object);

  const MapsMarkerDetailsOpen(this.object);
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

final class MapsLocationPermissionResult extends MapsAnalyticsEvent {
  final PermissionStatus status;
  final bool isLocationServiceEnabled;

  @override
  String get objectAction => 'location_permission_result';

  @override
  Json get properties => {
    'status': status.name,
    'is_location_service_enabled': isLocationServiceEnabled,
  };

  const MapsLocationPermissionResult(
    this.status, {
    required this.isLocationServiceEnabled,
  });
}

enum MapsEntityType {
  area,
  street,
  family,
  store,
  person,
  service,
  schoolClass,
  group,
  other,
}
