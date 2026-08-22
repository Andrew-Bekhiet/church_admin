import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class StudyYearRangeField extends StatelessWidget {
  final String label;
  final StudyYearRange? initialValue;
  final bool nullable;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final InputDecoration? decoration;

  const StudyYearRangeField({
    required this.label,
    this.nullable = false,
    this.initialValue,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.autovalidateMode,
    this.focusNode,
    this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<StudyYearRange?>(
      initialValue: initialValue,
      autovalidateMode: autovalidateMode,
      onSaved: onSaved,
      validator:
          validator ??
          (v) => v == null && !nullable ? 'برجاء ادخال $label' : null,
      builder: (state) {
        return InputDecorator(
          decoration: InputDecoration(
            labelText: label,
            errorText: state.errorText,
            suffixIcon: switch (state.value) {
              null || StudyYearRange(from: null, to: null) => null,
              _ when nullable => IconButton(
                icon: const Icon(Symbols.delete),
                tooltip: 'حذف القيمة',
                onPressed: () {
                  state.didChange(null);
                  onChanged?.call(null);
                },
              ),
              _ => null,
            },
          ),
          child: Row(
            spacing: 8,
            children: [
              Text(
                'من',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
              Expanded(
                child: ObjectSelectionField(
                  key: ValueKey(state.value?.from == null),
                  listController: (s) => ViewableObjectListController(
                    objectsPaginatableStream: DatabaseService
                        .I
                        .metadata
                        .studyYears
                        .streamAll(searchQuery: s),
                  ),
                  builder: (context, state) => Text(
                    state.value?.name ?? '',
                    textAlign: TextAlign.center,
                  ),
                  nullable: nullable && state.value == null,
                  initialValue: state.value?.from,
                  decoration: const InputDecoration(labelText: ''),
                  dialogFieldLabel: 'السنة الدراسية من',
                  onChanged: (newValue) {
                    final newState = (state.value ?? const StudyYearRange())
                        .copyWith(from: newValue);

                    state.didChange(newState);
                    onChanged?.call(newState);
                  },
                ),
              ),
              const SizedBox(width: 2),
              Text(
                'إلى',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
              Expanded(
                child: ObjectSelectionField(
                  key: ValueKey(state.value?.to == null),
                  listController: (s) => ViewableObjectListController(
                    objectsPaginatableStream: DatabaseService
                        .I
                        .metadata
                        .studyYears
                        .streamAll(searchQuery: s),
                  ),
                  builder: (context, state) => Text(
                    state.value?.name ?? '',
                    textAlign: TextAlign.center,
                  ),
                  nullable: nullable && state.value == null,
                  initialValue: state.value?.to,
                  decoration: const InputDecoration(labelText: ''),
                  dialogFieldLabel: 'السنة الدراسية إلى',
                  onChanged: (newValue) {
                    final newState = (state.value ?? const StudyYearRange())
                        .copyWith(to: newValue);

                    state.didChange(newState);
                    onChanged?.call(newState);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  final void Function(StudyYearRange?)? onChanged;
  final void Function(StudyYearRange?)? onSaved;
  final String? Function(StudyYearRange?)? validator;
}
