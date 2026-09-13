import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../utils.dart';

void main() {
  group(
    'AddressPreview =>',
    () {
      testWidgets(
        'shows the text composed from the entered parts, not the server text',
        (tester) async {
          await tester.pumpWidget(
            materialAppWithThemeAndLocale()(
              const AddressPreview(
                address: Address(
                  houseNumber: 12,
                  fullAddressText: 'عنوان قديم من الخادم',
                ),
              ),
            ),
          );

          expect(find.text('عنوان قديم من الخادم'), findsNothing);
          expect(find.text('12'), findsOneWidget);
        },
      );
    },
  );
}
