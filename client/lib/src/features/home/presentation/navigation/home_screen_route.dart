import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'home_screen_route.g.dart';

@TypedGoRoute<HomeScreenRoute>(
  path: '/',
  routes: [
    TypedGoRoute<ViewPersonRoute>(path: 'view_person'),
    TypedGoRoute<EditPersonRoute>(path: 'edit_person'),
    TypedGoRoute<ViewAreaRoute>(path: 'view_area'),
    TypedGoRoute<EditAreaRoute>(path: 'edit_area'),
    TypedGoRoute<ViewServiceRoute>(path: 'view_service'),
    TypedGoRoute<RecordAttendanceRoute>(path: 'record_attendance'),
    TypedGoRoute<EditServiceRoute>(path: 'edit_service'),
    TypedGoRoute<ViewUserRoute>(path: 'view_user'),
    TypedGoRoute<EditUserRoute>(path: 'edit_user'),
    TypedGoRoute<ViewGroupRoute>(path: 'view_group'),
    TypedGoRoute<EditGroupRoute>(path: 'edit_group'),
    TypedGoRoute<ViewClassRoute>(path: 'view_class'),
    TypedGoRoute<EditClassRoute>(path: 'edit_class'),
    TypedGoRoute<ViewFamilyRoute>(path: 'view_family'),
    TypedGoRoute<EditFamilyRoute>(path: 'edit_family'),
    TypedGoRoute<ViewStreetRoute>(path: 'view_street'),
    TypedGoRoute<EditStreetRoute>(path: 'edit_street'),
    TypedGoRoute<ViewStoreRoute>(path: 'view_store'),
    TypedGoRoute<EditStoreRoute>(path: 'edit_store'),
    TypedGoRoute<PersonAnalysisRoute>(path: 'person_analysis'),
    TypedGoRoute<UserAnalysisRoute>(path: 'user_analysis'),
    TypedGoRoute<MeetingsAnalysisRoute>(path: 'meetings_analysis'),
    // Drawer
    TypedGoRoute<MyAccountRoute>(path: 'my_account'),
    TypedGoRoute<ManageUsersRoute>(path: 'manage_users'),
    TypedGoRoute<ExportEntitiesSelectionRoute>(
      path: 'export_entities_selection',
    ),
    TypedGoRoute<VisitsMapRoute>(path: 'visits_map'),
    TypedGoRoute<AdvancedSearchRoute>(path: 'advanced_search'),
    TypedGoRoute<SettingsRoute>(path: 'settings'),
  ],
)
class HomeScreenRoute extends GoRouteData with $HomeScreenRoute {
  const HomeScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) =>
      const HomeScreenWebRoute().redirect(context, state);
}
