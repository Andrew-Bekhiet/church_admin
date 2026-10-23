import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

import '../../fakes/recording_posthog.dart';

void main() {
  group('PostHogClient', () {
    late RecordingPosthog sdk;
    late PostHogClient client;

    setUp(() {
      sdk = RecordingPosthog();
      client = PostHogClient(sdk);
    });

    test('only the first setup configures the SDK', () async {
      final loggingConfig = PostHogConfig('token');

      await client.setupUnlessAlreadySetUp(loggingConfig);
      await client.setupUnlessAlreadySetUp(PostHogConfig('token'));

      expect(sdk.setups, [same(loggingConfig)]);
    });

    test(
      'identifying the same user again only updates their properties',
      () async {
        await client.identifyOrUpdateProperties(
          userId: 'user-1',
          properties: {'permissions': 'a'},
        );
        await client.identifyOrUpdateProperties(
          userId: 'user-1',
          properties: {'adminOn': 'b'},
        );

        expect(sdk.identifiedUserIds, ['user-1']);
        expect(sdk.personPropertyUpdates, [
          {'adminOn': 'b'},
        ]);
      },
    );

    test('a different user is identified anew', () async {
      await client.identifyOrUpdateProperties(userId: 'user-1', properties: {});
      await client.identifyOrUpdateProperties(userId: 'user-2', properties: {});

      expect(sdk.identifiedUserIds, ['user-1', 'user-2']);
    });

    test('signing out twice resets the SDK once', () async {
      await client.identifyOrUpdateProperties(userId: 'user-1', properties: {});

      await client.resetUnlessAnonymous();
      await client.resetUnlessAnonymous();

      expect(sdk.resetCount, 1);
    });

    test('the same user is identified again after a reset', () async {
      await client.identifyOrUpdateProperties(userId: 'user-1', properties: {});
      await client.resetUnlessAnonymous();
      await client.identifyOrUpdateProperties(userId: 'user-1', properties: {});

      expect(sdk.identifiedUserIds, ['user-1', 'user-1']);
    });
  });
}
