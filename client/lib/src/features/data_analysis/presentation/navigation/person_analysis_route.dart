part of 'package:church_admin/src/core/services/router/app_route.dart';

class PersonAnalysisRoute extends HomeChildRoute {
  final PersonAnalysisExtra $extra;

  @override
  String get path => '/person_analysis';

  @override
  List<Object?> get props => [$extra];

  const PersonAnalysisRoute({required this.$extra});

  @override
  Widget build(BuildContext context) {
    return PersonAnalysisScreen(person: $extra.person);
  }
}
