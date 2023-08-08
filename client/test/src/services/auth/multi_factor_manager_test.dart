import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'multi_factor_manager_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<MultiFactorManagerAdapter>(),
  MockSpec<MultiFactorSession>(),
  MockSpec<MultiFactorInfo>(),
  MockSpec<AuthService>(),
  MockSpec<AuthStorage>(),
])
void main() {
  group(
    'MultiFactorManager =>',
    () {
      test(
        'hasPendingMultifactorSession',
        () {
          final adapter = MockMultiFactorManagerAdapter();
          final unit = MultiFactorManager(
            adapter: adapter,
            authService: MockAuthService(),
            storage: MockAuthStorage(),
          );

          when(adapter.hasPendingMultifactorLogin).thenReturn(true);

          expect(unit.hasPendingMultifactorLogin, isTrue);

          verify(adapter.hasPendingMultifactorLogin).called(1);
        },
      );

      test(
        'pendingMultifactorSession',
        () {
          final adapter = MockMultiFactorManagerAdapter();
          final unit = MultiFactorManager(
            adapter: adapter,
            authService: MockAuthService(),
            storage: MockAuthStorage(),
          );

          final session = MockMultiFactorSession();

          when(adapter.pendingMultifactorLogin).thenReturn(session);
          expect(unit.pendingMultifactorLogin, session);
          verify(adapter.pendingMultifactorLogin).called(1);

          when(adapter.pendingMultifactorLogin).thenReturn(null);
          expect(unit.pendingMultifactorLogin, isNull);
          verify(adapter.pendingMultifactorLogin).called(1);
        },
      );

      test(
        'startMultiFactorSession',
        () async {
          final adapter = MockMultiFactorManagerAdapter();
          final authService = MockAuthService();

          final unit = MultiFactorManager(
            adapter: adapter,
            authService: authService,
            storage: MockAuthStorage(),
          );

          final session = MockMultiFactorSession();

          when(authService.isSignedIn).thenReturn(true);
          when(adapter.enrollNewMultiFactor(password: 'password'))
              .thenAnswer((_) async => session);

          expect(
            await unit.enrollNewMultiFactor(password: 'password'),
            session,
          );
          verify(authService.isSignedIn).called(1);
          verify(adapter.enrollNewMultiFactor(password: 'password')).called(1);

          when(authService.isSignedIn).thenReturn(false);
          expect(
            () async => unit.enrollNewMultiFactor(password: 'password'),
            throwsA(isA<StateError>()),
          );
          verify(authService.isSignedIn).called(1);
        },
      );

      test(
        'getMultiFactorInfoFor',
        () {
          final adapter = MockMultiFactorManagerAdapter();

          final unit = MultiFactorManager(
            adapter: adapter,
            authService: MockAuthService(),
            storage: MockAuthStorage(),
          );

          final info = MockMultiFactorInfo();

          when(adapter.getMultiFactorInfoForPendingSession()).thenReturn(info);

          expect(unit.getMultiFactorInfoForPendingSession(), info);
          verify(adapter.getMultiFactorInfoForPendingSession()).called(1);
        },
      );

      test(
        'initiateMultifactorLogin',
        () {
          final adapter = MockMultiFactorManagerAdapter();

          final unit = MultiFactorManager(
            adapter: adapter,
            authService: MockAuthService(),
            storage: MockAuthStorage(),
          );

          final session = MockMultiFactorSession();
          final factorInfo = MockMultiFactorInfo();

          when(
            adapter.initiateMultifactorLogin(
              session,
              factor: factorInfo,
              forceResendingToken: 1,
            ),
          ).thenAnswer((_) async => ('verificationId', 2));
          when(
            adapter.initiateMultifactorLogin(
              session,
              phoneNumber: 'phoneNumber',
              forceResendingToken: 1,
            ),
          ).thenAnswer((_) async => ('verificationId', 2));

          expect(
            unit.initiateMultifactorLogin(
              session,
              phoneNumber: 'phoneNumber',
              forceResendingToken: 1,
            ),
            completion(('verificationId', 2)),
          );
          expect(
            unit.initiateMultifactorLogin(
              session,
              factor: factorInfo,
              forceResendingToken: 1,
            ),
            completion(('verificationId', 2)),
          );

          verify(
            adapter.initiateMultifactorLogin(
              session,
              phoneNumber: 'phoneNumber',
              forceResendingToken: 1,
            ),
          ).called(1);

          verify(
            adapter.initiateMultifactorLogin(
              session,
              factor: factorInfo,
              forceResendingToken: 1,
            ),
          ).called(1);

          expect(
            () => unit.initiateMultifactorLogin(
              session,
              factor: factorInfo,
              phoneNumber: 'phoneNumber',
              forceResendingToken: 1,
            ),
            throwsA(isA<Exception>()),
          );
        },
      );

      test(
        'finishMultiFactorLogin',
        () async {
          final adapter = MockMultiFactorManagerAdapter();
          final authService = MockAuthService();
          final storage = MockAuthStorage();

          final unit = MultiFactorManager(
            adapter: adapter,
            authService: authService,
            storage: storage,
          );

          final session = MockMultiFactorSession();
          when(session.email).thenReturn('email');
          when(session.password).thenReturn('password');

          when(
            adapter.finishMultiFactorSession(
              'verificationId',
              'smsCode',
            ),
          ).thenAnswer((_) async {});

          await expectLater(
            unit.finishMultiFactorSession(
              'verificationId',
              'smsCode',
              session,
            ),
            completes,
          );

          verify(
            adapter.finishMultiFactorSession(
              'verificationId',
              'smsCode',
            ),
          ).called(1);
          verify(storage.saveUserPasswordHash('email', 'password')).called(1);
        },
      );
    },
  );
}
