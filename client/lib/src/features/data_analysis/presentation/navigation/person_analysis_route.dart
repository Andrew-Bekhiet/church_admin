part of 'package:church_admin/src/core/services/router/app_route.dart';

class PersonAnalysisRoute extends HomeChildRoute {
  final Person person;

  @override
  String get path => '/person_analysis';

  @override
  List<Object?> get props => [person];

  const PersonAnalysisRoute({required this.person});

  @override
  Widget build(BuildContext context) {
    return PersonAnalysisScreen(person: person);
  }
}
