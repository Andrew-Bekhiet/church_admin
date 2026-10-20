import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'RouterRefreshStream',
    () async {
      final controller = StreamController.broadcast();
      addTearDown(controller.close);

      final unit = TestableRouterRefreshStream(controller.stream);
      addTearDown(unit.dispose);

      expect(unit.notifiedTimes, 1);

      final next = controller.stream.next();
      controller.add('Any ...');

      await next;

      expect(unit.notifiedTimes, 2);

      final next2 = controller.stream.next();
      controller.add(null);
      await next2;

      expect(unit.notifiedTimes, 3);
    },
  );
}

class TestableRouterRefreshStream extends RouterRefreshStream {
  TestableRouterRefreshStream(super.stream);

  int notifiedTimes = 0;

  @override
  void notifyListeners() {
    notifiedTimes += 1;
  }
}
