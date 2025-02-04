import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:pinput/pinput.dart';
import 'package:rxdart/rxdart.dart';

class MultiFactorLogin extends StatefulWidget {
  const MultiFactorLogin({super.key});

  @override
  State<MultiFactorLogin> createState() => _MultifactorStateLogin();
}

class _MultifactorStateLogin extends State<MultiFactorLogin> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: AuthBloc.I,
      listener: (context, state) {
        if (state is AuthExceptionState) {
          _showAuthException(context, state);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('المصادقة الثنائية'),
            actions: const [SignOutButton()],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: switch (state.unwrapped) {
              AuthMultiFactorChallengeInProgress(
                :final session,
                :final challenge,
              ) =>
                _VerifyMultiFactor(
                  selectedFactor: session.enrolledFactors.firstOrNull,
                  session: session,
                  onResendCode: (resendToken) {
                    AuthBloc.I.add(
                      StartMultiFactorChallenge(
                        session: session,
                        selectedFactor: session.enrolledFactors.firstOrNull,
                        phoneNumber: session.phoneNumber,
                        resendToken: resendToken,
                      ),
                    );
                  },
                  onVerificationCodeSubmitted: (code) {
                    AuthBloc.I.add(
                      CompleteMultiFactorChallenge(
                        session: session,
                        challenge: challenge,
                        verificationCode: code,
                        selectedFactor: session.enrolledFactors.firstOrNull,
                      ),
                    );
                  },
                  loading: state is AuthLoading,
                ),
              AuthAuthenticated(
                authUser: AuthUser(isMultiFactorEnabled: false)
              ) =>
                _EnrollMultiFactor(
                  onPhoneNumberSubmitted: (phoneNumber, password) {
                    AuthBloc.I.add(
                      EnrollMultiFactor(
                        password: password,
                        phoneNumber: phoneNumber,
                      ),
                    );
                  },
                  loading: state is AuthLoading,
                ),
              _ => const Center(child: CircularProgressIndicator()),
            },
          ),
        );
      },
    );
  }

  void _showAuthException(BuildContext context, AuthExceptionState state) {
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
                const Text('كلمة سر خاطئة'),
              ],
            ),
            duration: const Duration(seconds: 8),
          ),
        );

      case MultiFactorEnrollmentFailedException():
      case MultiFactorVerificationFailedException():
        final theme = Theme.of(context);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: theme.colorScheme.error,
            content: Row(
              spacing: 10,
              children: [
                Icon(Symbols.error, color: theme.colorScheme.onError),
                const Text('رمز التحقق خاطئ'),
              ],
            ),
            duration: const Duration(seconds: 8),
          ),
        );
    }
  }
}

class _EnrollMultiFactor extends StatefulWidget {
  const _EnrollMultiFactor({
    required this.onPhoneNumberSubmitted,
    required this.loading,
  });

  final void Function(String phoneNumber, String password)
      onPhoneNumberSubmitted;
  final bool loading;

  @override
  State<_EnrollMultiFactor> createState() => _EnrollMultiFactorState();
}

