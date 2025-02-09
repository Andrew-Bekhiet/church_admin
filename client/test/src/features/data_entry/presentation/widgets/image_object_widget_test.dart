import 'dart:convert';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:file/file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:photo_view/photo_view.dart';
import 'package:riverpod/riverpod.dart';

import 'image_object_widget_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ImageUrlCacheService>(),
  MockSpec<ViewableObjectService>(),
  MockSpec<BaseCacheManager>(),
])
void main() {
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
      final person =
          Person(id: 'id', name: 'name', photoUpdatedAt: DateTime.now());

      final freshImageFinder = find.descendant(
        of: find.byType(ImageObjectWidget),
        matching: find.byWidgetPredicate(
          (p) {
            if (p is! Image || p.image is! ResizeImage) return false;

            final imageProvider = (p.image as ResizeImage).imageProvider;

            if (imageProvider is! CachedNetworkImageProvider) return false;

            return imageProvider.url == 'imageUrl' &&
                imageProvider.cacheKey == person.imageInfo.cacheKey &&
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
                imageProvider.cacheKey == person.imageInfo.cacheKey &&
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
    'Image Object Widget => circleCrop',
    (tester) async {
      final person =
          Person(id: 'id', name: 'name', photoUpdatedAt: DateTime.now());

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
      final person =
          Person(id: 'id', name: 'name', photoUpdatedAt: DateTime.now());

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
      final person =
          Person(id: 'id', name: 'name', photoUpdatedAt: DateTime.now());

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

  when(mockBaseCacheManager.getFileStream(any)).thenAnswer((i) async* {
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
  when(imageUrlCacheService.getNonExpiredCachedImageUrl(any))
      .thenReturn('cachedImageUrl');
  when(imageUrlCacheService.getCachedImageUrl(any))
      .thenReturn('maybeExpiredImageUrl');
  when(imageUrlCacheService.getImageUrl(any))
      .thenAnswer((_) => Future.value('imageUrl'));

  return imageUrlCacheServiceProvider.overrideWithValue(imageUrlCacheService);
}

Override _setUpViewableObjectService() {
  final viewableObjectService = MockViewableObjectService();

  when(viewableObjectService.getDefaultIconFor<Person>(any))
      .thenReturn(Symbols.person);

  return viewableObjectServiceProvider.overrideWithValue(viewableObjectService);
}

class MockFile extends Fake implements File {
  @override
  Uint8List readAsBytesSync() {
    return transparentImage;
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
