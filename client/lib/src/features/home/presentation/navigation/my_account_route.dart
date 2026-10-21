part of 'package:church_admin/src/core/services/router/app_route.dart';

class MyAccountRoute extends HomeChildRoute {
  @override
  String get path => '/my_account';

  const MyAccountRoute();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: AuthBloc.I,
      builder: (context, state) {
        final authState = state.unwrapped;

        if (authState is! AuthAuthenticated) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text('برجاء تسجيل الدخول للوصول إلى حسابك.'),
            ),
          );
        }

        return ViewUser(
          userId: authState.userData!.uid,
          user: authState.userData,
        );
      },
    );
  }
}
