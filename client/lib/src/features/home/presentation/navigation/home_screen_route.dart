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
    TypedGoRoute<EditServiceRoute>(path: 'edit_service'),
    TypedGoRoute<ViewUserRoute>(path: 'view_user'),
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
    // Drawer
    TypedGoRoute<ManageUsersRoute>(path: 'manage_users'),
    TypedGoRoute<VisitsMapRoute>(path: 'visits_map'),
    TypedGoRoute<AdvancedSearchRoute>(path: 'advanced_search'),
    TypedGoRoute<SettingsRoute>(path: 'settings'),
  ],
)
class HomeScreenRoute extends GoRouteData {
  const HomeScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final authService = AuthService.I;

    if (!authService.isSignedIn) {
      return const LoginRoute().location;
    } else if (!(authService.currentUser!.emailVerified ?? false)) {
      return const EmailVerificationRoute().location;
    } else if (!(authService.currentUser!.isMultiFactorEnrolled ?? false)) {
      return const MultiFactorLoginRoute().location;
    } else if (!authService.currentUser!.permissions.approved) {
      return const UnapprovedUserRoute().location;
    } else if (!authService.currentUser!.person!.spiritDataUpToDate()) {
      return Uri(
        path: const UpdateUserSpiritDataRoute().location,
        queryParameters: {'forced': 'true'},
      ).toString();
    }

    return null;
  }
}
