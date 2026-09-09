import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../../utils.dart';

Future<void> main() async {
  await loadAppFonts();

  const filledAddress = Address(
    houseNumber: 45,
    street: Street(id: 'street-id', name: 'شارع النصر'),
    substreetName: 'شارع التحرير',
    district: District(id: 'district-id', name: 'حي الزهور'),
    specialLandmark: 'بجوار مستشفى السلام',
    storeyNumber: 2,
    apartmentNumber: 5,
  );

  group(
    'AddressPreview =>',
    () {
      testWidgets(
        'build_whenAddressHasNoParts_showsEmptyPreviewHint',
        (tester) async {
          await tester.pumpWidgetBuilder(
            const AddressPreview(address: Address()),
            wrapper: materialAppWithThemeAndLocale(),
          );

          expect(
            find.text('أدخل بيانات العنوان لتظهر المعاينة'),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'build_whenAddressHasParts_showsComposedAddressText',
        (tester) async {
          await tester.pumpWidgetBuilder(
            const AddressPreview(address: filledAddress),
            wrapper: materialAppWithThemeAndLocale(),
          );

          expect(
            find.text(
              '45 ش النصر متفرع من التحرير حي الزهور '
              'بجوار مستشفى السلام الدور 2 شقة 5',
            ),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        'build_whenAddressCarriesServerFullText_showsLocallyComposedText',
        (tester) async {
          await tester.pumpWidgetBuilder(
            const AddressPreview(
              address: Address(
                houseNumber: 12,
                fullAddressText: 'عنوان قديم من الخادم',
              ),
            ),
            wrapper: materialAppWithThemeAndLocale(),
          );

          expect(find.text('عنوان قديم من الخادم'), findsNothing);
          expect(find.text('12'), findsOneWidget);
        },
      );

      testGoldens(
        'UI',
        (tester) async {
          final deviceBuilder =
              DeviceBuilder(wrap: materialAppWithThemeAndLocale())
                ..overrideDevicesForAllScenarios(
                  devices: [
                    const Device(
                      name: 'address_preview',
                      size: Size(420, 140),
                    ),
                  ],
                )
                ..addScenario(
                  widget: const Center(
                    child: AddressPreview(address: filledAddress),
                  ),
                  name: 'filled address',
                )
                ..addScenario(
                  widget: const Center(
                    child: AddressPreview(address: Address()),
                  ),
                  name: 'empty address',
                );

          await tester.pumpDeviceBuilder(deviceBuilder);
          await tester.pumpAndSettle();

          await screenMatchesGolden(tester, 'address_preview');
        },
      );
    },
  );
}
