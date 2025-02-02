import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
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
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('المصادقة الثنائية'),
            actions: const [SignOutButton()],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Builder(
              builder: (context) {
                switch (state.unwrapped) {
                  case AuthMultiFactorChallengeInProgress(
                      :final session,
                      :final challenge,
                    ):
                    return _VerifyMultiFactor(
                      phoneNumber: session.phoneNumber,
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
                    );

                  case AuthAuthenticated(
                      authUser: AuthUser(isMultiFactorEnabled: false)
                    ):
                    return _EnrollMultiFactor(
                      onPhoneNumberSubmitted: (phoneNumber, password) {
                        AuthBloc.I.add(
                          EnrollMultiFactor(
                            password: password,
                            phoneNumber: phoneNumber,
                          ),
                        );
                      },
                      loading: state is AuthLoading,
                    );

                  case _:
                    return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        );
      },
    );
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
  late String _phoneNumber;
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            'قم بتسجيل رقم هاتفك لإستخدامه في المصادقة الثنائية',
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          const Text(
            'سيتم إرسال رمز التحقق إلى رقم هاتفك في كل مرة تقوم فيها بتسجيل الدخول',
          ),
          const SizedBox(height: 15),
          Directionality(
            textDirection: TextDirection.ltr,
            child: IntlPhoneField(
              controller: _phoneNumberController,
              dropdownIconPosition: IconPosition.trailing,
              initialCountryCode: 'EG',
              invalidNumberMessage: 'رقم هاتف غير صالح',
              decoration: const InputDecoration(
                labelText: 'رقم الهاتف',
              ),
              validator: (value) {
                try {
                  if (value == null || value.completeNumber.isEmpty) {
                    return 'من فضلك أدخل رقم الهاتف';
                  } else if (!value.isValidNumber()) {
                    return 'رقم هاتف غير صالح';
                  }
                } on Exception {
                  return 'رقم هاتف غير صالح';
                }
                return null;
              },
              onChanged: (value) {
                if (value.countryISOCode == 'EG' &&
                    value.number.startsWith('01')) {
                  _formatEGNumber(value);
                } else {
                  _phoneNumber = value.completeNumber;
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
    );
  }

  void _sendCode() {
    if (!_formKey.currentState!.validate()) return;
    widget.onPhoneNumberSubmitted(_phoneNumber, _passwordController.text);
  }

  void _formatEGNumber(PhoneNumber value) {
    _phoneNumberController.value = _phoneNumberController.value.copyWith(
      text: '1',
      selection: const TextSelection(
        baseOffset: 1,
        extentOffset: 1,
      ),
    );
    _phoneNumber =
        value.countryCode + value.number.substring(1, value.number.length);
  }
}

class _VerifyMultiFactor extends StatefulWidget {
  const _VerifyMultiFactor({
    required this.session,
    required this.onVerificationCodeSubmitted,
    required this.onResendCode,
    required this.loading,
    this.selectedFactor,
    this.phoneNumber,
  }) : assert(
          (selectedFactor == null) != (phoneNumber == null),
          'One of "factor" or "phoneNumber" must be provided',
        );

  final MultiFactorSession session;
  final MultiFactorInfo? selectedFactor;
  final String? phoneNumber;
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
    final screenSize = MediaQuery.sizeOf(context);

    return BlocBuilder<AuthBloc, AuthState>(
      bloc: AuthBloc.I,
      builder: (context, state) {
        if (state.unwrapped
            case AuthMultiFactorChallengeInProgress(:final challenge)) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'قم بإدخال رمز التحقق الذي تم إرساله إلى ' +
                    (widget.phoneNumber ??
                        (widget.selectedFactor?.displayName == ''
                            ? null
                            : widget.selectedFactor?.displayName) ??
                        'هاتفك'),
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, bottom: 15),
                child: SizedBox(
                  width: screenSize.width * 0.4,
                  child: TextFormField(
                    maxLength: 6,
                    controller: _code,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      labelText: 'رمز التحقق',
                    ),
                    keyboardType: TextInputType.number,
                    autofillHints: const [AutofillHints.oneTimeCode],
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onFieldSubmitted: (_) {
                      if (!widget.loading) {
                        widget.onVerificationCodeSubmitted(_code.text);
                      }
                    },
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
