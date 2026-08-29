import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

abstract interface class LoggingProvider {
  List<NavigatorObserver> get navigatorObservers;

  Future<void> initialize();

  Future<void> identify(LoggingUser? user);

  Future<void> recordStep(LoggingLevel level, String message, Json? data);

  Future<void> captureException(LogRecord record, Json contexts);

  Future<void> log(LoggingLevel level, String message, Json? attributes);
}