class _EnrollMultiFactorState extends State<_EnrollMultiFactor> {
  final _phoneNumberController = PhoneController(
    initialValue: const PhoneNumber(isoCode: IsoCode.EG, nsn: ''),
  );
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/otp-verification.png'),
            Text(
              'قم بتسجيل رقم هاتفك لإستخدامه في المصادقة الثنائية',
              style: theme.textTheme.titleLarge,
            ),
            Text(
              'سيتم إرسال رمز التحقق إلى رقم هاتفك في كل مرة تقوم فيها بتسجيل الدخول',
              style: theme.textTheme.titleMedium,
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: PhoneFormField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(labelText: 'رقم الهاتف'),
                validator: PhoneValidator.compose([
                  PhoneValidator.required(context),
                  PhoneValidator.validMobile(context),
                ]),
                onChanged: (value) {
                  if (value.isoCode == IsoCode.EG &&
                      value.nsn.startsWith('01')) {
                    _phoneNumberController.changeNationalNumber(
                      value.nsn.replaceFirst(RegExp(r'^01'), ''),
                    );
                  }
                },
              ),
            ),
            PasswordFormField(
              labelText: 'أعد إدخال كلمة المرور',
              controller: _passwordController,
              validator: (password) {
                if (password == null || password.isEmpty) {
                  return 'من فضلك أدخل كلمة المرور';
                }
                return null;
              },
              onFieldSubmitted: (_) => _sendCode(),
            ),
            if (widget.loading)
              const FilledButton(
                onPressed: null,
                child: CircularProgressIndicator(),
              )
            else
              FilledButton(
                onPressed: _sendCode,
                child: const Text('ارسال رمز التحقق'),
              ),
          ],
        ),
      ),
    );
  }

  void _sendCode() {
    if (!_formKey.currentState!.validate()) return;

    widget.onPhoneNumberSubmitted(
      _phoneNumberController.value.international,
      _passwordController.text,
    );
  }
}

class _VerifyMultiFactor extends StatefulWidget {
  const _VerifyMultiFactor({
    required this.session,
    required this.onVerificationCodeSubmitted,
    required this.onResendCode,
    required this.loading,
    this.selectedFactor,
  });

  final MultiFactorSession session;
  final MultiFactorInfo? selectedFactor;
  final void Function(String code) onVerificationCodeSubmitted;
  final void Function(int? resendToken) onResendCode;
  final bool loading;

  @override
  State<_VerifyMultiFactor> createState() => _VerifyMultiFactorState();
}

class _VerifyMultiFactorState extends State<_VerifyMultiFactor> {
  final _code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<AuthBloc, AuthState>(
      bloc: AuthBloc.I,
      builder: (context, state) {
        if (state.unwrapped
            case AuthMultiFactorChallengeInProgress(
              :final session,
              :final challenge
            )) {
          final phoneNumber = session.phoneNumber ??
              session.enrolledFactors.firstOrNull?.phoneNumber ??
              'هاتفك';

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10,
            children: [
              Image.asset('assets/images/otp-verification.png'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'قم بإدخال رمز التحقق الذي تم إرساله إلى',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge,
                    ),
                    Text(
                      phoneNumber,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: Pinput(
                  length: 6,
                  controller: _code,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onCompleted: (_) {
                    if (!widget.loading) {
                      widget.onVerificationCodeSubmitted(_code.text);
                    }
                  },
                  isCursorAnimationEnabled: false,
                  defaultPinTheme: PinTheme(
                    height: 56,
                    width: 56,
                    textStyle: theme.textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainer,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              if (widget.loading)
                const FilledButton(
                  onPressed: null,
                  child: CircularProgressIndicator(),
                )
              else
                FilledButton(
                  onPressed: () {
                    widget.onVerificationCodeSubmitted(_code.text);
                  },
                  child: const Text('تسجيل الدخول'),
                ),
              StreamBuilder<int>(
                stream: Rx.range(1, 30)
                    .delayWhen((i) => Rx.timer(null, Duration(seconds: i)))
                    .map(
                      (i) =>
                          30 -
                          DateTime.now()
                              .difference(challenge.createdAt)
                              .inSeconds,
                    ),
                builder: (context, remainingSecondsSnapshot) {
                  final remainingSeconds = remainingSecondsSnapshot.data ?? 30;

                  if (remainingSeconds <= 0) {
                    return OutlinedButton(
                      onPressed: () {
                        widget.onResendCode(challenge.resendToken);
                      },
                      child: const Text('إعادة إرسال الرمز'),
                    );
                  }

                  return OutlinedButton(
                    onPressed: null,
                    child: Text(
                      'إعادة إرسال الرمز بعد $remainingSeconds ثانية',
                    ),
                  );
                },
              ),
            ],
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
