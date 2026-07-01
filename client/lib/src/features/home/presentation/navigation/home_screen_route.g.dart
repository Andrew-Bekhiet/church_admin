// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homeScreenRoute];

RouteBase get $homeScreenRoute => GoRouteData.$route(
  path: '/',
  factory: $HomeScreenRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: 'view_person',
      factory: $ViewPersonRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'edit_person',
      factory: $EditPersonRoute._fromState,
    ),
    GoRouteData.$route(path: 'view_area', factory: $ViewAreaRoute._fromState),
    GoRouteData.$route(path: 'edit_area', factory: $EditAreaRoute._fromState),
    GoRouteData.$route(
      path: 'view_service',
      factory: $ViewServiceRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'record_attendance',
      factory: $RecordAttendanceRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'edit_service',
      factory: $EditServiceRoute._fromState,
    ),
    GoRouteData.$route(path: 'view_user', factory: $ViewUserRoute._fromState),
    GoRouteData.$route(path: 'edit_user', factory: $EditUserRoute._fromState),
    GoRouteData.$route(path: 'view_group', factory: $ViewGroupRoute._fromState),
    GoRouteData.$route(path: 'edit_group', factory: $EditGroupRoute._fromState),
    GoRouteData.$route(path: 'view_class', factory: $ViewClassRoute._fromState),
    GoRouteData.$route(path: 'edit_class', factory: $EditClassRoute._fromState),
    GoRouteData.$route(
      path: 'view_family',
      factory: $ViewFamilyRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'edit_family',
      factory: $EditFamilyRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'view_street',
      factory: $ViewStreetRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'edit_street',
      factory: $EditStreetRoute._fromState,
    ),
    GoRouteData.$route(path: 'view_store', factory: $ViewStoreRoute._fromState),
    GoRouteData.$route(path: 'edit_store', factory: $EditStoreRoute._fromState),
    GoRouteData.$route(
      path: 'person_analysis',
      factory: $PersonAnalysisRoute._fromState,
    ),
    GoRouteData.$route(path: 'my_account', factory: $MyAccountRoute._fromState),
    GoRouteData.$route(
      path: 'manage_users',
      factory: $ManageUsersRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'export_entities_selection',
      factory: $ExportEntitiesSelectionRoute._fromState,
    ),
    GoRouteData.$route(path: 'visits_map', factory: $VisitsMapRoute._fromState),
    GoRouteData.$route(
      path: 'advanced_search',
      factory: $AdvancedSearchRoute._fromState,
    ),
    GoRouteData.$route(path: 'settings', factory: $SettingsRoute._fromState),
  ],
);

