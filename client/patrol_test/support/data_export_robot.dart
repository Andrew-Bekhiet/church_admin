import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_export/presentation/widgets/export_completed_body.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'e2e_app.dart';
import 'e2e_widget_tester.dart';

class DataExportRobot {
  static const _exportTimeout = Duration(minutes: 2);

  final WidgetTester tester;

  Finder get _completed => find.byType(ExportCompletedBody);
  Finder get _failed => find.byType(CAErrorDialog);

  const DataExportRobot(this.tester);

  Future<void> open() =>
      E2eApp.openDrawerItem(tester, HomeDrawerKeys.exportData);

  /// Opens [tab] and returns the ids it offers for export once they include
  /// [expectedIds] and the list has finished loading.
  Future<Set<String>> offeredIdsOnceTheyInclude<T extends ViewableWithID>(
    Key tab,
    Set<String> expectedIds,
  ) async {
    await tester.tapOn(find.byKey(tab));
    final loadedList = find.byWidgetPredicate(
      (widget) =>
          widget is ViewableObjectList<T> &&
          !widget.objectsController.isLoading &&
          !widget.objectsController.hasMore &&
          _idsIn(widget.objectsController).containsAll(expectedIds),
    );
    await tester.waitFor(loadedList);

    return _idsIn(
      tester.widget<ViewableObjectList<T>>(loadedList).objectsController,
    );
  }

  Future<void> select(String id) => tester.tapOn(tester.viewableObject(id));

  /// Starts the export and waits for the function to answer, whether the app
  /// then shows the finished export or an error.
  Future<void> startExport() async {
    await tester.tapOn(
      find.byKey(ExportEntitiesSelectionScreenKeys.startExportButton),
    );
    await tester.waitFor(
      find.byElementPredicate(
        (element) =>
            _completed.evaluate().contains(element) ||
            _failed.evaluate().contains(element),
      ),
      timeout: _exportTimeout,
    );
  }

  void expectExportCompleted() {
    if (_failed.evaluate().isNotEmpty) {
      throw tester.failureShowingScreen('The export failed');
    }

    expect(_completed, findsOneWidget);
  }

  Set<String> _idsIn(ViewableObjectListController controller) => {
    for (final object in controller.currentFilteredObjectsOrNull ?? const [])
      if (object case ViewableWithID(:final id)) id,
  };
}
