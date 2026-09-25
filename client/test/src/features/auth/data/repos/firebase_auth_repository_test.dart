import 'package:church_admin/church_admin.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFirebaseAuth extends Mock implements firebase_auth.FirebaseAuth {}

void main() {
  late _MockFirebaseAuth firebaseAuth;
  late FirebaseAuthRepository repository;

  void signUpFailsWith(String code) {
    when(
      () => firebaseAuth.createUserWithEmailAndPassword(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).thenThrow(firebase_auth.FirebaseAuthException(code: code));
  }

  void signInFailsWith(String code) {
    when(
      () => firebaseAuth.signInWithEmailAndPassword(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).thenThrow(firebase_auth.FirebaseAuthException(code: code));
  }

  Future<void> signIn() => repository.signInWithEmailPassword(
    email: 'user@example.com',
    password: 'password',
  );

  Future<void> signUp() => repository.signUpWithEmailPassword(
    email: 'new@example.com',
    password: 'password',
  );

  setUp(() {
    firebaseAuth = _MockFirebaseAuth();
    repository = FirebaseAuthRepository(auth: firebaseAuth);
  });

  test(
    'a sign-up rejected by the server is reported as an unknown failure, not as an existing account',
    () async {
      signUpFailsWith('internal-error');

      await expectLater(signUp(), throwsA(isA<UnknownAuthException>()));
    },
  );

  final signUpFailures = {
    'email-already-in-use': isA<EmailAlreadyInUseException>(),
    'weak-password': isA<WeakPasswordException>(),
    'too-many-requests': isA<TooManyAttemptsException>(),
    'network-request-failed': isA<AuthNetworkException>(),
  };

  for (final MapEntry(key: code, value: failure) in signUpFailures.entries) {
    test('a sign-up failing with $code is reported by its cause', () async {
      signUpFailsWith(code);

      await expectLater(signUp(), throwsA(failure));
    });
  }

  final signInFailures = {
    'invalid-credential': isA<IncorrectCredentialsException>(),
    'user-not-found': isA<IncorrectCredentialsException>(),
    'wrong-password': isA<IncorrectCredentialsException>(),
    'user-disabled': isA<UnknownAuthException>(),
    'too-many-requests': isA<TooManyAttemptsException>(),
    'network-request-failed': isA<AuthNetworkException>(),
  };

  for (final MapEntry(key: code, value: failure) in signInFailures.entries) {
    test('a sign-in failing with $code is reported by its cause', () async {
      signInFailsWith(code);

      await expectLater(signIn(), throwsA(failure));
    });
  }
}
