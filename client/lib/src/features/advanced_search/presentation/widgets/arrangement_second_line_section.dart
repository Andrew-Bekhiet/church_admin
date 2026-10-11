import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
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
    final textTheme = TextTheme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8,
      children: [
        Text('السطر الثاني', style: textTheme.titleSmall),
        switch (arrangement.secondLineField) {
          final chosen? => FieldPathPicker(
            queryableType: queryableType,
            field: chosen,
            labelText: 'السطر الثاني',
            onChanged: (newField) =>
                onChanged(arrangement.withSecondLineField(newField)),
            leafTrailing: [
              IconButton(
                key: ArrangementSecondLineSectionKeys.clearSecondLine,
                tooltip: 'استخدام حقل الترتيب',
                onPressed: () =>
                    onChanged(arrangement.withSecondLineField(null)),
                icon: const Icon(Symbols.clear),
              ),
            ],
          ),
          null => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                switch (arrangement.effectiveSecondLineField) {
                  final shown? =>
                    'يُعرض حقل الترتيب الأول: ${FieldPathPicker.topLevelFieldOf(queryableType, shown).label}',
                  null => 'لا يوجد سطر ثانٍ',
                },
                key: ArrangementSecondLineSectionKeys.fallbackSummary,
                style: textTheme.bodyMedium?.copyWith(
                  color: ColorScheme.of(context).onSurfaceVariant,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: TextButton.icon(
                  key: ArrangementSecondLineSectionKeys.chooseSecondLine,
                  onPressed: () => onChanged(
                    arrangement.withSecondLineField(
                      arrangement.effectiveSecondLineField ??
                          queryableType.orderableFields.first,
                    ),
                  ),
                  icon: const Icon(Symbols.add),
                  label: const Text('اختيار سطر ثانٍ مختلف'),
                ),
              ),
            ],
          ),
        },
      ],
    );
  }
}

abstract final class ArrangementSecondLineSectionKeys {
  static const chooseSecondLine = Key(
    'ArrangementSecondLineSection.chooseSecondLine',
  );
  static const clearSecondLine = Key(
    'ArrangementSecondLineSection.clearSecondLine',
  );
  static const fallbackSummary = Key(
    'ArrangementSecondLineSection.fallbackSummary',
  );
}
