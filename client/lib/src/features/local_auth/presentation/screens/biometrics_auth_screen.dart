import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class BiometricsAuthScreen extends StatefulWidget {
  final String? next;

  const BiometricsAuthScreen({this.next, super.key});

  @override
  State<BiometricsAuthScreen> createState() => _BiometricsAuthScreenState();
}

abstract final class BiometricsAuthScreenKeys {
  static const Key passwordFieldKey = Key('password_text_field');
  static const Key biometricsButtonKey = Key('biometrics_button');
  static const Key submitButtonKey = Key('submit_button');
  static const Key signOutButtonKey = Key('sign_out_button');
}

class _BiometricsAuthScreenState extends State<BiometricsAuthScreen> {
  final _passwordText = TextEditingController();
  final _form = GlobalKey<FormState>();
  late final BiometricsAuthCubit _cubit = BiometricsAuthCubit(
    next: widget.next,
  );

  @override
  void initState() {
    super.initState();
    unawaited(_cubit.initialize());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final themeData = Theme.of(context);

    return BlocProvider.value(
      value: _cubit,
      child: BlocConsumer<BiometricsAuthCubit, BiometricsAuthState>(
        listenWhen: (previous, current) =>
            !previous.wrongPassword && current.wrongPassword,
        listener: (context, state) => _passwordText.clear(),
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            toolbarHeight: size.width,
            leading: widget.next != null ? const BackButton() : null,
            actions: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: TextButton.icon(
                  key: BiometricsAuthScreenKeys.signOutButtonKey,
                  onPressed: _confirmSignOut,
                  icon: const Icon(Symbols.logout),
                  label: const Text('تسجيل الخروج'),
                ),
              ),
            ],
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
                    key: BiometricsAuthScreenKeys.passwordFieldKey,
                    onFieldSubmitted: _submit,
                    onChanged: (_) => _cubit.clearError(),
                    controller: _passwordText,
                    decoration: InputDecoration(
                      labelText: 'كلمة السر',
                      errorText: state.wrongPassword
                          ? 'كلمة سر خاطئة!'
                          : state.authenticationFailed
                          ? 'تعذر التحقق، حاول مرة أخرى'
                          : null,
                    ),
                    validator: (password) =>
                        password == null || password.isEmpty
                        ? 'برجاء ادخال كلمة السر'
                        : null,
                    textInputAction: TextInputAction.done,
                  ),
                  FilledButton(
                    key: BiometricsAuthScreenKeys.submitButtonKey,
                    onPressed: state.isAuthenticating
                        ? null
                        : () => _submit(_passwordText.text),
                    child: const Text('تسجيل الدخول'),
                  ),
                  if (state.canCheckBiometrics)
                    FilledButton.tonalIcon(
                      key: BiometricsAuthScreenKeys.biometricsButtonKey,
                      style: themeData.filledTonalButtonStyleWorkaround,
                      icon: const Icon(Symbols.fingerprint),
                      label: const Text(
                        'إعادة المحاولة عن طريق البصمة',
                        textAlign: TextAlign.center,
                      ),
                      onPressed: state.isAuthenticating
                          ? null
                          : () => unawaited(_cubit.authenticateBiometrically()),
                    ),
                ],
              ),
            ),
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

  void _submit(String password) {
    if (!(_form.currentState?.validate() ?? false)) return;

    unawaited(_cubit.submitPassword(password));
  }

  Future<void> _confirmSignOut() async {
    final confirmed =
        await showDialog<bool>(
          context: context,
          builder: (context) => const SignOutConfirmationDialog(),
        ) ??
        false;

    if (!confirmed || !mounted) return;

    AuthBloc.I.add(const SignOut());
  }

  @override
  void dispose() {
    _passwordText.dispose();
    unawaited(_cubit.close());
    super.dispose();
  }
}
