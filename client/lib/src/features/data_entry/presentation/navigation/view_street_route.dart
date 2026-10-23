part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewStreetRoute extends HomeChildRoute {
  static const String routePath = '/view_street';

  final String id;
  final Street? street;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => {'street_id': id};

  @override
  List<Object?> get props => [id, street];

  const ViewStreetRoute({required this.id, this.street});

  @override
  Widget build(BuildContext context) {
    return ViewStreet(streetId: id, street: street);
  }
}
