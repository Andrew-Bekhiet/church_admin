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
  final uploadLink = PhotoUploadLink(
    url: 'https://storage.example.com/uploads/persons/person-1/x',
    expiresAt: expiresAt,
    headers: const {'content-type': 'image/png'},
    confirmationToken: 'confirmation-token',
  );

  late List<Json> asked;

  void serveLinks() {
    asked = [];
    final backend = FakeAshBackend(
      [],
      actions: {
        'photoDownloadUrl': (variables) {
          asked.add(variables);

          return AshResponses.photoLink(linkUrl, expiresAt);
        },
        'requestPhotoUpload': (variables) {
          asked.add(variables);

          return AshResponses.photoUploadLink(
            url: uploadLink.url,
            expiresAt: expiresAt,
            headers: uploadLink.headers,
            confirmationToken: uploadLink.confirmationToken,
          );
        },
        'confirmPhotoUpload': (variables) {
          asked.add(variables);

          return true;
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
      'the upload link is the one the server issues for the content type',
      () async {
        serveLinks();

        expect(
          await info.requestUploadLink(contentType: 'image/png'),
          uploadLink,
        );
        expect(asked.single, {
          'subject': subject.toJson(),
          'id': id,
          'contentType': 'image/png',
        });
      },
    );

    test('confirming an upload presents the token of its link', () async {
      serveLinks();

      await info.confirmUpload(uploadLink);

      expect(asked.single, {
        'subject': subject.toJson(),
        'id': id,
        'confirmationToken': uploadLink.confirmationToken,
      });
    });

    test('deleting asks the server to delete the photo', () async {
      serveLinks();

      await info.delete();

      expect(asked.single, {'subject': subject.toJson(), 'id': id});
    });
  });
}
