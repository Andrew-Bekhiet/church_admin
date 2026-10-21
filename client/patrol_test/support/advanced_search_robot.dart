import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'e2e_app.dart';
import 'e2e_widget_tester.dart';

class AdvancedSearchRobot {
  final WidgetTester tester;

  Finder get _searchButton => find.byKey(AdvancedSearchScreenKeys.searchButton);
  Finder get _resultsCount => find.byKey(AdvancedSearchScreenKeys.resultsCount);

  const AdvancedSearchRobot(this.tester);

  Future<void> open() async {
    await E2eApp.openDrawerItem(tester, HomeDrawerKeys.advancedSearch);
    await tester.waitFor(_searchButton);
  }

  Future<void> searchIn(QueryableType type) async {
    await _pickFromDropdown(
      AdvancedSearchScreenKeys.queryableTypeDropdown,
      AdvancedSearchScreenKeys.queryableTypeItem(type),
    );
    await tester.waitFor(
      find.byWidgetPredicate(
        (widget) => widget is FiltersBuilder && widget.queryableType == type,
      ),
    );
  }

  Future<void> filterBy(FieldMetadata field) async {
    await _pickFromDropdown(
      FilterBuilderKeys.fieldDropdown,
      FilterBuilderKeys.fieldItem(field),
    );
    await _waitForFilter((filter) => filter.field == field);
  }

  Future<void> useOperator(Operator operator) async {
    await _pickFromDropdown(
      FilterBuilderKeys.operatorDropdown,
      FilterBuilderKeys.operatorItem(operator),
    );
    await _waitForFilter((filter) => filter.operator == operator);
  }

  Future<void> enterValue(String value) async {
    await tester.typeInto(find.byKey(ValueInputWidgetKeys.textField), value);
    await _waitForFilter((filter) => filter.value == value);
  }

  Future<int> searchAndReadResultsCount() async {
    await tester.tapOn(_searchButton);
    await tester.waitFor(_resultsCount, timeout: const Duration(minutes: 1));
    final countText = tester.widget<Text>(_resultsCount).data ?? '';

    return int.parse(countText.split(' ').first);
  }

  Future<void> backToQuery() async {
    await tester.tapOn(find.byType(BackButton).hitTestable());
    await tester.waitForAbsent(_resultsCount);
    await tester.waitFor(_searchButton);
  }

  Future<void> _pickFromDropdown(Key dropdown, Key item) async {
    await tester.tapOn(find.byKey(dropdown));
    await tester.tapOn(find.byKey(item).last);
  }

  Future<void> _waitForFilter(bool Function(Filter filter) matches) =>
      tester.waitFor(
        find.byWidgetPredicate(
          (widget) => widget is FilterBuilder && matches(widget.filter),
        ),
      );
}
