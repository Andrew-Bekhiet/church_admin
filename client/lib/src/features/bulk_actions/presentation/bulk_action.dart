import 'package:material_ui/material_ui.dart';

abstract class BulkAction<T> {
  String get key;

  String get label;

  Widget get icon;

  const BulkAction();

  bool isApplicableToAnyOf(Iterable<Object?> items) =>
      items.any((item) => item is T);

  Set<T> filterApplicableItems(Iterable<Object?> items) =>
      items.whereType<T>().toSet();

  Future<void> run(BuildContext context, Set<T> selected);
}
