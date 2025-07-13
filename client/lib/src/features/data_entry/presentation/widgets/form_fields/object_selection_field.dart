import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class ObjectSelectionField<T extends ViewableWithID, F extends T?>
    extends StatelessWidget {
  static final Object _selectionNewFromSearch = Object();

  final ViewableObjectListController<T> Function(Stream<String?>)
      listController;
  final Widget? Function(BuildContext, FormFieldState<F>) builder;
  final F initialValue;
  final String dialogFieldLabel;
  final bool nullable;
  final bool enabled;

  final String? Function(F?)? validator;
  final void Function(F?)? onSaved;
  final void Function(F?)? onChanged;
  final Future<T> Function(String)? onCreateCustom;
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
      validator: validator ??
          (nullable
              ? (_) => null
              : (v) => v == null ? 'برجاء اختيار $effectiveFieldLabel' : null),
      onTap: enabled
          ? (state) async {
              final focusScope = FocusScope.of(context);
              final search = BehaviorSubject<String?>.seeded(null);
              final controller = listController(search);

              final rslt = await showDialog(
                context: state.context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('اختيار $dialogFieldLabel'),
                    content: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SearchField(searchSink: search),
                          if (onCreateCustom != null)
                            StreamBuilder(
                              stream: Rx.combineLatest2(
                                search.stream,
                                controller.filteredObjectsStream,
                                (query, objects) =>
                                    objects.isEmpty ? query : null,
                              ),
                              builder: (context, snapshot) {
                                if (snapshot.data case final newName?) {
                                  return OutlinedButton.icon(
                                    icon: const Icon(Symbols.add),
                                    onPressed: () => Navigator.of(context)
                                        .pop(_selectionNewFromSearch),
                                    label: Text('إضافة $newName'),
                                  );
                                }

                                return const SizedBox.shrink();
                              },
                            ),
                          Expanded(
                            child: ViewableObjectList<T>(
                              objectsController: controller,
                              viewableObjectWidgetConfig:
                                  ViewableObjectWidgetConfig(
                                onTap: Navigator.of(context).pop,
                                forceShowSecondLine: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
              await search.close();
              await controller.dispose();

              if (rslt == _selectionNewFromSearch) {
                final customObject = await onCreateCustom?.call(search.value!);
                if (customObject != null) {
                  state.didChange(customObject as F);
                  onChanged?.call(customObject as F);
                  if (nullable) focusScope.nextFocus();
                }
              } else if (rslt is F && rslt != null && rslt != state.value) {
                state.didChange(rslt);
                onChanged?.call(rslt);
                if (nullable) focusScope.nextFocus();
              }
            }
          : null,
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
}
