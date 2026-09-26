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

  final _authEntry = OverlayEntry(
    builder: (context) => const AuthenticateScreen(),
    opaque: true,
  );
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
    return Scaffold(
      drawer: HomeDrawer(homeBloc: homeBloc),
      appBar: HomeAppBar(homeBloc: homeBloc),
      body: HomeBody(homeBloc: homeBloc),
      floatingActionButton: HomeFAB(homeBloc: homeBloc),
      bottomNavigationBar: HomeBottomNavBar(homeBloc: homeBloc),
      extendBody: true,
    );
  }

  @override
  void dispose() {
    _appLifecycleListener.dispose();

    unawaited(_localAuthListener.cancel());

    super.dispose();
  }

  void _listenToLocalAuth() {
    final overlay = Overlay.of(context);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => !_authEntry.mounted ? overlay.insert(_authEntry) : null,
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

            if (mustAuthenticate && !_authEntry.mounted) {
              overlay.insert(_authEntry);
            } else if (!mustAuthenticate && _authEntry.mounted) {
              _authEntry.remove();
            }
          },
        );
  }

  void _onAppLifecycleStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed when !_authEntry.mounted:
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
