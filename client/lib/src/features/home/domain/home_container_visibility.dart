import 'package:church_admin/church_admin.dart';

/// Builds home-only filters for public container data.
///
/// Areas, streets, and services remain publicly queryable for data-entry
/// selectors. These filters restrict only the home lists to containers covered
/// by the current user's global or scoped permissions.
class HomeContainerVisibility {
  final bool hasGlobalAccess;
  final List<Area> areas;
  final List<Service> services;
  final List<Group> groups;

  const HomeContainerVisibility({
    required this.hasGlobalAccess,
    required this.areas,
    required this.services,
    required this.groups,
  });

  factory HomeContainerVisibility.fromUser(User? user) {
    final adminOn = user?.adminOn ?? const <AdminOnData>[];

    return HomeContainerVisibility(
      hasGlobalAccess: user?.permissions.readAllData ?? false,
      areas: adminOn.map((scope) => scope.area).nonNulls.toSet().toList(),
      services: adminOn.map((scope) => scope.service).nonNulls.toSet().toList(),
      groups: adminOn.map((scope) => scope.group).nonNulls.toSet().toList(),
    );
  }

  List<Filter> get areaFilters =>
      _fieldInFilters(AreaFields().id, areas.map((area) => area.id));

  List<Filter> get streetFilters {
    if (hasGlobalAccess) return const [];

    if (areas.isEmpty) {
      return _fieldInFilters(StreetFields().id, const []);
    }

    return [
      Filter(
        StreetFields().areas,
        MultiSelectOperator.anyOf,
        areas,
      ),
    ];
  }

  List<Filter> get serviceFilters {
    if (hasGlobalAccess) return const [];

    final scopedFilters = <Filter>[
      if (services.isNotEmpty)
        Filter(
          ServiceFields().id,
          MultiSelectOperator.anyOf,
          services.map((service) => service.id).toList(growable: false),
        ),
      if (groups.isNotEmpty)
        Filter(
          ServiceFields().groups,
          MultiSelectOperator.anyOf,
          groups,
        ),
    ];

    if (scopedFilters.isEmpty) {
      return _fieldInFilters(ServiceFields().id, const []);
    }

    if (scopedFilters.length == 1) return scopedFilters;

    return [
      Filter(
        const DotField(),
        LogicalOperator.or,
        scopedFilters,
      ),
    ];
  }

  List<Filter> _fieldInFilters(FieldMetadata field, Iterable<String> ids) {
    if (hasGlobalAccess) return const [];

    return [
      Filter(
        field,
        MultiSelectOperator.anyOf,
        ids.toList(growable: false),
      ),
    ];
  }
}
