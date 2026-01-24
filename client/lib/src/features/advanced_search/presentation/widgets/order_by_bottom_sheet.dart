import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:rxdart/rxdart.dart';

class OrderByBottomSheet extends StatelessWidget {
  final QueryableType queryableType;
  final List<OrderBy> initialOrderBy;
  final void Function(List<OrderBy>) onChanged;

  const OrderByBottomSheet({
    required this.queryableType,
    required this.initialOrderBy,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final orderByValue = initialOrderBy;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'ترتيب ${queryableType.label}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                ...orderByValue.mapIndexed(
                  (i, orderBy) => OrderByWidget(
                    selectedQueryableType: queryableType,
                    orderBy: orderBy,
                    onChanged: (newValue) => onChanged(
                      orderByValue
                          .mapIndexed(
                            (j, o) => j == i ? newValue : o,
                          )
                          .toList(),
                    ),
                    onRemoved: i == 0
                        ? null
                        : () => onChanged(
                            orderByValue
                                .whereIndexed((j, _) => j != i)
                                .toList(),
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: FilledButton.icon(
                    onPressed: () {
                      onChanged(
                        [
                          ...orderByValue,
                          OrderBy(
                            field: queryableType.fieldsMetadata.firstWhere(
                              (f) => !f.name.endsWith('id') && f.isOrderable,
                            ),
                          ),
                        ],
                      );
                    },
                    icon: const Icon(Symbols.add),
                    label: const Text('إضافة ترتيب'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<List<OrderBy>?> showOrderByBottomSheet(
  BuildContext context, {
  required QueryableType queryableType,
  required BehaviorSubject<List<OrderBy>> orderBySubject,
}) {
  return showModalBottomSheet<List<OrderBy>?>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    builder: (context) => StreamBuilder<List<OrderBy>>(
      initialData: orderBySubject.value,
      stream: orderBySubject.stream,
      builder: (context, snapshot) => OrderByBottomSheet(
        initialOrderBy: snapshot.requireData,
        onChanged: orderBySubject.add,
        queryableType: queryableType,
      ),
    ),
  );
}
