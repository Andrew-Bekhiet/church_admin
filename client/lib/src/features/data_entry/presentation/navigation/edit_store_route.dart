part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStoreRoute extends HomeChildRoute {
  final EditStoreExtra? $extra;

  @override
  String get path => '/edit_store';

  @override
  List<Object?> get props => [$extra];

  const EditStoreRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditStore(store: $extra?.store, withFamily: $extra?.family);
  }
}
