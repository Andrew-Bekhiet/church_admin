import 'package:church_admin/church_admin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final emailRegex = RegExp(r'^\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b$');

class LoginScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
    redirect: (context, state) {
      return redirect();
    },
  );

  @visibleForTesting
  static String? redirect() {
    if (AuthService.I.isSignedIn) {
      return '/';
    }
    return null;
  }

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _LoginTitle(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 5),
                SizedBox(
                  height: MediaQuery.of(context).size.shortestSide * 0.5,
                  width: MediaQuery.of(context).size.shortestSide * 0.5,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      'assets/Logo.png',
                      color: Theme.of(context).colorScheme.primary,
                      fit: BoxFit.scaleDown,
                      colorBlendMode: BlendMode.softLight,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'قم بتسجيل الدخول أو إنشاء حساب',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 30),
                if (_isLogin)
                  _LoginView(
                    onLogin: (email, password) => _authWithEmailPassword(
                      email: email,
                      password: password,
                    ),
                  )
                else
                  _SignUpView(
                    onSignUp: (email, password) => _authWithEmailPassword(
                      email: email,
                      password: password,
                    ),
                  ),
                const SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        _isLogin ? 'ليس لديك حساب؟' : 'لديك حساب بالفعل؟',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () => setState(() => _isLogin = !_isLogin),
                        child: Text(
                          _isLogin ? 'إنشاء حساب جديد' : 'تسجيل الدخول',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _authWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      bool rslt;
      if (_isLogin) {
        rslt = await AuthService.I.signInWithEmailPassword(
          email: email,
          password: password,
        );
      } else {
        rslt = await AuthService.I.signUpWithEmailPassword(
          email: email,
          password: password,
        );
      }

      if (rslt) {
        await AuthService.I.userStream.nextNonNullStrict;
        await setupSettings();
      }
    } on MultiFactorException {
      context.go('/multiFactor');
    } on Exception catch (e, stackTrace) {
      await LoggingService.I.showErrorDialogAndReport(
        context,
        e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> setupSettings() async {
    try {
      await UserSettingsService.I.setupDefaults();

      await NotificationsService.I.requestNotificationsPermission();
      await NotificationsService.I.scheduleDefaultNotifications();
    } catch (err, stack) {
      await LoggingService.I.reportError(err, stackTrace: stack);
    }
  }
}

class _LoginTitle extends StatelessWidget implements PreferredSizeWidget {
  const _LoginTitle();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            'كنيسة السيدة العذراء مريم',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.color
                      ?.withOpacity(1),
                ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}

class _SignUpView extends StatefulWidget {
  const _SignUpView({required this.onSignUp});

  final Future<void> Function(String, String) onSignUp;

  @override
  State<_SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<_SignUpView> {
  bool _loading = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'البريد الإلكتروني'),
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            textInputAction: TextInputAction.next,
            validator: (email) {
              if (email == null || email.isEmpty) {
                return 'البريد الإلكتروني لا يمكن أن يكون فارغاً';
              } else if (!emailRegex.hasMatch(email)) {
                return 'البريد الإلكتروني غير صالح';
              }
              return null;
            },
            controller: _emailController,
          ).withPadding(const EdgeInsets.symmetric(vertical: 10)),
          NewPasswordField(controller: _passwordController)
              .withPadding(const EdgeInsets.symmetric(vertical: 10)),
          PasswordFormField(
            labelText: 'تأكيد كلمة المرور',
            autoFillHints: const [AutofillHints.newPassword],
            controller: _passwordConfirmationController,
            validator: (password) {
              if (password != _passwordController.text) {
                return 'كلمتا المرور غير متطابقتين';
              }
              return null;
            },
          ),
          FilledButton(
            onPressed: _loading
                ? null
                : () async {
                    if (_formKey.currentState?.validate() ?? false) {
                      _loading = true;
                      if (mounted) setState(() {});

                      await widget.onSignUp(
                        _emailController.text,
                        _passwordController.text,
                      );

                      _loading = false;
                      if (mounted) setState(() {});
                    }
                  },
            child: _loading
                ? const Center(child: CircularProgressIndicator())
                : const Text('إنشاء حساب جديد'),
          ),
          Container(height: MediaQuery.of(context).size.height / 38),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  style: Theme.of(context).textTheme.bodySmall,
                  text: 'بإنشائك حساب فإنك توافق على ',
                ),
                TextSpan(
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.blue,
                      ),
                  text: 'شروط الاستخدام',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      //TODO: TOS
                    },
                ),
                TextSpan(
                  style: Theme.of(context).textTheme.bodySmall,
                  text: ' و',
                ),
                TextSpan(
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.blue,
                      ),
                  text: 'سياسة الخصوصية',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      //TODO: Privacy Policy
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginView extends StatefulWidget {
  const _LoginView({required this.onLogin});

  final Future<void> Function(String, String) onLogin;

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  bool _loading = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'البريد الإلكتروني'),
            keyboardType: TextInputType.emailAddress,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            autofillHints: const [AutofillHints.email],
            textInputAction: TextInputAction.next,
            validator: (email) {
              if (email == null || email.isEmpty) {
                return 'البريد الإلكتروني لا يمكن أن يكون فارغاً';
              } else if (!emailRegex.hasMatch(email)) {
                return 'البريد الإلكتروني غير صالح';
              }
              return null;
            },
            controller: _emailController,
          ).withPadding(const EdgeInsets.symmetric(vertical: 10)),
          PasswordFormField(
            labelText: 'كلمة المرور',
            autoFillHints: const [AutofillHints.newPassword],
            autoValidateMode: AutovalidateMode.onUserInteraction,
            controller: _passwordController,
            validator: (password) {
              if (password?.isEmpty ?? true) {
                return 'كلمة المرور لا يمكن أن تكون فارغة';
              }
              return null;
            },
          ),
          FilledButton(
            onPressed: _loading
                ? null
                : () async {
                    if (_formKey.currentState?.validate() ?? false) {
                      _loading = true;
                      if (mounted) setState(() {});

                      await widget.onLogin(
                        _emailController.text,
                        _passwordController.text,
                      );

                      _loading = false;
                      if (mounted) setState(() {});
                    }
                  },
            child: _loading
                ? const Center(child: CircularProgressIndicator())
                : const Text('تسجيل الدخول'),
          ),
        ],
      ),
    );
  }
}
