import 'package:flutter_test/flutter_test.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class RecordingPosthog extends Fake implements Posthog {
  final List<PostHogConfig> setups = [];
  final List<String> identifiedUserIds = [];
  final List<Map<String, Object>?> personPropertyUpdates = [];
  int resetCount = 0;
  Object? setupFailure;

  @override
  Future<void> setup(PostHogConfig config) async {
    setups.add(config);
    if (setupFailure case final failure?) throw failure;
  }

  @override
  Future<void> identify({
    required String userId,
    Map<String, Object>? userProperties,
    Map<String, Object>? userPropertiesSetOnce,
  }) async => identifiedUserIds.add(userId);

  @override
  Future<void> setPersonProperties({
    Map<String, Object>? userPropertiesToSet,
    Map<String, Object>? userPropertiesToSetOnce,
  }) async => personPropertyUpdates.add(userPropertiesToSet);

  @override
  Future<void> reset() async => resetCount++;
}
