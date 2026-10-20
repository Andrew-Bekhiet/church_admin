part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewPersonRoute extends HomeChildRoute {
  final String id;
  final Person? person;

  @override
  String get path => '/view_person';

  @override
  List<Object?> get props => [id, person];

  @override
  Map<String, String> get urlParameters => {'id': id};

  const ViewPersonRoute({required this.id, this.person});

  @override
  Widget build(BuildContext context) {
    return ViewPerson(personId: id, person: person);
  }
}
