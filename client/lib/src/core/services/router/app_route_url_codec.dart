import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:kaisel/kaisel.dart';

class AppRouteUrlCodec extends KaiselStackCodec<AppRoute> {
  const AppRouteUrlCodec();

  @override
  Uri encode(List<AppRoute> stack) {
    final screen = stack.last;

    return switch (screen) {
      ViewPersonRoute(:final id) ||
      ViewAreaRoute(:final id) ||
      ViewServiceRoute(:final id) ||
      ViewGroupRoute(:final id) ||
      ViewClassRoute(:final id) ||
      ViewFamilyRoute(:final id) ||
      ViewStreetRoute(:final id) ||
      ViewStoreRoute(:final id) ||
      ViewUserRoute(uid: final id) ||
      EditPersonRoute(intent: UpdatePerson(person: ID(:final id))) ||
      EditAreaRoute(intent: UpdateArea(area: ID(:final id))) ||
      EditServiceRoute(service: ID(:final id)) ||
      EditGroupRoute(group: ID(:final id)) ||
      EditClassRoute(class$: ID(:final id)) ||
      EditFamilyRoute(intent: UpdateFamily(family: ID(:final id))) ||
      EditStreetRoute(intent: UpdateStreet(street: ID(:final id))) ||
      EditStoreRoute(intent: UpdateStore(store: ID(:final id))) ||
      EditUserRoute(intent: UpdateUser(user: User(uid: final id))) ||
      PersonAnalysisRoute(person: ID(:final id)) ||
      UserAnalysisRoute(user: User(uid: final id)) => Uri(
        path: screen.path,
        queryParameters: {'id': id},
      ),
      BiometricsAuthRoute(next: final next?) => Uri(
        path: screen.path,
        queryParameters: {
          'next': encode([next]).toString(),
        },
      ),
      NotFoundRoute(:final address) => address,
      HomeScreenRoute() ||
      HomeScreenWebRoute() ||
      LoginRoute() ||
      ForgotPasswordRoute() ||
      EmailVerificationRoute() ||
      UnapprovedUserRoute() ||
      UpdateUserSpiritDataRoute() ||
      BiometricsAuthRoute() ||
      ForceUpdateRoute() ||
      UnderMaintenanceRoute() ||
      OutdatedFeatureRoute() ||
      DownloadAppRoute() ||
      SettingsRoute() ||
      VisitsMapRoute() ||
      MyAccountRoute() ||
      ManageUsersRoute() ||
      ExportEntitiesSelectionRoute() ||
      AdvancedSearchRoute() ||
      MeetingsAnalysisRoute() ||
      RecordAttendanceRoute() ||
      EditPersonRoute() ||
      EditAreaRoute() ||
      EditServiceRoute() ||
      EditGroupRoute() ||
      EditClassRoute() ||
      EditFamilyRoute() ||
      EditStreetRoute() ||
      EditStoreRoute() ||
      EditUserRoute() => Uri(path: screen.path),
    };
  }

  @override
  List<AppRoute> decode(Uri uri) {
    try {
      return (_maybeScreenAt(uri) ?? _reportNotFound(uri)).breadcrumbs;
    } on FormatException {
      return _reportNotFound(uri).breadcrumbs;
    }
  }

