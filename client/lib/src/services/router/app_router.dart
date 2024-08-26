import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_router.g.dart';

@LoginScreen.route
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (AuthService.I.isSignedIn) {
      return '/';
    }
    return null;
  }
}

@MultiFactorLogin.route
class MultiFactorLoginRoute extends GoRouteData {
  const MultiFactorLoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MultiFactorLogin();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (!AuthService.I.multiFactorManager.hasPendingMultifactorLogin &&
        (AuthService.I.currentUser?.isMultiFactorEnrolled ?? false)) {
      return '/';
    }
    return null;
  }
}

@EmailVerificationScreen.route
class EmailVerificationRoute extends GoRouteData {
  const EmailVerificationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EmailVerificationScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (!AuthService.I.isSignedIn) {
      return LoginScreen.route.path;
    } else if (AuthService.I.currentUser!.emailVerified ?? false) {
      return HomeScreen.route.path;
    }

    return null;
  }
}

@UnapprovedUser.route
class UnapprovedUserRoute extends GoRouteData {
  const UnapprovedUserRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const UnapprovedUser();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (AuthService.I.currentUser?.permissions.approved ?? false) {
      return HomeScreen.route.path;
    }
    return null;
  }
}

@AuthenticateScreen.route
class AuthenticateRoute extends GoRouteData {
  const AuthenticateRoute({this.next = '/'});

  final String next;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AuthenticateScreen(next: next != '/' ? next : null);
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthService authService = AuthService.I;
    final LocalAuthService localAuthService = LocalAuthService.I;

    if (!authService.isSignedIn) {
      return LoginScreen.route.path;
    } else if (!(authService.currentUser?.isMultiFactorEnrolled ?? false)) {
      return MultiFactorLogin.route.path;
    } else if (localAuthService.shouldAuthenticate ||
        (next != '/' && localAuthService.shouldAuthenticateForPath(next))) {
      return null;
    } else {
      return next;
    }
  }
}

@DownloadAppScreen.route
class DownloadAppRoute extends GoRouteData {
  const DownloadAppRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DownloadAppScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    return const HomeScreenWebRoute().redirect(context, state);
  }
}

@UpdateUserSpiritData.route
class UpdateUserSpiritDataRoute extends GoRouteData {
  const UpdateUserSpiritDataRoute({this.$extra});

  final Person? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UpdateUserSpiritData(userData: $extra);
  }

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final AuthService authService = AuthService.I;

    if (!authService.isSignedIn) {
      return LoginScreen.route.path;
    } else if (authService.currentUser!.person!.spiritDataUpToDate()) {
      return HomeScreen.route.path;
    } else if (LocalAuthService.I.shouldAuthenticate) {
      return Uri(
        path: '/authenticate',
        queryParameters: {'next': state.uri.toString()},
      ).toString();
    }
    return null;
  }
}

@HomeScreen.route
class HomeScreenRoute extends GoRouteData {
  const HomeScreenRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final authService = AuthService.I;

    if (!authService.isSignedIn) {
      return LoginScreen.route.path;
    } else if (!(authService.currentUser!.emailVerified ?? false)) {
      return EmailVerificationScreen.route.path;
    } else if (!(authService.currentUser!.isMultiFactorEnrolled ?? false)) {
      return MultiFactorLogin.route.path;
    } else if (!authService.currentUser!.permissions.approved) {
      return UnapprovedUser.route.path;
    } else if (!authService.currentUser!.person!.spiritDataUpToDate()) {
      return Uri(
        path: UpdateUserSpiritData.route.path,
        queryParameters: {'forced': 'true'},
      ).toString();
    }

    return null;
  }
}

@HomeScreen.webRoute
class HomeScreenWebRoute extends GoRouteData {
  const HomeScreenWebRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DownloadAppScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final authService = AuthService.I;

    if (!authService.isSignedIn) {
      return LoginScreen.route.path;
    } else if (!(authService.currentUser!.emailVerified ?? false)) {
      return EmailVerificationScreen.route.path;
    } else if (!(authService.currentUser!.isMultiFactorEnrolled ?? false)) {
      return MultiFactorLogin.route.path;
    } else if (!authService.currentUser!.permissions.approved) {
      return UnapprovedUser.route.path;
    } else if (!authService.currentUser!.person!.spiritDataUpToDate()) {
      return Uri(
        path: UpdateUserSpiritData.route.path,
        queryParameters: {'forced': 'true'},
      ).toString();
    }

    return null;
  }
}

class ViewAreaRoute extends GoRouteData {
  const ViewAreaRoute({required this.id, this.$extra});

