import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:material_ui/material_ui.dart';

class ValueInputWidget extends StatelessWidget {
  final QueryableType? queryableType;
  final FieldMetadata field;
  final Operator operator;
  final Object? value;
  final void Function(Object?) onChanged;

  const ValueInputWidget({
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

      case FieldMetadata<Gender>():
        widget = GenderField(
          initialValue: value as Gender?,
          onChanged: onChanged,
          allowsAny: true,
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
          key: ValueInputWidgetKeys.textField,
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
        widget = SelectPolygon(
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
          builder: (context, state) => switch (state.value) {
            final selected? => SelectedNamesText(selected: selected),
            null => null,
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
          builder: (context, state) => switch (state.value) {
            final selected? => SelectedNamesText(selected: selected),
            null => null,
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

abstract final class ValueInputWidgetKeys {
  static const Key textField = ValueKey('Value Input Text Field');
}
