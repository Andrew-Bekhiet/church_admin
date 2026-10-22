import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class ObjectSelectionField<T extends ViewableWithID, F extends T?>
    extends StatelessWidget {
  final ViewableObjectListController<T> Function(Stream<String?>)
  listController;
  final Widget? Function(BuildContext, FormFieldState<F>) builder;
  final F initialValue;
  final String dialogFieldLabel;
  final bool nullable;
  final bool enabled;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final InputDecoration? decoration;

  const ObjectSelectionField({
    required this.listController,
    required this.builder,
    required this.initialValue,
    required this.dialogFieldLabel,
    this.nullable = true,
    this.enabled = true,
    this.validator,
    this.autovalidateMode,
    this.onSaved,
    this.onChanged,
    this.onCreateCustom,
    this.focusNode,
    this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String effectiveFieldLabel =
        decoration?.labelText ?? dialogFieldLabel;

    return TappableFormField<F>(
      initialValue: initialValue,
      autovalidateMode: autovalidateMode,
      focusNode: focusNode,
      onSaved: onSaved,
      validator:
          validator ??
          (nullable
              ? (_) => null
              : (v) => v == null ? 'برجاء اختيار $effectiveFieldLabel' : null),
      onTap: enabled ? (state) => _select(context, state) : null,
      decoration: (context, state) {
        final inputDecoration = InputDecoration(
          enabled: enabled,
          labelText: effectiveFieldLabel,
          errorText: state.errorText,
          suffixIcon: nullable && state.value != null
              ? IconButton(
                  tooltip: 'حذف القيمة',
                  onPressed: enabled
                      ? () {
                          state.didChange(null);
                          onChanged?.call(null);
                        }
                      : null,
                  icon: const Icon(Symbols.delete),
                )
              : null,
        );

        return decoration?.copyWith(
              labelText: decoration?.labelText ?? dialogFieldLabel,
              errorText: inputDecoration.errorText,
              suffixIcon: inputDecoration.suffixIcon,
              enabled: enabled,
            ) ??
            inputDecoration;
      },
      builder: builder,
    );
  }

  final String? Function(F?)? validator;

  Future<void> _select(BuildContext context, FormFieldState<F> state) async {
    final focusScope = FocusScope.of(context);
    final result = await showDialog<ObjectSelectionResult<T>>(
      context: state.context,
      builder: (context) => ObjectSelectionDialog<T>(
        fieldLabel: dialogFieldLabel,
        listController: listController,
        canCreateFromSearch:
            onCreateCustom != null &&
            FeatureFlagsRepository.I.canAddCustomObjects<T>(),
      ),
    );

    final chosen = switch (result) {
      NewObjectNamed<T>(:final name) => await onCreateCustom?.call(name),
      ObjectSelected<T>(:final object) => object,
      null => null,
    };
    if (chosen is! F || chosen == null || chosen == state.value) return;

    state.didChange(chosen);
    onChanged?.call(chosen);
    if (nullable) focusScope.nextFocus();
  }

  final void Function(F?)? onSaved;
  final void Function(F?)? onChanged;
  final Future<T> Function(String)? onCreateCustom;
}
