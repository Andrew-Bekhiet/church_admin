import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('streetNotInArea error has correct Arabic message', () {
    expect(
      AddressFieldError.streetNotInArea.message,
      'الشارع لا ينتمي إلى المنطقة المختارة',
    );
  });
}
