import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockDatabaseService extends Mock implements DatabaseService {}

class _MockAuthStorage extends Mock implements AuthStorage {}

class _MockFunctionsService extends Mock implements FunctionsService {}

void main() {
  group('AuthBloc stopping push notifications on sign out', () {
    late _MockAuthRepository authRepository;
    late FakeLoggingService logging;
    late bool repositorySignedOut;
    bool? repositorySignedOutWhenPushStopped;

    AuthBloc createAuthBloc(Future<void> Function() stopPushNotifications) {
      return AuthBloc(
        authRepository: authRepository,
        databaseService: _MockDatabaseService(),
        authStorage: _MockAuthStorage(),
        connectivityStream: const Stream.empty(),
        functionsService: _MockFunctionsService(),
        featureFlagsRepository: FakeFeatureFlagsRepo(),
        analyticsService: AnalyticsService(
          [RecordingAnalyticsProvider()],
          logging,
        ),
        stopPushNotificationsBeforeSignOut: stopPushNotifications,
        loadCachedUser: false,
      );
    }

    setUp(() {
      logging = FakeLoggingService();
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(logging),
      ]);
      addTearDown(resetGlobalProviderContainer);

      repositorySignedOut = false;
      repositorySignedOutWhenPushStopped = null;
      authRepository = _MockAuthRepository();
      when(() => authRepository.userChanges).thenAnswer(
        (_) => const Stream.empty(),
      );
      when(() => authRepository.signOut()).thenAnswer((_) async {
        repositorySignedOut = true;
      });
    });

    blocTest<AuthBloc, AuthState>(
      'push notifications stop while the session is still valid',
      build: () => createAuthBloc(() async {
        repositorySignedOutWhenPushStopped = repositorySignedOut;
      }),
      act: (bloc) => bloc.add(const SignOut(SignOutSource.signOutButton)),
      verify: (_) {
        expect(repositorySignedOutWhenPushStopped, isFalse);
        expect(repositorySignedOut, isTrue);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'signing out still completes when stopping push notifications fails',
      build: () => createAuthBloc(() async => throw Exception('offline')),
      act: (bloc) => bloc.add(const SignOut(SignOutSource.signOutButton)),
      expect: () => [
        isA<AuthUnauthenticated>(),
        isA<AuthLoading>(),
        isA<AuthUnauthenticated>(),
      ],
      verify: (_) => expect(repositorySignedOut, isTrue),
    );

    test(
      'signing out still completes when stopping push notifications hangs',
      () {
        fakeAsync((async) {
          final bloc = createAuthBloc(() => Completer<void>().future);
          async.flushMicrotasks();

          bloc.add(const SignOut(SignOutSource.signOutButton));
          async.flushMicrotasks();
          expect(repositorySignedOut, isFalse);

          async.elapse(const Duration(seconds: 6));

          expect(repositorySignedOut, isTrue);
          expect(
            logging.reportedWarnings.single.error,
            isA<TimeoutException>(),
          );

          unawaited(bloc.close());
          async.flushMicrotasks();
        });
      },
    );
  });
}
