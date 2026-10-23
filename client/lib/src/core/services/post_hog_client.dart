import 'package:posthog_flutter/posthog_flutter.dart';

class PostHogClient {
  final Posthog sdk;

  Future<void>? _setup;
  String? _identifiedUserId;
  bool _isAnonymous = false;

  PostHogClient(this.sdk);

  Future<void> setupUnlessAlreadySetUp(PostHogConfig config) =>
      _setup ??= sdk.setup(config);

  Future<void> identifyOrUpdateProperties({
    required String userId,
    required Map<String, Object> properties,
  }) async {
    if (_identifiedUserId == userId) {
      await sdk.setPersonProperties(userPropertiesToSet: properties);

      return;
    }

    _identifiedUserId = userId;
    _isAnonymous = false;
    await sdk.identify(userId: userId, userProperties: properties);
  }

  Future<void> resetUnlessAnonymous() async {
    if (_isAnonymous) return;

    _identifiedUserId = null;
    _isAnonymous = true;
    await sdk.reset();
  }
}
