import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeTab.createLabel', () {
    test('is absent for the summary, which has nothing to create', () {
      expect(HomeTab.summary.createLabel, isNull);
    });

    test('exists exactly for the tabs that have a create location', () {
      for (final tab in HomeTab.values) {
        expect(tab.createLabel != null, tab.createRoute != null);
      }
    });
  });
}
