import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/ash_responses.dart';
import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';
import '../../../../../fakes/recording_http_client_adapter.dart';

void main() {
  const personId = 'person-1';
  const linkUrl = 'https://api.example.com/api/files/token/photo';
  final expiresAt = DateTime.utc(2030, 5, 1, 12).toLocal();
  final link = PhotoLink(url: linkUrl, expiresAt: expiresAt);

  late FakeAshBackend backend;

  FakeAshBackend serving(
    Map<String, FakeAshAction> actions, {
    Dio? dio,
  }) {
    backend = FakeAshBackend([], actions: actions, dio: dio);
    addTearDown(backend.dispose);

    return backend;
  }

  group('PhotosDAO', () {
    test(
      'an upload link is requested for the subject, id and content type',
      () async {
        Json? asked;
        serving({
          'requestPhotoUpload': (variables) {
            asked = variables;

            return AshResponses.photoLink(linkUrl, expiresAt);
          },
        });

        final answered = await backend.db.photos.requestPhotoUpload(
          subject: Enum_PhotoSubject.PERSONS,
          id: personId,
          contentType: 'image/png',
        );

        expect(answered, link);
        expect(asked, {
          'subject': Enum_PhotoSubject.PERSONS.toJson(),
          'id': personId,
          'contentType': 'image/png',
        });
      },
    );

    test('a download link is requested for the subject and id', () async {
      Json? asked;
      serving({
        'photoDownloadUrl': (variables) {
          asked = variables;

          return AshResponses.photoLink(linkUrl, expiresAt);
        },
      });

      final answered = await backend.db.photos.photoDownloadUrl(
        subject: Enum_PhotoSubject.STREETS,
        id: personId,
      );

      expect(answered, link);
      expect(asked, {
        'subject': Enum_PhotoSubject.STREETS.toJson(),
        'id': personId,
      });
    });

    test(
      'a download link names the content type when one is asked for',
      () async {
        Json? asked;
        serving({
          'photoDownloadUrl': (variables) {
            asked = variables;

            return AshResponses.photoLink(linkUrl, expiresAt);
          },
        });

        await backend.db.photos.photoDownloadUrl(
          subject: Enum_PhotoSubject.PERSONS,
          id: personId,
          contentType: 'image/webp',
        );

        expect(asked?['contentType'], 'image/webp');
      },
    );

    test(
      'concurrent requests for one photo link share a single request',
      () async {
        var requests = 0;
        serving({
          'photoDownloadUrl': (_) {
            requests++;

            return AshResponses.photoLink(linkUrl, expiresAt);
          },
        });
        final photos = backend.db.photos;

        final answers = await Future.wait([
          for (var i = 0; i < 3; i++)
            photos.photoDownloadUrl(
              subject: Enum_PhotoSubject.PERSONS,
              id: personId,
            ),
        ]);

        expect(answers, everyElement(link));
        expect(requests, 1);
      },
    );

    test(
      'a photo link requested again after it arrived is fetched anew',
      () async {
        var requests = 0;
        serving({
          'photoDownloadUrl': (_) {
            requests++;

            return AshResponses.photoLink(linkUrl, expiresAt);
          },
        });
        final photos = backend.db.photos;

        await photos.photoDownloadUrl(
          subject: Enum_PhotoSubject.PERSONS,
          id: personId,
        );
        await photos.photoDownloadUrl(
          subject: Enum_PhotoSubject.PERSONS,
          id: personId,
        );

        expect(requests, 2);
      },
    );

    test('a failed photo link request is not remembered', () async {
      var attempt = 0;
      serving({
        'photoDownloadUrl': (_) {
          if (++attempt == 1) throw const FakeAshRejection('not_found');

          return AshResponses.photoLink(linkUrl, expiresAt);
        },
      });
      final photos = backend.db.photos;

      await expectLater(
        photos.photoDownloadUrl(
          subject: Enum_PhotoSubject.PERSONS,
          id: personId,
        ),
        throwsA(isA<BackendNotFoundException>()),
      );
      expect(
        await photos.photoDownloadUrl(
          subject: Enum_PhotoSubject.PERSONS,
          id: personId,
        ),
        link,
      );
    });

    test('deleting a photo names its subject and id', () async {
      Json? asked;
      serving({
        'deletePhoto': (variables) {
          asked = variables;

          return true;
        },
      });

      await backend.db.photos.deletePhoto(
        subject: Enum_PhotoSubject.FAMILIES,
        id: personId,
      );

      expect(asked, {
        'subject': Enum_PhotoSubject.FAMILIES.toJson(),
        'id': personId,
      });
    });

    test(
      'an upload puts the file to the link with its content type and length',
      () async {
        final adapter = RecordingHttpClientAdapter();
        serving({}, dio: Dio()..httpClientAdapter = adapter);
        const file = [1, 2, 3];

        await backend.db.photos.uploadPhoto(
          url: linkUrl,
          fileStream: Stream.value(file),
          contentType: 'image/png',
          fileLength: file.length,
        );

        final upload = adapter.requests.single;
        expect(upload.method, 'PUT');
        expect(upload.uri, Uri.parse(linkUrl));
        expect(upload.headers['content-length'], file.length);
        expect(upload.headers['content-type'], contains('image/png'));
        expect(upload.body, file);
      },
    );
  });
}
