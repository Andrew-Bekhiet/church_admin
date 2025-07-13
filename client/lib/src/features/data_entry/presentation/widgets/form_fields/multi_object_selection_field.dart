import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:rxdart/rxdart.dart';

class MultiObjectSelectionField<T extends Viewable> extends StatelessWidget {
  final ViewableObjectListController<T> Function(Stream<String?>)
      listController;
  final Widget? Function(BuildContext, FormFieldState<Set<T>>) builder;
  final Set<T> initialValue;
  final String labelText;
  final bool nullable;

  final ItemBuilder<T>? itemBuilder;
  final Future<T> Function(String)? onCreateCustom;

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
    this.onCreateCustom,
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
          ..selectionController.selectAll(state.value?.toList() ?? []);
        final rslt = await showDialog(
          context: state.context,
          builder: (context) {
            return AlertDialog(
              title: Text('اختيار $labelText'),
              actions: [
                OutlinedButton(
                  onPressed: () => Navigator.of(context)
                      .pop(controller.selectionController.currentValue ?? {}),
                  child: const Text('تم'),
                ),
              ],
              content: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SearchField(
                      searchSink: search,
                    ),
                    if (onCreateCustom != null &&
                        FeatureFlagsRepository.I.canAddCustomObjects<T>())
                      StreamBuilder(
                        stream: Rx.combineLatest2(
                          search.stream,
                          controller.filteredObjectsStream,
                          (query, objects) => objects.isEmpty ? query : null,
                        ),
                        builder: (context, snapshot) {
                          if (snapshot.data case final newName?) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: OutlinedButton.icon(
                                icon: const Icon(Symbols.add),
                                onPressed: () async {
                                  final customObject =
                                      await onCreateCustom?.call(search.value!);
                                  if (customObject != null) {
                                    controller.selectionController
                                        .select(customObject);
                                  }
                                  search.add(null);
                                },
                                label: Text('إضافة $newName'),
                              ),
                            );
                          }

                          return const SizedBox.shrink();
                        },
                      ),
                    Expanded(
                      child: ViewableObjectList<T>(
                        objectsController: controller,
                        viewableObjectWidgetConfig: ViewableObjectWidgetConfig(
                          forceShowSecondLine: false,
                          onLongPress: (_) {},
                        ),
                        itemBuilder: itemBuilder,
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
                  icon: const Icon(Symbols.delete),
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
