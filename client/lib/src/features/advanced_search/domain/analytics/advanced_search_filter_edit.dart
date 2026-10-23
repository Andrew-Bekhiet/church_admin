import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';

abstract final class AdvancedSearchFilterEdit {
  static AdvancedSearchFilterAnalyticsEvent? eventForSingleEdit(
    List<Filter> previous,
    List<Filter> next,
  ) {
    final filterCount = next.length;

    return switch (next.length - previous.length) {
      1
          when const ListEquality<Filter>().equals(
            previous,
            next.take(previous.length).toList(),
          ) =>
        AdvancedSearchFilterAdd(next.last, filterCount: filterCount),
      -1 => AdvancedSearchFilterRemove(
        _removedFilter(previous, next),
        filterCount: filterCount,
      ),
      0 => _eventForSingleChangedFilter(previous, next),
      _ => null,
    };
  }

  static Filter _removedFilter(List<Filter> previous, List<Filter> next) =>
      previous
          .whereIndexed((i, filter) => next.elementAtOrNull(i) != filter)
          .first;

  static AdvancedSearchFilterAnalyticsEvent? _eventForSingleChangedFilter(
    List<Filter> previous,
    List<Filter> next,
  ) {
    final changedIndices = [
      for (final (i, filter) in previous.indexed)
        if (filter != next[i]) i,
    ];
    if (changedIndices case [final index]) {
      return _eventForChangedFilter(
        previous[index],
        next[index],
        filterCount: next.length,
      );
    }

    return null;
  }

  static AdvancedSearchFilterAnalyticsEvent? _eventForChangedFilter(
    Filter before,
    Filter after, {
    required int filterCount,
  }) {
    if (before.field != after.field) {
      return AdvancedSearchFilterFieldChange(after, filterCount: filterCount);
    }
    if (before.operator != after.operator) {
      return AdvancedSearchFilterOperatorChange(
        after,
        filterCount: filterCount,
      );
    }
    if (after.value case final Polygon polygon) {
      return AdvancedSearchPolygonFilterDraw(
        after,
        polygon,
        filterCount: filterCount,
      );
    }

    return AdvancedSearchFilterValueSet(after, filterCount: filterCount);
  }
}
