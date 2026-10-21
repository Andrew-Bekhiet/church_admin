part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditUserRoute extends HomeChildRoute {
  static const String routePath = '/edit_user';

  final UserEditIntent intent;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [intent];

  const EditUserRoute({required this.intent});

  @override
  Widget build(BuildContext context) {
    return EditUserScreen(intent: intent);
  }
}
