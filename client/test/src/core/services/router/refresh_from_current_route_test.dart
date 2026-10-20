import 'dart:async';

import 'package:church_admin/src/core/services/router/refresh_from_current_route.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  testWidgets(
    'a refresh in the frame a page is popped does not bring the page back',
    (tester) async {
      final changes = ChangeNotifier();
      addTearDown(changes.dispose);
      final router = GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (_, _) => const Text('home'),
            routes: [
              GoRoute(
                path: 'details',
                builder: (_, _) => const Text('details'),
              ),
            ],
          ),
        ],
      ).refreshingFromCurrentRouteOn(changes);
      addTearDown(router.dispose);
      await tester.pumpWidget(MaterialApp.router(routerConfig: router));
      unawaited(router.push<void>('/details'));
      await tester.pumpAndSettle();

      tester.state<NavigatorState>(find.byType(Navigator)).pop();
      changes.notifyListeners();
      await tester.pumpAndSettle();

      expect(router.routerDelegate.currentConfiguration.uri.path, '/');
      expect(find.text('details'), findsNothing);
      expect(find.text('home'), findsOneWidget);
    },
  );

  testWidgets('a refresh re-runs the redirects of the current page', (
    tester,
  ) async {
    final changes = ChangeNotifier();
    addTearDown(changes.dispose);
    var isLocked = false;
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (_, _) => const Text('home'),
          redirect: (_, _) => isLocked ? '/locked' : null,
        ),
        GoRoute(path: '/locked', builder: (_, _) => const Text('locked')),
      ],
    ).refreshingFromCurrentRouteOn(changes);
    addTearDown(router.dispose);
    await tester.pumpWidget(MaterialApp.router(routerConfig: router));

    isLocked = true;
    changes.notifyListeners();
    await tester.pumpAndSettle();

    expect(find.text('locked'), findsOneWidget);
  });

  testWidgets(
    'a refresh rebuilds a pushed page so it can leave once it is satisfied',
    (tester) async {
      final changes = ChangeNotifier();
      addTearDown(changes.dispose);
      var isUnlocked = false;
      final router = GoRouter(
        routes: [
          GoRoute(path: '/', builder: (_, _) => const Text('home')),
          GoRoute(
            path: '/protected',
            builder: (_, _) => const Text('protected'),
          ),
          GoRoute(
            path: '/unlock',
            builder: (context, _) {
              if (isUnlocked) {
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) => GoRouter.of(context).go('/protected'),
                );
              }

              return const Text('unlock');
            },
          ),
        ],
      ).refreshingFromCurrentRouteOn(changes);
      addTearDown(router.dispose);
      await tester.pumpWidget(MaterialApp.router(routerConfig: router));
      unawaited(router.push<void>('/unlock'));
      await tester.pumpAndSettle();

      isUnlocked = true;
      changes.notifyListeners();
      await tester.pumpAndSettle();

      expect(find.text('protected'), findsOneWidget);
    },
  );
}
