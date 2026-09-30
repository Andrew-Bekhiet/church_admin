import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';

class LocalAuthLock extends StatefulWidget {
  final GoRouter router;
  final String protectedLocation;
  final Widget child;

  const LocalAuthLock({
    required this.router,
    required this.protectedLocation,
    required this.child,
    super.key,
  });

  @override
  State<LocalAuthLock> createState() => _LocalAuthLockState();
}

abstract final class LocalAuthLockKeys {
  static const Key lock = ValueKey('Local Auth Lock Key');
}

class _LocalAuthLockState extends State<LocalAuthLock>
    with WidgetsBindingObserver {
  final _lockNavigatorKey = GlobalKey<NavigatorState>();
  late final StreamSubscription<Object?> _authChangesListener;
  late bool _isLocked = _mustLock();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    widget.router.routerDelegate.addListener(_updateLock);
    _authChangesListener = Rx.merge<Object?>([
      AuthBloc.I.isSignedInStream,
      LocalAuthService.I.refreshUIStream,
    ]).listen((_) => _updateLock());
  }

  @override
  void didUpdateWidget(LocalAuthLock oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.router != widget.router) {
      oldWidget.router.routerDelegate.removeListener(_updateLock);
      widget.router.routerDelegate.addListener(_updateLock);
    }

    _isLocked = _mustLock();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        widget.child,
        if (_isLocked)
          HeroControllerScope.none(
            key: LocalAuthLockKeys.lock,
            child: Navigator(
              key: _lockNavigatorKey,
              onGenerateRoute: (_) => MaterialPageRoute<void>(
                builder: (_) => const BiometricsAuthScreen(),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Future<bool> didPopRoute() async {
    if (!_isLocked) return false;

    final handledByLock =
        await _lockNavigatorKey.currentState?.maybePop() ?? false;
    if (!handledByLock) unawaited(SystemNavigator.pop());

    return true;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    widget.router.routerDelegate.removeListener(_updateLock);
    unawaited(_authChangesListener.cancel());
    super.dispose();
  }

  void _updateLock() {
    if (!mounted) return;

    if (SchedulerBinding.instance.schedulerPhase ==
        SchedulerPhase.persistentCallbacks) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _updateLock());

      return;
    }

    final mustLock = _mustLock();
    if (mustLock == _isLocked) return;

    setState(() => _isLocked = mustLock);
  }

  bool _mustLock() {
    final isProtectedLocationOpen =
        widget
            .router
            .routerDelegate
            .currentConfiguration
            .matches
            .firstOrNull
            ?.matchedLocation ==
        widget.protectedLocation;

    return isProtectedLocationOpen &&
        AuthBloc.I.isSignedIn &&
        LocalAuthService.I.shouldAuthenticate;
  }
}
