part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewServiceRoute extends HomeChildRoute {
  final String id;
  final Service? service;

  @override
  String get path => '/view_service';

  @override
  List<Object?> get props => [id, service];

  const ViewServiceRoute({required this.id, this.service});

  @override
  Widget build(BuildContext context) {
    return ViewService(serviceId: id, service: service);
  }
}
