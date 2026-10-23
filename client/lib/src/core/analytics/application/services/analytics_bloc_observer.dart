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

    final nextState = transition.nextState.unwrapped;
    final currentState = transition.currentState.unwrapped;

    final analyticsUser = switch ((currentState, nextState)) {
      (
        _,
        AuthAuthenticated(
          authUser: AuthUser(:final hasuraUserId?) && final authUser,
          :final userData,
        ),
      )
          when currentState is! AuthAuthenticated ||
              currentState.authUser.hasuraUserId != hasuraUserId ||
              currentState.userData != userData =>
        AnalyticsUser(
          id: hasuraUserId,
          email: authUser.email,
          name: userData?.name,
          permissions: [...?userData?.permissions.map((p) => p.name)],
          adminOn: [...?userData?.adminOn?.map((a) => a.toJson())],
        ),
      (AuthAuthenticated(), _) when nextState is! AuthAuthenticated => null,
      _ => false,
    };

    if (analyticsUser is AnalyticsUser?) {
      await analyticsService.identify(analyticsUser);
    }
  }
}
