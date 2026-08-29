import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoggingBlocObserver extends BlocObserver {
  final LoggingService loggingService;

  LoggingBlocObserver(this.loggingService);

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);

    unawaited(
      loggingService.exception(
        LogRecord(
          moduleName: bloc.runtimeType.toString(),
          error: error,
          stackTrace: stackTrace,
        ),
      ),
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    unawaited(
      loggingService.config(
        LogRecord(
          moduleName: bloc.runtimeType.toString(),
          eventName: event.runtimeType.toString(),
          data: {'event': event.toString()},
        ),
      ),
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);

    unawaited(_maybeIdentifyUser(transition));

    final event = transition.event;
    final currentState = transition.currentState;
    final nextState = transition.nextState;

    unawaited(
      loggingService.info(
        LogRecord(
          moduleName: bloc.runtimeType.toString(),
          eventName: event.runtimeType.toString(),
          data: {
            'event': event.toString(),
            'previousState': currentState.toString(),
            'currentState': nextState.toString(),
          },
        ),
      ),
    );
  }

  Future<void> _maybeIdentifyUser(Transition transition) async {
    if (transition is! Transition<AuthEvent, AuthState>) {
      return;
    }

    final nextState = transition.nextState.unwrapped;
    final currentState = transition.currentState.unwrapped;

    final loggingUser = switch ((currentState, nextState)) {
      (_, AuthAuthenticated(:final authUser, :final userData))
          when currentState is! AuthAuthenticated =>
        LoggingUser(
          id: authUser.uid,
          email: authUser.email,
          name: userData?.name,
          properties: {
            'emailVerified': authUser.emailVerified,
            'claims': authUser.filteredClaims,
            'isMultiFactorEnabled': authUser.isMultiFactorEnabled,
            'permissions': userData?.permissions.toList(),
            'adminOn': userData?.adminOn?.map((a) => a.toJson()).toList(),
          },
        ),
      (AuthAuthenticated(), _) when nextState is! AuthAuthenticated => null,
      _ => false,
    };

    if (loggingUser is LoggingUser?) {
      await loggingService.identify(loggingUser);
    }
  }
}
