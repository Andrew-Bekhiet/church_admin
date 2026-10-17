import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$HomeDailyDataType canShowAnother', () {
    test('is false for the sneksar, which is fixed for the day', () {
      expect(HomeDailyDataType.sneksar.canShowAnother, isFalse);
    });

    test('is true for the verse and the saying', () {
      expect(
        [
          HomeDailyDataType.verse,
          HomeDailyDataType.saying,
        ].map((type) => type.canShowAnother),
        everyElement(isTrue),
      );
    });
  });
}
