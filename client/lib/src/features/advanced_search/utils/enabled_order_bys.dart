import 'package:church_admin/church_admin.dart';

extension EnabledOrderBys on Iterable<OrderBy> {
  List<OrderBy> whereEnabled() =>
      where((orderBy) => orderBy.field.isEnabled).toList();
}
