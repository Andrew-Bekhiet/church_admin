part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditServiceRoute extends HomeChildRoute {
  static const String routePath = '/edit_service';

  final Service? service;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [service];

  const EditServiceRoute({this.service});

  @override
  Widget build(BuildContext context) {
    return EditService(service: service);
  }
}
