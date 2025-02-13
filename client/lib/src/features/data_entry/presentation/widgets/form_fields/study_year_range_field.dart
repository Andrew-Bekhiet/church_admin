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
            border: outLineInputBorder(context),
            enabledBorder: outLineInputBorder(context),
            focusedBorder: outLineInputBorder(context),
            labelText: label,
            labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
            errorText: state.errorText,
            suffixIcon: nullable && state.value != null
                ? IconButton(
                    icon: Icon(Symbols.delete , color: Theme.of(context).colorScheme.primaryContainer,),
                    tooltip: 'حذف القيمة',
                    onPressed: () {
                      state.didChange(null);
                      onChanged?.call(null);
                    },
                  )
                : null,
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
                  listController: (s) => ViewableObjectListController(
                    objectsPaginatableStream: DatabaseService
                        .I.metadata.studyYears
                        .streamAll(searchQuery: s),
                  ),
                  builder: (context, state) => Text(
                    state.value?.name ?? '',
                    textAlign: TextAlign.center,
                  ),
                  decoration: InputDecoration(
                    border: outLineInputBorder(context),
                    enabledBorder: outLineInputBorder(context),
                    focusedBorder: outLineInputBorder(context),
                    labelText: '',
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
              const SizedBox(width: 2),
              Text(
                'الي',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
              ),
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
                  decoration: InputDecoration(
                    border: outLineInputBorder(context),
                    enabledBorder: outLineInputBorder(context),
                    focusedBorder: outLineInputBorder(context),
                    labelText: '',
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

  OutlineInputBorder outLineInputBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }
}
