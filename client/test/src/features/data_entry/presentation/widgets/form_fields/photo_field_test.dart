import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../screens/edit_person/edit_person_screen_harness.dart';

void main() {
  setUp(() => EditPersonScreenHarness().install());

  tearDown(resetGlobalProviderContainer);

  testWidgets('a photo field without an initial value builds', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PhotoField(
            object: Person(id: 'person-id', name: 'مينا'),
            circleCrop: true,
            canDelete: true,
          ),
        ),
      ),
    );

    expect(find.byType(PhotoPickerAppBar), findsOneWidget);
  });
}
