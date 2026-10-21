part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditServiceRoute extends HomeChildRoute {
  final Service? service;

  @override
  String get path => '/edit_service';

  @override
  List<Object?> get props => [service];

  const EditServiceRoute({this.service});

  @override
  Widget build(BuildContext context) {
    return EditService(service: service);
  }
}
