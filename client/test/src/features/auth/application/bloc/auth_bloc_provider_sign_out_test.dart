import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';

class _MockAuthRepository extends Mock implements AuthRepository {}

class _MockAuthStorage extends Mock implements AuthStorage {}

class _MockConnectivityService extends Mock implements ConnectivityService {}

class _MockFunctionsService extends Mock implements FunctionsService {}

class _OrderRecordingNotificationsService extends Fake
    implements NotificationsService {
  final List<String> steps;

  _OrderRecordingNotificationsService(this.steps);

  @override
  Future<void> stopPushNotificationsToThisDevice() async {
    steps.add('stopPush');
  }
}

void main() {
  test(
    'signing out through the app auth bloc stops push notifications first',
    () async {
      final steps = <String>[];
      final authRepository = _MockAuthRepository();
      when(
        () => authRepository.userChanges,
      ).thenAnswer((_) => const Stream.empty());
      when(authRepository.signOut).thenAnswer((_) async {
        steps.add('signOut');
      });
      final authStorage = _MockAuthStorage();
      when(authStorage.getAuthDataFromCache).thenAnswer((_) async => null);
      final connectivity = BehaviorSubject.seeded(false);
      addTearDown(connectivity.close);
      final connectivityService = _MockConnectivityService();
      when(
        () => connectivityService.connectivityStream,
      ).thenAnswer((_) => connectivity.stream);
      final logging = FakeLoggingService();
      initGlobalProviderContainer([
        authRepositoryProvider.overrideWithValue(authRepository),
        authStorageProvider.overrideWithValue(authStorage),
        connectivityServiceProvider.overrideWithValue(connectivityService),
        databaseServiceProvider.overrideWithValue(MockDatabaseService()),
        functionsServiceProvider.overrideWithValue(_MockFunctionsService()),
        featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
        loggingServiceProvider.overrideWithValue(logging),
        analyticsServiceProvider.overrideWithValue(
          AnalyticsService([RecordingAnalyticsProvider()], logging),
        ),
        notificationsServiceProvider.overrideWithValue(
          _OrderRecordingNotificationsService(steps),
        ),
      ]);
      addTearDown(resetGlobalProviderContainer);

      AuthBloc.I.add(const SignOut(SignOutSource.signOutButton));
      await pumpEventQueue();

      expect(steps, ['stopPush', 'signOut']);
    },
  );
}
