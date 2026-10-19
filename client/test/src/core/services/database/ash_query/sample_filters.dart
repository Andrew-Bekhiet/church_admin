import 'package:church_admin/church_admin.dart';
import 'package:flutter/widgets.dart' show Color;

class SampleFilter {
  final QueryableType queryable;
  final Filter filter;

  String get origin =>
      '${queryable.name}.${AshFieldPath.forFilter(filter.field).segments.join('.')}';

  String get description => '$origin ${filter.operator.serializationId}';

  const SampleFilter(this.queryable, this.filter);
}

class SampleFilters {
  static const Point _point = Point(30.5, 31.25);

  static Iterable<QueryableType> get entityQueryables =>
      AdvancedQueriesMetadata().allQueryables.where(
        (queryable) => !queryable.isEnum && queryable.keyField != null,
      );

  static Iterable<SampleFilter> ofQueryable(QueryableType queryable) sync* {
    for (final field in queryable.fieldsMetadata) {
      for (final operator in field.operators) {
        if (_picksRecordedTimesById(field, operator)) continue;

        yield SampleFilter(
          queryable,
          Filter(field, operator, valueFor(field, operator)),
        );
      }
    }
  }

  /// Known client gap: any-of and none-of on a history or latest record
  /// compare its recorded time with the picked ids.
  static bool _picksRecordedTimesById(FieldMetadata field, Operator operator) =>
      field.type == LastRecordedByInfo &&
      (operator == MultiSelectOperator.anyOf ||
          operator == MultiSelectOperator.noneOf);

  static Object? valueFor(FieldMetadata field, Operator operator) =>
      switch (operator) {
        StringOperator() || BirthdayOperator() => 'a',
        PhoneOperator() => '0100',
        PrimitiveOperator() => _primitiveFor(field.type),
        BooleanOperator() => true,
        ColorOperator() => const Color(0xFF112233),
        DateTimeOperator() => DateTime.utc(2024, 5, 6),
        DateRangeOperator() => DateTimeRange(
          start: DateTime(2024, 5, 6),
          end: DateTime(2024, 7, 8),
        ),
        MultiSelectOperator() => _selectionFor(field),
        SpatialOperator() => const Polygon([
          Point(1, 2),
          Point(3, 4),
          Point(5, 6),
        ]),
        PointSpatialOperator() || WithinDistanceOperator() => _point,
        _ => throw UnsupportedError('No sample value for $operator'),
      };

  static Object _primitiveFor(Type type) {
    if (type == int) return 1;
    if (type == double) return 1.5;
    if (type == bool) return true;
    if (type == DateTime) return DateTime.utc(2024, 5, 6);

    return 'a';
  }

  static List<Object> _selectionFor(FieldMetadata field) {
    final queryable = field.fieldQueryableType;

    return queryable != null && queryable.isEnum
        ? [ViewableEnumWithID.wrap(queryable.enumValues.first as LabeledEnum)]
        : ['sample-id'];
  }
}
