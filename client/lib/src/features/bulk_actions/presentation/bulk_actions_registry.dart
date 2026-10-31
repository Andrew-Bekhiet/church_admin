import 'package:church_admin/church_admin.dart';

class BulkActionsRegistry {
  static BulkActionsRegistry get I =>
      globalProviderContainer.read(bulkActionsRegistryProvider);

  static const BulkActionsRegistry standard = BulkActionsRegistry([
    SendWhatsappMessageBulkAction(),
  ]);

  final List<BulkAction> _actions;

  const BulkActionsRegistry(this._actions);

  List<BulkAction> actionsApplicableToAnyOf(Iterable<Viewable> items) =>
      _actions.where((action) => action.isApplicableToAnyOf(items)).toList();
}
