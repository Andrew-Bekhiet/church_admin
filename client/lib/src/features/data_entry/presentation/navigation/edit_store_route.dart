part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStoreRoute extends HomeChildRoute {
  static const String routePath = '/edit_store';

  final Store? store;
  final Family? withFamily;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [store, withFamily];

  const EditStoreRoute({this.store, this.withFamily});

  @override
  Widget build(BuildContext context) {
    return EditStore(store: store, withFamily: withFamily);
  }
}
