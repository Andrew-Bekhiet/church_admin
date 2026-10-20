import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class ForgotPasswordRoute extends AppRoute {
  @override
  String get path => '/forgot_password';

  const ForgotPasswordRoute();

  @override
  Widget build(BuildContext context) => const ForgotPasswordScreen();
}
