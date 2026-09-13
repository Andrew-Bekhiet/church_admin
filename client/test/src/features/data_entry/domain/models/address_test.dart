import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Address => textComposedFromParts',
    () {
      test(
        'whenAllPartsAreSet_joinsThemInReadingOrder',
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
        'whenStreetNameIsOnlyThePrefix_dropsTheSegment',
        () {
          const address = Address(
            street: Street(id: 'street-id', name: 'شارع'),
            district: District(id: 'district-id', name: 'الحي'),
          );

          expect(address.textComposedFromParts, isEmpty);
        },
      );

      test(
        'whenServerTextIsPresent_stillComposesFromTheEnteredParts',
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
