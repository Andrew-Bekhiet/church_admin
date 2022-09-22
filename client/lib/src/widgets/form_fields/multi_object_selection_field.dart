import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show
        DataObjectListViewBase,
        ItemBuilder,
        ListControllerBase,
        TappableFormField,
        ViewableObjectWidget,
        ViewableWithID;
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class MultiObjectSelectionField<T extends ViewableWithID>
    extends StatelessWidget {
  final ListControllerBase<void, T> Function(Stream<String?>) listController;
  final Widget? Function(BuildContext, FormFieldState<Set<T>>) builder;
  final Set<T> initialValue;
  final String labelText;
  final bool nullable;

  final ItemBuilder<T>? itemBuilder;

  final String? Function(Set<T>?)? validator;
  final void Function(Set<T>?)? onSaved;
  final void Function(Set<T>?)? onChanged;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final InputDecoration? decoration;

  const MultiObjectSelectionField({
    required this.listController,
    required this.builder,
    required this.initialValue,
    required this.labelText,
    this.itemBuilder,
    this.nullable = true,
    this.validator,
    this.autovalidateMode,
    this.onSaved,
    this.onChanged,
    this.focusNode,
    this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TappableFormField<Set<T>>(
      initialValue: initialValue,
      autovalidateMode: autovalidateMode,
      focusNode: focusNode,
      onSaved: onSaved,
      validator: validator,
      onTap: (state) async {
        final focusScope = FocusScope.of(context);
        final search = BehaviorSubject<String?>.seeded(null);
        final controller = listController(search)
          ..selectAll(state.value?.toList() ?? []);

        final rslt = await showDialog(
          context: state.context,
          builder: (context) {
            return AlertDialog(
              title: Text('اختيار ' + labelText),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context)
                      .pop(controller.currentSelection ?? {}),
                  child: const Text('تم'),
                ),
              ],
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SearchField(
                      searchSink: search,
                    ),
                    Expanded(
                      child: DataObjectListViewBase<void, T>(
                        controller: controller,
                        autoDisposeController: true,
                        itemBuilder: itemBuilder ??
                            (
                              o, {
                              onLongPress,
                              onTap,
                              subtitle,
                              trailing,
                            }) =>
                                ViewableObjectWidget(
                                  o,
                                  trailing: trailing,
                                  onTap: onTap != null ? () => onTap(o) : null,
                                  onLongPress: onLongPress != null
                                      ? () => onLongPress(o)
                                      : null,
                                  wrapInCard: false,
                                  showSubtitle: false,
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

        if (rslt != null && rslt != state.value) {
          state.didChange(rslt);
          onChanged?.call(rslt);
          if (nullable) focusScope.nextFocus();
        }
      },
      decoration: (context, state) {
        final inputDecoration = InputDecoration(
          labelText: labelText,
          errorText: state.errorText,
          suffixIcon: nullable && state.value != null
              ? IconButton(
                  tooltip: 'حذف القيمة',
                  onPressed: () {
                    state.didChange(null);
                    onChanged?.call(null);
                  },
                  icon: const Icon(Icons.delete),
                )
              : null,
        );

        return decoration?.copyWith(
              labelText: decoration?.labelText ?? labelText,
              errorText: inputDecoration.errorText,
              suffixIcon: inputDecoration.suffixIcon,
            ) ??
            inputDecoration;
      },
      builder: builder,
    );
  }
}
