import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class LoggingService {
  static LoggingService get I =>
      globalProviderContainer.read(loggingServiceProvider);

  final NavigatorObserver navigatorObserver = SentryNavigatorObserver();

  LoggingService() {
    _init();
  }

  void _init() {
    FlutterError.onError = (flutterError) {
      Sentry.captureException(
        flutterError.exception,
        stackTrace: flutterError.stack,
        hint: flutterError,
      );
    };

    ErrorWidget.builder = (error) {
      if (kReleaseMode) {
        Sentry.captureException(
          error.exception,
          stackTrace: error.stack,
          hint: error,
        );
      }
      return Material(
        type: MaterialType.card,
        child: Center(
          child: Text(
            'حدث خطأ:\n' + error.summary.toString(),
          ),
        ),
      );
    };
  }

  FutureOr<void> Function(FutureOr<void> Function(Scope)) get configureScope =>
      Sentry.configureScope;

  Future<void> log(String msg) async {
    await Sentry.captureMessage(msg);
  }

  Future<void> reportError(
    Exception error, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? extras,
    StackTrace? stackTrace,
  }) async {
    await Sentry.captureException(
      error,
      stackTrace: stackTrace,
      withScope: (scope) {
        final currentUser = AuthService.I.currentUser;

        scope
          ..setUser(
            SentryUser(
              data: currentUser?.toJson().map(
                    (key, value) => MapEntry(
                      key,
                      value is Set ? value.toList() : value,
                    ),
                  ),
              email: currentUser?.email,
              id: currentUser?.uid,
            ),
          )
          ..setContexts('Data', data);

        if (extras != null) {
          for (final entry in extras.entries) {
            scope.setExtra(entry.key, entry.value);
          }
        }
      },
    );
  }

  Future<void> reportFlutterError(
    FlutterErrorDetails flutterError, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? extras,
  }) async {
    await Sentry.captureException(
      flutterError,
      stackTrace: flutterError.stack,
      hint: flutterError.toString(),
      withScope: (scope) {
        final currentUser = AuthService.I.currentUser;
        scope
          ..setUser(
            SentryUser(
              data: currentUser?.toJson().map(
                    (key, value) => MapEntry(
                      key,
                      value is Set ? value.toList() : value,
                    ),
                  ),
              email: currentUser?.email,
              id: currentUser?.uid,
            ),
          )
          ..setContexts('Data', data);

        if (extras != null) {
          for (final entry in extras.entries) {
            scope.setExtra(entry.key, entry.value);
          }
        }
      },
    );
  }
}
