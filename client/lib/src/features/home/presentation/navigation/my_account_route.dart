import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'my_account_route.g.dart';

@TypedGoRoute<MyAccountRoute>(path: '/my_account')
class MyAccountRoute extends GoRouteData with _$MyAccountRoute {
  const MyAccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
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
