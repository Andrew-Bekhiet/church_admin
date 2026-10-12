import 'package:church_admin/church_admin.dart';

extension EnabledFilters on Iterable<Filter> {
  List<Filter> whereEnabled() {
    final enabled = <Filter>[];
    for (final filter in this) {
      if (!filter.field.isEnabled) {
        continue;
      }
      if ((filter.operator, filter.value) case (
        LogicalOperator(),
        final List<Filter> children,
      )) {
        final enabledChildren = children.whereEnabled();
        if (enabledChildren.isEmpty) {
          continue;
        }
        enabled.add(filter.copyWith(value: enabledChildren));
        continue;
      }
      enabled.add(filter);
    }

    return enabled;
  }
}
