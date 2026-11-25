import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockAuthStorage extends Mock implements AuthStorage {}

class _MockFunctionsService extends Mock implements FunctionsService {}

void main() {
  group('AuthBloc stopping push notifications on sign out', () {
    late _MockAuthRepository authRepository;

    AuthBloc createAuthBloc(Future<void> Function() stopPushNotifications) {
      return AuthBloc(
        authRepository: authRepository,
        databaseService: MockDatabaseService(),
        authStorage: _MockAuthStorage(),
        connectivityStream: const Stream.empty(),
        functionsService: _MockFunctionsService(),
        featureFlagsRepository: FakeFeatureFlagsRepo(),
        analyticsService: AnalyticsService(
          [RecordingAnalyticsProvider()],
          FakeLoggingService(),
        ),
        stopPushNotificationsBeforeSignOut: stopPushNotifications,
        loadCachedUser: false,
      );
    }

    setUp(() {
      initGlobalProviderContainer([
        loggingServiceProvider.overrideWithValue(FakeLoggingService()),
      ]);
      addTearDown(resetGlobalProviderContainer);

      authRepository = _MockAuthRepository();
      when(
        () => authRepository.userChanges,
      ).thenAnswer((_) => const Stream.empty());
    });

    {
      final steps = <String>[];

      blocTest<AuthBloc, AuthState>(
        'push notifications stop before the session ends',
        setUp: () => when(() => authRepository.signOut()).thenAnswer((_) async {
          steps.add('signOut');
        }),
        build: () => createAuthBloc(() async {
          steps.add('stopPush');
        }),
        act: (bloc) => bloc.add(const SignOut(SignOutSource.signOutButton)),
        verify: (_) => expect(steps, ['stopPush', 'signOut']),
      );
    }

    {
      var sessionEnded = false;

      blocTest<AuthBloc, AuthState>(
        'signing out still completes when stopping push notifications fails',
        setUp: () => when(() => authRepository.signOut()).thenAnswer((_) async {
          sessionEnded = true;
        }),
        build: () => createAuthBloc(() async => throw Exception('offline')),
        act: (bloc) => bloc.add(const SignOut(SignOutSource.signOutButton)),
        verify: (bloc) {
          expect(sessionEnded, isTrue);
          expect(bloc.state, isA<AuthUnauthenticated>());
        },
      );
    }

    test(
      'signing out still completes when stopping push notifications hangs',
      () {
        fakeAsync((async) {
          var sessionEnded = false;
          when(() => authRepository.signOut()).thenAnswer((_) async {
            sessionEnded = true;
          });
          final bloc = createAuthBloc(() => Completer<void>().future);
          async.flushMicrotasks();

          bloc.add(const SignOut(SignOutSource.signOutButton));
          async.flushMicrotasks();
          expect(sessionEnded, isFalse);

          async.elapse(const Duration(seconds: 6));

          expect(sessionEnded, isTrue);

          unawaited(bloc.close());
          async.flushMicrotasks();
        });
      },
    );
  });
}
