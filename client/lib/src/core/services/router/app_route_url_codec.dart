import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:kaisel/kaisel.dart';

class AppRouteUrlCodec extends KaiselStackCodec<AppRoute> {
  static const List<AppRoute> _screensWithoutData = [
    LoginRoute(),
    ForgotPasswordRoute(),
    EmailVerificationRoute(),
    UnapprovedUserRoute(),
    ForceUpdateRoute(),
    UnderMaintenanceRoute(),
    OutdatedFeatureRoute(),
    DownloadAppRoute(),
    SettingsRoute(),
    VisitsMapRoute(),
    MyAccountRoute(),
    ManageUsersRoute(),
    ExportEntitiesSelectionRoute(),
    AdvancedSearchRoute(),
  ];

  static final Map<String, AppRoute? Function(String? id)> _screenForPath = {
    for (final screen in _screensWithoutData) screen.path: (_) => screen,
    '/': (_) => AppRoute.home,
    '/view_person': (id) => id == null ? null : ViewPersonRoute(id: id),
    '/view_area': (id) => id == null ? null : ViewAreaRoute(id: id),
    '/view_service': (id) => id == null ? null : ViewServiceRoute(id: id),
    '/view_group': (id) => id == null ? null : ViewGroupRoute(id: id),
    '/view_class': (id) => id == null ? null : ViewClassRoute(id: id),
    '/view_family': (id) => id == null ? null : ViewFamilyRoute(id: id),
    '/view_street': (id) => id == null ? null : ViewStreetRoute(id: id),
    '/view_store': (id) => id == null ? null : ViewStoreRoute(id: id),
    '/view_user': (id) => id == null ? null : ViewUserRoute(uid: id),
    '/edit_person': (id) =>
        id == null ? const EditPersonRoute() : ViewPersonRoute(id: id),
    '/edit_area': (id) =>
        id == null ? const EditAreaRoute() : ViewAreaRoute(id: id),
    '/edit_service': (id) =>
        id == null ? const EditServiceRoute() : ViewServiceRoute(id: id),
    '/edit_group': (id) =>
        id == null ? const EditGroupRoute() : ViewGroupRoute(id: id),
    '/edit_class': (id) =>
        id == null ? const EditClassRoute() : ViewClassRoute(id: id),
    '/edit_family': (id) =>
        id == null ? const EditFamilyRoute() : ViewFamilyRoute(id: id),
    '/edit_street': (id) =>
        id == null ? const EditStreetRoute() : ViewStreetRoute(id: id),
    '/edit_store': (id) =>
        id == null ? const EditStoreRoute() : ViewStoreRoute(id: id),
    '/edit_user': (id) => id == null
        ? const EditUserRoute(intent: CreateUser())
        : ViewUserRoute(uid: id),
    '/person_analysis': (id) =>
        id == null ? AppRoute.home : ViewPersonRoute(id: id),
    '/user_analysis': (id) =>
        id == null ? AppRoute.home : ViewUserRoute(uid: id),
    '/meetings_analysis': (_) => AppRoute.home,
    '/record_attendance': (_) => AppRoute.home,
  };

  const AppRouteUrlCodec();

  @override
  Uri encode(List<AppRoute> stack) {
    final top = stack.last;

    return Uri(
      path: top.path,
      queryParameters: top.urlParameters.isEmpty ? null : top.urlParameters,
    );
  }

  @override
  List<AppRoute> decode(Uri uri) {
    final Map<String, String> params;
    try {
      params = uri.queryParameters;
    } on FormatException {
      return _reportNotFound(uri).breadcrumbs;
    }

    final screen = switch (uri.path) {
      '/update_user_spirit_data' => const UpdateUserSpiritDataRoute(),
      '/biometrics_auth' => BiometricsAuthRoute(
        next: switch (params['next']) {
          final nextPath? => decode(Uri(path: nextPath)).last,
          null => null,
        },
      ),
      final path => _screenForPath[path]?.call(params['id']),
    };

    return (screen ?? _reportNotFound(uri)).breadcrumbs;
  }

  NotFoundRoute _reportNotFound(Uri uri) {
    if (kReleaseMode) {
      unawaited(
        LoggingService.I.error(LogRecord(error: RouteNotFoundException(uri))),
      );
    }

    return NotFoundRoute(uri);
  }
}
