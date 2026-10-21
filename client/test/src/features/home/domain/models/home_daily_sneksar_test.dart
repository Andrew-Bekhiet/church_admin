import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$HomeDailySneksar.parse', () {
    const date = '١٢ بابه ١٧٤٣ - ٢٢ أكتوبر ٢٠٢٦';
    const first = 'عيد النيروز';
    const second = 'تذكار شفاء أيوب الصديق';
    const third = 'استشهاد القديسة رفقة وأولادها الخمسة';
    const continuation = '(أغاثون-بطرس-يوحنا)';

    test('takes the line before the blank line as the date', () {
      final sneksar = HomeDailySneksar.parse('$date\n\n1-$first');

      expect(sneksar.date, date);
    });

    test('lists numbered items without their numbers, in order', () {
      final sneksar = HomeDailySneksar.parse(
        '$date\n\n1-$first\n2- $second\n3 - $third',
      );

      expect(sneksar.commemorations, [first, second, third]);
    });

    test('appends an unnumbered line to the item before it', () {
      final sneksar = HomeDailySneksar.parse(
        '$date\n\n1-$first\n2-$third\n$continuation',
      );

      expect(sneksar.commemorations, [first, '$third $continuation']);
    });

    test('has no date when there is no blank line', () {
      final sneksar = HomeDailySneksar.parse('1-$first\n2-$second');

      expect(
        sneksar,
        const HomeDailySneksar(commemorations: [first, second]),
      );
    });

    test(
      'merges unnumbered lines into one item when no numbered item precedes them',
      () {
        final sneksar = HomeDailySneksar.parse('$date\n\n$first\n$second');

        expect(sneksar.commemorations, ['$first $second']);
      },
    );
  });
}
