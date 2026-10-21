import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

import 'advanced_query_case.dart';

/// Every query the advanced search screen can build: each searchable type,
/// each field its pickers reach (expanding nested objects the way the screen
/// does), each operator the field offers, with a sample value of the kind the
/// value input would produce.
class AdvancedQueryMatrix {
  static const _sampleKey = '00000000-0000-4000-8000-000000000000';
  static final _sampleDate = DateTime.utc(2026, 10, 20);
  static const _samplePoint = Point(30.05, 31.23);
  static const _sampleRow = {
    'id': _sampleKey,
    'uid': _sampleKey,
    'order': 1,
    'name': 'e2e',
    'audience': 'personsAndServants',
    'isArchived': false,
    'showKodasCheckbox': false,
  };

  final List<String> unbuildableCases = [];

  Iterable<QueryableType> get searchableTypes =>
      AdvancedQueriesMetadata().allQueryables.where((type) => type.dao != null);

  Iterable<AdvancedQueryCase> get filterCases sync* {
    for (final type in searchableTypes) {
      for (final field in _reachableFields(
        type,
        (t) => t.filterableFields,
        {type.type},
      )) {
        for (final operator in field.operators) {
          final description =
              '${type.name} ${_pathOf(field)} ${operator.serializationId}';
          final Object? value;
          try {
            value = _sampleValue(field, operator);
          } on Object catch (error) {
            unbuildableCases.add('$description: no sample value ($error)');
            continue;
          }
          yield AdvancedQueryCase(
            description,
            AdvancedQuery(
              queryableType: type,
              filters: [Filter(field, operator, value)],
            ),
          );
        }
      }
    }
  }

  Iterable<AdvancedQueryCase> get orderByCases sync* {
    for (final type in searchableTypes) {
      for (final field in _reachableFields(
        type,
        (t) => t.orderableFields,
        {type.type},
      )) {
        yield AdvancedQueryCase(
          '${type.name} order by ${_pathOf(field)}',
          AdvancedQuery(
            queryableType: type,
            orderBy: [OrderBy(field: field, value: OrderByValue.desc)],
          ),
        );
      }
    }
  }

  Iterable<FieldMetadata> _reachableFields(
    QueryableType type,
    Iterable<FieldMetadata> Function(QueryableType) pickable,
    Set<Type> typesOnPath,
  ) sync* {
    for (final field in pickable(type)) {
      final opensSubFields =
          field.operators.isEmpty ||
          !(field.fieldQueryableType?.isSelectableAsReference ?? true);

      if (!opensSubFields) {
        yield field;
        continue;
      }

      final nestedType = field.fieldQueryableType;
      if (nestedType == null) {
        unbuildableCases.add(
          '${type.name} ${field.name}: offers no operators and no sub-fields',
        );
        continue;
      }
      if (typesOnPath.contains(nestedType.type)) {
        continue;
      }

      for (final subField in _reachableFields(nestedType, pickable, {
        ...typesOnPath,
        nestedType.type,
      })) {
        yield field.redirectTo(subField);
      }
    }
  }

  String _pathOf(FieldMetadata field) => switch (field) {
    RedirectingFieldMetadata(:final parentField, :final targetField) =>
      '${_pathOf(parentField)}.${_pathOf(targetField)}',
    _ => field.name,
  };

  Object? _sampleValue(FieldMetadata field, Operator operator) {
    if (!operator.acceptsValue) {
      return null;
    }

    return switch (operator) {
      StringOperator() => 'e2e',
      PhoneOperator() => '01000000000',
      BirthdayOperator() => '10-%',
      BooleanOperator() => true,
      ColorOperator() => const Color(0xFF2196F3),
      DateTimeOperator() => _sampleDate,
      DateRangeOperator() => DateTimeRange(
        start: _sampleDate.subtract(const Duration(days: 30)),
        end: _sampleDate,
      ),
      SpatialOperator() => const Polygon([
        Point(30, 31),
        Point(30.1, 31),
        Point(30.1, 31.1),
      ]),
      PointSpatialOperator() || WithinDistanceOperator() => _samplePoint,
      MultiSelectOperator() => _sampleReferences(field),
      PrimitiveOperator() => _samplePrimitive(field),
      _ => throw UnsupportedError('${operator.runtimeType}'),
    };
  }

  Object _samplePrimitive(FieldMetadata field) => switch (field.type) {
    const (int) => 1,
    const (double) || const (num) => 1.5,
    const (bool) => true,
    const (DateTime) => _sampleDate,
    _ => 'e2e',
  };

  List<Object>? _sampleReferences(FieldMetadata field) =>
      switch (field.fieldQueryableType) {
        QueryableType(isEnum: true, :final enumValues) => <ViewableEnumWithID>[
          ViewableEnumWithID.wrap(enumValues.first as LabeledEnum),
        ],
        QueryableType(:final fromJson?) => <ViewableWithID>[
          fromJson(_sampleRow) as ViewableWithID,
        ],
        _ => null,
      };
}
