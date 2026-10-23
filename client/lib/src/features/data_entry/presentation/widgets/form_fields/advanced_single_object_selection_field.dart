import 'package:advanced_forms/advanced_forms.dart';
import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

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
                    key: AdvancedSingleObjectSelectionFieldKeys.clearButton,
                    tooltip: 'حذف القيمة',
                    onPressed: () {
                      AnalyticsService.I.track(
                        const PickerValueClear(PickerFieldKind.singleObject),
                      );
                      _change(null);
                    },
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

    final result = await showDialog<ObjectSelectionResult<T>>(
      context: context,
      builder: (context) => ObjectSelectionDialog<T>(
        fieldLabel: label,
        listController: listController,
        canCreateFromSearch: canCreate,
      ),
    );

    if (field.isDisposed || !context.mounted) return;

    switch (result) {
      case null:
        return;

      case NewObjectNamed<T>(:final name):
        if (onCreateCustom case final createCustom?) {
          await _createAndSelect(context, createCustom, name);
        }

      case ObjectSelected<T>(:final object):
        if (object != field.fieldValue) _change(object);
    }
  }

  Future<void> _createAndSelect(
    BuildContext context,
    Future<T> Function(String) createCustom,
    String newName,
  ) async {
    final T created;
    try {
      created = await createCustom(newName);
    } on Exception catch (error, stackTrace) {
      if (field.isDisposed || !context.mounted) return;

      await LoggingService.I.showErrorDialogAndReport(
        context,
        LogRecord(
          error: error,
          stackTrace: stackTrace,
          data: {'objectType': '$T', 'newName': newName},
        ),
      );

      return;
    }
    if (field.isDisposed) return;

    _change(created);
  }
}

abstract final class AdvancedSingleObjectSelectionFieldKeys {
  static const Key clearButton = ValueKey(
    'Advanced Single Object Selection Field Clear Button Key',
  );
}
