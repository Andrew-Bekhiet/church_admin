import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_feature_flags_repo.dart';
import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/mock_auth_bloc.dart';

void main() {
  const userWithoutPersonRecord = AuthAuthenticated(
    authUser: AuthUser(
      uid: 'uid',
      email: 'user@example.com',
      emailVerified: true,
      idToken: 'token',
      claims: {AuthUser.hasuraUserIdKey: 'hasura-user-id'},
    ),
    userData: User(
      uid: 'uid',
      name: 'name',
      permissions: PermissionsSet.fromSet({UserPermission.approved}),
    ),
  );

  late FakeLoggingService logging;
  late MockAuthBloc authBloc;

  setUp(() {
    logging = FakeLoggingService();
    authBloc = MockAuthBloc();
    when(() => authBloc.state).thenReturn(const AuthUnauthenticated());
    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
      loggingServiceProvider.overrideWithValue(logging),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  test(
    'redirects that never settle are reported with the stack they end on',
    () {
      when(() => authBloc.state).thenReturn(userWithoutPersonRecord);

      final resolved = AppRouteRedirects.resolve([AppRoute.home]);

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
    final resolved = AppRouteRedirects.resolve([AppRoute.home]);

    expect(resolved, const [LoginRoute()]);
    expect(logging.reportedErrors, isEmpty);
  });
}
