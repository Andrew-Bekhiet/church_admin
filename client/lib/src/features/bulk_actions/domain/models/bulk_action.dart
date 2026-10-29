import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

abstract class BulkAction<T extends Viewable> {
  String get key;

  String get label;

  Widget get icon;

  const BulkAction();

  bool isApplicableToAnyOf(Iterable<Viewable> items) =>
      items.any((item) => item is T);

  Set<T> filterApplicableItems(Iterable<Viewable> items) =>
      items.whereType<T>().toSet();

  Future<void> run(BuildContext context, Set<T> selected);
}
