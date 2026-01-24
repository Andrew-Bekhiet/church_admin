import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

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
  late final StreamSubscription<void> _localAuthListener;

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
      floatingActionButton: HomeFloatingActionButton(homeBloc: homeBloc),
      bottomNavigationBar: HomeBottomNavBar(homeBloc: homeBloc),
      extendBody: true,
    );
  }

  void _listenToLocalAuth() {
    final overlay = Overlay.of(context);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => !_authEntry.mounted ? overlay.insert(_authEntry) : null,
    );

    _localAuthListener = LocalAuthService.I.refreshUIStream.listen(
      (_) {
        if (LocalAuthService.I.shouldAuthenticate && !_authEntry.mounted) {
          overlay.insert(_authEntry);
        } else if (!LocalAuthService.I.shouldAuthenticate &&
            _authEntry.mounted) {
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

  @override
  void dispose() {
    _appLifecycleListener.dispose();

    unawaited(homeBloc.close());
    unawaited(_localAuthListener.cancel());

    super.dispose();
  }
}
