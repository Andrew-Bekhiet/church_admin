import 'package:church_admin/church_admin.dart';
import 'package:file/memory.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../fakes/fake_box.dart';
import 'image_url_cache_service_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<BaseCacheManager>(),
    MockSpec<FunctionsService>(),
  ],
)
void main() {
  tearDown(resetGlobalProviderContainer);

  test(
    'Image Url Cache Service: isUrlExpired',
    () async {
      final unit = ImageUrlCacheService(
        box: FakeSyncKVStore(),
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
      final baseCacheManager = getMockedCacheManager(
        'cachedUrl',
        uncachedUrl: 'uncachedUrl',
      );

      final unit = ImageUrlCacheService(
        box: FakeSyncKVStore(),
        cacheManager: baseCacheManager,
      );

      expect(unit.isUrlFileCachedAndValid('cachedUrl'), completion(isTrue));
      expect(unit.isUrlFileCachedAndValid('uncachedUrl'), completion(isFalse));
    },
  );

  test(
    'Image Url Cache Service: getNonExpiredCachedImageUrl',
    () async {
      final fakeBox = FakeSyncKVStore<String>();
      final unit = ImageUrlCacheService(
        box: fakeBox,
        cacheManager: MockBaseCacheManager(),
      );

      final person = Person(
        id: 'id',
        name: 'name',
        photoUpdatedAt: DateTime.now(),
      );

      expect(unit.getNonExpiredCachedImageUrl(person.imageInfo), isNull);

      fakeBox.put(
        person.imageInfo.cacheKey,
        '${person.imageInfo.lastUpdatedTime!.toIso8601String()}|url',
      );

      expect(unit.getNonExpiredCachedImageUrl(person.imageInfo), isNull);
    },
  );

  test(
    'Image Url Cache Service: getImageUrl',
    () async {
      // Setup:
      final baseCacheManager = getMockedCacheManager(
        'cachedUrl',
        uncachedUrl: 'uncachedUrl',
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

      registerFunctionsService(
        getMockedFunctionsSrvc('id', testNotExpiredUrl.toString()),
      );

      final box = FakeSyncKVStore<String>();
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
      expect(
        await unit.getImageUrl(person.imageInfo),
        testNotExpiredUrl.toString(),
      );
      expect(
        box.get(person.imageInfo.cacheKey),
        '${person.imageInfo.lastUpdatedTime!.toIso8601String()}|$testNotExpiredUrl',
      );
      expect(
        await unit.getImageUrl(person.imageInfo),
        testNotExpiredUrl.toString(),
      );

      box.put(
        person.imageInfo.cacheKey,
        '${person.imageInfo.lastUpdatedTime!.toIso8601String()}|$testExpiredUrl',
      );
      expect(
        await unit.getImageUrl(person.imageInfo),
        testNotExpiredUrl.toString(),
      );
    },
  );

  test('Image Url Cache Service: getImageFileFromCache', () async {
    final baseCacheManager = getMockedCacheManager(
      'cachedUrl',
      uncachedUrl: 'uncachedUrl',
    );

    final unit = ImageUrlCacheService(
      box: FakeSyncKVStore(),
      cacheManager: baseCacheManager,
    );

    final srvc = getMockedFunctionsSrvc('person1', 'cachedUrl');
    when(
      srvc.getDownloadUrl('persons', 'person2'),
    ).thenAnswer((_) async => 'uncachedUrl');
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
      unit.getImageFile(person.imageInfo),
      completion(isNotNull),
    );
    expect(
      unit.getImageFile(person2.imageInfo),
      completion(isNotNull),
    );
  });
}

MockBaseCacheManager getMockedCacheManager(
  String cachedUrl, {
  String? uncachedUrl,
}) {
  final baseCacheManager = MockBaseCacheManager();

  when(baseCacheManager.getFileFromCache(cachedUrl)).thenAnswer(
    (_) async => FileInfo(
      MemoryFileSystem().file('path'),
      FileSource.Cache,
      DateTime.now().add(const Duration(days: 1)),
      cachedUrl,
    ),
  );

  when(baseCacheManager.getSingleFile(cachedUrl)).thenAnswer(
    (_) async => MemoryFileSystem().file(cachedUrl),
  );
  if (uncachedUrl != null) {
    when(baseCacheManager.getFileFromCache(uncachedUrl)).thenAnswer(
      (_) async => null,
    );

    when(baseCacheManager.getSingleFile(uncachedUrl)).thenAnswer(
      (_) async => MemoryFileSystem().file(uncachedUrl),
    );
  }
  return baseCacheManager;
}

void registerFunctionsService(MockFunctionsService mockFunctionsService) {
  initGlobalProviderContainer(
    [functionsServiceProvider.overrideWithValue(mockFunctionsService)],
  );
}

MockFunctionsService getMockedFunctionsSrvc(
  String personId,
  String urlFromNetwork,
) {
  final mockFunctionsService = MockFunctionsService();

  when(
    mockFunctionsService.getDownloadUrl('persons', personId),
  ).thenAnswer((_) async => urlFromNetwork);
  return mockFunctionsService;
}
