import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ArrangementSortSection extends StatelessWidget {
  final QueryableType queryableType;
  final ListArrangement arrangement;
  final ValueChanged<ListArrangement> onChanged;

  const ArrangementSortSection({
    required this.queryableType,
    required this.arrangement,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final orderBy = arrangement.orderBy;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 8,
      children: [
        Text('الترتيب', style: TextTheme.of(context).titleSmall),
        ...orderBy.mapIndexed(
          (i, row) => OrderByWidget(
            selectedQueryableType: queryableType,
            orderBy: row,
            onChanged: (newValue) => onChanged(
              arrangement.withOrderBy(
                orderBy.mapIndexed((j, o) => j == i ? newValue : o).toList(),
              ),
            ),
            onRemoved: i == 0
                ? null
                : () => onChanged(
                    arrangement.withOrderBy(
                      orderBy.whereIndexed((j, _) => j != i).toList(),
                    ),
                  ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TextButton.icon(
            key: ArrangementSortSectionKeys.addSort,
            onPressed: queryableType.orderableFields.isEmpty
                ? null
                : () => onChanged(
                    arrangement.withOrderBy([
                      ...orderBy,
                      OrderBy(
                        field: queryableType.orderableFields.firstWhere(
                          (f) => !f.name.endsWith('id'),
                        ),
                      ),
                    ]),
                  ),
            icon: const Icon(Symbols.add),
            label: const Text('إضافة ترتيب'),
          ),
        ),
      ],
    );
  }
}

abstract final class ArrangementSortSectionKeys {
  static const addSort = Key('ArrangementSortSection.addSort');
}
