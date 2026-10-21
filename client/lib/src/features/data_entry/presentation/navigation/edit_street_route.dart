part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStreetRoute extends HomeChildRoute {
  final Street? street;
  final Area? withArea;

  @override
  String get path => '/edit_street';

  @override
  List<Object?> get props => [street, withArea];

  const EditStreetRoute({this.street, this.withArea});

  @override
  Widget build(BuildContext context) {
    return EditStreet(street: street, withArea: withArea);
  }
}
