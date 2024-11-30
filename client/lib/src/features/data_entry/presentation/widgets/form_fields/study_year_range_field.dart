import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class StudyYearRangeField extends StatelessWidget {
  final String label;
  final (StudyYear?, StudyYear?)? initialValue;
  final bool nullable;

  final void Function((StudyYear?, StudyYear?)?)? onChanged;
  final void Function((StudyYear?, StudyYear?)?)? onSaved;
  final String? Function((StudyYear?, StudyYear?)?)? validator;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final InputDecoration? decoration;

  const StudyYearRangeField({
    required this.label,
    this.initialValue,
    this.nullable = false,
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
    return FormField<(StudyYear?, StudyYear?)?>(
      initialValue: initialValue,
      autovalidateMode: autovalidateMode,
      onSaved: onSaved,
      validator: validator ??
          (v) => v == null && !nullable ? 'برجاء ادخال ' + label : null,
      builder: (state) {
        return InputDecorator(
          decoration: InputDecoration(
            labelText: label,
            errorText: state.errorText,
            suffixIcon: nullable && state.value != null
                ? IconButton(
                    icon: const Icon(Symbols.delete),
                    tooltip: 'حذف القيمة',
                    onPressed: () {
                      state.didChange(null);
                      onChanged?.call(null);
                    },
                  )
                : null,
          ),
          child: Row(
            children: [
              Expanded(
                child: ObjectSelectionField(
                  listController: (s) => ViewableObjectListController(
                    objectsPaginatableStream: DatabaseService
                        .I.metadata.studyYears
                        .streamAll(searchQuery: s),
                  ),
                  builder: (context, state) => Text(
                    state.value?.name ?? '',
                    textAlign: TextAlign.center,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'من',
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  nullable: false,
                  initialValue: state.value?.$1,
                  labelText: 'من',
                  onChanged: (newValue) {
                    state.didChange((newValue, state.value?.$2));
                    onChanged?.call(state.value);
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ObjectSelectionField(
                  listController: (s) => ViewableObjectListController(
                    objectsPaginatableStream: DatabaseService
                        .I.metadata.studyYears
                        .streamAll(searchQuery: s),
                  ),
                  builder: (context, state) => Text(
                    state.value?.name ?? '',
                    textAlign: TextAlign.center,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'إلى',
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  nullable: false,
                  initialValue: state.value?.$1,
                  labelText: 'إلى',
                  onChanged: (newValue) {
                    state.didChange((state.value?.$1, newValue));
                    onChanged?.call(state.value);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
