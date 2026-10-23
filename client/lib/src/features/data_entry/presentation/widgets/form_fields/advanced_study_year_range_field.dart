import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class AdvancedStudyYearRangeField<E extends Object> extends StatelessWidget {
  final AdvancedFieldController<StudyYearRange?, E> field;
  final String label;
  final ErrorTranslator<E> translateError;
  final MetadataListController<StudyYear> studyYears;
  final bool clearable;

  const AdvancedStudyYearRangeField({
    required this.field,
    required this.label,
    required this.translateError,
    required this.studyYears,
    this.clearable = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final edgeLabelStyle = TextTheme.of(
      context,
    ).titleMedium?.copyWith(color: ColorScheme.of(context).primaryContainer);

    return AdvancedFieldBuilder<StudyYearRange?, E>(
      field: field,
      builder: (context, state, _) {
        final range = state.value;
        final error = state.error;
        final hasAnyYear = range?.from != null || range?.to != null;

        return InputDecorator(
          decoration: InputDecoration(
            labelText: label,
            enabled: !state.readOnly,
            errorText: error == null ? null : translateError(error),
            suffixIcon: clearable && hasAnyYear && !state.readOnly
                ? IconButton(
                    tooltip: 'حذف القيمة',
                    onPressed: () {
                      AnalyticsService.I.track(
                        const PickerValueClear(PickerFieldKind.studyYearRange),
                      );
                      field.setValue(null);
                    },
                    icon: const Icon(Symbols.delete),
                  )
                : null,
          ),
          child: Row(
            spacing: 8,
            children: [
              Text('من', style: edgeLabelStyle),
              Expanded(
                child: TappableInputField<StudyYear?>(
                  key: AdvancedStudyYearRangeFieldKeys.from,
                  value: range?.from,
                  isEmpty: range?.from == null,
                  focusNode: field.focusNode,
                  decoration: const InputDecoration(),
                  onTap: state.readOnly
                      ? null
                      : () => _pick(context, 'السنة الدراسية من', isFrom: true),
                  child: Text(
                    range?.from?.name ?? '',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Text('إلى', style: edgeLabelStyle),
              Expanded(
                child: TappableInputField<StudyYear?>(
                  key: AdvancedStudyYearRangeFieldKeys.to,
                  value: range?.to,
                  isEmpty: range?.to == null,
                  decoration: const InputDecoration(),
                  onTap: state.readOnly
                      ? null
                      : () =>
                            _pick(context, 'السنة الدراسية إلى', isFrom: false),
                  child: Text(
                    range?.to?.name ?? '',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pick(
    BuildContext context,
    String fieldLabel, {
    required bool isFrom,
  }) async {
    final result = await showDialog<ObjectSelectionResult<StudyYear>>(
      context: context,
      builder: (context) => ObjectSelectionDialog<StudyYear>(
        fieldLabel: fieldLabel,
        listController: studyYears,
        canCreateFromSearch: false,
      ),
    );
    if (field.isDisposed) return;

    if (result case ObjectSelected(object: final picked)) {
      final range = field.fieldValue ?? const StudyYearRange();
      field.setValue(
        isFrom ? range.copyWith(from: picked) : range.copyWith(to: picked),
      );
    }
  }
}

abstract final class AdvancedStudyYearRangeFieldKeys {
  static const Key from = ValueKey('Advanced Study Year Range From Key');
  static const Key to = ValueKey('Advanced Study Year Range To Key');
}
