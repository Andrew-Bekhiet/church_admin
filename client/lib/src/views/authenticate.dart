import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticateScreen extends StatefulWidget {
  static final route = GoRoute(
    name: 'authenticate',
    path: '/authenticate',
    builder: (context, state) => AuthenticateScreen(
      next: _hasRedirect(state.uri.queryParameters)
          ? state.uri.queryParameters['next']
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
        (_hasRedirect(state.uri.queryParameters) &&
            LocalAuthService.I.shouldAuthenticateForPath(
              state.uri.queryParameters['next']!,
            ))) {
      return null;
    } else {
      return state.uri.queryParameters['next'] ?? '/';
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
    final Size size = MediaQuery.sizeOf(context);
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final inputBorder = OutlineInputBorder(
      gapPadding: 8,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(color: colorScheme.primary),
    );

    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.brightness == Brightness.light
              ? Colors.white
              : Colors.black,
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
          title: const Text(
            'كنيسة السيدة العذراء مريم',
            style: TextStyle(color: Colors.white),
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
                onFieldSubmitted: _submit,
                controller: _passwordText,
                decoration: InputDecoration(
                  labelText: 'كلمة السر',
                  border: inputBorder,
                  enabledBorder: inputBorder,
                  focusedBorder: inputBorder,
                  prefixIconColor: Colors.white,
                  suffixIconColor: Colors.white,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: colorScheme.primary),
                  iconColor: Colors.white,
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
