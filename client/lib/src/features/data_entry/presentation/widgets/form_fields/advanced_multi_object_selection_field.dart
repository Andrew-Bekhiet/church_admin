import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AdvancedMultiObjectSelectionField<T extends Viewable, E extends Object>
    extends StatelessWidget {
  final AdvancedFieldController<Set<T>, E> field;
  final String label;
  final ErrorTranslator<E> translateError;
  final ViewableObjectListController<T> Function(Stream<String?>)
  listController;
  final Widget Function(Set<T>) previewBuilder;
  final Future<T> Function(String)? onCreateCustom;

  const AdvancedMultiObjectSelectionField({
    required this.field,
    required this.label,
    required this.translateError,
    required this.listController,
    required this.previewBuilder,
    this.onCreateCustom,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdvancedFieldBuilder<Set<T>, E>(
      field: field,
      builder: (context, state, _) {
        final selected = state.value;
        final error = state.error;

        return TappableInputField<Set<T>>(
          value: selected,
          isEmpty: false,
          focusNode: field.focusNode,
          decoration: InputDecoration(
            labelText: label,
            errorText: error == null ? null : translateError(error),
            errorMaxLines: 2,
            suffixIcon: selected.isNotEmpty && !state.readOnly
                ? IconButton(
                    tooltip: 'حذف القيمة',
                    onPressed: () => field.setValue(<T>{}),
                    icon: const Icon(Symbols.delete),
                  )
                : null,
          ),
          onTap: state.readOnly ? null : () => _select(context),
          child: previewBuilder(selected),
        );
      },
    );
  }

  Future<void> _select(BuildContext context) async {
    final result = await showDialog<Set<T>>(
      context: context,
      builder: (context) => MultiObjectSelectionDialog<T>(
        fieldLabel: label,
        selected: field.fieldValue,
        listController: listController,
        onCreateCustom: onCreateCustom,
      ),
    );

    if (result != null && !field.isDisposed && result != field.fieldValue) {
      field.setValue(result);
    }
  }
}
