import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AdvancedSingleObjectSelectionField<
  T extends ViewableWithID,
  E extends Object
>
    extends StatelessWidget {
  final AdvancedFieldController<T?, E> field;
  final String label;
  final ErrorTranslator<E> translateError;
  final ViewableObjectListController<T> Function(Stream<String?>)
  listController;
  final Widget Function(T) previewBuilder;
  final ValueChanged<T?>? onChanged;
  final Future<T> Function(String)? onCreateCustom;
  final bool clearable;
  final int? errorMaxLines;

  const AdvancedSingleObjectSelectionField({
    required this.field,
    required this.label,
    required this.translateError,
    required this.listController,
    required this.previewBuilder,
    this.clearable = true,
    this.onChanged,
    this.onCreateCustom,
    this.errorMaxLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedFieldBuilder<T?, E>(
      field: field,
      builder: (context, state, _) {
        final selected = state.value;
        final error = state.error;

        return TappableInputField<T?>(
          value: selected,
          isEmpty: selected == null,
          focusNode: field.focusNode,
          decoration: InputDecoration(
            labelText: label,
            errorText: error == null ? null : translateError(error),
            errorMaxLines: errorMaxLines,
            suffixIcon: clearable && selected != null && !state.readOnly
                ? IconButton(
                    tooltip: 'حذف القيمة',
                    onPressed: () => _change(null),
                    icon: const Icon(Symbols.delete),
                  )
                : null,
          ),
          onTap: state.readOnly ? null : () => _select(context),
          child: selected == null ? null : previewBuilder(selected),
        );
      },
    );
  }

  void _change(T? value) => (onChanged ?? field.setValue)(value);

  Future<void> _select(BuildContext context) async {
    final canCreate =
        onCreateCustom != null &&
        FeatureFlagsRepository.I.canAddCustomObjects<T>();

    final result = await showDialog<Object>(
      context: context,
      builder: (context) => ObjectSelectionDialog<T>(
        fieldLabel: label,
        listController: listController,
        canCreateFromSearch: canCreate,
      ),
    );

    if (field.isDisposed) return;

    switch ((result, onCreateCustom)) {
      case (final String newName, final createCustom?):
        final created = await createCustom(newName);
        if (!field.isDisposed) _change(created);
      case (final T picked, _) when picked != field.fieldValue:
        _change(picked);
    }
  }
}
