// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loginRoute,
      $multiFactorLoginRoute,
      $emailVerificationRoute,
      $unapprovedUserRoute,
      $authenticateRoute,
      $downloadAppRoute,
      $updateUserSpiritDataRoute,
      $homeScreenRoute,
      $homeScreenWebRoute,
    ];

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $multiFactorLoginRoute => GoRouteData.$route(
      path: '/multiFactor',
      factory: $MultiFactorLoginRouteExtension._fromState,
    );

extension $MultiFactorLoginRouteExtension on MultiFactorLoginRoute {
  static MultiFactorLoginRoute _fromState(GoRouterState state) =>
      const MultiFactorLoginRoute();

  String get location => GoRouteData.$location(
        '/multiFactor',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $emailVerificationRoute => GoRouteData.$route(
      path: '/emailVerification',
      factory: $EmailVerificationRouteExtension._fromState,
    );

extension $EmailVerificationRouteExtension on EmailVerificationRoute {
  static EmailVerificationRoute _fromState(GoRouterState state) =>
      const EmailVerificationRoute();

  String get location => GoRouteData.$location(
        '/emailVerification',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $unapprovedUserRoute => GoRouteData.$route(
      path: '/unapprovedUser',
      factory: $UnapprovedUserRouteExtension._fromState,
    );

extension $UnapprovedUserRouteExtension on UnapprovedUserRoute {
  static UnapprovedUserRoute _fromState(GoRouterState state) =>
      const UnapprovedUserRoute();

  String get location => GoRouteData.$location(
        '/unapprovedUser',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $authenticateRoute => GoRouteData.$route(
      path: '/authenticate',
      name: 'authenticate',
      factory: $AuthenticateRouteExtension._fromState,
    );

extension $AuthenticateRouteExtension on AuthenticateRoute {
  static AuthenticateRoute _fromState(GoRouterState state) => AuthenticateRoute(
        next: state.uri.queryParameters['next'] ?? '/',
      );

  String get location => GoRouteData.$location(
        '/authenticate',
        queryParams: {
          if (next != '/') 'next': next,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $downloadAppRoute => GoRouteData.$route(
      path: '/download',
      factory: $DownloadAppRouteExtension._fromState,
    );

extension $DownloadAppRouteExtension on DownloadAppRoute {
  static DownloadAppRoute _fromState(GoRouterState state) =>
      const DownloadAppRoute();

  String get location => GoRouteData.$location(
        '/download',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $updateUserSpiritDataRoute => GoRouteData.$route(
      path: '/updateUserSpiritData',
      factory: $UpdateUserSpiritDataRouteExtension._fromState,
    );

extension $UpdateUserSpiritDataRouteExtension on UpdateUserSpiritDataRoute {
  static UpdateUserSpiritDataRoute _fromState(GoRouterState state) =>
      UpdateUserSpiritDataRoute(
        $extra: state.extra as Person?,
      );

  String get location => GoRouteData.$location(
        '/updateUserSpiritData',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $homeScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'viewPerson',
          factory: $ViewPersonRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'editPerson',
          factory: $EditPersonRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'viewArea',
          factory: $ViewAreaRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'editArea',
          factory: $EditAreaRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'viewService',
          factory: $ViewServiceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'editService',
          factory: $EditServiceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'viewUser',
          factory: $ViewUserRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'viewGroup',
          factory: $ViewGroupRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'editGroup',
          factory: $EditGroupRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'viewClass',
          factory: $ViewClassRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'editClass',
          factory: $EditClassRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'viewFamily',
          factory: $ViewFamilyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'editFamily',
          factory: $EditFamilyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'viewStreet',
          factory: $ViewStreetRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'editStreet',
          factory: $EditStreetRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'viewStore',
          factory: $ViewStoreRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'editStore',
          factory: $EditStoreRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'personAnalysis',
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
        '/viewPerson',
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
        $extra: state.extra as ({
          Family? family,
          bool? gender,
          Group? group,
          Person? person,
          Service? service,
          StudyYear? studyYear
        })?,
      );

  String get location => GoRouteData.$location(
        '/editPerson',
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
        '/viewArea',
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
        '/editArea',
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
        '/viewService',
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
        '/editService',
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
        '/viewUser',
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
        '/viewGroup',
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
        $extra: state.extra as ({Group? group, Service? service})?,
      );

  String get location => GoRouteData.$location(
        '/editGroup',
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
        '/viewClass',
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
        $extra: state.extra as ({Class? $class, Service? service})?,
      );

  String get location => GoRouteData.$location(
        '/editClass',
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
        '/viewFamily',
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
        $extra: state.extra as ({
          Set<Family>? children,
          Family? family,
          Set<Family>? parents,
          Street? street
        })?,
      );

  String get location => GoRouteData.$location(
        '/editFamily',
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
        '/viewStreet',
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
        '/editStreet',
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
        '/viewStore',
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
        $extra:
            state.extra as ({Family? family, Store? store, Street? street})?,
      );

  String get location => GoRouteData.$location(
        '/editStore',
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
        $extra: state.extra as ({
          Widget Function(BuildContext, PersonAnalysisOptions?,
              void Function(PersonAnalysisOptions)) editOptionsBuilder,
          PersonAnalysisOptions? options,
          Person? person,
          User? user
        }),
      );

  String get location => GoRouteData.$location(
        '/personAnalysis',
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

RouteBase get $homeScreenWebRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeScreenWebRouteExtension._fromState,
    );

extension $HomeScreenWebRouteExtension on HomeScreenWebRoute {
  static HomeScreenWebRoute _fromState(GoRouterState state) =>
      const HomeScreenWebRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
