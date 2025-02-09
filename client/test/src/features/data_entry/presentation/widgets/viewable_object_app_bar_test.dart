import 'package:church_admin/church_admin.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:riverpod/riverpod.dart';

import 'viewable_object_app_bar_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DelegatingPaginatableStream<LastRecordedByInfo>>(),
  MockSpec<ViewableObjectService>(),
  MockSpec<ImageUrlCacheService>(),
])
void main() {
  loadAppFonts();

  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  group(
    'ViewableObjectAppBar => Goldens =>',
    () {
      final viewable = Person(id: 'id', name: 'name', color: Colors.green);
      final foregroundColor = viewable.color?.findInvert();

      testGoldens(
        'non-snapping',
        (tester) async {
          final scrollController = ScrollController();

          const double expandedHeight = 280;

          await tester.pumpWidgetBuilder(
            SafeArea(
              child: Scaffold(
                body: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverAppBar(
                      expandedHeight: expandedHeight,
                      stretch: true,
                      pinned: true,
                      backgroundColor: viewable.color,
                      foregroundColor: foregroundColor,
                      flexibleSpace: ViewableObjectAppBar(
                        viewable: viewable,
                        appBarMaxHeight: expandedHeight,
                        foregroundColor: foregroundColor,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Placeholder(fallbackHeight: 1000),
                    ),
                  ],
                ),
              ),
            ),
            wrapper: materialAppWrapper(
              theme: ThemingService.getDefault(
                isDarkOverride: false,
                greatFeastThemeOverride: false,
              ),
            ),
          );

          await screenMatchesGolden(
            tester,
            'viewable_object_app_bar/non-snapping/expanded',
          );

          await tester.drag(
            find.byType(CustomScrollView),
            const Offset(0, -expandedHeight * 0.85),
          );

          await screenMatchesGolden(
            tester,
            'viewable_object_app_bar/non-snapping/collapsed_15',
          );

          await tester.drag(
            find.byType(CustomScrollView),
            const Offset(0, expandedHeight * 0.15),
          );

          await screenMatchesGolden(
            tester,
            'viewable_object_app_bar/non-snapping/collapsed_30',
          );

          await tester.drag(
            find.byType(CustomScrollView),
            const Offset(0, expandedHeight * 0.45),
          );

          await screenMatchesGolden(
            tester,
            'viewable_object_app_bar/non-snapping/collapsed_75',
          );
        },
      );

      testGoldens(
        'no-cropping',
        (tester) async {
          final scrollController = ScrollController();

          const double expandedHeight = 280;

          await tester.pumpWidgetBuilder(
            SafeArea(
              child: Scaffold(
                body: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverAppBar(
                      expandedHeight: expandedHeight,
                      stretch: true,
                      pinned: true,
                      backgroundColor: viewable.color,
                      foregroundColor: foregroundColor,
                      flexibleSpace: ViewableObjectAppBar(
                        viewable: viewable,
                        appBarMaxHeight: expandedHeight,
                        foregroundColor: foregroundColor,
                        circleCrop: false,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Placeholder(fallbackHeight: 1000),
                    ),
                  ],
                ),
              ),
            ),
            wrapper: materialAppWrapper(
              theme: ThemingService.getDefault(
                isDarkOverride: false,
                greatFeastThemeOverride: false,
              ),
            ),
          );

          await screenMatchesGolden(
            tester,
            'viewable_object_app_bar/no-cropping/expanded',
          );

          await tester.drag(
            find.byType(CustomScrollView),
            const Offset(0, -expandedHeight * 0.85),
          );

          await screenMatchesGolden(
            tester,
            'viewable_object_app_bar/no-cropping/collapsed_15',
          );

          await tester.drag(
            find.byType(CustomScrollView),
            const Offset(0, expandedHeight * 0.15),
          );

          await screenMatchesGolden(
            tester,
            'viewable_object_app_bar/no-cropping/collapsed_30',
          );

          await tester.drag(
            find.byType(CustomScrollView),
            const Offset(0, expandedHeight * 0.45),
          );

          await screenMatchesGolden(
            tester,
            'viewable_object_app_bar/no-cropping/collapsed_75',
          );
        },
      );
    },
  );
}

void _setUp() {
  final overrides = [
    _setUpViewableObjectService(),
    _setUpMockImageUrlService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpViewableObjectService() {
  final viewableObjectService = MockViewableObjectService();

  when(viewableObjectService.getDefaultIconFor<Person>(any))
      .thenReturn(Symbols.person);

  return viewableObjectServiceProvider.overrideWithValue(viewableObjectService);
}

Override _setUpMockImageUrlService() {
  return imageUrlCacheServiceProvider.overrideWithValue(
    MockImageUrlCacheService(),
  );
}
