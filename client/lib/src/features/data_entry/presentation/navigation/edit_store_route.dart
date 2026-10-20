part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStoreRoute extends HomeChildRoute {
  final Store? store;
  final Family? withFamily;

  @override
  String get path => '/edit_store';

  @override
  List<Object?> get props => [store, withFamily];

  @override
  Map<String, String> get urlParameters => {'id': ?store?.id};

  const EditStoreRoute({this.store, this.withFamily});

  @override
  Widget build(BuildContext context) {
    return EditStore(store: store, withFamily: withFamily);
  }
}
