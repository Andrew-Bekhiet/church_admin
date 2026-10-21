part of 'package:church_admin/src/core/services/router/app_route.dart';

class ForgotPasswordRoute extends AppRoute {
  static const String routePath = '/forgot_password';

  @override
  String get path => routePath;

  const ForgotPasswordRoute();

  @override
  Widget build(BuildContext context) => const ForgotPasswordScreen();
}
