import 'package:church_admin/church_admin.dart';

sealed class AdvancedSearchFilterAnalyticsEvent extends AnalyticsEvent {
  static List<String> fieldPathOf(FieldMetadata field) => switch (field) {
    RedirectingFieldMetadata(:final parentField, :final targetField) => [
      ...fieldPathOf(parentField),
      ...fieldPathOf(targetField),
    ],
    _ => [field.name],
  };

  final Filter filter;
  final int filterCount;

  @override
  String get category => 'advanced_search';

  @override
  Json get properties {
    final fieldPath = fieldPathOf(filter.field);

    return {
      'field_name': fieldPath.join('.'),
      'nested_depth': fieldPath.length - 1,
      'operator': filter.operator.serializationId,
      'filter_count': filterCount,
    };
  }

  const AdvancedSearchFilterAnalyticsEvent(
    this.filter, {
    required this.filterCount,
  });
}

final class AdvancedSearchFilterAdd extends AdvancedSearchFilterAnalyticsEvent {
  @override
  String get objectAction => 'filter_add';

  const AdvancedSearchFilterAdd(super.filter, {required super.filterCount});
}

final class AdvancedSearchFilterRemove
    extends AdvancedSearchFilterAnalyticsEvent {
  @override
  String get objectAction => 'filter_remove';

  const AdvancedSearchFilterRemove(super.filter, {required super.filterCount});
}

final class AdvancedSearchFilterFieldChange
    extends AdvancedSearchFilterAnalyticsEvent {
  @override
  String get objectAction => 'filter_field_change';

  const AdvancedSearchFilterFieldChange(
    super.filter, {
    required super.filterCount,
  });
}

final class AdvancedSearchFilterOperatorChange
    extends AdvancedSearchFilterAnalyticsEvent {
  @override
  String get objectAction => 'filter_operator_change';

  const AdvancedSearchFilterOperatorChange(
    super.filter, {
    required super.filterCount,
  });
}

final class AdvancedSearchFilterValueSet
    extends AdvancedSearchFilterAnalyticsEvent {
  @override
  String get objectAction => 'filter_value_set';

  @override
  Json get properties => {
    ...super.properties,
    'operator_family': filter.operator.serializationId.split('.').first,
    'value_count': switch (filter.value) {
      null || '' => 0,
      final List<Object?> values => values.length,
      _ => 1,
    },
    if (filter.operator case BirthdayOperator())
      'is_any_day': filter.value.toString().endsWith('-%'),
  };

  const AdvancedSearchFilterValueSet(
    super.filter, {
    required super.filterCount,
  });
}

final class AdvancedSearchPolygonFilterDraw
    extends AdvancedSearchFilterAnalyticsEvent {
  final Polygon polygon;

  @override
  String get objectAction => 'polygon_filter_draw';

  @override
  Json get properties => {
    ...super.properties,
    'point_count': polygon.coordinates.length,
  };

  const AdvancedSearchPolygonFilterDraw(
    super.filter,
    this.polygon, {
    required super.filterCount,
  });
}
