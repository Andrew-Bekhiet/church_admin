import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('update user data analytics contract', () {
    final savedAt = DateTime(2026, 10, 23);

    final contracts = <(AnalyticsEvent, String, Json)>[
      (
        SpiritDataSave(
          Person(
            id: 'p1',
            name: 'مينا',
            lastKodas: LastRecordedByInfo(
              time: savedAt.subtract(const Duration(days: 10)),
            ),
          ),
          savedAt: savedAt,
          isSuccess: false,
        ),
        'update_user_data:spirit_data_save',
        {
          'communion_recency': 'within_month',
          'confession_recency': null,
          'is_success': false,
        },
      ),
    ];

    for (final (event, expectedName, expectedProperties) in contracts) {
      test('$expectedName sends ${expectedProperties.keys.join(', ')}', () {
        expect(event.name, expectedName);
        expect(event.properties, expectedProperties);
      });
    }
  });
}
