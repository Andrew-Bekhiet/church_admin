import 'dart:io';

import 'package:church_admin/church_admin.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_picker/image_picker.dart' show XFile;

import '../../../../fakes/ash_responses.dart';
import '../../../../fakes/fake_ash_backend.dart';
import '../../../../fakes/fake_ash_tables_link.dart';
import '../../../../fakes/recording_http_client_adapter.dart';

void main() {
  const object = _ImageOfPerson();
  const file = [1, 2, 3];
  final uploadLink = PhotoUploadLink(
    url: 'https://storage.example.com/uploads/persons/person-1/x',
    expiresAt: DateTime.utc(2030, 5, 1, 12),
    headers: const {
      'content-type': 'image/png',
      'x-goog-content-length-range': '0,26214400',
    },
    confirmationToken: 'confirmation-token',
  );

  late RecordingHttpClientAdapter storage;
  late List<String> steps;
  late Object? Function(Json) onConfirm;
  late RemotePhotoUploader uploader;

  Future<XFile> pickedPhoto(String fileName) async {
    final directory = await Directory.systemTemp.createTemp('photo_upload');
    addTearDown(() => directory.delete(recursive: true));
    final photo = File('${directory.path}/$fileName');
    await photo.writeAsBytes(file);

    return XFile(photo.path);
  }

  void serveStorage() {
    storage = RecordingHttpClientAdapter();
    steps = [];
    onConfirm = (_) => true;
    final backend = FakeAshBackend(
      [],
      dio: Dio()..httpClientAdapter = storage,
      actions: {
        'requestPhotoUpload': (_) {
          steps.add('link requested');

          return AshResponses.photoUploadLink(
            url: uploadLink.url,
            expiresAt: uploadLink.expiresAt,
            headers: uploadLink.headers,
            confirmationToken: uploadLink.confirmationToken,
          );
        },
        'confirmPhotoUpload': (variables) {
          steps.add('confirmed with ${variables['confirmationToken']}');

          return onConfirm(variables);
        },
      },
    );
    addTearDown(backend.dispose);
    initGlobalProviderContainer([
      databaseServiceProvider.overrideWithValue(backend.db),
    ]);
    uploader = RemotePhotoUploader(backend.db.photos);
  }

  setUp(serveStorage);

  tearDown(resetGlobalProviderContainer);

  group('RemotePhotoUploader', () {
    test(
      'a photo is put to the storage link, then the upload is confirmed',
      () async {
        await uploader.uploadPhotoOf(
          object,
          await pickedPhoto('photo.png'),
          onProgress: (_) {},
        );

        final upload = storage.requests.single;
        expect(upload.method, 'PUT');
        expect(upload.uri, Uri.parse(uploadLink.url));
        expect(upload.body, file);
        expect(steps, [
          'link requested',
          'confirmed with ${uploadLink.confirmationToken}',
        ]);
      },
    );

    test('a photo of an unknown content type is never uploaded', () async {
      await expectLater(
        uploader.uploadPhotoOf(
          object,
          await pickedPhoto('photo'),
          onProgress: (_) {},
        ),
        throwsA(isA<PhotoContentTypeUnknownException>()),
      );

      expect(steps, isEmpty);
      expect(storage.requests, isEmpty);
    });

    test('a failed put leaves the upload unconfirmed', () async {
      storage.statusCode = 403;

      await expectLater(
        uploader.uploadPhotoOf(
          object,
          await pickedPhoto('photo.png'),
          onProgress: (_) {},
        ),
        throwsA(isA<DioException>()),
      );

      expect(steps, ['link requested']);
    });

    test('a refused confirmation fails the upload', () async {
      onConfirm = (_) => throw const FakeAshRejection('invalid');

      await expectLater(
        uploader.uploadPhotoOf(
          object,
          await pickedPhoto('photo.png'),
          onProgress: (_) {},
        ),
        throwsA(isA<BackendInvalidInputException>()),
      );
    });
  });
}

class _ImageOfPerson implements IImage {
  const _ImageOfPerson();

  @override
  ObjectImageInfo get imageInfo =>
      const ObjectPhotoInfo(Enum_PhotoSubject.PERSONS, 'person-1');

  @override
  bool get hasImage => false;

  @override
  String? get blurhash => null;
}
