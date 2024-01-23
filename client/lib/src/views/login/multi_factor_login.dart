import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class MultiFactorLogin extends StatefulWidget {
  static final route = GoRoute(
    path: '/multiFactor',
    builder: (context, state) => const MultiFactorLogin(),
    redirect: (context, state) {
      if (!AuthService.I.multiFactorManager.hasPendingMultifactorLogin &&
          (AuthService.I.currentUser?.isMultiFactorEnrolled ?? false)) {
        return '/';
      }
      return null;
    },
  );

  const MultiFactorLogin({super.key});

  @override
  State<MultiFactorLogin> createState() => _MultifactorStateLogin();
}

class _MultifactorStateLogin extends State<MultiFactorLogin> {
  late MultiFactorSession? _session =
      AuthService.I.multiFactorManager.pendingMultifactorLogin;

  MultiFactorInfo? _multiFactorInfo;

  Future<(String, int?)>? initiateMultifactorLogin;

  String? _phoneNumber;

  @override
  void initState() {
    super.initState();

    if (_session != null) {
      _multiFactorInfo = AuthService.I.multiFactorManager
          .getMultiFactorInfoForPendingSession();

      initiateMultifactorLogin = AuthService.I.multiFactorManager
          .initiateMultifactorLogin(
            _session!,
            factor: _multiFactorInfo,
          )
          .onError(onMultiFactorLoginError);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المصادقة الثنائية'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              if (AuthService.I.isSignedIn) {
                AuthService.I.signOut();
              } else {
                context.go('/');
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Builder(
          builder: (context) {
            if (_session == null) {
              return _EnrollMultiFactor(
                onSessionInitiated: (phoneNumber, newSession) {
                  _session = newSession;
                  _phoneNumber = phoneNumber;

                  initiateMultifactorLogin = AuthService.I.multiFactorManager
                      .initiateMultifactorLogin(
                        _session!,
                        phoneNumber: _phoneNumber,
                      )
                      .onError(onMultiFactorLoginError);

                  if (mounted) setState(() {});
                },
              );
            } else {
              return _VerifyMultiFactor(
                session: _session!,
                multiFactorInfo: _multiFactorInfo,
                phoneNumber: _phoneNumber,
                initiateMultifactorLogin: initiateMultifactorLogin!,
              );
            }
          },
        ),
      ),
    );
  }

  Future<(String, int?)> onMultiFactorLoginError(
    Exception error,
    StackTrace stackTrace,
  ) async {
    if (mounted) setState(() {});

    await LoggingService.I.showErrorDialogAndReport(
      context,
      error,
      stackTrace: stackTrace,
    );

    throw error;
  }
}

class _EnrollMultiFactor extends StatefulWidget {
  const _EnrollMultiFactor({required this.onSessionInitiated});

  final void Function(String, MultiFactorSession) onSessionInitiated;

  @override
  State<_EnrollMultiFactor> createState() => _EnrollMultiFactorState();
}

class _EnrollMultiFactorState extends State<_EnrollMultiFactor> {
  late String _phoneNumber;
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _loading = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            'قم بتسجيل رقم هاتفك لإستخدامه في المصادقة الثنائية',
            style: Theme.of(context).textTheme.bodyLarge,
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
          ),
          if (_loading)
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

  Future<void> _sendCode() async {
    if (!_formKey.currentState!.validate()) return;

    try {
      _loading = true;
      if (mounted) setState(() {});

      await AuthService.I.reauthWithEmailPassword(
        email: AuthService.I.currentUser!.email!,
        password: _passwordController.text,
      );

      final multiFactorSession =
          await AuthService.I.multiFactorManager.enrollNewMultiFactor(
        password: _passwordController.text,
      );

      _loading = false;
      if (mounted) setState(() {});

      widget.onSessionInitiated(
        _phoneNumber,
        multiFactorSession,
      );
    } on Exception catch (error, stackTrace) {
      _loading = false;
      if (mounted) {
        setState(() {});

        await LoggingService.I.showErrorDialogAndReport(
          context,
          error,
          stackTrace: stackTrace,
        );
      }
    }
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
    required this.initiateMultifactorLogin,
    this.multiFactorInfo,
    this.phoneNumber,
  }) : assert(
          (multiFactorInfo == null) != (phoneNumber == null),
          'One of "factor" or "phoneNumber" must be provided',
        );

  final MultiFactorSession session;
  final MultiFactorInfo? multiFactorInfo;
  final String? phoneNumber;
  final Future<(String, int?)> initiateMultifactorLogin;

  @override
  State<_VerifyMultiFactor> createState() => _VerifyMultiFactorState();
}

class _VerifyMultiFactorState extends State<_VerifyMultiFactor> {
  final _code = TextEditingController();
  late Future<(String, int?)> initiateMultifactorLogin =
      widget.initiateMultifactorLogin;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<(String, int?)>(
      future: initiateMultifactorLogin,
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'قم بإدخال رمز التحقق الذي تم إرساله إلى ' +
                  (widget.phoneNumber ??
                      (widget.multiFactorInfo?.displayName == ''
                          ? null
                          : widget.multiFactorInfo?.displayName) ??
                      'هاتفك'),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
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
                    _finishSignIn(snapshot.requireData.$1);
                  },
                ),
              ),
            ),
            FilledButton(
              onPressed: () {
                _finishSignIn(snapshot.requireData.$1);
              },
              child: const Text('تسجيل الدخول'),
            ),
            StreamBuilder<int>(
              stream: snapshot.data?.$1 != null && snapshot.data?.$2 != null
                  ? Stream.periodic(
                      const Duration(seconds: 1),
                      (i) => i,
                    )
                  : null,
              builder: (context, s) {
                if ((s.data ?? 0) >= 30) {
                  return OutlinedButton(
                    onPressed: () {
                      initiateMultifactorLogin = AuthService
                          .I.multiFactorManager
                          .initiateMultifactorLogin(
                        widget.session,
                        factor: widget.multiFactorInfo,
                        phoneNumber: widget.phoneNumber,
                        forceResendingToken: snapshot.requireData.$2,
                      );
                      setState(() {});
                    },
                    child: const Text('إعادة إرسال الرمز'),
                  );
                }

                return OutlinedButton(
                  onPressed: null,
                  child: Text(
                    'إعادة إرسال الرمز بعد ${30 - (s.data ?? 0)} ثانية',
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _finishSignIn(String verificationId) async {
    try {
      await AuthService.I.multiFactorManager.finishMultiFactorSession(
        verificationId,
        _code.text,
        widget.session,
      );

      await AuthService.I.userStream.nextNonNullStrict;

      await UserSettingsService.I.setupDefaults();

      if (await NotificationsService.I.requestNotificationsPermission()) {
        await NotificationsService.I.scheduleDefaultNotifications();
      }
    } catch (err, stack) {
      if (mounted) {
        await LoggingService.I
            .showErrorDialogAndReport(context, err, stackTrace: stack);
      }
    }
  }
}
