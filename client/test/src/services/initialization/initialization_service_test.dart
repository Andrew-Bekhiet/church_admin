import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

import 'initialization_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Initializer>(), MockSpec<AuthService>()])
void main() {
  group(
    'InitializationService',
    () {
      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

      test(
        'steps',
        () {
          final expectedTypes = {
            WebNavigationInit,
            SentryInit,
            PackageInfoInit,
            DeviceInfoInit,
            HiveInit,
            FirebaseInit,
            FMTCInit,
            IntlLocaleMessagesInit,
            AndroidAlarmManagerPluginInit,
            FlutterLocalNotificationsPluginInit,
          };

          expect(
            InitializationService.I.steps.map((e) => e.runtimeType),
            expectedTypes,
          );
        },
      );

      test(
        'initialize: steps',
        () async {
          final unit = MockInitializationService();

          await unit.initialize();

          verifyInOrder(unit.steps.map((e) => e.initialize()).toList());
        },
      );

      test(
        'initialize: called only once',
        () async {
          final unit = MockInitializationService();

          await unit.initialize();
          await unit.initialize();
          await unit.initialize();

          verify(AuthService.I.userStream).called(1);
        },
      );
    },
  );
}

void _setUp() {
  final mockAuthService = MockAuthService();
  when(mockAuthService.userStream)
      .thenAnswer((_) => Stream<User?>.value(null).shareValue());

  initGlobalProviderContainer([
    authServiceProvider.overrideWithValue(mockAuthService),
  ]);
}

class MockInitializationService extends InitializationService {
  final _steps = {
    MockInitializer(),
    MockInitializer(),
    MockInitializer(),
  };

  @override
  Set<Initializer> get steps => _steps;
}
