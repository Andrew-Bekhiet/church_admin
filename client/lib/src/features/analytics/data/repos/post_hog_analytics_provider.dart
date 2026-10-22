import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class PostHogAnalyticsProvider implements AnalyticsProvider {
  static bool _leavesScreenViewsToAppRouteScreenObserver(Route<dynamic>? _) =>
      false;

  final PostHogClient _postHogClient;

  @override
  late final List<NavigatorObserver> navigatorObservers = [
    PosthogObserver(routeFilter: _leavesScreenViewsToAppRouteScreenObserver),
  ];

  Posthog get _postHog => _postHogClient.sdk;

  PostHogAnalyticsProvider(this._postHogClient);

  @override
  Future<void> initialize() async {
    final secretsService = globalProviderContainer.read(
      secretsServiceProvider,
    );

    await _postHogClient.setupUnlessAlreadySetUp(
      PostHogConfig(secretsService.postHogToken)
        ..host = secretsService.postHogHost,
    );
  }

  @override
  Future<void> identify(AnalyticsUser? user) async {
    switch (user) {
      case null:
        await _postHogClient.resetUnlessAnonymous();

      case final user:
        await _postHogClient.identifyOrUpdateProperties(
          userId: user.id,
          properties: PostHogClient.withoutNulls(user.properties),
        );
    }
  }

  @override
  Future<void> track(AnalyticsEvent event) async {
    await _postHog.capture(
      eventName: event.name,
      properties: PostHogClient.withoutNulls(event.properties),
    );
  }

  @override
  Future<void> trackScreen(String screenName, Json properties) async {
    await _postHog.screen(
      screenName: screenName,
      properties: PostHogClient.withoutNulls(properties),
    );
  }
}
