import 'package:church_admin/church_admin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

void main() {
  Future<PostHogTextMask> maskOfRenderedIcon(
    WidgetTester tester,
    IconData icon,
  ) async {
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.rtl,
        child: Icon(icon),
      ),
    );
    final richText = tester.widget<RichText>(find.byType(RichText));

    return SessionReplayTextMaskPolicy.revealIconGlyphs(
      richText.text.toPlainText(includeSemanticsLabels: false),
      richText,
    );
  }

  testWidgets('a material icon stays visible', (tester) async {
    expect(
      await maskOfRenderedIcon(tester, Icons.church),
      isA<PostHogTextMaskNone>(),
    );
  });

  testWidgets('a material symbol stays visible', (tester) async {
    expect(
      await maskOfRenderedIcon(tester, Symbols.church),
      isA<PostHogTextMaskNone>(),
    );
  });

  testWidgets('a cupertino icon stays visible', (tester) async {
    expect(
      await maskOfRenderedIcon(tester, CupertinoIcons.person),
      isA<PostHogTextMaskNone>(),
    );
  });

  test("a person's name is masked", () {
    const name = 'مينا جرجس';

    expect(
      SessionReplayTextMaskPolicy.revealIconGlyphs(
        name,
        RichText(text: const TextSpan(text: name)),
      ),
      isA<PostHogTextMaskAll>(),
    );
  });

  test('text that merely contains an icon glyph is masked', () {
    final text = 'مينا ${String.fromCharCode(Icons.church.codePoint)}';

    expect(
      SessionReplayTextMaskPolicy.revealIconGlyphs(
        text,
        RichText(text: TextSpan(text: text)),
      ),
      isA<PostHogTextMaskAll>(),
    );
  });

  test('a text input holding a lone icon glyph is masked', () {
    final glyph = String.fromCharCode(Icons.church.codePoint);

    expect(
      SessionReplayTextMaskPolicy.revealIconGlyphs(
        glyph,
        EditableText(
          controller: TextEditingController(text: glyph),
          focusNode: FocusNode(),
          style: const TextStyle(),
          cursorColor: const Color(0xFF000000),
          backgroundCursorColor: const Color(0xFF000000),
        ),
      ),
      isA<PostHogTextMaskAll>(),
    );
  });
}
