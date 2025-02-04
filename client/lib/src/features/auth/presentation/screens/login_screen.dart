import 'package:church_admin/church_admin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';

final emailRegex = RegExp(r'^\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b$');

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final authBloc = AuthBloc.I;

  bool _isLogin = true;

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenSize = MediaQuery.sizeOf(context);

    return BlocConsumer<AuthBloc, AuthState>(
      bloc: authBloc,
      listener: (context, state) {
        if (state is AuthExceptionState) {
          switch (state.exception) {
            case IncorrectCredentialsException():
              final theme = Theme.of(context);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: theme.colorScheme.error,
                  content: Row(
                    spacing: 10,
                    children: [
                      Icon(Symbols.error, color: theme.colorScheme.onError),
                      const Text('كلمة سر أو بريد إلكتروني غير صحيح'),
                    ],
                  ),
                  duration: const Duration(seconds: 8),
                ),
              );
          }
        }
      },
      builder: (context, state) {
        final loading = state is AuthLoading;

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const _LoginTitle(),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: screenSize.shortestSide,
                    width: screenSize.shortestSide,
                    child: Image.asset(
                      'assets/images/login-signup.png',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      'قم بتسجيل الدخول أو إنشاء حساب',
                      style: theme.textTheme.titleLarge?.copyWith(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'البريد الإلكتروني',
                          ),
                          keyboardType: TextInputType.emailAddress,
                          autofillHints: const [AutofillHints.email],
                          textInputAction: TextInputAction.next,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (email) {
                            if (email == null || email.isEmpty) {
                              return 'البريد الإلكتروني لا يمكن أن يكون فارغاً';
                            } else if (!emailRegex.hasMatch(email)) {
                              return 'البريد الإلكتروني غير صالح';
                            }
                            return null;
                          },
                          controller: _emailController,
                        ).withPadding(
                          const EdgeInsets.symmetric(vertical: 10),
                        ),
                        if (_isLogin)
                          PasswordFormField(
                            labelText: 'كلمة المرور',
                            autoValidateMode:
                                AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.done,
                            controller: _passwordController,
                            onFieldSubmitted: _submit,
                            validator: (password) {
                              if (password?.isEmpty ?? true) {
                                return 'كلمة المرور لا يمكن أن تكون فارغة';
                              }
                              return null;
                            },
                          )
                        else ...[
                          NewPasswordField(
                            controller: _passwordController,
                            getEmail: () => _emailController.text,
                          ).withPadding(
                            const EdgeInsets.symmetric(vertical: 10),
                          ),
                          PasswordFormField(
                            labelText: 'تأكيد كلمة المرور',
                            autoFillHints: const [AutofillHints.newPassword],
                            controller: _passwordConfirmationController,
                            textInputAction: TextInputAction.done,
                            onFieldSubmitted: _submit,
                            validator: (password) {
                              if (password != _passwordController.text) {
                                return 'كلمتا المرور غير متطابقتين';
                              }
                              return null;
                            },
                          ),
                        ],
                        FilledButton(
                          onPressed: loading ? null : _submit,
                          child: loading
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Text(
                                  _isLogin ? 'تسجيل الدخول' : 'إنشاء حساب جديد',
                                ),
                        ),
                        if (!_isLogin) ...[
                          Container(
                            height: MediaQuery.sizeOf(context).height / 38,
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                              children: [
                                TextSpan(
                                  style: theme.textTheme.bodySmall,
                                  text: 'بإنشائك حساب فإنك توافق على ',
                                ),
                                TextSpan(
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: Colors.blue,
                                  ),
                                  text: 'شروط الاستخدام',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      //TODO: TOS
                                    },
                                ),
                                TextSpan(
                                  style: theme.textTheme.bodySmall,
                                  text: ' و',
                                ),
                                TextSpan(
                                  style: theme.textTheme.bodySmall?.copyWith(
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
                      ],
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
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () => setState(() => _isLogin = !_isLogin),
                          child: Text(
                            _isLogin ? 'إنشاء حساب جديد' : 'تسجيل الدخول',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.primary,
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
        );
      },
    );
  }

  Future<void> _submit([_]) async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        authBloc.add(
          _isLogin
              ? SignInWithEmailPassword(
                  email: _emailController.text,
                  password: _passwordController.text,
                )
              : SignUpWithEmailPassword(
                  email: _emailController.text,
                  password: _passwordController.text,
                ),
        );
      } on MultiFactorRequiredException {
        if (mounted) const MultiFactorLoginRoute().go(context);
      } on Exception catch (e, stackTrace) {
        if (mounted) {
          await LoggingService.I.showErrorDialogAndReport(
            context,
            e,
            stackTrace: stackTrace,
          );
        }
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();
    super.dispose();
  }
}

class _LoginTitle extends StatelessWidget implements PreferredSizeWidget {
  const _LoginTitle();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            'كنيسة السيدة العذراء مريم',
            style: theme.textTheme.headlineMedium?.copyWith(
              color:
                  theme.textTheme.headlineMedium?.color?.withValues(alpha: 1),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}
