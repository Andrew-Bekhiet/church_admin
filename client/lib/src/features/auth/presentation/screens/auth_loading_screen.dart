import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthLoadingScreen extends StatelessWidget {
  const AuthLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: AuthBloc.I,
      builder: (context, state) {
        if (state is AuthExceptionState) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('خطأ في تسجيل الدخول'),
              actions: const [SignOutButton()],
            ),
            body: Center(
              child: ErrorWidget.builder(
                FlutterErrorDetails(
                  exception:
                      state.exception ?? Exception('Unknown Auth Exception'),
                  stack: state.stackTrace,
                  library: 'AuthLoadingScreen',
                ),
              ),
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            actions: const [SignOutButton()],
          ),
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Center(child: CircularProgressIndicator()),
              Text('جاري التحميل...'),
            ],
          ),
        );
      },
    );
  }
}
