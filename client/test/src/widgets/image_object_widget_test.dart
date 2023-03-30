import 'dart:convert';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core_mocks/utils.dart';
import 'package:file/file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:photo_view/photo_view.dart';

import 'image_object_widget_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ImageUrlCacheService>(),
  MockSpec<CAViewableObjectService>(),
  MockSpec<BaseCacheManager>(),
])
void main() {
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  testWidgets(
    'Image Object Widget => no image',
    (tester) async {
      final unit = Person(id: 'id', name: 'name');

      await tester.pumpWidget(
        wrapWithMaterialApp(
          Scaffold(
            body: ImageObjectWidget(
              unit,
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(
        find.widgetWithIcon(ImageObjectWidget, Icons.person),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Image Object Widget => has image',
    (tester) async {
      final unit =
          Person(id: 'id', name: 'name', photoUpdatedAt: DateTime.now());

      await tester.pumpWidget(
        wrapWithMaterialApp(
          Scaffold(
            body: ImageObjectWidget(
              unit,
            ),
          ),
        ),
      );

      expect(
        find.ancestor(
          of: find.byWidgetPredicate(
            (p) =>
                p is Image &&
                p.image is ResizeImage &&
                (p.image as ResizeImage).imageProvider ==
                    CachedNetworkImageProvider(
                      'cachedImageUrl',
                      cacheManager: globalProviderContainer
                          .read(baseCacheManagerProvider),
                    ),
          ),
          matching: find.byType(ImageObjectWidget),
        ),
        findsOneWidget,
      );

      await tester.pump(const Duration(milliseconds: 120));

      expect(
        find.ancestor(
          of: find.byWidgetPredicate(
            (p) =>
                p is Image &&
                p.image is ResizeImage &&
                (p.image as ResizeImage).imageProvider ==
                    CachedNetworkImageProvider(
                      'imageUrl',
                      cacheManager: globalProviderContainer
                          .read(baseCacheManagerProvider),
                    ),
          ),
          matching: find.byType(ImageObjectWidget),
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Image Object Widget => circleCrop',
    (tester) async {
      final person =
          Person(id: 'id', name: 'name', photoUpdatedAt: DateTime.now());

      await tester.pumpWidget(
        wrapWithMaterialApp(
          Scaffold(
            body: ImageObjectWidget(
              person,
            ),
          ),
        ),
      );

      expect(
        find.descendant(
          of: find.byType(ImageObjectWidget),
          matching: find.descendant(
            of: find.byType(ClipOval),
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
            of: find.byType(ClipOval),
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

      await tester.pumpWidget(
        wrapWithMaterialApp(
          Scaffold(
            body: ImageObjectWidget(
              person,
              circleCrop: false,
            ),
          ),
        ),
      );

      expect(
        find.descendant(
          of: find.byType(ImageObjectWidget),
          matching: find.descendant(
            of: find.byType(ClipRRect),
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
            of: find.byType(ClipRRect),
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

      await tester.pumpWidget(
        wrapWithMaterialApp(
          Scaffold(
            body: ImageObjectWidget(
              person,
            ),
          ),
        ),
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
    _setUpViewableObjectService()
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpCacheManager() {
  final mockBaseCacheManager = MockBaseCacheManager();

  when(mockBaseCacheManager.getFileStream(any)).thenAnswer((_) async* {
    final url = _.positionalArguments.first;
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
  when(imageUrlCacheService.getCachedImageUrl(any))
      .thenReturn('cachedImageUrl');
  when(imageUrlCacheService.getImageUrl(any))
      .thenAnswer((_) => Future.value('imageUrl'));

  return imageUrlCacheServiceProvider.overrideWithValue(imageUrlCacheService);
}

Override _setUpViewableObjectService() {
  final viewableObjectService = MockCAViewableObjectService();

  when(viewableObjectService.getDefaultIconFor<Person>(any))
      .thenReturn(Icons.person);

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
