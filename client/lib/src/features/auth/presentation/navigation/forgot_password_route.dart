part of 'package:church_admin/src/core/services/router/app_route.dart';

class ForgotPasswordRoute extends AppRoute {
  @override
  String get path => '/forgot_password';

  const ForgotPasswordRoute();

  @override
  Widget build(BuildContext context) => const ForgotPasswordScreen();
}
