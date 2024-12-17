import 'dart:math';
import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final random = Random();
  test(
    'colorFromInt',
    () {
      final color = Color(random.nextInt(0xffffffff));
      expect(colorFromInt(color.argbValue), color);

      expect(colorFromInt(null), null);
    },
  );

  test(
    'colorToInt',
    () {
      final color = Color(random.nextInt(0xffffffff));
      expect(colorToInt(color), color.argbValue);

      expect(colorToInt(null), null);
    },
  );

  test(
    'colorToInt <=> colorFromInt',
    () {
      final color = Color(random.nextInt(0xffffffff));

      expect(colorFromInt(colorToInt(color)), color);

      expect(colorToInt(colorFromInt(color.argbValue)), color.argbValue);

      expect(colorToInt(colorFromInt(null)), null);
    },
  );
}
