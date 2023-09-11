import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'data_geomap/edit_object_points_map.dart';

class ConditionsBuilder extends StatelessWidget {
  final Type type;
  final List<Condition> conditions;
  final void Function(List<Condition>) onChanged;

  const ConditionsBuilder({
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
            final conditionFieldMetadata =
                AdvancedQueriesMetadata.getFieldMetadata(
              condition.field,
              FieldMetadata(type: type),
            );

            final validOperators = conditionFieldMetadata.operators;

            return ConditionBuilder(
              type: type,
              condition: condition,
              conditionFieldMetadata: conditionFieldMetadata,
              operators: validOperators.toList(),
              onFieldChanged: (field) {
                final newCondition =
                    _createConditionForField(field!, condition.operator);

                conditions = conditions.mapIndexed(
                  (_i, e) {
                    return i == _i ? newCondition : e;
                  },
                ).toList();
              },
              onOperatorChanged: (operator) {
                conditions = conditions
                    .mapIndexed(
                      (_i, e) =>
                          i == _i ? condition.copyWith(operator: operator) : e,
                    )
                    .toList();
              },
              onConditionRemoved: () {
                conditions =
                    conditions.whereIndexed((_i, e) => i != _i).toList();
              },
              onValueChanged: (value, isNested) {
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
            );
          },
        ),
        ElevatedButton.icon(
          onPressed: () {
            final property = properties.firstWhere((p) => p.$1 != 'id');
            final fieldMetadata = AdvancedQueriesMetadata.getFieldMetadata(
              property.$1,
              FieldMetadata(type: type),
            );

            conditions = [
              ...conditions,
              Condition(
                type: type,
                field: property.$1,
                operator: fieldMetadata.operators.firstOrNull,
              ),
            ];
          },
          icon: const Icon(Icons.filter_alt),
          label: Text(
            'إضافة شرط ل' +
                AdvancedQueriesMetadata.queryableTypes[type]!.$1
                    .replaceFirst(RegExp('^ال'), 'ل'),
          ),
        ),
      ],
    );
  }

  Condition<dynamic> _createConditionForField(
    String field, [
    Operator? currentOperator,
  ]) {
    final newValidOperators = AdvancedQueriesMetadata.getFieldMetadata(
      field,
      FieldMetadata(type: type),
    ).operators;

    final selectedOrFirstValidOperator = currentOperator != null &&
            newValidOperators.isNotEmpty &&
            newValidOperators.contains(currentOperator)
        ? currentOperator
        : newValidOperators.firstOrNull;

    final addNestedCondition =
        newValidOperators.isEmpty && field != 'id' && field != 'permissions';

    final nestedField = addNestedCondition
        ? AdvancedQueriesMetadata.propertiesByType[type]
                ?.firstWhereOrNull((p) => p.$1 != 'id')
                ?.$1 ??
            'id'
        : null;

    return Condition(
      type: type,
      field: field,
      operator: selectedOrFirstValidOperator,
      value:
          nestedField != null ? [_createConditionForField(nestedField)] : null,
    );
  }

  Set<Operator> validOperatorsForFields(String field) {
    if (field == 'id') return {Operator.eq};
    if (field == 'permissions') return {};

    final fieldType = AdvancedQueriesMetadata.getFieldMetadata(
      field,
      FieldMetadata(type: type),
    );

    return fieldType.operators;
  }
}

class ConditionBuilder extends StatelessWidget {
  final Condition condition;
  final Type type;

  final void Function(String?) onFieldChanged;
  final void Function(Operator?) onOperatorChanged;
  final void Function() onConditionRemoved;
  final void Function(List<Condition>, bool) onValueChanged;

  final List<Operator> operators;
  final FieldMetadata conditionFieldMetadata;

  const ConditionBuilder({
    required this.condition,
    required this.type,
    required this.onFieldChanged,
    required this.operators,
    required this.conditionFieldMetadata,
    required this.onOperatorChanged,
    required this.onConditionRemoved,
    required this.onValueChanged,
    super.key,
  });

