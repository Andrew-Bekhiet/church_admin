import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Address => textComposedFromParts',
    () {
      test(
        'joins all parts in reading order',
        () {
          const address = Address(
            houseNumber: 45,
            street: Street(id: 'street-id', name: 'شارع النصر'),
            substreetName: 'شارع التحرير',
            district: District(id: 'district-id', name: 'حي الزهور'),
            specialLandmark: 'بجوار مستشفى السلام',
            storeyNumber: 2,
            apartmentNumber: 5,
          );

          expect(
            address.textComposedFromParts,
            '45 ش النصر متفرع من التحرير حي الزهور '
            'بجوار مستشفى السلام الدور 2 شقة 5',
          );
        },
      );

      test(
        'drops a street or district whose name is only the prefix',
        () {
          const address = Address(
            street: Street(id: 'street-id', name: 'شارع'),
            district: District(id: 'district-id', name: 'الحي'),
          );

          expect(address.textComposedFromParts, isEmpty);
        },
      );

      test(
        'ignores the server full address text',
        () {
          const address = Address(
            houseNumber: 12,
            fullAddressText: 'عنوان قديم من الخادم',
          );

          expect(address.textComposedFromParts, '12');
        },
      );
    },
  );
}
