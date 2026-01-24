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

    final orderableFields = selectedQueryableType.fieldsMetadata
        .where((p) => p.isOrderable && !p.isCodeOnly)
        .toList();

    final FieldMetadata field = orderBy.field;
    final FieldMetadata parentField;
    final FieldMetadata? childField;

    if (field is RedirectingFieldMetadata &&
        field.isExpandable &&
        orderableFields.contains(field.parentField)) {
      parentField = field.parentField;
      childField = field.targetField;
    } else {
      parentField = field;
      childField = null;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<FieldMetadata>(
                  decoration: const InputDecoration(
                    labelText: 'ترتيب حسب',
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  isExpanded: true,
                  initialValue: parentField,
                  items: orderableFields
                      .map(
                        (p) => DropdownMenuItem(
                          alignment: Alignment.center,
                          value: p,
                          child: Text(p.label),
                        ),
                      )
                      .toList(),
                  onChanged: (field) {
                    final FieldMetadata newField;
                    if (field!.operators.isEmpty ||
                        !(field.fieldQueryableType?.isSelectableAsReference ??
                            true)) {
                      newField = field.redirectTo(
                        field.fieldQueryableType!.fieldsMetadata.firstWhere(
                          (f) =>
                              !f.isCodeOnly &&
                              f.isOrderable &&
                              (f.operators.isNotEmpty ||
                                  (f
                                          .fieldQueryableType
                                          ?.isSelectableAsReference ??
                                      false)),
                        ),
                      );
                    } else {
                      newField = field;
                    }

                    onChanged(
                      OrderBy(
                        field: newField,
                        value: orderBy.value,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 8),
              if (childField == null)
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
          ),
          if (childField != null)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color:
                        themeData
                            .inputDecorationTheme
                            .border
                            ?.borderSide
                            .color ??
                        themeData.colorScheme.primary,
                    width: 1.2,
                  ),
                ),
              ),
              child: OrderByWidget(
                selectedQueryableType: parentField.fieldQueryableType!,
                orderBy: OrderBy(field: childField, value: orderBy.value),
                onChanged: (newOrderBy) => onChanged(
                  OrderBy(
                    field: parentField.redirectTo(newOrderBy.field),
                    value: newOrderBy.value,
                  ),
                ),
                onRemoved: onRemoved,
              ),
            ),
        ],
      ),
    );
  }
}
