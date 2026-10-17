import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

class HomeSearchPageHarness {
  static Future<HomeSearchDelegate> open(
    WidgetTester tester,
    HomeDAO dao,
  ) async {
    final delegate = HomeSearchDelegate(HomeSearchCubit(homeDao: dao));

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => TextButton(
            onPressed: () => showSearch(context: context, delegate: delegate),
            child: const Text('open'),
          ),
        ),
      ),
    );
    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    return delegate;
  }

  static Future<void> type(WidgetTester tester, String text) async {
    await tester.enterText(find.byType(TextField), text);
    await tester.pump();
  }
}
