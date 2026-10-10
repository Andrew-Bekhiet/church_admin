import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class DataCheckOverrideSelector extends StatelessWidget {
  static const String explanation = 'تجاوز نتيجة التحقق التلقائي';

  final bool canOverride;

  const DataCheckOverrideSelector({required this.canOverride, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);

    return BlocBuilder<DataCheckOverrideCubit, DataCheckOverrideState>(
      builder: (context, state) {
        final error = state.error;

        return Card.outlined(
          margin: EdgeInsets.zero,
          color: colorScheme.surfaceContainerHigh,
          child: Padding(
            padding: const EdgeInsetsDirectional.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Row(
                  spacing: 8,
                  children: [
                    const Icon(Symbols.tune, size: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('تعديل يدوي', style: textTheme.titleSmall),
                          Text(explanation, style: textTheme.bodySmall),
                        ],
                      ),
                    ),
                  ],
                ),
                SegmentedButton<DataCheckOverride>(
                  expandedInsets: EdgeInsets.zero,
                  showSelectedIcon: false,
                  style: const ButtonStyle(
                    visualDensity: VisualDensity.compact,
                  ),
                  segments: [
                    for (final override in DataCheckOverride.values)
                      ButtonSegment(
                        value: override,
                        label: Text(override.label),
                      ),
                  ],
                  selected: {
                    DataCheckOverride.fromUserOverride(
                      state.dataCheck.userOverride,
                    ),
                  },
                  onSelectionChanged: canOverride && !state.isSaving
                      ? (selection) => context
                            .read<DataCheckOverrideCubit>()
                            .choose(selection.single)
                      : null,
                ),
                if (state.isSaving) const LinearProgressIndicator(),
                if (!canOverride)
                  Text(
                    'لا تملك صلاحية تعديل بيانات هذه العائلة',
                    style: textTheme.bodySmall,
                  ),
                if (error != null)
                  Text(
                    error.message,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.error,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
