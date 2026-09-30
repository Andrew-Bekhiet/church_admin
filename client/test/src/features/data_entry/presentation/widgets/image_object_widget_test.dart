import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:file/file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';
import 'package:photo_view/photo_view.dart';

class MockImageUrlCacheService extends Mock implements ImageUrlCacheService {}

class MockViewableObjectService extends Mock implements ViewableObjectService {}

class MockBaseCacheManager extends Mock implements BaseCacheManager {}

void main() {
  setUpAll(() {
    registerFallbackValue(const FunctionsObjectImageInfo('table', 'id'));
    registerFallbackValue(Person(id: 'id', name: 'name'));
  });
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'Image Object Widget => no image',
    (tester) async {
      final unit = Person(id: 'id', name: 'name');

      await tester.pumpWidgetBuilder(
        Scaffold(
          body: ImageObjectWidget(
            unit,
          ),
        ),
        wrapper: materialAppWrapper(),
      );

      await tester.pumpAndSettle();

      expect(
        find.widgetWithIcon(ImageObjectWidget, Symbols.person),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Image Object Widget => has image',
    (tester) async {
      final person = Person(
        id: 'id',
        name: 'name',
        photoUpdatedAt: DateTime.now(),
      );

      final freshImageFinder = find.descendant(
        of: find.byType(ImageObjectWidget),
        matching: find.byWidgetPredicate(
          (p) {
            if (p is! Image || p.image is! ResizeImage) return false;

            final imageProvider = (p.image as ResizeImage).imageProvider;

            if (imageProvider is! CachedNetworkImageProvider) return false;

            return imageProvider.url == 'imageUrl' &&
                imageProvider.cacheKey == person.imageInfo.photoCacheKey &&
                imageProvider.cacheManager ==
                    globalProviderContainer.read(baseCacheManagerProvider);
          },
        ),
      );

      final staleImageFinder = find.descendant(
        of: find.byType(ImageObjectWidget),
        matching: find.byWidgetPredicate(
          (p) {
            if (p is! Image || p.image is! ResizeImage) return false;

            final imageProvider = (p.image as ResizeImage).imageProvider;

            if (imageProvider is! CachedNetworkImageProvider) return false;

            return imageProvider.url == 'maybeExpiredImageUrl' &&
                imageProvider.cacheKey == person.imageInfo.photoCacheKey &&
                imageProvider.cacheManager ==
                    globalProviderContainer.read(baseCacheManagerProvider);
          },
        ),
      );

      await tester.pumpWidgetBuilder(
        Scaffold(
          body: ImageObjectWidget(
            person,
          ),
        ),
        wrapper: materialAppWrapper(),
      );

      expect(
        freshImageFinder,
        findsOneWidget,
      );
      expect(
        staleImageFinder,
        findsNothing,
      );

      await tester.pump(const Duration(milliseconds: 120));

      expect(
        freshImageFinder,
        findsOneWidget,
      );
      expect(
        staleImageFinder,
        findsNothing,
      );
    },
  );

  testWidgets(
    'Image Object Widget => reused for an uncached object, '
    'never requests the previous object url under the new cache key',
    (tester) async {
      final personA = Person(
        id: 'a',
        name: 'a',
        photoUpdatedAt: DateTime(2024),
      );
      final personB = Person(
        id: 'b',
        name: 'b',
        photoUpdatedAt: DateTime(2024),
      );

      final urlCompleters = <String, Completer<String>>{};
      final imageUrlCacheService =
          globalProviderContainer.read(imageUrlCacheServiceProvider)
              as MockImageUrlCacheService;
      when(
        () => imageUrlCacheService.getCachedImageUrl(any()),
      ).thenReturn(null);
      when(() => imageUrlCacheService.getImageUrl(any())).thenAnswer(
        (i) => urlCompleters
            .putIfAbsent(
              (i.positionalArguments.first as ObjectImageInfo).cacheKey,
              Completer.new,
            )
            .future,
      );

      await tester.pumpWidgetBuilder(
        Scaffold(body: ImageObjectWidget(personA)),
        wrapper: materialAppWrapper(),
      );
      urlCompleters[personA.imageInfo.cacheKey]!.complete('urlA');
      await tester.pump();

      await tester.pumpWidgetBuilder(
        Scaffold(body: ImageObjectWidget(personB)),
        wrapper: materialAppWrapper(),
      );
      await tester.pump();

      final cacheManager =
          globalProviderContainer.read(baseCacheManagerProvider)
              as MockBaseCacheManager;
      verifyNever(
        () => cacheManager.getFileStream(
          'urlA',
          key: personB.imageInfo.photoCacheKey,
          headers: any(named: 'headers'),
          withProgress: any(named: 'withProgress'),
        ),
      );

      urlCompleters[personB.imageInfo.cacheKey]!.complete('urlB');
      await tester.pump();
    },
  );

  testWidgets(
    'a person whose photo was replaced shows the new photo',
    (tester) async {
      final personWithOldPhoto = Person(
        id: 'id',
        name: 'name',
        photoUpdatedAt: DateTime(2024),
      );
      final personWithNewPhoto = personWithOldPhoto.copyWith(
        photoUpdatedAt: DateTime(2025),
      );
      final photoUrls = {
        personWithOldPhoto.photoUpdatedAt: 'oldPhotoUrl',
        personWithNewPhoto.photoUpdatedAt: 'newPhotoUrl',
      };
      final photoBytesByUrl = {
        'oldPhotoUrl': transparentImage,
        'newPhotoUrl': twoPixelWideTransparentImage,
      };

      final imageUrlCacheService =
          globalProviderContainer.read(imageUrlCacheServiceProvider)
              as MockImageUrlCacheService;
      when(() => imageUrlCacheService.getCachedImageUrl(any())).thenAnswer(
        (i) =>
            photoUrls[(i.positionalArguments.first as ObjectImageInfo)
                .lastUpdatedTime],
      );
      when(() => imageUrlCacheService.getImageUrl(any())).thenAnswer(
        (i) async =>
            photoUrls[(i.positionalArguments.first as ObjectImageInfo)
                .lastUpdatedTime]!,
      );
      final cacheManager =
          globalProviderContainer.read(baseCacheManagerProvider)
              as MockBaseCacheManager;
      when(
        () => cacheManager.getFileStream(
          any(),
          key: any(named: 'key'),
          headers: any(named: 'headers'),
          withProgress: any(named: 'withProgress'),
        ),
      ).thenAnswer((i) async* {
        final url = i.positionalArguments.first as String;

        yield FileInfo(
          MockFile(photoBytesByUrl[url]),
          FileSource.Cache,
          DateTime(2050),
          url,
        );
      });

      Future<int?> displayedPhotoWidth() async {
        await tester.pump();

        final photo = find.descendant(
          of: find.byType(ImageObjectWidget),
          matching: find.byType(Image),
        );
        await tester.runAsync(
          () => precacheImage(
            tester.widget<Image>(photo).image,
            tester.element(photo),
          ),
        );
        await tester.pump();

        return tester.widget<RawImage>(find.byType(RawImage)).image?.width;
      }

      await tester.pumpWidgetBuilder(
        Scaffold(body: ImageObjectWidget(personWithOldPhoto)),
        wrapper: materialAppWrapper(),
      );
      expect(await displayedPhotoWidth(), 1);

      await tester.pumpWidgetBuilder(
        Scaffold(body: ImageObjectWidget(personWithNewPhoto)),
        wrapper: materialAppWrapper(),
      );

      expect(await displayedPhotoWidth(), 2);
    },
  );

  testWidgets(
    'Image Object Widget => circleCrop',
    (tester) async {
      final person = Person(
        id: 'id',
        name: 'name',
        photoUpdatedAt: DateTime.now(),
      );

      await tester.pumpWidgetBuilder(
        Scaffold(
          body: ImageObjectWidget(
            person,
          ),
        ),
        wrapper: materialAppWrapper(),
      );

      expect(
        find.descendant(
          of: find.byType(ImageObjectWidget),
          matching: find.descendant(
            of: find.byWidgetPredicate(
              (w) =>
                  w is Material &&
                  w.shape is CircleBorder &&
                  w.clipBehavior != Clip.none,
            ),
            matching: find.byType(CachedNetworkImage),
          ),
        ),
        findsOneWidget,
      );

      await tester.pump(const Duration(milliseconds: 120));

      expect(
        find.descendant(
          of: find.byType(ImageObjectWidget),
          matching: find.descendant(
            of: find.byWidgetPredicate(
              (w) =>
                  w is Material &&
                  w.shape is CircleBorder &&
                  w.clipBehavior != Clip.none,
            ),
            matching: find.byType(CachedNetworkImage),
          ),
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Image Object Widget => circleCrop: false',
    (tester) async {
      final person = Person(
        id: 'id',
        name: 'name',
        photoUpdatedAt: DateTime.now(),
      );

      await tester.pumpWidgetBuilder(
        Scaffold(
          body: ImageObjectWidget(
            person,
            circleCrop: false,
          ),
        ),
        wrapper: materialAppWrapper(),
      );

      expect(
        find.descendant(
          of: find.byType(ImageObjectWidget),
          matching: find.descendant(
            of: find.byWidgetPredicate(
              (w) =>
                  w is Material &&
                  w.shape is RoundedRectangleBorder &&
                  w.clipBehavior != Clip.none,
            ),
            matching: find.byType(CachedNetworkImage),
          ),
        ),
        findsOneWidget,
      );

      await tester.pump(const Duration(milliseconds: 120));

      expect(
        find.descendant(
          of: find.byType(ImageObjectWidget),
          matching: find.descendant(
            of: find.byWidgetPredicate(
              (w) =>
                  w is Material &&
                  w.shape is RoundedRectangleBorder &&
                  w.clipBehavior != Clip.none,
            ),
            matching: find.byType(CachedNetworkImage),
          ),
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Image Object Widget => onTap',
    (tester) async {
      final person = Person(
        id: 'id',
        name: 'name',
        photoUpdatedAt: DateTime.now(),
      );

      await tester.pumpWidgetBuilder(
        Scaffold(
          body: ImageObjectWidget(
            person,
          ),
        ),
        wrapper: materialAppWrapper(),
      );

      await tester.pump(const Duration(milliseconds: 120));
      await tester.tap(find.byType(ImageObjectWidget));
      await tester.pump(const Duration(milliseconds: 120));

      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is Dialog && widget.backgroundColor == Colors.transparent,
          skipOffstage: false,
        ),
        findsOneWidget,
      );

      expect(
        find.descendant(
          of: find.byType(
            Dialog,
            skipOffstage: false,
          ),
          matching: find.byWidgetPredicate(
            (widget) =>
                widget is PhotoView &&
                widget.backgroundDecoration?.color == Colors.transparent &&
                (widget.tightMode ?? false),
            skipOffstage: false,
          ),
          skipOffstage: false,
        ),
        findsOneWidget,
      );
    },
  );
}

void _setUp() {
  final overrides = [
    _setUpCacheManager(),
    _setUpImageUrlCacheService(),
    _setUpViewableObjectService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpCacheManager() {
  final mockBaseCacheManager = MockBaseCacheManager();

  when(
    () => mockBaseCacheManager.getFileStream(
      any(),
      key: any(named: 'key'),
      headers: any(named: 'headers'),
      withProgress: any(named: 'withProgress'),
    ),
  ).thenAnswer((i) async* {
    final url = i.positionalArguments.first;
    final length = transparentImage.length;

    yield DownloadProgress(url, length, length);

    yield FileInfo(
      MockFile(),
      FileSource.Cache,
      DateTime(2050),
      url,
    );

    yield DownloadProgress(url, length, length);
  });

  return baseCacheManagerProvider.overrideWithValue(mockBaseCacheManager);
}

Override _setUpImageUrlCacheService() {
  final imageUrlCacheService = MockImageUrlCacheService();
  when(
    () => imageUrlCacheService.getCachedImageUrl(any()),
  ).thenReturn('maybeExpiredImageUrl');
  when(
    () => imageUrlCacheService.getImageUrl(any()),
  ).thenAnswer((_) => Future.value('imageUrl'));

  return imageUrlCacheServiceProvider.overrideWithValue(imageUrlCacheService);
}

Override _setUpViewableObjectService() {
  final viewableObjectService = MockViewableObjectService();

  when(
    () => viewableObjectService.getDefaultIconFor<IImage>(any()),
  ).thenReturn(Symbols.person);

  return viewableObjectServiceProvider.overrideWithValue(viewableObjectService);
}

class MockFile extends Fake implements File {
  final Uint8List bytes;

  MockFile([Uint8List? bytes]) : bytes = bytes ?? transparentImage;

  @override
  Uint8List readAsBytesSync() {
    return bytes;
  }

  @override
  Future<Uint8List> readAsBytes() async {
    return readAsBytesSync();
  }
}

final transparentImage = base64Decode(
  'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAY'
  'AAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEh'
  'QGAhKmMIQAAAABJRU5ErkJggg==',
);

final twoPixelWideTransparentImage = base64Decode(
  'iVBORw0KGgoAAAANSUhEUgAAAAIAAAABCAY'
  'AAAD0In+KAAAAC0lEQVR4nGNggAIAAAkAA'
  'ftSuKkAAAAASUVORK5CYII=',
);
