import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataCheckOverrideSelector extends StatelessWidget {
  final bool canOverride;

  const DataCheckOverrideSelector({required this.canOverride, super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final colorScheme = ColorScheme.of(context);

    return BlocBuilder<DataCheckOverrideCubit, DataCheckOverrideState>(
      builder: (context, state) {
        final error = state.error;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Text('تعديل الحالة يدويًا', style: textTheme.titleSmall),
            SegmentedButton<DataCheckOverride>(
              showSelectedIcon: false,
              segments: [
                for (final override in DataCheckOverride.values)
                  ButtonSegment(value: override, label: Text(override.label)),
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
                style: textTheme.bodySmall?.copyWith(color: colorScheme.error),
              ),
          ],
        );
      },
    );
  }
}