  final String id;
  final Area? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewArea(areaId: id, area: $extra);
  }
}

class EditAreaRoute extends GoRouteData {
  const EditAreaRoute({this.$extra});

  final Area? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditArea(area: $extra);
  }
}

class ViewStreetRoute extends GoRouteData {
  const ViewStreetRoute({required this.id, this.$extra});

  final String id;
  final Street? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewStreet(streetId: id, street: $extra);
  }
}

class EditStreetRoute extends GoRouteData {
  const EditStreetRoute({this.$extra});

  final Street? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditStreet(street: $extra);
  }
}

class ViewFamilyRoute extends GoRouteData {
  const ViewFamilyRoute({required this.id, this.$extra});

  final String id;
  final Family? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewFamily(familyId: id, family: $extra);
  }
}

class EditFamilyRoute extends GoRouteData {
  const EditFamilyRoute({this.$extra});

  final ({
    Street? street,
    Family? family,
    Set<Family>? children,
    Set<Family>? parents
  })? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditFamily(
      family: $extra?.family,
      children: $extra?.children,
      parents: $extra?.parents,
    );
  }
}

class ViewStoreRoute extends GoRouteData {
  const ViewStoreRoute({required this.id, this.$extra});

  final String id;
  final Store? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewStore(storeId: id, store: $extra);
  }
}

class EditStoreRoute extends GoRouteData {
  const EditStoreRoute({this.$extra});

  final ({Street? street, Store? store, Family? family})? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditStore(store: $extra?.store, family: $extra?.family);
  }
}

class ViewPersonRoute extends GoRouteData {
  const ViewPersonRoute({required this.id, this.$extra});

  final String id;
  final Person? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewPerson(personId: id, person: $extra);
  }
}

class PersonAnalysisRoute extends GoRouteData {
  const PersonAnalysisRoute({required this.$extra});

  final ({
    Person? person,
    User? user,
    PersonAnalysisOptions? options,
    EditOptionsBuiderFn editOptionsBuilder
  }) $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PersonAnalysis(
      person: $extra.person,
      user: $extra.user,
      options: $extra.options,
      editOptionsBuilder: $extra.editOptionsBuilder,
    );
  }
}

class EditPersonRoute extends GoRouteData {
  const EditPersonRoute({this.$extra});

  final ({
    Person? person,
    Family? family,
    Service? service,
    Group? group,
    StudyYear? studyYear,
    bool? gender
  })? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditPerson(
      person: $extra?.person,
      family: $extra?.family,
      service: $extra?.service,
      group: $extra?.group,
      studyYear: $extra?.studyYear,
      gender: $extra?.gender,
    );
  }
}

class ViewServiceRoute extends GoRouteData {
  const ViewServiceRoute({required this.id, this.$extra});

  final String id;
  final Service? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewService(serviceId: id, service: $extra);
  }
}

class EditServiceRoute extends GoRouteData {
  const EditServiceRoute({this.$extra});

  final Service? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditService(service: $extra);
  }
}

class ViewClassRoute extends GoRouteData {
  const ViewClassRoute({required this.id, this.$extra});

  final String id;
  final Class? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewClass(classId: id, $class: $extra);
  }
}

class EditClassRoute extends GoRouteData {
  const EditClassRoute({this.$extra});

  final ({Class? $class, Service? service})? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditClass(
      class$: $extra?.$class,
      service: $extra?.service,
    );
  }
}

class ViewGroupRoute extends GoRouteData {
  const ViewGroupRoute({required this.id, this.$extra});

  final String id;
  final Group? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewGroup(groupId: id, group: $extra);
  }
}

class EditGroupRoute extends GoRouteData {
  const EditGroupRoute({this.$extra});

  final ({Group? group, Service? service})? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditGroup(
      group: $extra?.group,
      service: $extra?.service,
    );
  }
}

class ManageUsersRoute extends GoRouteData {
  const ManageUsersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ManageUsersScreen();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    if (!LocalAuthService.I.requestOneTimeAuthForPath('/manage_users')) {
      return Uri(
        path: '/authenticate',
        queryParameters: {'next': '/manage_users'},
      ).toString();
    }

    return null;
  }
}

class ViewUserRoute extends GoRouteData {
  const ViewUserRoute({required this.uid, this.$extra});

  final String uid;
  final User? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ViewUser(userId: uid, user: $extra);
  }
}

class VisitsMapRoute extends GoRouteData {
  const VisitsMapRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VisitsMapScreen();
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsScreen();
}

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
