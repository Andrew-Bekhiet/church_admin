import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart' show Color;

class AshFilterTranslator {
  const AshFilterTranslator();

  Json toFilterInput(List<Filter> filters) {
    final translated = filters.map(_translate).toList();

    return switch (translated) {
      [] => {},
      [final only] => only,
      _ => {'and': translated},
    };
  }

  Json _translate(Filter filter) =>
      _operatorInput(filter.field, filter.operator, filter.value);

  Json _operatorInput(FieldMetadata field, Operator operator, Object? value) {
    final path = AshFieldPath.forFilter(field);

    return switch (operator) {
      LogicalOperator() => _logical(
        path,
        operator,
        AshOperatorValue.require<List<Filter>>(operator, value),
      ),
      StringOperator() => _string(path, operator, value as String?),
      PrimitiveOperator() => _primitive(path, operator, value),
      BooleanOperator() => _boolean(path, operator, value as bool?),
      ColorOperator() => _color(path, operator, value as Color?),
      DateTimeOperator() => path.wrap({
        _dateComparison(operator): _isoString(
          AshOperatorValue.require<DateTime>(operator, value),
        ),
      }),
      DateRangeOperator() => _dateRange(
        path,
        AshOperatorValue.require<DateTimeRange>(operator, value),
      ),
      BirthdayOperator() => path.wrap({'ilike': value as String? ?? ''}),
      MultiSelectOperator() => const AshMultiSelectFilter().translate(
        field,
        operator,
        value as List<Object>?,
      ),
      PhoneOperator() => const AshPhoneFilter().translate(
        path,
        operator,
        value as String?,
      ),
      SpatialOperator() ||
      PointSpatialOperator() ||
      WithinDistanceOperator() => const AshSpatialFilter().translate(
        path,
        operator,
        value,
      ),
      _ => throw UnsupportedError(
        'AshFilterTranslator cannot translate ${operator.serializationId}',
      ),
    };
  }

  Json _logical(
    AshFieldPath path,
    LogicalOperator operator,
    List<Filter> filters,
  ) {
    final translated = filters.map(_translate).toList();

    return switch (operator) {
      LogicalOperator.and => path.wrap({'and': translated}),
      LogicalOperator.or => path.wrap({'or': translated}),
      LogicalOperator.not => {
        'not': [
          path.wrap(
            translated.length == 1 ? translated.single : {'and': translated},
          ),
        ],
      },
    };
  }

  Json _string(AshFieldPath path, StringOperator operator, String? value) {
    final text = value ?? '';
    final at = path.wrap;

    return switch (operator) {
      StringOperator.eq => at({'eq': text}),
      StringOperator.neq => at({'notEq': text}),
      StringOperator.contains => at({'ilike': '%$text%'}),
      StringOperator.doesNotContain => {
        'not': [
          at({'ilike': '%$text%'}),
        ],
      },
      StringOperator.startsWith => at({'ilike': '$text%'}),
      StringOperator.endsWith => at({'ilike': '%$text'}),
      StringOperator.isEmpty => {
        'or': [
          at({'eq': ''}),
          at({'isNil': true}),
        ],
      },
      StringOperator.isNotEmpty => {
        'and': [
          at({'notEq': ''}),
          at({'isNil': false}),
        ],
      },
    };
  }

  Json _primitive(
    AshFieldPath path,
    PrimitiveOperator operator,
    Object? value,
  ) => switch (operator) {
    PrimitiveOperator.isNull => path.wrap({'isNil': true}),
    PrimitiveOperator.isNotNull => path.wrap({'isNil': false}),
    PrimitiveOperator.eq => path.wrap({'eq': _plain(value)}),
    PrimitiveOperator.neq => path.wrap({'notEq': _plain(value)}),
    PrimitiveOperator.lt => path.wrap({'lessThan': _plain(value)}),
    PrimitiveOperator.lte => path.wrap({'lessThanOrEqual': _plain(value)}),
    PrimitiveOperator.gt => path.wrap({'greaterThan': _plain(value)}),
    PrimitiveOperator.gte => path.wrap({'greaterThanOrEqual': _plain(value)}),
  };

  Json _boolean(AshFieldPath path, BooleanOperator operator, bool? value) {
    if (value == null) {
      return path.wrap({'isNil': operator == BooleanOperator.is$});
    }

    return switch (operator) {
      BooleanOperator.is$ => path.wrap({'eq': value}),
      BooleanOperator.isNot => path.wrap({'notEq': value}),
    };
  }

  Json _color(AshFieldPath path, ColorOperator operator, Color? value) {
    if (value == null) {
      return path.wrap({'isNil': operator == ColorOperator.eq});
    }

    return switch (operator) {
      ColorOperator.eq => path.wrap({'eq': value.argbValue}),
      ColorOperator.neq => path.wrap({'notEq': value.argbValue}),
    };
  }

  Json _dateRange(AshFieldPath path, DateTimeRange range) => {
    'and': [
      path.wrap({'greaterThanOrEqual': dateToString(range.start)}),
      path.wrap({'lessThanOrEqual': dateToString(range.end)}),
    ],
  };

  String _dateComparison(DateTimeOperator operator) => switch (operator) {
    DateTimeOperator.isOn => 'eq',
    DateTimeOperator.isAfter => 'greaterThan',
    DateTimeOperator.isOnOrAfter => 'greaterThanOrEqual',
    DateTimeOperator.isBefore => 'lessThan',
    DateTimeOperator.isOnOrBefore => 'lessThanOrEqual',
  };

  Object? _plain(Object? value) =>
      value is DateTime ? _isoString(value) : value;

  String _isoString(DateTime value) => value.toUtc().toIso8601String();
}
