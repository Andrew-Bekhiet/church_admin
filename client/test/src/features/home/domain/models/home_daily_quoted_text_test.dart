import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('$HomeDailyQuotedText.parse', () {
    const text = 'الْخَيْرَ نَقْبَلُ مِنْ عِنْدِ اللهِ';
    const reference = '(أى 2: 10)';

    test('takes the trailing parenthesised line as the reference', () {
      final quoted = HomeDailyQuotedText.parse('$text\n$reference');

      expect(
        quoted,
        const HomeDailyQuotedText(text: text, reference: reference),
      );
    });

    test('keeps every earlier line as the text', () {
      final quoted = HomeDailyQuotedText.parse('$text\n$text\n$reference');

      expect(quoted.text, '$text\n$text');
    });

    test('has no reference when the last line is not parenthesised', () {
      final quoted = HomeDailyQuotedText.parse('$text\nplain ending');

      expect(quoted, const HomeDailyQuotedText(text: '$text\nplain ending'));
    });

    test('has no reference when the only line is parenthesised', () {
      final quoted = HomeDailyQuotedText.parse(reference);

      expect(quoted, const HomeDailyQuotedText(text: reference));
    });

    test('ignores whitespace around the text and the reference', () {
      final quoted = HomeDailyQuotedText.parse('  $text  \n  $reference  \n');

      expect(
        quoted,
        const HomeDailyQuotedText(text: text, reference: reference),
      );
    });
  });
}
