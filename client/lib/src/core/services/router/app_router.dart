import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:kaisel/kaisel.dart';

final KaiselRouterConfig<AppRoute> $appRouter = AppRouter.create();

abstract final class AppRouter {
  static KaiselRouterConfig<AppRoute> create() => KaiselRouterConfig<AppRoute>(
    initial: AppRouteRedirects.resolve([AppRoute.home]).first,
    builder: (context, route) => route.build(context),
    guards: const [AppRouteRedirects.guard],
    reevaluateOn: RouterRefreshStream.I,
    onTransition: _notifyExitedRoutes,
    observers: () => LoggingService.I.navigatorObservers,
  );

  static void _notifyExitedRoutes(List<AppRoute> from, List<AppRoute> to) {
    final exitedRoutes = from.whereNot(to.contains);
    for (final exited in exitedRoutes) {
      if (exited case final ExitAwareRoute exitAware) exitAware.onExit();
    }
  }
}
