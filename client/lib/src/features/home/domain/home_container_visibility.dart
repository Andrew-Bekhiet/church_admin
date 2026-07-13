import 'package:church_admin/church_admin.dart';

/// Builds home-only filters for public container data.
///
/// Areas, streets, and services remain publicly queryable for data-entry
/// selectors. These filters restrict only the home lists to containers covered
/// by the current user's global or scoped permissions.
class HomeContainerVisibility {
  final bool hasGlobalAccess;
  final List<String> areasIds;
  final List<String> servicesIds;
  final List<String> groupsIds;

  const HomeContainerVisibility({
    required this.hasGlobalAccess,
    required this.areasIds,
    required this.servicesIds,
    required this.groupsIds,
  });

  factory HomeContainerVisibility.fromUser(User? user) {
    final adminOn = user?.adminOn ?? const <AdminOnData>[];

    return HomeContainerVisibility(
      hasGlobalAccess: user?.permissions.readAllData ?? false,
      areasIds: adminOn
          .map((scope) => scope.area?.id)
          .nonNulls
          .toSet()
          .toList(growable: false),
      servicesIds: adminOn
          .map((scope) => scope.service?.id)
          .nonNulls
          .toSet()
          .toList(growable: false),
      groupsIds: adminOn
          .map((scope) => scope.group?.id)
          .nonNulls
          .toSet()
          .toList(growable: false),
    );
  }

  List<Filter> get areaFilters => _fieldInFilters(AreaFields().id, areasIds);

  List<Filter> get streetFilters {
    if (hasGlobalAccess) return const [];

    if (areasIds.isEmpty) {
      return _fieldInFilters(StreetFields().id, const []);
    }

    return [
      Filter(
        StreetFields().areas.redirectTo(AreaFields().id),
        MultiSelectOperator.anyOf,
        areasIds,
      ),
    ];
  }

  List<Filter> get serviceFilters {
    if (hasGlobalAccess) return const [];

    final scopedFilters = <Filter>[
      if (servicesIds.isNotEmpty)
        Filter(
          ServiceFields().id,
          MultiSelectOperator.anyOf,
          servicesIds,
        ),
      if (groupsIds.isNotEmpty)
        Filter(
          ServiceFields().groups.redirectTo(GroupFields().id),
          MultiSelectOperator.anyOf,
          groupsIds,
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

  List<Filter> _fieldInFilters(FieldMetadata field, List<String> ids) {
    if (hasGlobalAccess) return const [];

    return [
      Filter(
        field,
        MultiSelectOperator.anyOf,
        ids,
      ),
    ];
  }
}
