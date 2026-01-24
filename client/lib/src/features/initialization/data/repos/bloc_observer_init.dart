import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide MultiBlocObserver;

class BlocObserverInit implements Initializer {
  const BlocObserverInit();

  @override
  Future<void> initialize() async {
    final multiBlocObserver = MultiBlocObserver();

    // Must be set before initializing any bloc
    Bloc.observer = multiBlocObserver;

    multiBlocObserver
      ..addObserver(LoggingService.I)
      ..addObserver(UserSettingsService.I)
      ..addObserver(NotificationsService.I);
  }
}
