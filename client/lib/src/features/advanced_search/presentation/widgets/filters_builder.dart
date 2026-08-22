import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class FiltersBuilder extends StatelessWidget {
  final QueryableType queryableType;
  final List<Filter> filters;
  final void Function(List<Filter>) onChanged;
  final bool canAddManyFilters;

  const FiltersBuilder({
    required this.queryableType,
    required this.filters,
    required this.onChanged,
    this.canAddManyFilters = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final filterableFields = queryableType.fieldsMetadata.where(
      (field) => !field.isCodeOnly,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...filters.mapIndexed(
          (i, filter) => FilterBuilder(
            queryableType: queryableType,
            filter: filter,
            onFieldChanged: (field) {
              final Filter newFilter;
              if (field.operators.isEmpty ||
                  !(field.fieldQueryableType?.isSelectableAsReference ??
                      true)) {
                final newField = field.redirectTo(
                  field.fieldQueryableType!.fieldsMetadata.firstWhere(
                    (f) =>
                        !f.isCodeOnly &&
                        (f.operators.isNotEmpty ||
                            (f.fieldQueryableType?.isSelectableAsReference ??
                                false)),
                  ),
                );
                newFilter = Filter(
                  newField,
                  newField.operators.first,
                  null,
                );
              } else {
                newFilter = Filter(field, field.operators.first, null);
              }

              onChanged(
                filters.mapIndexed((j, e) => i == j ? newFilter : e).toList(),
              );
            },
            onOperatorChanged: (operator) {
              onChanged(
                filters
                    .mapIndexed(
                      (j, e) => i == j
                          ? filter.copyWith(operator: operator, value: null)
                          : e,
                    )
                    .toList()
                    .cast(),
              );
            },
            onValueChanged: (value) {
              onChanged(
                filters
                    .mapIndexed(
                      (j, e) => i == j ? filter.copyWith(value: value) : e,
                    )
                    .toList()
                    .cast(),
              );
            },
            onFilterRemoved: () {
              onChanged(filters.whereIndexed((j, e) => i != j).toList());
            },
          ),
        ),
        if (canAddManyFilters || filters.isEmpty)
          ElevatedButton.icon(
            onPressed: () => onChanged([
              ...filters,
              Filter(
                filterableFields.first,
                filterableFields.first.operators.firstOrNull ??
                    filterableFields.first.operators.first,
                null,
              ),
            ]),
            icon: const Icon(Symbols.filter_alt),
            label: Text(
              'إضافة شرط ل${queryableType.label.replaceFirst(RegExp('^ال'), 'ل')}',
            ),
          ),
      ],
    );
  }
}

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
    final filterableFields = queryableType.fieldsMetadata
        .where((field) => !field.isCodeOnly)
        .toList();

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
                          field.fieldQueryableType!.fieldsMetadata.firstWhere(
                            (f) =>
                                !f.isCodeOnly &&
                                (f.operators.isNotEmpty ||
                                    (f
                                            .fieldQueryableType
                                            ?.isSelectableAsReference ??
                                        false)),
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

class BirthdayFilter extends StatelessWidget {
  final String? value;
  final void Function(String? value) onChanged;
  const BirthdayFilter({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //2025-07-05T
    final [month, day] =
        value?.split('-') ??
        DateTime.now()
            .toIso8601String()
            .split('T')
            .first
            .substring(5, 10)
            .split('-');

    final parsedMonth = int.tryParse(month);
    final parsedDay = int.tryParse(day);

    return Row(
      children: [
        Expanded(
          child: DropdownButtonFormField<int>(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            initialValue: parsedMonth,
            onChanged: (v) => _onDateChanged(v, parsedDay),
            items: List.generate(12, (i) => i + 1)
                .map(
                  (i) => DropdownMenuItem(
                    value: i,
                    child: Text(
                      DateFormat.MMMM('ar-EG').format(DateTime(0, i)),
                    ),
                  ),
                )
                .toList(),
            isExpanded: true,
          ),
        ),
        const SizedBox(width: 3),
        Expanded(
          child: DropdownButtonFormField<int?>(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            initialValue: parsedDay,
            onChanged: (v) => _onDateChanged(parsedMonth, v),
            items: [null, ...List.generate(31, (i) => i + 1)]
                .map(
                  (i) => DropdownMenuItem(
                    value: i,
                    child: Text(i?.toString() ?? 'أي يوم'),
                  ),
                )
                .toList(),
            isExpanded: true,
          ),
        ),
      ],
    );
  }

  void _onDateChanged(int? newMonth, int? newDay) {
    onChanged(
      '${newMonth?.toString().padLeft(2, '0') ?? '%'}-${newDay?.toString().padLeft(2, '0') ?? '%'}',
    );
  }
}