  Iterable<(String, String)> get properties =>
      AdvancedQueriesMetadata.propertiesByType[type] ?? [];

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

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
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                  onChanged: onFieldChanged,
                ),
              ),
              const SizedBox(width: 8),
              if (operators.isNotEmpty &&
                  !(operators.length == 1 && operators.single == Operator.eq))
                Expanded(
                  child: DropdownButtonFormField<Operator>(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    isExpanded: true,
                    value: condition.operator,
                    items: operators
                        .map(
                          (e) => DropdownMenuItem(
                            alignment: Alignment.center,
                            value: e,
                            child: Text(e.label),
                          ),
                        )
                        .toList(),
                    onChanged: onOperatorChanged,
                  ),
                ),
              IconButton(
                onPressed: onConditionRemoved,
                icon: const Icon(Icons.clear),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color:
                      themeData.inputDecorationTheme.border?.borderSide.color ??
                          themeData.colorScheme.primary,
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
                    conditionFieldMetadata.dummyInstance is! UserPermission &&
                    condition.field != 'id';

                onValueChanged(value, isNested);
              },
              dummyInstance: conditionFieldMetadata.dummyInstance,
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectValueWidget<T> extends StatelessWidget {
  final Type type;
  final T dummyInstance;
  final Condition condition;
  final void Function(List<Condition>) onChanged;

  const _SelectValueWidget({
    required this.type,
    required this.condition,
    required this.onChanged,
    required this.dummyInstance,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (dummyInstance is String || dummyInstance is num) {
      return TextFormField(
        initialValue: condition.value,
        onChanged: _onValueChanged,
        decoration: InputDecoration(
          labelText: 'قيمة البحث',
          helperText: {
            Operator.like,
            Operator.ilike,
            Operator.nilike,
            Operator.nlike,
          }.contains(condition.operator)
              ? 'يمكنك استخدام الرموز التالية:\n'
                  '% لاستبدال أي عدد من الأحرف\n'
                  '_ لاستبدال حرف واحد'
              : null,
          helperMaxLines: 3,
        ),
        keyboardType: dummyInstance is num
            ? TextInputType.numberWithOptions(
                signed: true,
                decimal: dummyInstance is double,
              )
            : TextInputType.text,
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
        subtitle: Text(
          condition.value ?? false ? 'نعم' : 'لا',
        ),
        value: condition.value ?? false,
        tristate: true,
        onChanged: (value) {
          onChanged([
            condition.copyWith(value: value ?? false),
          ]);
        },
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
        nullable: true,
      );
    } else if (dummyInstance is DateTimeRange) {
      return DateTimeRangeField(
        label: '',
        initialValue: condition.value as DateTimeRange?,
        onChanged: _onValueChanged,
        nullable: true,
      );
    } else if (dummyInstance is Polygon ||
        dummyInstance is Line ||
        dummyInstance is Point) {
      return _SelectPolygon(
        condition: condition,
        onValueChanged: _onValueChanged,
      );
    } else if (dummyInstance is UserPermission) {
      return DropdownButtonFormField(
        isExpanded: true,
        alignment: Alignment.center,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        value: condition.value,
        items: [
          const DropdownMenuItem(
            alignment: Alignment.center,
            child: Text('(فارغ)'),
          ),
          ...UserPermission.values.map(
            (e) => DropdownMenuItem(
              alignment: Alignment.center,
              value: e,
              child: Text(e.humanReadableName),
            ),
          ),
        ],
        onChanged: _onValueChanged,
      );
    } else if (dummyInstance is AdminOnData) {
      //TODO: implement EditAdminOnData
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
      return ConditionsBuilder(
        type: type,
        conditions: condition.value is List<Condition> ? condition.value : [],
        onChanged: onChanged,
      );
    }
    return ErrorWidget.builder(
      FlutterErrorDetails(
        exception: Exception(
          'No widget for type $type and instance $dummyInstance '
          'in condition builder',
        ),
      ),
    );
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
        objectsPaginatableStream: AdvancedQueriesMetadata.streamableDAOs[type]!
            .streamAll(searchQuery: s),
      );
}

class _SelectPolygon extends StatelessWidget {
  const _SelectPolygon({
    required this.condition,
    required this.onValueChanged,
  });

  final Condition condition;
  final void Function(dynamic) onValueChanged;

  @override
  Widget build(BuildContext context) {
    return TappableFormField<Polygon?>(
      onTap: (state) async {
        final initialArea = Area(
          id: '00000000-0000-0000-0000-000000000000',
          name: '',
          bounds: state.value,
          color: Theme.of(state.context).colorScheme.primary,
        );

        final newArea = await Navigator.of(context).push<Area?>(
          MaterialPageRoute(
            builder: (context) {
              return EditObjectPointsMap<Area>(
                initialObject: initialArea,
                getObjectPoints: (p0) => p0.bounds?.coordinates,
                overrideResponseObjects: (response, areaStream) {
                  return areaStream
                      .map((value) => response!.copyWith(areas: {value}));
                },
                onModify: (newCoords, resultArea) =>
                    resultArea.copyWith(bounds: Polygon(newCoords)),
                onSaved: Navigator.of(context).pop,
                closedShape: true,
                geomapOptions: GeomapOptions(
                  layers: const {GeoMapLayer.areas},
                  selectedAreas: {initialArea},
                ),
              );
            },
          ),
        );

        if (newArea != null) {
          state.didChange(newArea.bounds);
          onValueChanged(newArea.bounds);
        }
      },
      decoration: (context, state) => InputDecoration(
        prefixIcon: Icon(ViewableObjectService.I.getDefaultIconFor<Area>()),
      ),
      initialValue: condition.value as Polygon?,
      builder: (context, state) => state.value != null
          ? const ListTile(title: Text('مساحة على الخريطة'))
          : null,
    );
  }
}
