// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeScreenRoute,
    ];

RouteBase get $homeScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'view_person',
          factory: $ViewPersonRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_person',
          factory: $EditPersonRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'view_area',
          factory: $ViewAreaRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_area',
          factory: $EditAreaRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'view_service',
          factory: $ViewServiceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_service',
          factory: $EditServiceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'view_user',
          factory: $ViewUserRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'view_group',
          factory: $ViewGroupRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_group',
          factory: $EditGroupRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'view_class',
          factory: $ViewClassRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_class',
          factory: $EditClassRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'view_family',
          factory: $ViewFamilyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_family',
          factory: $EditFamilyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'view_street',
          factory: $ViewStreetRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_street',
          factory: $EditStreetRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'view_store',
          factory: $ViewStoreRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_store',
          factory: $EditStoreRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'person_analysis',
          factory: $PersonAnalysisRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'manage_users',
          factory: $ManageUsersRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'visits_map',
          factory: $VisitsMapRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'advanced_search',
          factory: $AdvancedSearchRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'settings',
          factory: $SettingsRouteExtension._fromState,
        ),
      ],
    );

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) =>
      const HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ViewPersonRouteExtension on ViewPersonRoute {
  static ViewPersonRoute _fromState(GoRouterState state) => ViewPersonRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Person?,
      );

  String get location => GoRouteData.$location(
        '/view_person',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $EditPersonRouteExtension on EditPersonRoute {
  static EditPersonRoute _fromState(GoRouterState state) => EditPersonRoute(
        $extra: state.extra as EditPersonExtra?,
      );

  String get location => GoRouteData.$location(
        '/edit_person',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ViewAreaRouteExtension on ViewAreaRoute {
  static ViewAreaRoute _fromState(GoRouterState state) => ViewAreaRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Area?,
      );

  String get location => GoRouteData.$location(
        '/view_area',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $EditAreaRouteExtension on EditAreaRoute {
  static EditAreaRoute _fromState(GoRouterState state) => EditAreaRoute(
        $extra: state.extra as Area?,
      );

  String get location => GoRouteData.$location(
        '/edit_area',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ViewServiceRouteExtension on ViewServiceRoute {
  static ViewServiceRoute _fromState(GoRouterState state) => ViewServiceRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Service?,
      );

  String get location => GoRouteData.$location(
        '/view_service',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $EditServiceRouteExtension on EditServiceRoute {
  static EditServiceRoute _fromState(GoRouterState state) => EditServiceRoute(
        $extra: state.extra as Service?,
      );

  String get location => GoRouteData.$location(
        '/edit_service',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ViewUserRouteExtension on ViewUserRoute {
  static ViewUserRoute _fromState(GoRouterState state) => ViewUserRoute(
        uid: state.uri.queryParameters['uid']!,
        $extra: state.extra as User?,
      );

  String get location => GoRouteData.$location(
        '/view_user',
        queryParams: {
          'uid': uid,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ViewGroupRouteExtension on ViewGroupRoute {
  static ViewGroupRoute _fromState(GoRouterState state) => ViewGroupRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Group?,
      );

  String get location => GoRouteData.$location(
        '/view_group',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $EditGroupRouteExtension on EditGroupRoute {
  static EditGroupRoute _fromState(GoRouterState state) => EditGroupRoute(
        $extra: state.extra as EditGroupExtra?,
      );

  String get location => GoRouteData.$location(
        '/edit_group',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ViewClassRouteExtension on ViewClassRoute {
  static ViewClassRoute _fromState(GoRouterState state) => ViewClassRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Class?,
      );

  String get location => GoRouteData.$location(
        '/view_class',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $EditClassRouteExtension on EditClassRoute {
  static EditClassRoute _fromState(GoRouterState state) => EditClassRoute(
        $extra: state.extra as EditClassExtra?,
      );

  String get location => GoRouteData.$location(
        '/edit_class',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ViewFamilyRouteExtension on ViewFamilyRoute {
  static ViewFamilyRoute _fromState(GoRouterState state) => ViewFamilyRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Family?,
      );

  String get location => GoRouteData.$location(
        '/view_family',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $EditFamilyRouteExtension on EditFamilyRoute {
  static EditFamilyRoute _fromState(GoRouterState state) => EditFamilyRoute(
        $extra: state.extra as EditFamilyExtra?,
      );

  String get location => GoRouteData.$location(
        '/edit_family',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ViewStreetRouteExtension on ViewStreetRoute {
  static ViewStreetRoute _fromState(GoRouterState state) => ViewStreetRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Street?,
      );

  String get location => GoRouteData.$location(
        '/view_street',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $EditStreetRouteExtension on EditStreetRoute {
  static EditStreetRoute _fromState(GoRouterState state) => EditStreetRoute(
        $extra: state.extra as Street?,
      );

  String get location => GoRouteData.$location(
        '/edit_street',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ViewStoreRouteExtension on ViewStoreRoute {
  static ViewStoreRoute _fromState(GoRouterState state) => ViewStoreRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Store?,
      );

  String get location => GoRouteData.$location(
        '/view_store',
        queryParams: {
          'id': id,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $EditStoreRouteExtension on EditStoreRoute {
  static EditStoreRoute _fromState(GoRouterState state) => EditStoreRoute(
        $extra: state.extra as EditStoreExtra?,
      );

  String get location => GoRouteData.$location(
        '/edit_store',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $PersonAnalysisRouteExtension on PersonAnalysisRoute {
  static PersonAnalysisRoute _fromState(GoRouterState state) =>
      PersonAnalysisRoute(
        $extra: state.extra as PersonAnalysisExtra,
      );

  String get location => GoRouteData.$location(
        '/person_analysis',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ManageUsersRouteExtension on ManageUsersRoute {
  static ManageUsersRoute _fromState(GoRouterState state) =>
      const ManageUsersRoute();

  String get location => GoRouteData.$location(
        '/manage_users',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VisitsMapRouteExtension on VisitsMapRoute {
  static VisitsMapRoute _fromState(GoRouterState state) =>
      const VisitsMapRoute();

  String get location => GoRouteData.$location(
        '/visits_map',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AdvancedSearchRouteExtension on AdvancedSearchRoute {
  static AdvancedSearchRoute _fromState(GoRouterState state) =>
      AdvancedSearchRoute(
        $extra: state.extra as AdvancedQuery?,
      );

  String get location => GoRouteData.$location(
        '/advanced_search',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
