part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewStoreRoute extends HomeChildRoute {
  static const String routePath = '/view_store';

  final String id;
  final Store? store;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [id, store];

  const ViewStoreRoute({required this.id, this.store});

  @override
  Widget build(BuildContext context) {
    return ViewStore(storeId: id, store: store);
  }
}
