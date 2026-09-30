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

  late final AppLifecycleListener _appLifecycleListener;

  @override
  void initState() {
    super.initState();

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

    super.dispose();
  }

  void _onAppLifecycleStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed
          when !LocalAuthService.I.shouldAuthenticate:
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
