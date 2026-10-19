import 'package:church_admin/church_admin.dart';
import 'package:file/memory.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/ash_responses.dart';
import '../../../fakes/fake_ash_backend.dart';
import '../../../fakes/fake_box.dart';

class MockBaseCacheManager extends Mock implements BaseCacheManager {}

void main() {
  const freshUrl = 'https://api.example.com/api/files/fresh/photo';
  const storedUrl = 'https://api.example.com/api/files/stored/photo';
  final photoUpdatedAt = DateTime(2024);
  final person = Person(
    id: 'person-1',
    name: 'name',
    photoUpdatedAt: photoUpdatedAt,
  );

  late FakeSyncKVStore<String> box;
  late int linkRequests;

  CachedImageUrl storedLink({required Duration expiresIn}) => CachedImageUrl(
    photoUpdatedAt: photoUpdatedAt,
    expiresAt: DateTime.now().add(expiresIn),
    url: storedUrl,
  );

  ImageUrlCacheService serviceWith({String? photoOnDisk}) {
    return ImageUrlCacheService(
      box: box,
      cacheManager: _cacheManagerWith(photoOnDisk: photoOnDisk),
    );
  }

  setUp(() {
    box = FakeSyncKVStore<String>();
    linkRequests = 0;
    final backend = FakeAshBackend(
      [],
      actions: {
        'photoDownloadUrl': (_) {
          linkRequests++;

          return AshResponses.photoLink(
            freshUrl,
            DateTime.now().add(const Duration(minutes: 5)),
          );
        },
      },
    );
    addTearDown(backend.dispose);
    initGlobalProviderContainer([
      databaseServiceProvider.overrideWithValue(backend.db),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  group('ImageUrlCacheService.getNonExpiredCachedImageUrl', () {
    test('is the stored url before the link expires', () {
      box.put(
        person.imageInfo.cacheKey,
        storedLink(expiresIn: const Duration(minutes: 1)).toStoredString(),
      );

      expect(
        serviceWith().getNonExpiredCachedImageUrl(person.imageInfo),
        storedUrl,
      );
    });

    test('is nothing once the link expired', () {
      box.put(
        person.imageInfo.cacheKey,
        storedLink(expiresIn: const Duration(minutes: -1)).toStoredString(),
      );

      expect(
        serviceWith().getNonExpiredCachedImageUrl(person.imageInfo),
        isNull,
      );
    });

    test('is nothing for a link stored before links carried an expiry', () {
      box.put(
        person.imageInfo.cacheKey,
        '${photoUpdatedAt.toIso8601String()}|https://old.example.com/photo.jpg',
      );

      expect(
        serviceWith().getNonExpiredCachedImageUrl(person.imageInfo),
        isNull,
      );
    });

    test('is nothing for a link stored for an older photo', () {
      box.put(
        person.imageInfo.cacheKey,
        CachedImageUrl(
          photoUpdatedAt: photoUpdatedAt.subtract(const Duration(days: 1)),
          expiresAt: DateTime.now().add(const Duration(minutes: 1)),
          url: storedUrl,
        ).toStoredString(),
      );

      expect(
        serviceWith().getNonExpiredCachedImageUrl(person.imageInfo),
        isNull,
      );
    });

    test('is nothing when no link was stored', () {
      expect(
        serviceWith().getNonExpiredCachedImageUrl(person.imageInfo),
        isNull,
      );
    });
  });

  group('ImageUrlCacheService.getImageUrl', () {
    test('fetches a link and stores it with its expiry', () async {
      final before = DateTime.now();

      expect(await serviceWith().getImageUrl(person.imageInfo), freshUrl);

      final stored = CachedImageUrl.parse(box.get(person.imageInfo.cacheKey)!);
      expect(stored.url, freshUrl);
      expect(stored.photoUpdatedAt, photoUpdatedAt);
      expect(stored.expiresAt, isNotNull);
      expect(stored.expiresAt!.isAfter(before), isTrue);
    });

    test('reuses the stored link until it expires', () async {
      final service = serviceWith();

      await service.getImageUrl(person.imageInfo);
      await service.getImageUrl(person.imageInfo);

      expect(linkRequests, 1);
    });

    test('fetches a fresh link when the stored one expired', () async {
      box.put(
        person.imageInfo.cacheKey,
        storedLink(expiresIn: const Duration(minutes: -1)).toStoredString(),
      );

      expect(await serviceWith().getImageUrl(person.imageInfo), freshUrl);
    });

    test('keeps using an expired link while the photo is on disk', () async {
      box.put(
        person.imageInfo.cacheKey,
        storedLink(expiresIn: const Duration(minutes: -1)).toStoredString(),
      );
      final service = serviceWith(photoOnDisk: person.imageInfo.photoCacheKey);

      expect(await service.getImageUrl(person.imageInfo), storedUrl);
      expect(linkRequests, 0);
    });

    test(
      'keeps using a link stored without expiry while the photo is on disk',
      () async {
        box.put(
          person.imageInfo.cacheKey,
          '${photoUpdatedAt.toIso8601String()}|$storedUrl',
        );
        final service = serviceWith(
          photoOnDisk: person.imageInfo.photoCacheKey,
        );

        expect(await service.getImageUrl(person.imageInfo), storedUrl);
        expect(linkRequests, 0);
      },
    );

    test(
      'replaces a link stored without expiry when the photo is not on disk',
      () async {
        box.put(
          person.imageInfo.cacheKey,
          '${photoUpdatedAt.toIso8601String()}|$storedUrl',
        );

        expect(await serviceWith().getImageUrl(person.imageInfo), freshUrl);
        expect(
          CachedImageUrl.parse(box.get(person.imageInfo.cacheKey)!).expiresAt,
          isNotNull,
        );
      },
    );
  });

  test('a photo file on disk is reported as cached', () async {
    final service = serviceWith(photoOnDisk: 'cachedUrl');

    expect(await service.isUrlFileCachedAndValid('cachedUrl'), isTrue);
    expect(await service.isUrlFileCachedAndValid('uncachedUrl'), isFalse);
  });

  test('the image file is fetched from the link it resolved', () async {
    final service = serviceWith();

    expect(await service.getImageFile(person.imageInfo), isNotNull);
  });
}

MockBaseCacheManager _cacheManagerWith({String? photoOnDisk}) {
  final cacheManager = MockBaseCacheManager();

  when(() => cacheManager.getFileFromCache(any())).thenAnswer(
    (i) async => i.positionalArguments.first == photoOnDisk
        ? FileInfo(
            MemoryFileSystem().file('path'),
            FileSource.Cache,
            DateTime.now().add(const Duration(days: 1)),
            photoOnDisk!,
          )
        : null,
  );
  when(
    () => cacheManager.getSingleFile(any(), key: any(named: 'key')),
  ).thenAnswer(
    (i) async => MemoryFileSystem().file(i.positionalArguments.first as String),
  );
  when(() => cacheManager.removeFile(any())).thenAnswer((_) async {});

  return cacheManager;
}
