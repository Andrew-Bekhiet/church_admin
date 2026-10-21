part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewPersonRoute extends HomeChildRoute {
  final String id;
  final Person? $extra;

  @override
  String get path => '/view_person';

  @override
  List<Object?> get props => [id, $extra];

  const ViewPersonRoute({required this.id, this.$extra});

  @override
  Widget build(BuildContext context) {
    return ViewPerson(personId: id, person: $extra);
  }
}