  AppRoute? _maybeScreenAt(Uri uri) {
    final params = uri.queryParameters;

    return switch ((uri.path, params['id'])) {
      (HomeScreenRoute.routePath, _) => AppRoute.home,
      (LoginRoute.routePath, _) => const LoginRoute(),
      (ForgotPasswordRoute.routePath, _) => const ForgotPasswordRoute(),
      (EmailVerificationRoute.routePath, _) => const EmailVerificationRoute(),
      (UnapprovedUserRoute.routePath, _) => const UnapprovedUserRoute(),
      (ForceUpdateRoute.routePath, _) => const ForceUpdateRoute(),
      (UnderMaintenanceRoute.routePath, _) => const UnderMaintenanceRoute(),
      (OutdatedFeatureRoute.routePath, _) => const OutdatedFeatureRoute(),
      (DownloadAppRoute.routePath, _) => const DownloadAppRoute(),
      (SettingsRoute.routePath, _) => const SettingsRoute(),
      (VisitsMapRoute.routePath, _) => const VisitsMapRoute(),
      (MyAccountRoute.routePath, _) => const MyAccountRoute(),
      (ManageUsersRoute.routePath, _) => const ManageUsersRoute(),
      (ExportEntitiesSelectionRoute.routePath, _) =>
        const ExportEntitiesSelectionRoute(),
      (AdvancedSearchRoute.routePath, _) => const AdvancedSearchRoute(),
      (UpdateUserSpiritDataRoute.routePath, _) =>
        const UpdateUserSpiritDataRoute(),
      (BiometricsAuthRoute.routePath, _) => BiometricsAuthRoute(
        next: switch (params['next']) {
          final nextAddress? => _maybeScreenToUnlock(Uri.parse(nextAddress)),
          null => null,
        },
      ),
      (
        ViewPersonRoute.routePath ||
            EditPersonRoute.routePath ||
            PersonAnalysisRoute.routePath,
        final id?,
      ) =>
        ViewPersonRoute(id: id),
      (ViewAreaRoute.routePath || EditAreaRoute.routePath, final id?) =>
        ViewAreaRoute(id: id),
      (ViewServiceRoute.routePath || EditServiceRoute.routePath, final id?) =>
        ViewServiceRoute(id: id),
      (ViewGroupRoute.routePath || EditGroupRoute.routePath, final id?) =>
        ViewGroupRoute(id: id),
      (ViewClassRoute.routePath || EditClassRoute.routePath, final id?) =>
        ViewClassRoute(id: id),
      (ViewFamilyRoute.routePath || EditFamilyRoute.routePath, final id?) =>
        ViewFamilyRoute(id: id),
      (ViewStreetRoute.routePath || EditStreetRoute.routePath, final id?) =>
        ViewStreetRoute(id: id),
      (ViewStoreRoute.routePath || EditStoreRoute.routePath, final id?) =>
        ViewStoreRoute(id: id),
      (
        ViewUserRoute.routePath ||
            EditUserRoute.routePath ||
            UserAnalysisRoute.routePath,
        final id?,
      ) =>
        ViewUserRoute(uid: id),
      (EditPersonRoute.routePath, null) => const EditPersonRoute(),
      (EditAreaRoute.routePath, null) => const EditAreaRoute(),
      (EditServiceRoute.routePath, null) => const EditServiceRoute(),
      (EditGroupRoute.routePath, null) => const EditGroupRoute(),
      (EditClassRoute.routePath, null) => const EditClassRoute(),
      (EditFamilyRoute.routePath, null) => const EditFamilyRoute(),
      (EditStreetRoute.routePath, null) => const EditStreetRoute(),
      (EditStoreRoute.routePath, null) => const EditStoreRoute(),
      (EditUserRoute.routePath, null) => const EditUserRoute(
        intent: CreateUser(),
      ),
      (
        PersonAnalysisRoute.routePath ||
            UserAnalysisRoute.routePath ||
            MeetingsAnalysisRoute.routePath ||
            RecordAttendanceRoute.routePath,
        _,
      ) =>
        AppRoute.home,
      _ => null,
    };
  }

  AppRoute? _maybeScreenToUnlock(Uri address) =>
      address.path == BiometricsAuthRoute.routePath
      ? null
      : _maybeScreenAt(address);

  NotFoundRoute _reportNotFound(Uri uri) {
    if (kReleaseMode) {
      unawaited(
        LoggingService.I.error(LogRecord(error: RouteNotFoundException(uri))),
      );
    }

    return NotFoundRoute(uri);
  }
}
