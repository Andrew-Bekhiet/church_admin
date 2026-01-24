import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:uuid/uuid.dart';

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
            _ValueInputWidget(
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

class _ValueInputWidget extends StatelessWidget {
  final QueryableType? queryableType;
  final FieldMetadata field;
  final Operator operator;
  final Object? value;
  final void Function(Object?) onChanged;

  const _ValueInputWidget({
    required this.field,
    required this.operator,
    required this.value,
    required this.onChanged,
    required this.queryableType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (!operator.acceptsValue) {
      return const SizedBox.shrink();
    }
    final Widget widget;

    switch (field) {
      case FieldMetadata(:final name) when name == 'birthday':
        widget = BirthdayFilter(
          value: value as String?,
          onChanged: onChanged,
        );

      case FieldMetadata<bool>(:final name)
          when name.toLowerCase().endsWith('gender'):
        widget = GenderField(
          initialValue: value as bool?,
          onChanged: onChanged,
          nullable: true,
        );

      case FieldMetadata<bool>():
      case _ when operator is Operator<bool>:
        widget = CheckboxListTile(
          title: const Text('القيمة'),
          value: value as bool?,
          tristate: true,
          onChanged: onChanged,
        );

      case FieldMetadata<String>():
      case FieldMetadata<int>():
      case FieldMetadata<double>():
        widget = TextFormField(
          initialValue: value?.toString(),
          onChanged: (v) {
            if (field.type == int) {
              onChanged(int.tryParse(v));
            } else if (field.type == double) {
              onChanged(double.tryParse(v));
            } else {
              onChanged(v);
            }
          },
          keyboardType: field.type == int || field.type == double
              ? TextInputType.numberWithOptions(
                  signed: true,
                  decimal: field.type == double,
                )
              : TextInputType.text,
          decoration: const InputDecoration(labelText: 'القيمة'),
        );

      case FieldMetadata<Color>():
        widget = ColorField(
          initialValue: value as Color?,
          onChanged: onChanged,
        );

      case FieldMetadata<DateTime>() when operator is DateRangeOperator:
        widget = DateTimeRangeField(
          label: 'الفترة',
          initialValue: value as DateTimeRange?,
          onChanged: onChanged,
        );

      case FieldMetadata<DateTime>():
        widget = DateTimeField(
          label: 'القيمة',
          initialValue: value as DateTime?,
          onChanged: onChanged,
        );

      case FieldMetadata<Spatial>():
        widget = _SelectPolygon(
          initialValue: value as Polygon?,
          onValueChanged: onChanged,
        );

      case FieldMetadata<LabeledEnum>(
            fieldQueryableType: QueryableType(:final enumValues, isEnum: true),
          )
          when operator is MultiSelectOperator:
        widget = MultiObjectSelectionField<ViewableEnumWithID>(
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream:
                ViewableEnumWithID.createPaginatableStream(
                  enumValues,
                  s,
                ),
          ),
          builder: (context, state) {
            if (state.value != null) {
              return Text(
                state.value!.map((e) => e.name).join(', '),
              );
            }

            return null;
          },
          initialValue: (value as List<ViewableEnumWithID>? ?? []).toSet(),
          labelText: 'اختيار القيم المطلوبة',
          nullable: false,
          onChanged: (v) => onChanged(v?.toList()),
        );

      case FieldMetadata<ViewableWithID>(
            fieldQueryableType: QueryableType(:final dao?),
          )
          when operator is MultiSelectOperator:
        widget = MultiObjectSelectionField<ViewableWithID>(
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: dao.streamAll(searchQuery: s),
          ),
          builder: (context, state) {
            if (state.value != null) {
              return Text(
                state.value!.map((e) => e.name).join(', '),
              );
            }

            return null;
          },
          initialValue: (value as List<ViewableWithID>? ?? []).toSet(),
          labelText: 'اختيار القيم المطلوبة',
          nullable: false,
          onChanged: (v) => onChanged(v?.toList()),
        );

      default:
        if (kDebugMode) {
          unawaited(
            LoggingService.I.warning(
              LogRecord(
                moduleName: 'FilterBuilder',
                data: {
                  'field': field.toJson(),
                  'operator': operator.serializationId,
                  'value': value.toString(),
                },
                message:
                    'No widget for type ${field.fieldQueryableType} and operator $operator',
              ),
            ),
          );
        }

        return const SizedBox.shrink();
    }

    final theme = Theme.of(context);

    return Container(
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
      child: widget,
    );
  }
}

class _SelectPolygon extends StatelessWidget {
  const _SelectPolygon({
    required this.initialValue,
    required this.onValueChanged,
  });

  final Polygon? initialValue;
  final void Function(Polygon? value) onValueChanged;

  @override
  Widget build(BuildContext context) {
    return TappableFormField<Polygon?>(
      onTap: (state) async {
        final initialArea = Area(
          id: Namespace.nil.value,
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
                  return areaStream.map(
                    (value) => response!.copyWith(areas: {value}),
                  );
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
      initialValue: initialValue,
      builder: (context, state) => state.value != null
          ? const ListTile(title: Text('مساحة على الخريطة'))
          : null,
    );
  }
}

class BirthdayFilter extends StatelessWidget {
  const BirthdayFilter({
    required this.value,
    required this.onChanged,
    super.key,
  });

  final String? value;
  final void Function(String? value) onChanged;

  @override
  Widget build(BuildContext context) {
    //2025-07-05T
    final [month, day] =
        value?.split('-') ??
        DateTime.now()
            .toIso8601String()
            .split('T')[0]
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
