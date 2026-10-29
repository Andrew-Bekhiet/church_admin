part of 'package:church_admin/src/core/services/router/app_route.dart';

class UserAnalysisRoute extends HomeChildRoute {
  static const String routePath = '/user_analysis';

  final User user;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => {
    'user_id': user.uid,
    'has_linked_person': user.person != null,
  };

  @override
  List<Object?> get props => [user];

  const UserAnalysisRoute({required this.user});

  @override
  Widget build(BuildContext context) {
    return UserAnalysisScreen(user: user);
  }
}
