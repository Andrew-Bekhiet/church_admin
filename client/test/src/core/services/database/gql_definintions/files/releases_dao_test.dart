import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/ash_responses.dart';
import '../../../../../fakes/fake_ash_backend.dart';

void main() {
  const url = 'https://api.example.com/api/files/token/church-admin-v1.2.3.apk';
  final expiresAt = DateTime.utc(2030, 5, 1, 12).toLocal();

  for (final platform in Enum_AppPlatform.values.where(
    (platform) => platform != Enum_AppPlatform.$unknown,
  )) {
    test(
      'the ${platform.name} download link carries its release version',
      () async {
        Json? asked;
        final backend = FakeAshBackend(
          [],
          actions: {
            'appDownloadLink': (variables) {
              asked = variables;

              return AshResponses.appDownloadLink(
                url: url,
                version: '1.2.3',
                expiresAt: expiresAt,
              );
            },
          },
        );
        addTearDown(backend.dispose);

        final link = await backend.db.releases.appDownloadLink(
          platform: platform,
        );

        expect(
          link,
          AppDownloadLink(url: url, version: '1.2.3', expiresAt: expiresAt),
        );
        expect(asked, {'platform': platform.toJson()});
      },
    );
  }
}
