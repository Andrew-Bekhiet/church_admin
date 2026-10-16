import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('swapping the focus node makes the input focus the new node', (
    tester,
  ) async {
    final firstNode = FocusNode();
    final secondNode = FocusNode();
    addTearDown(firstNode.dispose);
    addTearDown(secondNode.dispose);

    Widget fieldWith(FocusNode node) => MaterialApp(
      home: Scaffold(
        body: TappableInputField<int>(
          value: 1,
          isEmpty: false,
          decoration: const InputDecoration(labelText: 'field'),
          onTap: () async {},
          focusNode: node,
          child: const Text('1'),
        ),
      ),
    );

    await tester.pumpWidget(fieldWith(firstNode));
    await tester.pumpWidget(fieldWith(secondNode));
    await tester.tap(find.byType(TappableInputField<int>));
    await tester.pump();

    expect(secondNode.hasFocus, isTrue);
  });
}
