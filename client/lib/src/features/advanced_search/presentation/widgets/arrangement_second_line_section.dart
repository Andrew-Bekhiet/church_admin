import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:material_symbols_icons/symbols.dart';

class ArrangementSecondLineSection extends StatelessWidget {
  final QueryableType queryableType;
  final ListArrangement arrangement;
  final ValueChanged<ListArrangement> onChanged;

  const ArrangementSecondLineSection({
    required this.queryableType,
    required this.arrangement,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);
    final chosenField = arrangement.secondLineField;

    return ArrangementSection(
      icon: Symbols.subtitles,
      title: 'السطر الثاني',
      caption: 'ما يظهر تحت اسم كل عنصر في القائمة',
      children: [
        SegmentedButton<bool>(
          showSelectedIcon: false,
          segments: const [
            ButtonSegment(
              value: false,
              icon: Icon(Symbols.sort),
              label: Text(
                'حقل الترتيب',
                key: ArrangementSecondLineSectionKeys.followSort,
              ),
            ),
            ButtonSegment(
              value: true,
              icon: Icon(Symbols.tune),
              label: Text(
                'حقل آخر',
                key: ArrangementSecondLineSectionKeys.chooseSecondLine,
              ),
            ),
          ],
          selected: {chosenField != null},
          onSelectionChanged: (selection) {
            if (!selection.single) {
              onChanged(arrangement.withSecondLineField(null));

              return;
            }

            final field =
                arrangement.effectiveSecondLineField ??
                queryableType.orderableFields.firstOrNull;
            if (field == null) return;

            onChanged(arrangement.withSecondLineField(field));
          },
        ),
        if (chosenField != null)
          FieldPathPicker(
            queryableType: queryableType,
            field: chosenField,
            onChanged: (newField) =>
                onChanged(arrangement.withSecondLineField(newField)),
          ),
        DecoratedBox(
          decoration: ShapeDecoration(
            color: colorScheme.surface,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              spacing: 12,
              children: [
                CircleAvatar(
                  backgroundColor: colorScheme.secondaryContainer,
                  foregroundColor: colorScheme.onSecondaryContainer,
                  child: Icon(queryableType.icon),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 6,
                    children: [
                      FractionallySizedBox(
                        widthFactor: 0.45,
                        child: DecoratedBox(
                          decoration: ShapeDecoration(
                            color: colorScheme.outlineVariant,
                            shape: const StadiumBorder(),
                          ),
                          child: const SizedBox(height: 10),
                        ),
                      ),
                      Text(
                        switch (arrangement.effectiveSecondLineField) {
                          final shown? => FieldPathPicker.topLevelFieldOf(
                            queryableType,
                            shown,
                          ).label,
                          null => 'لا يوجد سطر ثانٍ',
                        },
                        key: ArrangementSecondLineSectionKeys.preview,
                        style: textTheme.bodyMedium?.copyWith(
                          color: colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

abstract final class ArrangementSecondLineSectionKeys {
  static const followSort = Key('ArrangementSecondLineSection.followSort');
  static const chooseSecondLine = Key(
    'ArrangementSecondLineSection.chooseSecondLine',
  );
  static const preview = Key('ArrangementSecondLineSection.preview');
}
