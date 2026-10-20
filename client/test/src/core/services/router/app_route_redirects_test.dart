import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import '../../../fakes/fake_feature_flags_repo.dart';
import '../../../fakes/fake_logging_service.dart';

void main() {
  late FakeLoggingService logging;

  setUp(() {
    logging = FakeLoggingService();
    initGlobalProviderContainer([
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      loggingServiceProvider.overrideWithValue(logging),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  test(
    'redirects that never settle are reported with the stack they end on',
    () {
      final resolved = AppRouteRedirects.resolve(const [_PingRoute()]);

      expect(
        logging.reportedErrors.single.error,
        isA<RedirectLoopException>().having(
          (exception) => exception.stack,
          'stack',
          resolved,
        ),
      );
    },
  );

  test('redirects that settle are not reported', () {
    final resolved = AppRouteRedirects.resolve(const [_SettlingRoute()]);

    expect(resolved, const [_PongRoute()]);
    expect(logging.reportedErrors, isEmpty);
  });
}

class _PingRoute extends AppRoute {
  @override
  String get path => '/ping';

  const _PingRoute();

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();

  @override
  AppRoute? redirect() => const _LoopingPongRoute();
}

class _PongRoute extends AppRoute {
  @override
  String get path => '/pong';

  const _PongRoute();

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();
}

class _LoopingPongRoute extends AppRoute {
  @override
  String get path => '/looping_pong';

  const _LoopingPongRoute();

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();

  @override
  AppRoute? redirect() => const _PingRoute();
}

class _SettlingRoute extends AppRoute {
  @override
  String get path => '/settling';

  const _SettlingRoute();

  @override
  Widget build(BuildContext context) => const SizedBox.shrink();

  @override
  AppRoute? redirect() => const _PongRoute();
}
