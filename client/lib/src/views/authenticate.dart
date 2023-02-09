import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticateScreen extends StatefulWidget {
  static final route = GoRoute(
    name: 'authenticate',
    path: '/authenticate',
    builder: (context, state) => const AuthenticateScreen(),
    redirect: (context, state) {
      return redirect(
        ChurchAdminApp
            .router.routeInformationParser.configuration.namedLocation,
        state,
      );
    },
  );

  @visibleForTesting
  static String? redirect(NamedLocation namedLocation, GoRouterState state) {
    if (!AuthService.instance.isSignedIn) {
      return namedLocation('login');
    } else if (AuthService.instance.currentUser?.password == null) {
      return namedLocation('register_user_data');
    } else if (LocalAuthService.I.shouldAuthenticate) {
      return null;
    } else {
      return state.queryParams['next'] ?? '/';
    }
  }

  const AuthenticateScreen({super.key});

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
                onPressed: () async => _submit(_passwordText.text),
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
      LocalAuthService.I.resetAuthState();
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

    String? encryptedPassword =
        await EncryptionService.I.encryptPassword(password);

    if (AuthService.instance.currentUser?.password == encryptedPassword) {
      encryptedPassword = null;
      LocalAuthService.I.resetAuthState();
    } else {
      encryptedPassword = null;
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
