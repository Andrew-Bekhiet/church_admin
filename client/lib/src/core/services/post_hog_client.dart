import 'package:posthog_flutter/posthog_flutter.dart';

class PostHogClient {
  final Posthog sdk;

  Future<void>? _setup;
  String? _identifiedUserId;
  bool _isAnonymous = false;

  PostHogClient(this.sdk);

  Future<void> setupUnlessAlreadySetUp(PostHogConfig config) async {
    final setup = _setup ??= sdk.setup(config);

    try {
      await setup;
    } catch (_) {
      if (identical(_setup, setup)) _setup = null;
      rethrow;
    }
  }

  Future<void> identifyOrUpdateProperties({
    required String userId,
    required Map<String, Object> properties,
  }) async {
    if (_identifiedUserId == userId) {
      await sdk.setPersonProperties(userPropertiesToSet: properties);

      return;
    }

    final previousUserId = _identifiedUserId;
    final wasAnonymous = _isAnonymous;
    _identifiedUserId = userId;
    _isAnonymous = false;

    try {
      await sdk.identify(userId: userId, userProperties: properties);
    } catch (_) {
      _identifiedUserId = previousUserId;
      _isAnonymous = wasAnonymous;
      rethrow;
    }
  }

  Future<void> resetUnlessAnonymous() async {
    if (_isAnonymous) return;

    final previousUserId = _identifiedUserId;
    _identifiedUserId = null;
    _isAnonymous = true;

    try {
      await sdk.reset();
    } catch (_) {
      _identifiedUserId = previousUserId;
      _isAnonymous = false;
      rethrow;
    }
  }
}
