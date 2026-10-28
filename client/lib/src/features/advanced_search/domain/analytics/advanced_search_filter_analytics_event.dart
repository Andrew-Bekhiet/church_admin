part of 'package:church_admin/src/core/analytics/domain/models/analytics_event.dart';

sealed class AdvancedSearchFilterAnalyticsEvent extends AnalyticsEvent {
  static List<String> fieldPathOf(FieldMetadata field) => switch (field) {
    RedirectingFieldMetadata(:final parentField, :final targetField) => [
      ...fieldPathOf(parentField),
      ...fieldPathOf(targetField),
    ],
    _ => [field.name],
  };

  final List<String> fieldPath;
  final String operatorId;
  final int filterCount;

  @override
  String get category => 'advanced_search';

  @override
  Json get properties => {
    'field_name': fieldPath.join('.'),
    'nested_depth': fieldPath.length - 1,
    'operator_id': operatorId,
    'filter_count': filterCount,
  };

  AdvancedSearchFilterAnalyticsEvent(Filter filter, {required this.filterCount})
    : fieldPath = fieldPathOf(filter.field),
      operatorId = filter.operator.serializationId;
}

final class AdvancedSearchFilterAdd extends AdvancedSearchFilterAnalyticsEvent {
  @override
  String get objectAction => 'filter_add';

  AdvancedSearchFilterAdd(super.filter, {required super.filterCount});
}

final class AdvancedSearchFilterRemove
    extends AdvancedSearchFilterAnalyticsEvent {
  @override
  String get objectAction => 'filter_remove';

  AdvancedSearchFilterRemove(super.filter, {required super.filterCount});
}

final class AdvancedSearchFilterFieldChange
    extends AdvancedSearchFilterAnalyticsEvent {
  @override
  String get objectAction => 'filter_field_change';

  AdvancedSearchFilterFieldChange(super.filter, {required super.filterCount});
}

final class AdvancedSearchFilterOperatorChange
    extends AdvancedSearchFilterAnalyticsEvent {
  @override
  String get objectAction => 'filter_operator_change';

  AdvancedSearchFilterOperatorChange(
    super.filter, {
    required super.filterCount,
  });
}

final class AdvancedSearchFilterValueSet
    extends AdvancedSearchFilterAnalyticsEvent {
  static bool isFreeTextOperator(Operator operator) =>
      operator is StringOperator || operator is PhoneOperator;

  static int _valueCountOf(Object? value) => switch (value) {
    null || '' => 0,
    final List<Object?> values => values.length,
    _ => 1,
  };

  final int valueCount;
  final bool isFreeText;
  final bool? isAnyDay;

  @override
  String get objectAction => 'filter_value_set';

  @override
  Json get properties => {
    ...super.properties,
    'operator_family': operatorId.split('.').first,
    'value_count': valueCount,
    'is_free_text': isFreeText,
    'is_any_day': ?isAnyDay,
  };

  AdvancedSearchFilterValueSet(super.filter, {required super.filterCount})
    : valueCount = _valueCountOf(filter.value),
      isFreeText = isFreeTextOperator(filter.operator),
      isAnyDay = switch (filter.operator) {
        BirthdayOperator() => filter.value.toString().endsWith('-%'),
        _ => null,
      };
}

final class AdvancedSearchPolygonFilterDraw
    extends AdvancedSearchFilterAnalyticsEvent {
  final int pointCount;

  @override
  String get objectAction => 'polygon_filter_draw';

  @override
  Json get properties => {...super.properties, 'point_count': pointCount};

  AdvancedSearchPolygonFilterDraw(
    super.filter,
    Polygon polygon, {
    required super.filterCount,
  }) : pointCount = polygon.coordinates.length;
}
