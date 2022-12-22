import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Stream.startWithFuture',
    () async {
      final stream =
          Stream.fromIterable([1, 2, 3]).startWithFuture(Future(() async => 0));

      expect(stream, emitsInOrder([0, 1, 2, 3]));
    },
  );
}
