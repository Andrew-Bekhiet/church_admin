import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class FilterBuilder extends StatelessWidget {
  final QueryableType queryableType;
  final Filter filter;
  final void Function(FieldMetadata<Object> newField) onFieldChanged;
  final void Function(Operator newOperator) onOperatorChanged;
  final void Function(Object? value) onValueChanged;
  final void Function() onFilterRemoved;

  const FilterBuilder({
    required this.queryableType,
    required this.filter,
    required this.onFieldChanged,
    required this.onOperatorChanged,
    required this.onValueChanged,
    required this.onFilterRemoved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final filterableFields = queryableType.filterableFields.toList();

    final Filter(:field, :operator, :value) = filter;
    final FieldMetadata parentField;
    final FieldMetadata? childField;

    if (field is RedirectingFieldMetadata &&
        field.isExpandable &&
        filterableFields.contains(field.parentField)) {
      parentField = field.parentField;
      childField = field.targetField;
    } else {
      parentField = field;
      childField = null;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: DropdownButtonFormField<FieldMetadata<Object>>(
                  decoration: const InputDecoration(labelText: 'بشرط'),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  isExpanded: true,
                  initialValue: parentField,
                  items: filterableFields
                      .map(
                        (f) => DropdownMenuItem(
                          alignment: Alignment.center,
                          value: f,
                          child: Text(f.label, textAlign: TextAlign.center),
                        ),
                      )
                      .toList(),
                  onChanged: (f) => onFieldChanged(f!),
                ),
              ),
              const SizedBox(width: 3),
              if (parentField.operators.isNotEmpty && childField == null)
                Expanded(
                  flex: 2,
                  child: DropdownButtonFormField<Operator>(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    isExpanded: true,
                    initialValue: operator,
                    items: parentField.operators
                        .map(
                          (o) => DropdownMenuItem(
                            alignment: Alignment.center,
                            value: o,
                            child: Text(o.label, textAlign: TextAlign.center),
                          ),
                        )
                        .toList(),
                    onChanged: (o) => onOperatorChanged(o!),
                  ),
                ),
              IconButton(
                onPressed: onFilterRemoved,
                icon: const Icon(Symbols.clear),
              ),
            ],
          ),
          if (parentField.operators.isNotEmpty && childField == null)
            ValueInputWidget(
              key: ValueKey((queryableType, parentField)),
              queryableType: queryableType,
              field: parentField,
              operator: operator,
              value: value,
              onChanged: onValueChanged,
            )
          else
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color:
                        theme.inputDecorationTheme.border?.borderSide.color ??
                        theme.colorScheme.primary,
                    width: 1.2,
                  ),
                ),
              ),
              child: FilterBuilder(
                queryableType: parentField.fieldQueryableType!,
                filter: Filter(childField!, operator, value),
                onFieldChanged: (newField) {
                  if (field.operators.isEmpty ||
                      !(field.fieldQueryableType?.isSelectableAsReference ??
                          true)) {
                    onFieldChanged(
                      parentField.redirectTo(
                        field.redirectTo(
                          field.fieldQueryableType!.filterableFields.firstWhere(
                            (f) =>
                                f.operators.isNotEmpty ||
                                (f
                                        .fieldQueryableType
                                        ?.isSelectableAsReference ??
                                    false),
                          ),
                        ),
                      ),
                    );
                  } else {
                    onFieldChanged(parentField.redirectTo(newField));
                  }
                },
                onOperatorChanged: onOperatorChanged,
                onValueChanged: onValueChanged,
                onFilterRemoved: onFilterRemoved,
              ),
            ),
        ],
      ),
    );
  }
}
