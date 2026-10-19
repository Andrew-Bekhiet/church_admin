import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import 'user_fixtures.dart';

void main() {
  final registered = UserFixtures.mina.fcmTokens.single;

  FakeAshBackend backendServing() {
    final backend = FakeAshBackend(
      [],
      mutations: {
        'registerFcmToken': (_) => {
          ...registered.toJson(),
          '__typename': 'DeviceToken',
          'id': '${registered.uid}~${registered.token}',
        },
      },
    );
    addTearDown(backend.dispose);

    return backend;
  }

  test('a registered token is sent as the only input', () async {
    final backend = backendServing();

    await backend.db.fcmTokens.registerToken(token: registered.token);

    expect(backend.server.sentTo('registerFcmToken').single.variables, {
      'input': {'token': registered.token},
    });
  });

  test('the registered token is the one the server answers with', () async {
    final backend = backendServing();

    final answered = await backend.db.fcmTokens.registerToken(
      token: registered.token,
    );

    expect(answered, registered);
  });
}
