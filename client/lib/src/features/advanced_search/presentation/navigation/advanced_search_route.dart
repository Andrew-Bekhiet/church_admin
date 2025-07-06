import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'advanced_search_route.g.dart';

@TypedGoRoute<AdvancedSearchRoute>(path: '/advanced_search')
class AdvancedSearchRoute extends GoRouteData with _$AdvancedSearchRoute {
  const AdvancedSearchRoute({this.$extra});

  final AdvancedQuery? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AdvancedSearchScreen(
      key: PageStorageKey(state.uri),
      initialQuery: $extra,
      autoExecuteInitialQuery: $extra != null,
    );
  }
}
