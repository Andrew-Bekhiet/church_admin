import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class ConditionBuilder extends StatelessWidget {
  final Type type;
  final List<Condition> conditions;
  final void Function(List<Condition>) onChanged;

  const ConditionBuilder({
    required this.type,
    required this.conditions,
    required this.onChanged,
    super.key,
  });

  set conditions(List<Condition> value) {
    onChanged(value);
  }

  Iterable<(String, String)> get properties =>
      AdvancedQueriesMetadata.propertiesByType[type] ?? [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...conditions.mapIndexed(
          (i, condition) {
            final validOperators =
                validOperatorsForField(condition.field).toList();

            final conditionFieldMetadata =
                AdvancedQueriesMetadata.getFieldMetadata(
              condition.field,
              FieldMetadata(type: type),
            );

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          decoration: const InputDecoration(
                            labelText: 'بشرط',
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          isExpanded: true,
                          value: condition.field,
                          items: properties
                              .map(
                                (p) => DropdownMenuItem(
                                  alignment: Alignment.center,
                                  value: p.$1,
                                  child: Text(p.$2),
                                ),
                              )
                              .toList(),
                          onChanged: (field) {
                            final newFieldMetadata =
                                AdvancedQueriesMetadata.getFieldMetadata(
                              field!,
                              FieldMetadata(type: type),
                            );
                            final firstValidOperator =
                                validOperatorsForField(field).firstOrNull;

                            conditions = conditions.mapIndexed(
                              (_i, e) {
                                return i == _i
                                    ? Condition(
                                        type: type,
                                        field: field,
                                        operator: firstValidOperator,
                                        value: newFieldMetadata.dummyInstance,
                                      )
                                    : e;
                              },
                            ).toList();
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      if (validOperators.isNotEmpty &&
                          !(validOperators.length == 1 &&
                              validOperators.single == Operator.eq))
                        Expanded(
                          child: DropdownButtonFormField<Operator>(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            isExpanded: true,
                            value: condition.operator,
                            items: validOperators
                                .map(
                                  (e) => DropdownMenuItem(
                                    alignment: Alignment.center,
                                    value: e,
                                    child: Text(e.label),
                                  ),
                                )
                                .toList(),
                            onChanged: (operator) {
                              conditions = conditions
                                  .mapIndexed(
                                    (_i, e) => i == _i
                                        ? condition.copyWith(operator: operator)
                                        : e,
                                  )
                                  .toList();
                            },
                          ),
                        ),
                      IconButton(
                        onPressed: () {
                          conditions = conditions
                              .whereIndexed((_i, e) => i != _i)
                              .toList();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Theme.of(context)
                                  .inputDecorationTheme
                                  .border
                                  ?.borderSide
                                  .color ??
                              Theme.of(context).colorScheme.primary,
                          width: 1.2,
                        ),
                      ),
                    ),
                    child: _SelectValueWidget(
                      type: conditionFieldMetadata.type,
                      condition: condition,
                      onChanged: (value) {
                        final isNested = conditionFieldMetadata.dummyInstance
                                is ViewableWithID &&
                            condition.field != 'id';
                        conditions = conditions
                            .mapIndexed(
                              (_i, e) => i == _i
                                  ? isNested
                                      ? condition.copyWith(value: value)
                                      : value.single
                                  : e,
                            )
                            .toList();
                      },
                      dummyInstance: conditionFieldMetadata.dummyInstance,
                      isList: conditionFieldMetadata.isList,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        ElevatedButton.icon(
          onPressed: () {
            conditions = [
              ...conditions,
              Condition(
                type: type,
                field: properties.first.$1,
                operator:
                    validOperatorsForField(properties.first.$1).firstOrNull,
              ),
            ];
          },
          icon: const Icon(Icons.filter_alt),
          label: const Text('إضافة شرط'),
        ),
      ],
    );
  }

  Iterable<Operator> validOperatorsForField(String field) {
    if (field == 'id') return [Operator.eq];

    final fieldType = AdvancedQueriesMetadata.getFieldMetadata(
      field,
      FieldMetadata(type: type),
    );

    return Operator.values.where(
      (o) => o.isValidType(fieldType.dummyInstance),
    );
  }
}

class _SelectValueWidget<T> extends StatelessWidget {
  final Type type;
  final bool isList;
  final T dummyInstance;
  final Condition condition;
  final void Function(List<Condition>) onChanged;

  const _SelectValueWidget({
    required this.type,
    required this.isList,
    required this.condition,
    required this.onChanged,
    required this.dummyInstance,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (dummyInstance is String) {
      return TextFormField(
        initialValue: condition.value,
        onChanged: _onValueChanged,
      );
    } else if (dummyInstance is bool && condition.field.endsWith('ender')) {
      return DropdownButtonFormField<bool?>(
        alignment: Alignment.center,
        value: condition.value,
        isExpanded: true,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        items: [null, true, false]
            .map(
              (item) => DropdownMenuItem(
                alignment: Alignment.center,
                value: item,
                child: Text(
                  item == null
                      ? 'غير محدد'
                      : item
                          ? 'بنين'
                          : 'بنات',
                ),
              ),
            )
            .toList(),
        onChanged: _onValueChanged,
      );
    } else if (dummyInstance is bool) {
      return CheckboxListTile(
        title: const Text('قيمة البحث'),
        subtitle: Text(condition.value == true ? 'نعم' : 'لا'),
        value: condition.value,
        onChanged: _onValueChanged,
      );
    } else if (dummyInstance is Color) {
      return ColorField(
        initialValue: condition.value as Color?,
        onChanged: _onValueChanged,
      );
    } else if (dummyInstance is DateTime) {
      return DateTimeField(
        label: '',
        initialValue: condition.value as DateTime?,
        onChanged: _onValueChanged,
      );
    } else if (dummyInstance is DateTimeRange) {
      return DateTimeRangeField(
        label: '',
        initialValue: condition.value as DateTimeRange?,
        onChanged: _onValueChanged,
        nullable: true,
      );
    } else if (dummyInstance is Point) {
    } else if (dummyInstance is Polygon) {
    } else if (dummyInstance is Line) {
    } else if (dummyInstance is AdminOnData) {
    } else if (dummyInstance is ViewableWithID && condition.field == 'id') {
      return ObjectSelectionField<ViewableWithID, ViewableWithID?>(
        listController: _listControllerForType,
        builder: _buildViewableObject,
        initialValue: condition.value,
        labelText: '',
        onChanged: (v) => onChanged([
          condition.copyWith(
            field: 'id',
            operator: Operator.eq,
            value: v,
          ),
        ]),
      );
    } else if (dummyInstance is ViewableWithID) {
      return ConditionBuilder(
        type: type,
        conditions: condition.value is List<Condition> ? condition.value : [],
        onChanged: onChanged,
      );
    }
    return const SizedBox();
  }

  void _onValueChanged(dynamic value) {
    onChanged([
      condition.copyWith(value: value),
    ]);
  }

  Widget? _buildViewableObject(
    BuildContext _,
    FormFieldState<ViewableWithID?> state,
  ) {
    if (state.value != null) {
      return IgnorePointer(
        child: ViewableObjectWidget<ViewableWithID>(
          state.value!,
          wrapInCard: false,
          dense: true,
          forceShowSecondLine: false,
        ),
      );
    }

    return null;
  }

  ViewableObjectListController<ViewableWithID> _listControllerForType(s) =>
      ViewableObjectListController(
        objectsPaginatableStream: AdvancedQueriesMetadata
            .queryableTypes[type]!.$2
            .streamAll(searchQuery: s),
      );
}
