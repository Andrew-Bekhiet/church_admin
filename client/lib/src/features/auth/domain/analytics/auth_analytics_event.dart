import 'package:church_admin/church_admin.dart';

sealed class AuthAnalyticsEvent extends AnalyticsEvent {
  static String failureKindOf(Object error) => switch (error) {
    IncorrectCredentialsException() => 'incorrect_credentials',
    EmailAlreadyInUseException() => 'email_already_in_use',
    WeakPasswordException() => 'weak_password',
    TooManyAttemptsException() => 'too_many_attempts',
    AuthNetworkException() => 'network',
    SessionRevokedException() => 'session_revoked',
    _ => 'unknown',
  };

  @override
  String get category => 'auth';

  const AuthAnalyticsEvent();
}

final class SignInSubmit extends AuthAnalyticsEvent {
  final Object? failure;

  @override
  String get objectAction => 'sign_in_submit';

  @override
  Json get properties => {
    'is_success': failure == null,
    if (failure case final Object failure)
      'failure_kind': AuthAnalyticsEvent.failureKindOf(failure),
  };

  const SignInSubmit({this.failure});
}

final class SignUpSubmit extends AuthAnalyticsEvent {
  final Object? failure;

  @override
  String get objectAction => 'sign_up_submit';

  @override
  Json get properties => {
    'is_success': failure == null,
    if (failure case final Object failure)
      'failure_kind': AuthAnalyticsEvent.failureKindOf(failure),
  };

  const SignUpSubmit({this.failure});
}

final class LoginModeSwitch extends AuthAnalyticsEvent {
  final LoginScreenMode targetMode;

  @override
  String get objectAction => 'login_mode_switch';

  @override
  Json get properties => {'target_mode': targetMode.name};

  const LoginModeSwitch(this.targetMode);
}

final class PasswordResetSend extends AuthAnalyticsEvent {
  final Object? failure;

  @override
  String get objectAction => 'password_reset_send';

  @override
  Json get properties => {
    'is_success': failure == null,
    if (failure case final Object failure)
      'failure_kind': AuthAnalyticsEvent.failureKindOf(failure),
  };

  const PasswordResetSend({this.failure});
}

final class EmailVerificationCheck extends AuthAnalyticsEvent {
  final bool isVerified;

  @override
  String get objectAction => 'email_verification_check';

  @override
  Json get properties => {'is_verified': isVerified};

  const EmailVerificationCheck({required this.isVerified});
}

final class EmailVerificationResend extends AuthAnalyticsEvent {
  @override
  String get objectAction => 'email_verification_resend';

  const EmailVerificationResend();
}

final class InvitationCodeApply extends AuthAnalyticsEvent {
  final Object? failure;

  @override
  String get objectAction => 'invitation_code_apply';

  @override
  Json get properties => {
    'is_success': failure == null,
    if (failure case final Object failure)
      'failure_kind': AuthAnalyticsEvent.failureKindOf(failure),
  };

  const InvitationCodeApply({this.failure});
}

final class AccountClaimByEmail extends AuthAnalyticsEvent {
  final bool isClaimed;

  @override
  String get objectAction => 'account_claim_by_email';

  @override
  Json get properties => {'is_claimed': isClaimed};

  const AccountClaimByEmail({required this.isClaimed});
}

final class SignOutRequest extends AuthAnalyticsEvent {
  final SignOutSource source;

  @override
  String get objectAction => 'sign_out_request';

  @override
  Json get properties => {'source': source.name};

  const SignOutRequest(this.source);
}

final class LegalDocumentOpen extends AuthAnalyticsEvent {
  final LegalDocument document;

  @override
  String get objectAction => 'legal_document_open';

  @override
  Json get properties => {'document': document.name};

  const LegalDocumentOpen(this.document);
}

enum SignOutSource {
  signOutButton,
  homeDrawer,
  biometricsLockScreen,
  accountDeletion,
  sessionRevoked,
}

enum LoginScreenMode { login, signUp }

enum LegalDocument {
  // TODO: to be extracted to dart defines
  termsOfService('https://church-data-admin.firebaseapp.com/terms-of-service/'),
  privacyPolicy('https://church-data-admin.firebaseapp.com/privacy-policy/');

  final String url;

  const LegalDocument(this.url);
}
