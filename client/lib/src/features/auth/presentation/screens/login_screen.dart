import 'package:church_admin/church_admin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final emailRegex = RegExp(r'^\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b$');

abstract final class LoginScreenKeys {
  static const Key emailFieldKey = ValueKey('Email Field Key');
  static const Key passwordFieldKey = ValueKey('Password Field Key');
  static const Key passwordConfirmationFieldKey =
      ValueKey('PasswordConfirmationFieldKey');
  static const Key forgotPasswordButtonKey =
      ValueKey('Forgot Password Button Key');
  static const Key loginSignupButtonKey = ValueKey('Login/Signup Button Key');
  static const Key switchLoginSignupButtonKey =
      ValueKey('SwitchLogin/Signup Button Key');
}

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
            case IncorrectCredentialsException() when _isLogin:
              ScaffoldMessenger.of(context).showErrorSnackBar(
                'كلمة سر أو بريد إلكتروني غير صحيح',
              );

            case IncorrectCredentialsException():
              ScaffoldMessenger.of(context).showInfoSnackBar(
                'الحساب مسجل بالفعل. قم بتسجيل الدخول',
              );
              setState(() => _isLogin = true);
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
                  SizedBox(
                    height: screenSize.shortestSide,
                    width: screenSize.shortestSide,
                    child: Image.asset(
                      'assets/images/login-signup.png',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Center(
                    child: Text(
                      'قم بتسجيل الدخول أو إنشاء حساب',
                      style: theme.textTheme.titleLarge?.copyWith(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          key: LoginScreenKeys.emailFieldKey,
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
                          const EdgeInsets.symmetric(vertical: 8),
                        ),
                        if (_isLogin)
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              PasswordFormField(
                                key: LoginScreenKeys.passwordFieldKey,
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
                              ),
                              Container(
                                alignment: AlignmentDirectional.centerStart,
                                padding: const EdgeInsetsDirectional.only(
                                  bottom: 20,
                                  start: 8,
                                ),
                                child: InkWell(
                                  key: LoginScreenKeys.forgotPasswordButtonKey,
                                  onTap: () =>
                                      const ForgotPasswordRoute().push(context),
                                  child: Text(
                                    'نسيت كلمة المرور؟',
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        else ...[
                          NewPasswordField(
                            key: LoginScreenKeys.passwordFieldKey,
                            controller: _passwordController,
                            getEmail: () => _emailController.text,
                          ).withPadding(
                            const EdgeInsets.symmetric(vertical: 10),
                          ),
                          PasswordFormField(
                            key: LoginScreenKeys.passwordConfirmationFieldKey,
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
                          key: LoginScreenKeys.loginSignupButtonKey,
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
                          const SizedBox(height: 10),
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
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          _isLogin ? 'ليس لديك حساب؟' : 'لديك حساب بالفعل؟',
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          key: LoginScreenKeys.switchLoginSignupButtonKey,
                          onTap: () => setState(() => _isLogin = !_isLogin),
                          child: Text(
                            _isLogin ? 'إنشاء حساب جديد' : 'تسجيل الدخول',
                            style: theme.textTheme.bodyMedium?.copyWith(
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
                  email: _emailController.text.toLowerCase(),
                  password: _passwordController.text,
                )
              : SignUpWithEmailPassword(
                  email: _emailController.text.toLowerCase(),
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

class _LoginTitle extends StatelessWidget {
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
}
