import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SpiritDataSave', () {
    final savedAt = DateTime(2026, 10, 23);

    test(
      'reports how recent communion and confession were in coarse buckets only',
      () {
        final person = Person(
          id: 'p1',
          name: 'مينا',
          lastKodas: LastRecordedByInfo(
            time: savedAt.subtract(const Duration(days: 3)),
          ),
          lastConfession: LastRecordedByInfo(
            time: savedAt.subtract(const Duration(days: 45)),
          ),
        );

        expect(
          SpiritDataSave(person, savedAt: savedAt, isSuccess: true).properties,
          {
            'communion_recency': 'within_week',
            'confession_recency': 'within_two_months',
            'is_success': true,
          },
        );
      },
    );

    test('a communion three weeks before saving is within the month', () {
      final person = Person(
        id: 'p1',
        name: 'مينا',
        lastKodas: LastRecordedByInfo(
          time: savedAt.subtract(const Duration(days: 21)),
        ),
      );

      expect(
        SpiritDataSave(person, savedAt: savedAt, isSuccess: true).properties,
        containsPair('communion_recency', 'within_month'),
      );
    });

    test('a confession over two months before saving is older', () {
      final person = Person(
        id: 'p1',
        name: 'مينا',
        lastConfession: LastRecordedByInfo(
          time: savedAt.subtract(const Duration(days: 61)),
        ),
      );

      expect(
        SpiritDataSave(person, savedAt: savedAt, isSuccess: true).properties,
        containsPair('confession_recency', 'older'),
      );
    });
  });
}
