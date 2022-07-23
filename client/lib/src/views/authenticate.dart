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
    redirect: (state) {
      if (!CAAuthRepository.I.isSignedIn) {
        return state.namedLocation('login');
      } else if (CAAuthRepository.I.currentUser?.password == null) {
        return state.namedLocation('register_user_data');
      } else if (LocalAuthService.I.shouldAuthenticate) {
        return null;
      } else {
        return state.queryParams['next'] ?? '/';
      }
    },
  );

  const AuthenticateScreen({super.key});

  @override
  State<AuthenticateScreen> createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  final _passwordText = TextEditingController();
  final _form = GlobalKey<FormState>();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _form,
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
              Image.asset(_getAssetImage(), fit: BoxFit.scaleDown),
              const SizedBox(height: 10),
              PasswordFormField(
                onFieldSubmitted: _submit,
                controller: _passwordText,
                validator: (p) =>
                    p == null || p.isEmpty ? 'برجاء ادخال كلمة السر' : null,
                textInputAction: TextInputAction.done,
              ),
              ElevatedButton(
                onPressed: () => _submit(_passwordText.text),
                child: const Text('تسجيل الدخول'),
              ),
              FutureBuilder<bool>(
                future: LocalAuthService.I.canCheckBiometrics(),
                builder: (context, canCheckBiometricsData) {
                  if (canCheckBiometricsData.data ?? false) {
                    return OutlinedButton.icon(
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

  @override
  void initState() {
    super.initState();
    _authenticate();
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
        await EncryptionService.encryptPassword(password);

    if (CAAuthRepository.I.currentUser!.password == encryptedPassword) {
      encryptedPassword = null;
      LocalAuthService.I.resetAuthState();
    } else {
      encryptedPassword = null;
      _passwordText.clear();

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
