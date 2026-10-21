part of 'package:church_admin/src/core/services/router/app_route.dart';

class UserAnalysisRoute extends HomeChildRoute {
  final UserAnalysisExtra $extra;

  @override
  String get path => '/user_analysis';

  @override
  List<Object?> get props => [$extra];

  const UserAnalysisRoute({required this.$extra});

  @override
  Widget build(BuildContext context) {
    return UserAnalysisScreen(user: $extra.user);
  }
}
