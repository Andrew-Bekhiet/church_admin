import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

abstract final class AuthenticateScreenKeys {
  static const Key passwordFieldKey = Key('password_text_field');
  static const Key biometricsButtonKey = Key('biometrics_button');
  static const Key submitButtonKey = Key('submit_button');
}

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
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.width,
        leading: widget.next != null ? const BackButton() : null,
        flexibleSpace: FlexibleSpaceBar(
          background: SafeArea(
            child: Image.asset(_getAssetImage(), fit: BoxFit.scaleDown),
          ),
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
                key: AuthenticateScreenKeys.passwordFieldKey,
                onFieldSubmitted: _submit,
                controller: _passwordText,
                decoration: const InputDecoration(labelText: 'كلمة السر'),
                validator: (p) =>
                    p == null || p.isEmpty ? 'برجاء ادخال كلمة السر' : null,
                textInputAction: TextInputAction.done,
              ),
              FilledButton(
                key: AuthenticateScreenKeys.submitButtonKey,
                onPressed: () => _submit(_passwordText.text),
                child: const Text('تسجيل الدخول'),
              ),
              FutureBuilder<bool>(
                future: Future.sync(LocalAuthService.I.canCheckBiometrics),
                builder: (context, canCheckBiometricsData) {
                  if (canCheckBiometricsData.data ?? false) {
                    return FilledButton.tonalIcon(
                      key: AuthenticateScreenKeys.biometricsButtonKey,
                      style: themeData.filledTonalButtonStyleWorkaround,
                      icon: const Icon(Symbols.fingerprint),
                      label: const Text(
                        'إعادة المحاولة عن طريق البصمة',
                        textAlign: TextAlign.center,
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
    switch (LiturgySeason.current) {
      case LiturgySeason.holyWeek:
        return 'assets/holyweek.jpeg';

      case LiturgySeason.pentecost:
        return 'assets/risen.jpg';

      case _:
        return 'assets/logo.png';
    }
  }

  Future<void> _authenticate() async {
    final localAuthService = LocalAuthService.I;

    if (await localAuthService.canCheckBiometrics() &&
        await localAuthService.authenticate()) {
      localAuthService.resetAuthState(path: widget.next);
    }
  }

  Future<void> _submit(String password) async {
    if (!_form.currentState!.validate()) return;

    if (password.isEmpty) {
      _passwordText.clear();

      unawaited(
        showDialog(
          context: context,
          builder: (context) =>
              const AlertDialog(title: Text('برجاء ادخال كلمة السر!')),
        ),
      );

      return;
    }

    final storedPasswordHash = await AuthStorage.I.getPasswordHash();
    final isPasswordValid = await LocalAuthService.I.verifyPassword(
      email: AuthBloc.I.currentUser!.email,
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
          builder: (context) =>
              const AlertDialog(title: Text('كلمة سر خاطئة!')),
        );
      }
    }
  }
}
