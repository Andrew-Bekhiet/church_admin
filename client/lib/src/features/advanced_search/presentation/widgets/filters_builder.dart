import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:material_ui/material_ui.dart';
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
    final filterableFields = queryableType.filterableFields;

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
                  field.fieldQueryableType!.filterableFields.firstWhere(
                    (f) =>
                        f.operators.isNotEmpty ||
                        (f.fieldQueryableType?.isSelectableAsReference ??
                            false),
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
        if (filterableFields.isNotEmpty &&
            (canAddManyFilters || filters.isEmpty))
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
