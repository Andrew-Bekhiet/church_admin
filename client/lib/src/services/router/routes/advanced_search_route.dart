import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdvancedSearchRoute extends GoRouteData {
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
