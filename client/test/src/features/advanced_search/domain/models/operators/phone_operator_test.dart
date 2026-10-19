import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('a saved phone filter searches the same way once restored', () {
    const translator = AshFilterTranslator();
    final filter = Filter(
      PersonFields().mainPhone,
      PhoneOperator.contains,
      '0100',
    );

    final restored = Filter.fromJson(filter.toJson());

    expect(
      translator.toFilterInput([restored]),
      translator.toFilterInput([filter]),
    );
  });
}
