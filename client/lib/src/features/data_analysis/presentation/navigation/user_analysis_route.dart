part of 'package:church_admin/src/core/services/router/app_route.dart';

class UserAnalysisRoute extends HomeChildRoute {
  final User user;

  @override
  String get path => '/user_analysis';

  @override
  List<Object?> get props => [user];

  const UserAnalysisRoute({required this.user});

  @override
  Widget build(BuildContext context) {
    return UserAnalysisScreen(user: user);
  }
}
