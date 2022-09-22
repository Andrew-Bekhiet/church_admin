import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart'
    show
        DataObjectListViewBase,
        ListControllerBase,
        TappableFormField,
        ViewableObjectWidget,
        ViewableWithID;
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ObjectSelectionField<T extends ViewableWithID, F extends T?>
    extends StatelessWidget {
  final ListControllerBase<void, T> Function(Stream<String?>) listController;
  final Widget? Function(BuildContext, FormFieldState<F>) builder;
  final F initialValue;
  final String labelText;
  final bool nullable;

  final String? Function(F?)? validator;
  final void Function(F?)? onSaved;
  final void Function(F?)? onChanged;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final InputDecoration? decoration;

  const ObjectSelectionField({
    required this.listController,
    required this.builder,
    required this.initialValue,
    required this.labelText,
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
    return TappableFormField<F>(
      initialValue: initialValue,
      autovalidateMode: autovalidateMode,
      focusNode: focusNode,
      onSaved: onSaved,
      validator: validator,
      onTap: (state) async {
        final focusScope = FocusScope.of(context);
        final search = BehaviorSubject<String?>.seeded(null);
        final controller = listController(search);

        final rslt = await showDialog(
          context: state.context,
          builder: (context) {
            return AlertDialog(
              title: Text('اختيار ' + labelText),
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
                        onTap: Navigator.of(context).pop,
                        itemBuilder: (o,
                                {onLongPress, onTap, subtitle, trailing}) =>
                            ViewableObjectWidget(
                          o,
                          onTap: () => onTap!(o),
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
