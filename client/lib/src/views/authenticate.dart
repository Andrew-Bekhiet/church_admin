import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticateScreen extends StatefulWidget {
  static final route = GoRoute(
    name: 'authenticate',
    path: '/authenticate',
    builder: (context, state) => AuthenticateScreen(
      next: _hasRedirect(state.queryParameters)
          ? state.queryParameters['next']
          : null,
    ),
    redirect: (context, state) {
      return redirect(state);
    },
  );

  @visibleForTesting
  static String? redirect(GoRouterState state) {
    if (!AuthService.I.isSignedIn) {
      return LoginScreen.route.path;
    } else if (!(AuthService.I.currentUser?.isMultiFactorEnrolled ?? false)) {
      return MultiFactorLogin.route.path;
    } else if (LocalAuthService.I.shouldAuthenticate ||
        (_hasRedirect(state.queryParameters) &&
            LocalAuthService.I
                .shouldAuthenticateForPath(state.queryParameters['next']!))) {
      return null;
    } else {
      return state.queryParameters['next'] ?? '/';
    }
  }

  static bool _hasRedirect(Map<String, dynamic> queryParams) =>
      (queryParams['next'] ?? '/') != '/';

  final String? next;

  const AuthenticateScreen({this.next, super.key});

  @override
  State<AuthenticateScreen> createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  final _passwordText = TextEditingController();
  final _form = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    unawaited(_authenticate());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.next != null
          ? AppBar(
              leading: const BackButton(),
              backgroundColor: Colors.transparent,
            )
          : null,
      body: SafeArea(
        child: Form(
          key: _form,
          child: ListView(
            padding: const EdgeInsets.all(12),
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.shortestSide * 0.7,
                width: MediaQuery.of(context).size.shortestSide * 0.7,
                child: Image.asset(
                  _getAssetImage(),
                  fit: BoxFit.scaleDown,
                ),
              ),
              const SizedBox(height: 10),
              PasswordFormField(
                onFieldSubmitted: _submit,
                controller: _passwordText,
                validator: (p) =>
                    p == null || p.isEmpty ? 'برجاء ادخال كلمة السر' : null,
                textInputAction: TextInputAction.done,
              ),
              FilledButton(
                onPressed: () => _submit(_passwordText.text),
                child: const Text('تسجيل الدخول'),
              ),
              FutureBuilder<bool>(
                future: Future.sync(LocalAuthService.I.canCheckBiometrics),
                builder: (context, canCheckBiometricsData) {
                  if (canCheckBiometricsData.data ?? false) {
                    return FilledButton.tonalIcon(
                      icon: const Icon(Icons.fingerprint),
                      label: const Text(
                        'إعادة المحاولة عن طريق بصمة الاصبع/الوجه',
                      ),
                      onPressed: _authenticate,
                    );
                  }

                  return const SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getAssetImage() {
    final riseDay = getRiseDay();
    if (DateTime.now()
            .isAfter(riseDay.subtract(const Duration(days: 7, seconds: 20))) &&
        DateTime.now().isBefore(riseDay.subtract(const Duration(days: 1)))) {
      return 'assets/holyweek.jpeg';
    } else if (DateTime.now()
            .isBefore(riseDay.add(const Duration(days: 50, seconds: 20))) &&
        DateTime.now().isAfter(riseDay.subtract(const Duration(days: 1)))) {
      return 'assets/risen.jpg';
    }
    return 'assets/Logo.png';
  }

  Future<void> _authenticate() async {
    if (await LocalAuthService.I.canCheckBiometrics() &&
        await LocalAuthService.I.authenticate()) {
      LocalAuthService.I.resetAuthState(path: widget.next);
    }
  }

  Future<void> _submit(String password) async {
    if (!_form.currentState!.validate()) return;

    if (password.isEmpty) {
      _passwordText.clear();

      unawaited(
        showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text(
              'برجاء ادخال كلمة السر!',
            ),
          ),
        ),
      );
      return;
    }

    final keyBytes = await EncryptionService.I.deriveKey(
      password: password,
      salt: AuthService.I.currentUser!.email!,
    );
    if (await EncryptionService.I.verifyPassword(password, keyBytes)) {
      LocalAuthService.I.resetAuthState(path: widget.next);
    } else {
      _passwordText.clear();

      if (mounted) {
        await showDialog(
          context: context,
          builder: (context) => const AlertDialog(
            title: Text(
              'كلمة سر خاطئة!',
            ),
          ),
        );
      }
    }
  }
}
