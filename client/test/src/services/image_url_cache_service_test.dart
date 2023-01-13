import 'package:church_admin/church_admin.dart';
import 'package:file/memory.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../fakes/fake_box.dart';
import 'image_url_cache_service_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<BaseCacheManager>(),
    MockSpec<CAFunctionsService>(),
  ],
)
void main() {
  tearDown(GetIt.I.reset);

  test(
    'Image Url Cache Service: isUrlExpired',
    () async {
      final unit = ImageUrlCacheService(
        box: FakeBox(),
        cacheManager: MockBaseCacheManager(),
      );

      final testExpiredUrl = Uri(
        host: 'example.com',
        path: 'file.jpg',
        queryParameters: {
          'X-Goog-Date': DateTime.now()
              .subtract(const Duration(minutes: 3))
              .toIso8601String(),
          'X-Goog-Expires': const Duration(minutes: 2).inSeconds.toString(),
        },
      );

      final testNotExpiredUrl = Uri(
        host: 'example.com',
        path: 'file.jpg',
        queryParameters: {
          'X-Goog-Date': DateTime.now()
              .subtract(const Duration(minutes: 1))
              .toIso8601String(),
          'X-Goog-Expires': const Duration(minutes: 2).inSeconds.toString(),
        },
      );

      expect(unit.isUrlExpired(testExpiredUrl.toString()), isTrue);
      expect(unit.isUrlExpired(testNotExpiredUrl.toString()), isFalse);
    },
  );

  test(
    'Image Url Cache Service: isUrlFileCached',
    () async {
      final baseCacheManager =
          getMockedCacheManager('cachedUrl', uncachedUrl: 'uncachedUrl');

      final unit = ImageUrlCacheService(
        box: FakeBox(),
        cacheManager: baseCacheManager,
      );

      expect(unit.isUrlFileCached('cachedUrl'), completion(isTrue));
      expect(unit.isUrlFileCached('uncachedUrl'), completion(isFalse));
    },
  );

  test(
    'Image Url Cache Service: getCachedImageUrl',
    () async {
      final fakeBox = FakeBox<String>();
      final unit = ImageUrlCacheService(
        box: fakeBox,
        cacheManager: MockBaseCacheManager(),
      );

      final person = Person(
        id: 'id',
        name: 'name',
        photoUpdatedAt: DateTime.now(),
      );

      expect(unit.getCachedImageUrl(person), isNull);

      await fakeBox.put(
        person.imageInfo!.cacheKey,
        '${person.imageInfo!.lastUpdatedTime.toIso8601String()}|url',
      );

      expect(unit.getCachedImageUrl(person), 'url');
    },
  );

  test(
    'Image Url Cache Service: getImageUrl',
    () async {
      // Setup:
      final baseCacheManager =
          getMockedCacheManager('cachedUrl', uncachedUrl: 'uncachedUrl');

      const urlFromNetwork = 'https://example.com/file.jpg';
      registerFunctionsService(getMockedFunctionsSrvc('id', urlFromNetwork));

      final box = FakeBox<String>();
      final unit = ImageUrlCacheService(
        box: box,
        cacheManager: baseCacheManager,
      );

      final person = Person(
        id: 'id',
        name: 'name',
        photoUpdatedAt: DateTime.now(),
      );

      // Test:
      expect(await unit.getImageUrl(person), urlFromNetwork);
      expect(
        box.get(person.imageInfo!.cacheKey),
        person.imageInfo!.lastUpdatedTime.toIso8601String() +
            '|' +
            urlFromNetwork,
      );
      expect(await unit.getImageUrl(person), urlFromNetwork);

      await box.put(
        person.imageInfo!.cacheKey,
        person.imageInfo!.lastUpdatedTime.toIso8601String() + '|cachedUrl',
      );
      expect(await unit.getImageUrl(person), 'cachedUrl');

      await box.put(
        person.imageInfo!.cacheKey,
        person.imageInfo!.lastUpdatedTime
                .subtract(const Duration(days: 1))
                .toIso8601String() +
            '|cachedUrl',
      );
      expect(await unit.getImageUrl(person), urlFromNetwork);

      await box.put(
        person.imageInfo!.cacheKey,
        person.imageInfo!.lastUpdatedTime.toIso8601String() + '|uncachedUrl',
      );
      expect(await unit.getImageUrl(person), urlFromNetwork);
    },
  );

  test('Image Url Cache Service: getImageFileFromCache', () async {
    final baseCacheManager =
        getMockedCacheManager('cachedUrl', uncachedUrl: 'uncachedUrl');

    final unit = ImageUrlCacheService(
      box: FakeBox(),
      cacheManager: baseCacheManager,
    );

    final srvc = getMockedFunctionsSrvc('person1', 'cachedUrl');
    when(srvc.getDownloadUrl('persons', 'person2'))
        .thenAnswer((_) async => 'uncachedUrl');
    registerFunctionsService(srvc);

    final person = Person(
      id: 'person1',
      name: 'name',
      photoUpdatedAt: DateTime.now(),
    );
    final person2 = Person(
      id: 'person2',
      name: 'name',
      photoUpdatedAt: DateTime.now(),
    );

    expect(
      unit.getImageFile(person),
      completion(isNotNull),
    );
    expect(
      unit.getImageFile(person2),
      completion(isNotNull),
    );
  });
}

MockBaseCacheManager getMockedCacheManager(
  String cachedUrl, {
  String? uncachedUrl,
}) {
  final baseCacheManager = MockBaseCacheManager();
  // ignore: discarded_futures
  when(baseCacheManager.getFileFromCache(cachedUrl)).thenAnswer(
    (_) async => FileInfo(
      MemoryFileSystem().file('path'),
      FileSource.Cache,
      DateTime.now(),
      'url1',
    ),
  );
  // ignore: discarded_futures
  when(baseCacheManager.getSingleFile(cachedUrl)).thenAnswer(
    (_) async => MemoryFileSystem().file(cachedUrl),
  );
  if (uncachedUrl != null) {
    // ignore: discarded_futures
    when(baseCacheManager.getFileFromCache(uncachedUrl)).thenAnswer(
      (_) async => null,
    );
    // ignore: discarded_futures
    when(baseCacheManager.getSingleFile(uncachedUrl)).thenAnswer(
      (_) async => MemoryFileSystem().file(uncachedUrl),
    );
  }
  return baseCacheManager;
}

void registerFunctionsService(MockCAFunctionsService mockFunctionsService) {
  GetIt.I.registerSingleton<CAFunctionsService>(mockFunctionsService);
}

MockCAFunctionsService getMockedFunctionsSrvc(
  String personId,
  String urlFromNetwork,
) {
  final mockFunctionsService = MockCAFunctionsService();
  // ignore: discarded_futures
  when(mockFunctionsService.getDownloadUrl('persons', personId))
      .thenAnswer((_) async => urlFromNetwork);
  return mockFunctionsService;
}
