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
      factory: _$HomeScreenRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'view_person',
          factory: _$ViewPersonRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_person',
          factory: _$EditPersonRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'view_area',
          factory: _$ViewAreaRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_area',
          factory: _$EditAreaRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'view_service',
          factory: _$ViewServiceRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_service',
          factory: _$EditServiceRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'view_user',
          factory: _$ViewUserRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'view_group',
          factory: _$ViewGroupRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_group',
          factory: _$EditGroupRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'view_class',
          factory: _$ViewClassRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_class',
          factory: _$EditClassRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'view_family',
          factory: _$ViewFamilyRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_family',
          factory: _$EditFamilyRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'view_street',
          factory: _$ViewStreetRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_street',
          factory: _$EditStreetRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'view_store',
          factory: _$ViewStoreRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'edit_store',
          factory: _$EditStoreRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'person_analysis',
          factory: _$PersonAnalysisRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'manage_users',
          factory: _$ManageUsersRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'visits_map',
          factory: _$VisitsMapRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'advanced_search',
          factory: _$AdvancedSearchRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'settings',
          factory: _$SettingsRoute._fromState,
        ),
      ],
    );

mixin _$HomeScreenRoute on GoRouteData {
  static HomeScreenRoute _fromState(GoRouterState state) =>
      const HomeScreenRoute();

  @override
  String get location => GoRouteData.$location(
        '/',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$ViewPersonRoute on GoRouteData {
  static ViewPersonRoute _fromState(GoRouterState state) => ViewPersonRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Person?,
      );

  ViewPersonRoute get _self => this as ViewPersonRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_person',
        queryParams: {
          'id': _self.id,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$EditPersonRoute on GoRouteData {
  static EditPersonRoute _fromState(GoRouterState state) => EditPersonRoute(
        $extra: state.extra as EditPersonExtra?,
      );

  EditPersonRoute get _self => this as EditPersonRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_person',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$ViewAreaRoute on GoRouteData {
  static ViewAreaRoute _fromState(GoRouterState state) => ViewAreaRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Area?,
      );

  ViewAreaRoute get _self => this as ViewAreaRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_area',
        queryParams: {
          'id': _self.id,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$EditAreaRoute on GoRouteData {
  static EditAreaRoute _fromState(GoRouterState state) => EditAreaRoute(
        $extra: state.extra as Area?,
      );

  EditAreaRoute get _self => this as EditAreaRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_area',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$ViewServiceRoute on GoRouteData {
  static ViewServiceRoute _fromState(GoRouterState state) => ViewServiceRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Service?,
      );

  ViewServiceRoute get _self => this as ViewServiceRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_service',
        queryParams: {
          'id': _self.id,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$EditServiceRoute on GoRouteData {
  static EditServiceRoute _fromState(GoRouterState state) => EditServiceRoute(
        $extra: state.extra as Service?,
      );

  EditServiceRoute get _self => this as EditServiceRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_service',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$ViewUserRoute on GoRouteData {
  static ViewUserRoute _fromState(GoRouterState state) => ViewUserRoute(
        uid: state.uri.queryParameters['uid']!,
        $extra: state.extra as User?,
      );

  ViewUserRoute get _self => this as ViewUserRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_user',
        queryParams: {
          'uid': _self.uid,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$ViewGroupRoute on GoRouteData {
  static ViewGroupRoute _fromState(GoRouterState state) => ViewGroupRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Group?,
      );

  ViewGroupRoute get _self => this as ViewGroupRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_group',
        queryParams: {
          'id': _self.id,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$EditGroupRoute on GoRouteData {
  static EditGroupRoute _fromState(GoRouterState state) => EditGroupRoute(
        $extra: state.extra as EditGroupExtra?,
      );

  EditGroupRoute get _self => this as EditGroupRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_group',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$ViewClassRoute on GoRouteData {
  static ViewClassRoute _fromState(GoRouterState state) => ViewClassRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Class?,
      );

  ViewClassRoute get _self => this as ViewClassRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_class',
        queryParams: {
          'id': _self.id,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$EditClassRoute on GoRouteData {
  static EditClassRoute _fromState(GoRouterState state) => EditClassRoute(
        $extra: state.extra as EditClassExtra?,
      );

  EditClassRoute get _self => this as EditClassRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_class',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$ViewFamilyRoute on GoRouteData {
  static ViewFamilyRoute _fromState(GoRouterState state) => ViewFamilyRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Family?,
      );

  ViewFamilyRoute get _self => this as ViewFamilyRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_family',
        queryParams: {
          'id': _self.id,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$EditFamilyRoute on GoRouteData {
  static EditFamilyRoute _fromState(GoRouterState state) => EditFamilyRoute(
        $extra: state.extra as EditFamilyExtra?,
      );

  EditFamilyRoute get _self => this as EditFamilyRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_family',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$ViewStreetRoute on GoRouteData {
  static ViewStreetRoute _fromState(GoRouterState state) => ViewStreetRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Street?,
      );

  ViewStreetRoute get _self => this as ViewStreetRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_street',
        queryParams: {
          'id': _self.id,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$EditStreetRoute on GoRouteData {
  static EditStreetRoute _fromState(GoRouterState state) => EditStreetRoute(
        $extra: state.extra as Street?,
      );

  EditStreetRoute get _self => this as EditStreetRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_street',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$ViewStoreRoute on GoRouteData {
  static ViewStoreRoute _fromState(GoRouterState state) => ViewStoreRoute(
        id: state.uri.queryParameters['id']!,
        $extra: state.extra as Store?,
      );

  ViewStoreRoute get _self => this as ViewStoreRoute;

  @override
  String get location => GoRouteData.$location(
        '/view_store',
        queryParams: {
          'id': _self.id,
        },
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$EditStoreRoute on GoRouteData {
  static EditStoreRoute _fromState(GoRouterState state) => EditStoreRoute(
        $extra: state.extra as EditStoreExtra?,
      );

  EditStoreRoute get _self => this as EditStoreRoute;

  @override
  String get location => GoRouteData.$location(
        '/edit_store',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$PersonAnalysisRoute on GoRouteData {
  static PersonAnalysisRoute _fromState(GoRouterState state) =>
      PersonAnalysisRoute(
        $extra: state.extra as PersonAnalysisExtra,
      );

  PersonAnalysisRoute get _self => this as PersonAnalysisRoute;

  @override
  String get location => GoRouteData.$location(
        '/person_analysis',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$ManageUsersRoute on GoRouteData {
  static ManageUsersRoute _fromState(GoRouterState state) =>
      const ManageUsersRoute();

  @override
  String get location => GoRouteData.$location(
        '/manage_users',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$VisitsMapRoute on GoRouteData {
  static VisitsMapRoute _fromState(GoRouterState state) =>
      const VisitsMapRoute();

  @override
  String get location => GoRouteData.$location(
        '/visits_map',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$AdvancedSearchRoute on GoRouteData {
  static AdvancedSearchRoute _fromState(GoRouterState state) =>
      AdvancedSearchRoute(
        $extra: state.extra as AdvancedQuery?,
      );

  AdvancedSearchRoute get _self => this as AdvancedSearchRoute;

  @override
  String get location => GoRouteData.$location(
        '/advanced_search',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin _$SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  @override
  String get location => GoRouteData.$location(
        '/settings',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
