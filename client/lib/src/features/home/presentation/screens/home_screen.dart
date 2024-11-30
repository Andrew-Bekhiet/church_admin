import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final HomeController _controller = HomeController(this);

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
    _appLifecycleListener =
        AppLifecycleListener(onStateChange: _onAppLifecycleStateChanged);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeMode>(
      initialData: HomeMode.unspecified,
      stream: _controller.modeStream,
      builder: (context, modeSnapshot) {
        if (modeSnapshot.data == HomeMode.unspecified) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('اختيار الخدمة'),
            ),
            body: HomeModeSelector(onModeChanged: _controller.onModeChanged),
          );
        }

        return Scaffold(
          drawer: HomeDrawer(homeController: _controller),
          appBar: HomeAppBar(homeController: _controller),
          body: HomeBody(homeController: _controller),
          floatingActionButton:
              HomeFloatingActionButton(homeController: _controller),
          bottomNavigationBar: HomeBottomNavBar(homeController: _controller),
        );
      },
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
        } else if (!LocalAuthService.I.shouldAuthenticate) {
          _authEntry.remove();
        }
      },
    );
  }

  void _onAppLifecycleStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed when !_authEntry.mounted:
        UserPersistenceService.I.recordActive();

      case AppLifecycleState.resumed:
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        UserPersistenceService.I.recordLastSeen();
    }
  }

  @override
  void dispose() {
    _appLifecycleListener.dispose();

    _controller.dispose();
    _localAuthListener.cancel();

    super.dispose();
  }
}
