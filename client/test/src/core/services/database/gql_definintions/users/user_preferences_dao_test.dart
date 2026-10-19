import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import 'user_fixtures.dart';

void main() {
  final preferences = UserFixtures.mina.preferences!;

  FakeAshBackend backendServing() {
    final backend = FakeAshBackend(
      [],
      mutations: {
        'updateMyPreferences': (_) => {
          ...preferences.toJson(),
          '__typename': 'UserPreferences',
          'id': preferences.uid,
        },
      },
    );
    addTearDown(backend.dispose);

    return backend;
  }

  Json sentInput(FakeAshBackend backend) =>
      (backend.server.sentTo('updateMyPreferences').single.variables['input']
              as Map)
          .cast<String, dynamic>();

  test('scalar preferences are sent, including one set back to null', () async {
    final backend = backendServing();
    const scalars = {
      'darkTheme': null,
      'greatFeastTheme': false,
      'lastHomeMode': 'churchData',
    };

    await backend.db.userPreferences.updatePreferences(scalars: scalars);

    expect(sentInput(backend), scalars);
  });

  test(
    'a patch with a null value sends the null so the server removes the key',
    () async {
      final backend = backendServing();
      const secondLine = {
        'persons': {'name': 'x'},
        'families': null,
      };

      await backend.db.userPreferences.updatePreferences(
        secondLinePatch: secondLine,
      );

      expect(sentInput(backend), {'secondLinePreferencesPatch': secondLine});
    },
  );

  test(
    'a patch that is not given is left out so the stored map stays',
    () async {
      final backend = backendServing();
      const orderBy = {'persons': <Object>[]};

      await backend.db.userPreferences.updatePreferences(orderByPatch: orderBy);

      expect(sentInput(backend), {'orderByPreferencesPatch': orderBy});
    },
  );

  test('the stored preferences come back', () async {
    final backend = backendServing();

    final stored = await backend.db.userPreferences.updatePreferences(
      scalars: {'darkTheme': true},
    );

    expect(stored, preferences);
  });
}
