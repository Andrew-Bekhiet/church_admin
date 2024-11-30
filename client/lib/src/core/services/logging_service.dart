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
    FlutterError.onError = onFlutterError;
    ErrorWidget.builder = errorWidgetBuilder;
  }

  Future<void> onFlutterError(FlutterErrorDetails flutterError) async {
    await reportError(flutterError, stackTrace: flutterError.stack);
  }

  Widget errorWidgetBuilder(FlutterErrorDetails error) {
    if (kReleaseMode) onFlutterError(error);

    return Material(
      type: MaterialType.card,
      child: Center(
        child: Text(
          'حدث خطأ:\n' + error.summary.toString(),
        ),
      ),
    );
  }

  Future<void> reportError(
    dynamic error, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? hints,
    StackTrace? stackTrace,
  }) async {
    await Sentry.captureException(
      error,
      stackTrace: stackTrace,
      hint: hints != null ? Hint.withMap(hints) : null,
      withScope: (scope) {
        _maybeConfigureScopeUser(scope);

        _maybeConfigureScopeData(scope, data);
      },
    );
  }

  void _maybeConfigureScopeUser(Scope scope) {
    if (AuthService.I.isSignedIn) {
      final currentUser = AuthService.I.currentUser!;

      scope.setUser(
        SentryUser(
          id: currentUser.uid,
          email: currentUser.email,
          name: currentUser.name,
          data: currentUser.toJson().map(
                (key, value) => MapEntry(
                  key,
                  value is Set ? value.toList() : value,
                ),
              ),
        ),
      );
    }
  }

  void _maybeConfigureScopeData(Scope scope, Map<String, dynamic>? data) {
    if (data != null) {
      scope.setContexts('Data', data);
    }
  }

  Future<void> reportFlutterError(
    FlutterErrorDetails flutterError, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? hints,
  }) {
    return reportError(
      flutterError.exception,
      data: data,
      hints: hints,
      stackTrace: flutterError.stack,
    );
  }

  Future<void> showErrorDialogAndReport(
    BuildContext context,
    Object error, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? hints,
    StackTrace? stackTrace,
  }) {
    showDialog(
      context: context,
      builder: (context) => CAErrorDialog(exception: error),
    );

    return reportError(
      error,
      data: data,
      hints: hints,
      stackTrace: stackTrace,
    );
  }
}
