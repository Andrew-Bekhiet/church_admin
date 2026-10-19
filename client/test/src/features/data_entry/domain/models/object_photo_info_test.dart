import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_backend.dart';

void main() {
  const subject = Enum_PhotoSubject.PERSONS;
  const id = 'person-1';
  const info = ObjectPhotoInfo(subject, id);
  const linkUrl = 'https://api.example.com/api/files/token/photo';
  final expiresAt = DateTime.utc(2030, 5, 1, 12).toLocal();

  late List<Json> asked;

  void serveLinks() {
    asked = [];
    final backend = FakeAshBackend(
      [],
      actions: {
        for (final action in ['photoDownloadUrl', 'requestPhotoUpload'])
          action: (variables) {
            asked.add(variables);

            return AshResponses.photoLink(linkUrl, expiresAt);
          },
        'deletePhoto': (variables) {
          asked.add(variables);

          return true;
        },
      },
    );
    addTearDown(backend.dispose);
    initGlobalProviderContainer([
      databaseServiceProvider.overrideWithValue(backend.db),
    ]);
  }

  tearDown(resetGlobalProviderContainer);

  group('ObjectPhotoInfo', () {
    test('the cache key is the lower case subject and the id', () {
      expect(info.cacheKey, 'persons/$id');
    });

    test('infos of one photo and update time are equal', () {
      final updatedAt = DateTime.now();

      expect(
        ObjectPhotoInfo(subject, id, lastUpdatedTime: updatedAt),
        ObjectPhotoInfo(subject, id, lastUpdatedTime: updatedAt),
      );
    });

    test(
      'the download link is the one the server issues for the photo',
      () async {
        serveLinks();

        expect(
          await info.getDownloadLink(),
          PhotoLink(url: linkUrl, expiresAt: expiresAt),
        );
        expect(asked.single, {'subject': subject.toJson(), 'id': id});
      },
    );

    test(
      'the upload url is requested for the content type being uploaded',
      () async {
        serveLinks();

        expect(await info.getUploadUrl(contentType: 'image/png'), linkUrl);
        expect(asked.single, {
          'subject': subject.toJson(),
          'id': id,
          'contentType': 'image/png',
        });
      },
    );

    test('deleting asks the server to delete the photo', () async {
      serveLinks();

      await info.delete();

      expect(asked.single, {'subject': subject.toJson(), 'id': id});
    });
  });
}
