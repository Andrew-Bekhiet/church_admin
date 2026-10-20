import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import 'e2e_widget_tester.dart';

class HomeBirthdaysRobot {
  static List<String> _idsIn(ViewableObjectListController controller) => [
    for (final object in controller.currentFilteredObjectsOrNull ?? const [])
      if (object case ViewableWithID(:final id)) id,
  ];

  final WidgetTester tester;

  Finder get _birthdaysCard =>
      find.byKey(HomeBirthdaysSectionKeys.birthdaysButtonKey);

  const HomeBirthdaysRobot(this.tester);

  Future<List<String>> namesListedOnHome() async {
    await tester.waitFor(_birthdaysCard);

    return tester.widget<HomeBirthdaysCard>(_birthdaysCard).birthdays.names;
  }

  Future<void> openFullList() => tester.tapOn(_birthdaysCard);

  Future<List<String>> personIdsInFullListOnceItShows(
    Set<String> expectedIds,
  ) async {
    final loadedResults = find.byWidgetPredicate(
      (widget) =>
          widget is ViewableObjectList &&
          widget.key == AdvancedSearchScreenKeys.resultsList &&
          !widget.objectsController.isLoading &&
          !widget.objectsController.hasMore &&
          _idsIn(widget.objectsController).toSet().containsAll(expectedIds),
    );
    await tester.waitFor(loadedResults);

    for (final id in expectedIds) {
      await tester.waitFor(tester.viewableObject(id));
    }

    return _idsIn(
      tester.widget<ViewableObjectList>(loadedResults).objectsController,
    );
  }
}
