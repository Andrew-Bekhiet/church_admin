import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SelectSearchTextOnAttendanceMarked', () {
    late TextEditingController controller;

    setUp(() => controller = TextEditingController(text: 'مينا'));
    tearDown(() => controller.dispose());

    Widget buildSubject() {
      return MaterialApp(
        home: Scaffold(
          body: SelectSearchTextOnAttendanceMarked(
            controller: controller,
            child: Column(
              children: [
                TextField(controller: controller),
                Builder(
                  builder: (context) => TextButton(
                    onPressed: () =>
                        const AttendanceMarkedNotification().dispatch(context),
                    child: const Text('mark'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    testWidgets('marking attendance selects the whole search text', (
      tester,
    ) async {
      await tester.pumpWidget(buildSubject());
      controller.selection = const TextSelection.collapsed(offset: 2);

      await tester.tap(find.text('mark'));
      await tester.pump();

      expect(
        controller.selection,
        TextSelection(baseOffset: 0, extentOffset: controller.text.length),
      );
    });
  });
}
