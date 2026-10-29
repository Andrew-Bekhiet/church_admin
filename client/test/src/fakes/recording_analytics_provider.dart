import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';

class RecordedScreen {
  final String name;
  final Json properties;

  const RecordedScreen(this.name, this.properties);
}

class RecordingAnalyticsProvider implements AnalyticsProvider {
  final List<AnalyticsEvent> trackedEvents = [];
  final List<RecordedScreen> trackedScreens = [];
  final List<AnalyticsUser?> identifiedUsers = [];

  Object? failure;

  @override
  List<NavigatorObserver> get navigatorObservers => const [];

  Iterable<E> trackedEventsOf<E extends AnalyticsEvent>() =>
      trackedEvents.whereType<E>();

  @override
  Future<void> initialize() async {}

  @override
  Future<void> identify(AnalyticsUser? user) async => identifiedUsers.add(user);

  @override
  Future<void> track(AnalyticsEvent event) async {
    if (failure case final failure?) throw failure;

    trackedEvents.add(event);
  }

  @override
  Future<void> trackScreen(String screenName, Json properties) async =>
      trackedScreens.add(RecordedScreen(screenName, properties));
}
