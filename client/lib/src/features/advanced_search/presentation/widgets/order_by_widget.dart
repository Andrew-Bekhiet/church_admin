import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class OrderByWidget extends StatelessWidget {
  final QueryableType selectedQueryableType;
  final OrderBy orderBy;
  final void Function(OrderBy) onChanged;
  final void Function()? onRemoved;

  const OrderByWidget({
    required this.selectedQueryableType,
    required this.orderBy,
    required this.onChanged,
    this.onRemoved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return FieldPathPicker(
      queryableType: selectedQueryableType,
      field: orderBy.field,
      labelText: 'ترتيب حسب',
      onChanged: (newField) => onChanged(
        OrderBy(field: newField, value: orderBy.value),
      ),
      leafTrailing: [
        Expanded(
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            onTap: () => onChanged(
              orderBy.copyWith(
                value: switch (orderBy.value) {
                  OrderByValue.asc => OrderByValue.desc,
                  OrderByValue.desc => OrderByValue.asc,
                },
              ),
            ),
            child: InputDecorator(
              decoration: const InputDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  AnimatedRotation(
                    duration: Durations.medium1,
                    turns: orderBy.value == OrderByValue.asc ? 0 : 0.5,
                    child: const Icon(Symbols.arrow_upward_rounded),
                  ),
                  Expanded(
                    child: Text(
                      switch (orderBy.value) {
                        OrderByValue.asc => 'تصاعدي',
                        OrderByValue.desc => 'تنازلي',
                      },
                      textAlign: TextAlign.center,
                      style: themeData.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (onRemoved != null)
          IconButton(
            onPressed: onRemoved,
            icon: const Icon(Symbols.clear),
          ),
      ],
    );
  }
}
