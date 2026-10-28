import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnalyticsBlocObserver extends BlocObserver {
  final AnalyticsService analyticsService;

  AnalyticsBlocObserver(this.analyticsService);

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    unawaited(_maybeIdentifyUser(transition));
  }

  Future<void> _maybeIdentifyUser(Transition transition) async {
    if (transition is! Transition<AuthEvent, AuthState>) {
      return;
    }

    switch (AuthIdentityChange.between(
      transition.currentState,
      transition.nextState,
    )) {
      case AuthIdentityIdentified(
        :final hasuraUserId,
        :final authUser,
        :final userData,
      ):
        await analyticsService.identify(
          AnalyticsUser(
            id: hasuraUserId,
            email: authUser.email,
            name: userData?.name,
            permissions: [...?userData?.permissions.map((p) => p.name)],
            adminOn: [...?userData?.adminOn?.map((a) => a.toJson())],
          ),
        );

      case AuthIdentityForgotten():
        await analyticsService.identify(null);

      case AuthIdentityUnchanged():
        return;
    }
  }
}
