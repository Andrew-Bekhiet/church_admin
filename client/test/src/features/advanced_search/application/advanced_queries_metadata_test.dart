import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'AdvancedQueriesMetadata =>',
    () {
      test(
        'queryableTypes',
        () {
          expect(AdvancedQueriesMetadata().allQueryables, isNotEmpty);

          for (final MapEntry(:key, :value)
              in AdvancedQueriesMetadata().allQueryablesByType.entries) {
            expect(value.type, key);
          }
        },
      );
    },
  );
}
