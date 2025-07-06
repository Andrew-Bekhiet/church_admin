import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'view_store_route.g.dart';

@TypedGoRoute<ViewStoreRoute>(path: '/view_store')
class ViewStoreRoute extends GoRouteData with _$ViewStoreRoute {
  const ViewStoreRoute({required this.id, this.$extra});

  final String id;
  final Store? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewStore(storeId: id, store: $extra);
  }
}
