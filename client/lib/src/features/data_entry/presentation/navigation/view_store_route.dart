part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewStoreRoute extends HomeChildRoute {
  final String id;
  final Store? store;

  @override
  String get path => '/view_store';

  @override
  List<Object?> get props => [id, store];

  @override
  Map<String, String> get urlParameters => {'id': id};

  const ViewStoreRoute({required this.id, this.store});

  @override
  Widget build(BuildContext context) {
    return ViewStore(storeId: id, store: store);
  }
}