mixin $HomeScreenRoute on GoRouteData {
  static HomeScreenRoute _fromState(GoRouterState state) =>
      const HomeScreenRoute();

  @override
  String get location => GoRouteData.$location('/');

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

mixin $ViewPersonRoute on GoRouteData {
  static ViewPersonRoute _fromState(GoRouterState state) => ViewPersonRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Person?,
  );

  ViewPersonRoute get _self => this as ViewPersonRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_person', queryParams: {'id': _self.id});

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

mixin $EditPersonRoute on GoRouteData {
  static EditPersonRoute _fromState(GoRouterState state) =>
      EditPersonRoute($extra: state.extra as EditPersonExtra?);

  EditPersonRoute get _self => this as EditPersonRoute;

  @override
  String get location => GoRouteData.$location('/edit_person');

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

mixin $ViewAreaRoute on GoRouteData {
  static ViewAreaRoute _fromState(GoRouterState state) => ViewAreaRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Area?,
  );

  ViewAreaRoute get _self => this as ViewAreaRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_area', queryParams: {'id': _self.id});

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

mixin $EditAreaRoute on GoRouteData {
  static EditAreaRoute _fromState(GoRouterState state) =>
      EditAreaRoute($extra: state.extra as Area?);

  EditAreaRoute get _self => this as EditAreaRoute;

  @override
  String get location => GoRouteData.$location('/edit_area');

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

mixin $ViewServiceRoute on GoRouteData {
  static ViewServiceRoute _fromState(GoRouterState state) => ViewServiceRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Service?,
  );

  ViewServiceRoute get _self => this as ViewServiceRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_service', queryParams: {'id': _self.id});

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

mixin $RecordAttendanceRoute on GoRouteData {
  static RecordAttendanceRoute _fromState(GoRouterState state) =>
      RecordAttendanceRoute($extra: state.extra as Meeting);

  RecordAttendanceRoute get _self => this as RecordAttendanceRoute;

  @override
  String get location => GoRouteData.$location('/record_attendance');

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

mixin $EditServiceRoute on GoRouteData {
  static EditServiceRoute _fromState(GoRouterState state) =>
      EditServiceRoute($extra: state.extra as Service?);

  EditServiceRoute get _self => this as EditServiceRoute;

  @override
  String get location => GoRouteData.$location('/edit_service');

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

mixin $ViewUserRoute on GoRouteData {
  static ViewUserRoute _fromState(GoRouterState state) => ViewUserRoute(
    uid: state.uri.queryParameters['uid']!,
    $extra: state.extra as User?,
  );

  ViewUserRoute get _self => this as ViewUserRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_user', queryParams: {'uid': _self.uid});

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

mixin $EditUserRoute on GoRouteData {
  static EditUserRoute _fromState(GoRouterState state) => EditUserRoute(
    uid: state.uri.queryParameters['uid']!,
    $extra: state.extra as User,
  );

  EditUserRoute get _self => this as EditUserRoute;

  @override
  String get location =>
      GoRouteData.$location('/edit_user', queryParams: {'uid': _self.uid});

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

mixin $ViewGroupRoute on GoRouteData {
  static ViewGroupRoute _fromState(GoRouterState state) => ViewGroupRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Group?,
  );

  ViewGroupRoute get _self => this as ViewGroupRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_group', queryParams: {'id': _self.id});

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

mixin $EditGroupRoute on GoRouteData {
  static EditGroupRoute _fromState(GoRouterState state) =>
      EditGroupRoute($extra: state.extra as EditGroupExtra?);

  EditGroupRoute get _self => this as EditGroupRoute;

  @override
  String get location => GoRouteData.$location('/edit_group');

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

mixin $ViewClassRoute on GoRouteData {
  static ViewClassRoute _fromState(GoRouterState state) => ViewClassRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Class?,
  );

  ViewClassRoute get _self => this as ViewClassRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_class', queryParams: {'id': _self.id});

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

mixin $EditClassRoute on GoRouteData {
  static EditClassRoute _fromState(GoRouterState state) =>
      EditClassRoute($extra: state.extra as EditClassExtra?);

  EditClassRoute get _self => this as EditClassRoute;

  @override
  String get location => GoRouteData.$location('/edit_class');

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

mixin $ViewFamilyRoute on GoRouteData {
  static ViewFamilyRoute _fromState(GoRouterState state) => ViewFamilyRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Family?,
  );

  ViewFamilyRoute get _self => this as ViewFamilyRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_family', queryParams: {'id': _self.id});

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

mixin $EditFamilyRoute on GoRouteData {
  static EditFamilyRoute _fromState(GoRouterState state) =>
      EditFamilyRoute($extra: state.extra as EditFamilyExtra?);

  EditFamilyRoute get _self => this as EditFamilyRoute;

  @override
  String get location => GoRouteData.$location('/edit_family');

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

mixin $ViewStreetRoute on GoRouteData {
  static ViewStreetRoute _fromState(GoRouterState state) => ViewStreetRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Street?,
  );

  ViewStreetRoute get _self => this as ViewStreetRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_street', queryParams: {'id': _self.id});

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

mixin $EditStreetRoute on GoRouteData {
  static EditStreetRoute _fromState(GoRouterState state) =>
      EditStreetRoute($extra: state.extra as EditStreetExtra?);

  EditStreetRoute get _self => this as EditStreetRoute;

  @override
  String get location => GoRouteData.$location('/edit_street');

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

mixin $ViewStoreRoute on GoRouteData {
  static ViewStoreRoute _fromState(GoRouterState state) => ViewStoreRoute(
    id: state.uri.queryParameters['id']!,
    $extra: state.extra as Store?,
  );

  ViewStoreRoute get _self => this as ViewStoreRoute;

  @override
  String get location =>
      GoRouteData.$location('/view_store', queryParams: {'id': _self.id});

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

mixin $EditStoreRoute on GoRouteData {
  static EditStoreRoute _fromState(GoRouterState state) =>
      EditStoreRoute($extra: state.extra as EditStoreExtra?);

  EditStoreRoute get _self => this as EditStoreRoute;

  @override
  String get location => GoRouteData.$location('/edit_store');

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

mixin $PersonAnalysisRoute on GoRouteData {
  static PersonAnalysisRoute _fromState(GoRouterState state) =>
      PersonAnalysisRoute($extra: state.extra as PersonAnalysisExtra);

  PersonAnalysisRoute get _self => this as PersonAnalysisRoute;

  @override
  String get location => GoRouteData.$location('/person_analysis');

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

mixin $MyAccountRoute on GoRouteData {
  static MyAccountRoute _fromState(GoRouterState state) =>
      const MyAccountRoute();

  @override
  String get location => GoRouteData.$location('/my_account');

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

mixin $ManageUsersRoute on GoRouteData {
  static ManageUsersRoute _fromState(GoRouterState state) =>
      const ManageUsersRoute();

  @override
  String get location => GoRouteData.$location('/manage_users');

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

mixin $ExportEntitiesSelectionRoute on GoRouteData {
  static ExportEntitiesSelectionRoute _fromState(GoRouterState state) =>
      const ExportEntitiesSelectionRoute();

  @override
  String get location => GoRouteData.$location('/export_entities_selection');

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

mixin $VisitsMapRoute on GoRouteData {
  static VisitsMapRoute _fromState(GoRouterState state) =>
      const VisitsMapRoute();

  @override
  String get location => GoRouteData.$location('/visits_map');

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

mixin $AdvancedSearchRoute on GoRouteData {
  static AdvancedSearchRoute _fromState(GoRouterState state) =>
      AdvancedSearchRoute($extra: state.extra as AdvancedQuery?);

  AdvancedSearchRoute get _self => this as AdvancedSearchRoute;

  @override
  String get location => GoRouteData.$location('/advanced_search');

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

mixin $SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings');

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
