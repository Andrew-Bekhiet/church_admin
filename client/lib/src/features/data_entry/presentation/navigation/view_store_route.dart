import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ViewStoreRoute extends HomeChildRoute {
  final String id;
  final Store? $extra;

  @override
  String get path => '/view_store';

  @override
  List<Object?> get props => [id, $extra];

  const ViewStoreRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context) {
    return ViewStore(storeId: id, store: $extra);
  }
}
