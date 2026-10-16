import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../material_ui_test_app.dart';

void main() {
  group(
    'AddressPreview =>',
    () {
      testWidgets(
        'shows the text composed from the entered parts, not the server text',
        (tester) async {
          await tester.pumpWidget(
            MaterialUiTestApp.withThemeAndLocale(
              child: const AddressPreview(
                address: Address(
                  houseCode: '12',
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
