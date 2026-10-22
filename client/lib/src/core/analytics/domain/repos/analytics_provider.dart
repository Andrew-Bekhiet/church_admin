import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

abstract interface class AnalyticsProvider {
  List<NavigatorObserver> get navigatorObservers;

  Future<void> initialize();

  Future<void> identify(AnalyticsUser? user);

  Future<void> track(AnalyticsEvent event);

  Future<void> trackScreen(String screenName, Json properties);
}
