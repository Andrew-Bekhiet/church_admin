import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final homeBloc = HomeBloc.I;

  final _authOverlayController = OverlayPortalController();
  late final StreamSubscription<bool> _localAuthListener;

  late final AppLifecycleListener _appLifecycleListener;

  @override
  void initState() {
    super.initState();

    _listenToLocalAuth();
    _appLifecycleListener = AppLifecycleListener(
      onStateChange: _onAppLifecycleStateChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
      controller: _authOverlayController,
      overlayChildBuilder: (context) => const BiometricsAuthScreen(),
      child: Scaffold(
        drawer: HomeDrawer(homeBloc: homeBloc),
        appBar: HomeAppBar(homeBloc: homeBloc),
        body: HomeBody(homeBloc: homeBloc),
        floatingActionButton: HomeFAB(homeBloc: homeBloc),
        bottomNavigationBar: HomeBottomNavBar(homeBloc: homeBloc),
        extendBody: true,
      ),
    );
  }

  @override
  void dispose() {
    _appLifecycleListener.dispose();

    unawaited(_localAuthListener.cancel());

    super.dispose();
  }

  void _listenToLocalAuth() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => !_authOverlayController.isShowing
          ? _authOverlayController.show()
          : null,
    );

    _localAuthListener =
        Rx.combineLatest2<bool, void, bool>(
          AuthBloc.I.isSignedInStream,
          LocalAuthService.I.refreshUIStream.startWith(null),
          (isSignedIn, _) => isSignedIn,
        ).listen(
          (isSignedIn) {
            final mustAuthenticate =
                isSignedIn && LocalAuthService.I.shouldAuthenticate;

            if (mustAuthenticate && !_authOverlayController.isShowing) {
              _authOverlayController.show();
            } else if (!mustAuthenticate && _authOverlayController.isShowing) {
              _authOverlayController.hide();
            }
          },
        );
  }

  void _onAppLifecycleStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed when !_authOverlayController.isShowing:
        unawaited(UserPersistenceService.I.recordActive());

      case AppLifecycleState.resumed:
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        unawaited(UserPersistenceService.I.recordLastSeen());
    }
  }
}
