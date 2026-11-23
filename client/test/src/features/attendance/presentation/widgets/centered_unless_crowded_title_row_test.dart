import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  const rowWidth = 300.0;
  const spacing = 8.0;
  const titleKey = Key('title');
  const trailingKey = Key('trailing');

  Future<void> pumpRow(
    WidgetTester tester, {
    required TextDirection textDirection,
    required double titleWidth,
    required double trailingWidth,
  }) => tester.pumpWidget(
    Directionality(
      textDirection: textDirection,
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: rowWidth,
          child: CenteredUnlessCrowdedTitleRow(
            spacing: spacing,
            title: ConstrainedBox(
              key: titleKey,
              constraints: BoxConstraints.tightFor(width: titleWidth),
              child: const SizedBox(height: 20),
            ),
            trailing: SizedBox(
              key: trailingKey,
              width: trailingWidth,
              height: 40,
            ),
          ),
        ),
      ),
    ),
  );

  for (final textDirection in TextDirection.values) {
    group('in ${textDirection.name}', () {
      final isRtl = textDirection == TextDirection.rtl;

      testWidgets('pins the trailing widget to the end edge', (tester) async {
        await pumpRow(
          tester,
          textDirection: textDirection,
          titleWidth: 100,
          trailingWidth: 60,
        );

        final trailing = tester.getRect(find.byKey(trailingKey));
        expect(isRtl ? trailing.left : trailing.right, isRtl ? 0 : rowWidth);
      });

      testWidgets('centres the title across the whole row when it fits', (
        tester,
      ) async {
        await pumpRow(
          tester,
          textDirection: textDirection,
          titleWidth: 100,
          trailingWidth: 60,
        );

        expect(tester.getCenter(find.byKey(titleKey)).dx, rowWidth / 2);
      });

      testWidgets(
        'slides the title just clear of the trailing widget when centring '
        'would overlap it',
        (tester) async {
          const trailingWidth = 90.0;
          await pumpRow(
            tester,
            textDirection: textDirection,
            titleWidth: 150,
            trailingWidth: trailingWidth,
          );

          final title = tester.getRect(find.byKey(titleKey));
          expect(
            isRtl ? title.left : title.right,
            isRtl
                ? trailingWidth + spacing
                : rowWidth - trailingWidth - spacing,
          );
        },
      );

      testWidgets('caps the title to the width the trailing widget leaves', (
        tester,
      ) async {
        const trailingWidth = 90.0;
        await pumpRow(
          tester,
          textDirection: textDirection,
          titleWidth: 1000,
          trailingWidth: trailingWidth,
        );

        expect(
          tester.getSize(find.byKey(titleKey)).width,
          rowWidth - trailingWidth - spacing,
        );
      });
    });
  }
}
