part of 'package:church_admin/src/core/services/router/app_route.dart';

class PersonAnalysisRoute extends HomeChildRoute {
  static const String routePath = '/person_analysis';

  final Person person;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => {'person_id': person.id};

  @override
  List<Object?> get props => [person];

  const PersonAnalysisRoute({required this.person});

  @override
  Widget build(BuildContext context) {
    return PersonAnalysisScreen(person: person);
  }
}
