import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/auth/presentation/widgets/auth_form.dart';
import 'package:church_admin/src/features/auth/presentation/widgets/auth_mode_switch.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final emailRegex = RegExp(
  r'^[A-Za-z0-9._%+\-]+@[A-Za-z0-9.\-]+\.[A-Za-z]{2,}$',
);

abstract final class LoginScreenKeys {
  static const Key emailFieldKey = ValueKey('Email Field Key');
  static const Key passwordFieldKey = ValueKey('Password Field Key');
  static const Key passwordConfirmationFieldKey = ValueKey(
    'PasswordConfirmationFieldKey',
  );
  static const Key forgotPasswordButtonKey = ValueKey(
    'Forgot Password Button Key',
  );
  static const Key loginSignupButtonKey = ValueKey('Login/Signup Button Key');
  static const Key switchLoginSignupButtonKey = ValueKey(
    'SwitchLogin/Signup Button Key',
  );
}

class _LoginScreenState extends State<LoginScreen> {
  final authBloc = AuthBloc.I;

  bool _isLogin = true;

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();

  late final _termsOfServiceRecognizer = TapGestureRecognizer()
    ..onTap = () => LauncherService.I.launchUrl(
      Uri.parse(
        'https://church-data-admin.firebaseapp.com/terms-of-service/',
      ),
    );

  late final _privacyPolicyRecognizer = TapGestureRecognizer()
    ..onTap = () => LauncherService.I.launchUrl(
      Uri.parse(
        'https://church-data-admin.firebaseapp.com/privacy-policy/',
      ),
    );

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return BlocConsumer<AuthBloc, AuthState>(
      bloc: authBloc,
      listener: (context, state) {
        if (state is! AuthExceptionState) return;

        final exception = state.exception;
        if (exception is EmailAlreadyInUseException) {
          ScaffoldMessenger.of(context).showInfoSnackBar(
            'الحساب مسجل بالفعل. قم بتسجيل الدخول',
          );
          setState(() => _isLogin = true);

          return;
        }

        ScaffoldMessenger.of(context).showErrorSnackBar(
          switch (exception) {
            IncorrectCredentialsException() =>
              'كلمة سر أو بريد إلكتروني غير صحيح',
            WeakPasswordException() =>
              'كلمة السر ضعيفة. برجاء اختيار كلمة سر أقوى',
            TooManyAttemptsException() =>
              'محاولات كثيرة. برجاء المحاولة مرة أخرى بعد قليل',
            AuthNetworkException() =>
              'تعذر الاتصال بالخادم. تأكد من اتصالك بالإنترنت',
            _ when _isLogin => 'تعذر تسجيل الدخول. برجاء المحاولة مرة أخرى.',
            UnknownAuthException() =>
              'تعذر إنشاء الحساب. برجاء المحاولة مرة أخرى.',
            _ => 'حدث خطأ غير متوقع. برجاء المحاولة مرة أخرى.',
          },
        );
      },
      builder: (context, state) {
        final loading = state is AuthLoading;

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const PostHogUnmaskWidget(child: _LoginTitle()),
                  PostHogUnmaskWidget(
                    child: SizedBox(
                      height: screenSize.shortestSide,
                      width: screenSize.shortestSide,
                      child: Image.asset(
                        'assets/images/login-signup.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  AuthForm(
                    isLogin: _isLogin,
                    loading: loading,
                    formKey: _formKey,
                    emailController: _emailController,
                    passwordController: _passwordController,
                    passwordConfirmationController:
                        _passwordConfirmationController,
                    termsOfServiceRecognizer: _termsOfServiceRecognizer,
                    privacyPolicyRecognizer: _privacyPolicyRecognizer,
                    onSubmit: _submit,
                  ),
                  PostHogUnmaskWidget(
                    child: AuthModeSwitch(
                      isLogin: _isLogin,
                      onToggle: () => setState(() => _isLogin = !_isLogin),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordConfirmationController.dispose();

    _termsOfServiceRecognizer.dispose();
    _privacyPolicyRecognizer.dispose();

    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    try {
      authBloc.add(
        _isLogin
            ? SignInWithEmailPassword(
                email: _emailController.text.toLowerCase().trim(),
                password: _passwordController.text,
              )
            : SignUpWithEmailPassword(
                email: _emailController.text.toLowerCase().trim(),
                password: _passwordController.text,
              ),
      );
    } on Exception catch (e, stackTrace) {
      if (mounted) {
        await LoggingService.I.showErrorDialogAndReport(
          context,
          LogRecord(
            error: e,
            stackTrace: stackTrace,
            data: {'email': _emailController.text},
          ),
        );
      }
    }
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
              color: theme.textTheme.headlineMedium?.color?.withValues(
                alpha: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
