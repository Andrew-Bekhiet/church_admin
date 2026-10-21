part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditStreetRoute extends HomeChildRoute {
  final EditStreetExtra? $extra;

  @override
  String get path => '/edit_street';

  @override
  List<Object?> get props => [$extra];

  const EditStreetRoute({this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditStreet(street: $extra?.street, withArea: $extra?.area);
  }
}
