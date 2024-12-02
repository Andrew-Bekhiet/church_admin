import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class AuthenticateScreen extends StatefulWidget {
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
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.width - 16,
        leading: widget.next != null ? const BackButton() : null,
        flexibleSpace: FlexibleSpaceBar(
          expandedTitleScale: 2,
          background: Image.asset(
            _getAssetImage(),
            alignment: Alignment.topCenter,
            fit: BoxFit.scaleDown,
          ),
          centerTitle: true,
          title: const Text('كنيسة السيدة العذراء مريم'),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(35)),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _form,
          child: ListView(
            padding: const EdgeInsets.all(12),
            children: <Widget>[
              PasswordFormField(
                onFieldSubmitted: _submit,
                controller: _passwordText,
                decoration: const InputDecoration(
                  labelText: 'كلمة السر',
                ),
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
                      icon: const Icon(Symbols.fingerprint),
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

    final storedPasswordHash = await AuthService.I.getStoredPasswordHash();
    final isPasswordValid = await LocalAuthService.I.verifyPassword(
      email: AuthService.I.currentUser!.email!,
      password: password,
      storedPasswordHash: storedPasswordHash,
    );

    if (isPasswordValid) {
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
