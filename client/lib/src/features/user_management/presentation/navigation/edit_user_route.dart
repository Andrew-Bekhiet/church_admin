part of 'package:church_admin/src/core/services/router/app_route.dart';

class EditUserRoute extends HomeChildRoute {
  final UserEditIntent $extra;

  @override
  String get path => '/edit_user';

  @override
  List<Object?> get props => [$extra];

  const EditUserRoute({required this.$extra});

  @override
  Widget build(BuildContext context) {
    return EditUserScreen(intent: $extra);
  }
}
