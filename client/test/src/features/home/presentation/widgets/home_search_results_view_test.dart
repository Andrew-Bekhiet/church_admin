import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../utils.dart';
import '../../support/home_widget_pump.dart';

void main() {
  const family = Family(id: '1', name: 'عائلة مينا');
  const area = Area(id: '2', name: 'منطقة الورديان');

  setUp(() {
    initGlobalProviderContainer([
      viewableObjectServiceProvider.overrideWith(
        (ref) => ViewableObjectService(router: GoRouter(routes: [])),
      ),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
    ]);
  });

  tearDown(defaultTearDown);

  Future<void> pumpView(WidgetTester tester, HomeSearchState state) {
    return HomeWidgetPump.pump(tester, HomeSearchResultsView(state: state));
  }

  testWidgets('idle prompts the user to start typing', (tester) async {
    await pumpView(tester, const HomeSearchIdle());

    expect(find.text('ابدأ بالكتابة للبحث ...'), findsOneWidget);
  });

  testWidgets('loading shows a spinner', (tester) async {
    await pumpView(tester, const HomeSearchLoading());

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('nothing found says so', (tester) async {
    await pumpView(tester, const HomeSearchNothingFound());

    expect(find.text('لم يتم العثور على أي نتائج'), findsOneWidget);
  });

  testWidgets('failed shows the error widget for the error', (tester) async {
    final error = Exception('boom');

    await pumpView(tester, HomeSearchFailed(error));

    expect(
      tester.widget<ErrorWidget>(find.byType(ErrorWidget)).message,
      contains('boom'),
    );
  });

  group('found', () {
    final sections = const HomeSearchResults(
      families: [family],
      areas: [area],
    ).sections;

    testWidgets('titles each section with its label', (tester) async {
      await pumpView(tester, HomeSearchFound(sections));

      for (final section in sections) {
        expect(find.text(section.label), findsOneWidget);
      }
    });

    testWidgets('lists the items of every section', (tester) async {
      await pumpView(tester, HomeSearchFound(sections));

      expect(find.text(family.name), findsOneWidget);
      expect(find.text(area.name), findsOneWidget);
    });

    testWidgets('separates the items of a section with dividers', (
      tester,
    ) async {
      const second = Family(id: '3', name: 'عائلة مرقس');
      final section = const HomeSearchResults(
        families: [family, second],
      ).sections;

      await pumpView(tester, HomeSearchFound(section));

      expect(find.byType(Divider), findsOneWidget);
    });
  });
}
