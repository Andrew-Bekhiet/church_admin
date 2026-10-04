import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('a saved phone filter searches the same way once restored', () {
    final filter = Filter(
      PersonFields().mainPhone,
      StringOperator.contains,
      '0100',
    );

    final restored = Filter.fromJson(filter.toJson());

    expect(restored.queryToJson(), filter.queryToJson());
  });
}
