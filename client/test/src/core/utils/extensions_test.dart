import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Stream.startWithFuture',
    () async {
      final stream = Stream.fromIterable([
        1,
        2,
        3,
      ]).startWithFuture(Future(() async => 0));

      expect(stream, emitsInOrder([0, 1, 2, 3]));
    },
  );

  test(
    'Rise day calculation',
    () async {
      expect(getRessurectionDate(2000), DateTime(2000, 4, 30));
      expect(getRessurectionDate(2019), DateTime(2019, 4, 28));
      expect(getRessurectionDate(2021), DateTime(2021, 5, 2));
      expect(getRessurectionDate(2022), DateTime(2022, 4, 24));
      expect(getRessurectionDate(2023), DateTime(2023, 4, 16));
      expect(getRessurectionDate(2032), DateTime(2032, 5, 2));
    },
  );
}
