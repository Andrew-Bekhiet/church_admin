import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

import '../../fakes/recording_posthog.dart';

void main() {
  group('PostHogClient', () {
    const firstUserId = 'user-1';
    const secondUserId = 'user-2';

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

    test('a failed setup is retried by the next caller', () async {
      final config = PostHogConfig('token');
      sdk.setupFailure = StateError('setup failed');

      await expectLater(
        client.setupUnlessAlreadySetUp(config),
        throwsA(sdk.setupFailure),
      );
      sdk.setupFailure = null;
      await client.setupUnlessAlreadySetUp(config);
      await client.setupUnlessAlreadySetUp(config);

      expect(sdk.setups, [same(config), same(config)]);
    });

    test(
      'identifying the same user again only updates their properties',
      () async {
        await client.identifyOrUpdateProperties(
          userId: firstUserId,
          properties: {'permissions': 'a'},
        );
        await client.identifyOrUpdateProperties(
          userId: firstUserId,
          properties: {'adminOn': 'b'},
        );

        expect(sdk.identifiedUserIds, [firstUserId]);
        expect(sdk.personPropertyUpdates, [
          {'adminOn': 'b'},
        ]);
      },
    );

    test('a different user is identified anew', () async {
      await client.identifyOrUpdateProperties(
        userId: firstUserId,
        properties: {},
      );
      await client.identifyOrUpdateProperties(
        userId: secondUserId,
        properties: {},
      );

      expect(sdk.identifiedUserIds, [firstUserId, secondUserId]);
    });

    test('signing out twice resets the SDK once', () async {
      await client.identifyOrUpdateProperties(
        userId: firstUserId,
        properties: {},
      );

      await client.resetUnlessAnonymous();
      await client.resetUnlessAnonymous();

      expect(sdk.resetCount, 1);
    });

    test('the same user is identified again after a reset', () async {
      await client.identifyOrUpdateProperties(
        userId: firstUserId,
        properties: {},
      );
      await client.resetUnlessAnonymous();
      await client.identifyOrUpdateProperties(
        userId: firstUserId,
        properties: {},
      );

      expect(sdk.identifiedUserIds, [firstUserId, firstUserId]);
    });
  });
}
