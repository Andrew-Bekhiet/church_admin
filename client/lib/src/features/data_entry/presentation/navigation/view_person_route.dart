part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewPersonRoute extends HomeChildRoute {
  static const String routePath = '/view_person';

  final String id;
  final Person? person;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => {'person_id': id};

  @override
  List<Object?> get props => [id, person];

  const ViewPersonRoute({required this.id, this.person});

  @override
  Widget build(BuildContext context) {
    return ViewPerson(personId: id, person: person);
  }
}
