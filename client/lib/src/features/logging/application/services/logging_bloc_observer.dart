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

    switch (AuthIdentityChange.between(
      transition.currentState,
      transition.nextState,
    )) {
      case AuthIdentityIdentified(
        :final hasuraUserId,
        :final authUser,
        :final userData,
      ):
        await loggingService.identify(
          LoggingUser(
            id: hasuraUserId,
            firebaseUid: authUser.uid,
            emailVerified: authUser.emailVerified,
            claims: authUser.filteredClaims,
            permissions: [...?userData?.permissions.map((p) => p.name)],
            adminOn: [...?userData?.adminOn?.map((a) => a.toJson())],
            email: authUser.email,
            name: userData?.name,
          ),
        );

      case AuthIdentityForgotten():
        await loggingService.identify(null);

      case AuthIdentityUnchanged():
        return;
    }
  }
}
