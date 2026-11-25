import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_logging_service.dart';

class _MockFirebaseAuth extends Mock implements firebase_auth.FirebaseAuth {}

class _MockFirebaseUser extends Mock implements firebase_auth.User {}

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

  const revokedSessionCodes = [
    'user-token-expired',
    'invalid-user-token',
    'user-disabled',
    'user-not-found',
  ];

  for (final code in revokedSessionCodes) {
    test(
      'refreshing a session revoked on the server with $code reports it as revoked',
      () async {
        final user = _MockFirebaseUser();
        when(() => firebaseAuth.currentUser).thenReturn(user);
        when(
          () => user.getIdToken(true),
        ).thenThrow(firebase_auth.FirebaseAuthException(code: code));

        await expectLater(
          repository.refreshToken(),
          throwsA(isA<SessionRevokedException>()),
        );
      },
    );
  }

  group('signing out', () {
    setUp(() {
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      ]);
      addTearDown(resetGlobalProviderContainer);

      when(firebaseAuth.signOut).thenAnswer((_) async {});
    });

    test(
      'the session ends only after a before-sign-out listener finishes',
      () async {
        final listenerFinishes = Completer<void>();
        repository.addBeforeSignOutListener(() => listenerFinishes.future);

        final signingOut = repository.signOut();
        await pumpEventQueue();
        verifyNever(firebaseAuth.signOut);

        listenerFinishes.complete();
        await signingOut;

        verify(firebaseAuth.signOut);
      },
    );

    test(
      'every before-sign-out listener starts without waiting for the ones added before it',
      () async {
        final firstListenerFinishes = Completer<void>();
        final startedListeners = <String>[];
        repository
          ..addBeforeSignOutListener(() {
            startedListeners.add('first');

            return firstListenerFinishes.future;
          })
          ..addBeforeSignOutListener(
            () async => startedListeners.add('second'),
          );

        unawaited(repository.signOut());
        await pumpEventQueue();

        expect(startedListeners, unorderedEquals(['first', 'second']));
        firstListenerFinishes.complete();
      },
    );

    test(
      'a failing before-sign-out listener still lets the session end',
      () async {
        repository.addBeforeSignOutListener(
          () async => throw Exception('offline'),
        );

        await repository.signOut();

        verify(firebaseAuth.signOut);
      },
    );

    test(
      'a before-sign-out listener that never finishes holds the session open for at most five seconds',
      () {
        fakeAsync((fakeTime) {
          final listenerNeverFinishes = Completer<void>();
          repository.addBeforeSignOutListener(
            () => listenerNeverFinishes.future,
          );

          unawaited(repository.signOut());
          fakeTime.elapse(const Duration(milliseconds: 4900));
          verifyNever(firebaseAuth.signOut);

          fakeTime.elapse(const Duration(milliseconds: 100));

          verify(firebaseAuth.signOut);
        });
      },
    );

    test('a removed before-sign-out listener does not run', () async {
      var listenerRan = false;
      final removeListener = repository.addBeforeSignOutListener(
        () async => listenerRan = true,
      );

      removeListener();
      await repository.signOut();

      expect(listenerRan, isFalse);
    });
  });
}
