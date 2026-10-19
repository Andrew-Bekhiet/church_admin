import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/mock_database_service.dart';
import '../../../fakes/mock_image_url_cache_service.dart';
import 'fake_home_dao.dart';

class HomeSearchBarHarness {
  final FakeHomeDao dao;

  HomeSearchBarHarness(this.dao);

  Future<void> pump(WidgetTester tester) async {
    final database = MockDatabaseService();
    when(() => database.home).thenReturn(dao);
    initGlobalProviderContainer([
      databaseServiceProvider.overrideWithValue(database),
      viewableObjectServiceProvider.overrideWith(
        (ref) => ViewableObjectService(router: GoRouter(routes: [])),
      ),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
    ]);

    await tester.pumpWidget(
      const MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: [Locale('ar', 'EG')],
        locale: Locale('ar', 'EG'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: HomeSearchBar()),
      ),
    );
  }

  Future<void> openView(WidgetTester tester) async {
    await tester.tap(find.byType(HomeSearchBar));
    await tester.pumpAndSettle();
  }

  Future<void> type(WidgetTester tester, String text) async {
    await tester.enterText(find.byType(TextField).last, text);
    await tester.pump();
  }
}
