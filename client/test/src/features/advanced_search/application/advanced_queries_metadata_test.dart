import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'AdvancedQueriesMetadata =>',
    () {
      test(
        'queryableTypes',
        () {
          expect(AdvancedQueriesMetadata.queryableTypes, isNotEmpty);

          for (final MapEntry(:key, :value)
              in AdvancedQueriesMetadata.queryableTypes.entries) {
            expect(value.type, key);
          }
        },
      );

      test(
        'dummyInstanceForType',
        () {
          expect(AdvancedQueriesMetadata.dummyInstanceForType, isNotEmpty);

          for (final MapEntry(:key, :value)
              in AdvancedQueriesMetadata.dummyInstanceForType.entries) {
            expect(
              AdvancedQueriesMetadata.queryableTypes[value.runtimeType]?.name ??
                  value.runtimeType
                      .toString()
                      .replaceAll(RegExp(r'_|\$|(Impl)'), ''),
              key.toString(),
            );
          }
        },
      );
      
    },
  );
}
