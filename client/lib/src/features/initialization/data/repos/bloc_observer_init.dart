import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverInit implements Initializer {
  const BlocObserverInit();

  @override
  Future<void> initialize() async {
    Bloc.observer = MultiBlocObserver(
      observers: [
        UserSettingsService.I,
        NotificationsService.I,
      ],
    );
  }
}
