part of 'package:church_admin/src/core/services/router/app_route.dart';

class ViewUserRoute extends HomeChildRoute {
  static const String routePath = '/view_user';

  final String uid;
  final User? user;

  @override
  String get path => routePath;

  @override
  Json get analyticsProperties => {'user_id': uid};

  @override
  List<Object?> get props => [uid, user];

  const ViewUserRoute({required this.uid, this.user});

  @override
  Widget build(BuildContext context) {
    return ViewUser(userId: uid, user: user);
  }
}
