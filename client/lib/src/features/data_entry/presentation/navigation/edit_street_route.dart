part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStreetRoute extends HomeChildRoute {
  static const String routePath = '/edit_street';

  final Street? street;
  final Area? withArea;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [street, withArea];

  const EditStreetRoute({this.street, this.withArea});

  @override
  Widget build(BuildContext context) {
    return EditStreet(street: street, withArea: withArea);
  }
}
