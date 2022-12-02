import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter testRedirectWith({
  String? expectedPath,
  void Function()? whenRedirected,
  String? redirectFromName,
  String? redirectFromPath,
  List<GoRoute> routes = const [],
}) {
  assert((redirectFromPath == null) != (redirectFromPath == null));
  assert((expectedPath == null) == (whenRedirected == null));

  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) =>
            redirectFromPath ??
            ChurchAdminApp.router.routeInformationParser.configuration
                .namedLocation(redirectFromName!),
      ),
      ...routes,
      if (expectedPath != null)
        GoRoute(
          path: expectedPath,
          builder: (context, state) {
            whenRedirected!();
            return const SizedBox();
          },
        ),
    ],
  );
}
