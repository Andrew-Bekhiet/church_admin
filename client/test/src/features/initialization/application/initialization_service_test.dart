import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'initialization_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Initializer>(), MockSpec<AuthBloc>()])
void main() {
  group(
    'InitializationService',
    () {
      setUp(_setUp);
      tearDown(resetGlobalProviderContainer);

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

          verifyNever(AuthBloc.I.userStream);
        },
      );
    },
  );
}

void _setUp() {
  final mockAuthBloc = MockAuthBloc();

  initGlobalProviderContainer([
    authBlocProvider.overrideWithValue(mockAuthBloc),
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
