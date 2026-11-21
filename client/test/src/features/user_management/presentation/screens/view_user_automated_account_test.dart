import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_account_status_banner.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_invitation_code_tile.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_auth_bloc.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../fakes/mock_user_preferences_service.dart';
import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';
import '../../../../material_ui_test_app.dart';
import '../../../../utils.dart';

class _MockUsersDAO extends Mock implements UsersDAO {}

class _MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  final unclaimedInvitation = Invitation(
    id: 'invitation-id',
    userUid: 'viewed-id',
    code: 'ABC123',
    createdAt: DateTime(2026),
    expiresAt: DateTime(2026, 2),
  );
  final fingerprintBot = User(
    uid: 'viewed-id',
    name: 'بصمة الحضور',
    userType: UserType.fingerprintBot,
    email: 'bot@example.com',
    authId: 'bot-auth-id',
    invitation: unclaimedInvitation,
    currentUserCanManageThisUser: true,
  );
  const unapprovedServant = User(
    uid: 'viewed-id',
    name: 'مينا',
    email: 'mina@example.com',
    authId: 'mina-auth-id',
    currentUserCanManageThisUser: true,
  );

  const userManagerPermissions = {
    UserPermission.approved,
    UserPermission.readAllData,
    UserPermission.writeAllData,
    UserPermission.manageAllUsers,
  };

  late _MockUsersDAO users;
  late MockAuthBloc authBloc;

  setUpAll(() => registerFallbackValue(const User(uid: '', name: '')));

  setUp(() {
    users = _MockUsersDAO();
    final database = MockDatabaseService();
    when(() => database.users).thenReturn(users);
    authBloc = MockAuthBloc();
    final preferences = MockUserPreferencesService();
    when(() => preferences.themeChoice).thenReturn(ThemeChoice.light);
    when(() => preferences.greatFeastTheme).thenReturn(false);
    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.person);
    when(
      () => viewableObjects.getFormattedValue(any(), any()),
    ).thenReturn(null);
    initGlobalProviderContainer([
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
      authBlocProvider.overrideWithValue(authBloc),
      authRepositoryProvider.overrideWithValue(_MockAuthRepository()),
      analyticsServiceProvider.overrideWithValue(
        AnalyticsService([RecordingAnalyticsProvider()], FakeLoggingService()),
      ),
      databaseServiceProvider.overrideWithValue(database),
      userPreferencesServiceProvider.overrideWithValue(preferences),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
    ]);
  });
  tearDown(defaultTearDown);

  Future<void> pumpViewOf(
    WidgetTester tester,
    User user, {
    required Set<UserPermission> viewerPermissions,
  }) async {
    when(() => authBloc.currentUserData).thenReturn(
      User(
        uid: 'manager-id',
        name: 'أمين الخدمة',
        permissions: PermissionsSet.fromSet(viewerPermissions),
      ),
    );
    final liveUser = StreamController<User?>()..add(user);
    addTearDown(liveUser.close);
    when(
      () => users.streamSingleById(id: user.uid, fullData: true),
    ).thenAnswer((_) => liveUser.stream);
    tester.view
      ..physicalSize = const Size(390, 844)
      ..devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      MaterialUiTestApp.withThemeAndLocale(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ViewUser(userId: user.uid, user: user),
        ),
      ),
    );
    await tester.pump();
    await tester.pump();
  }

  testWidgets('the fingerprint bot is presented as an automated account', (
    tester,
  ) async {
    await pumpViewOf(
      tester,
      fingerprintBot,
      viewerPermissions: userManagerPermissions,
    );

    expect(
      find.byKey(
        UserAccountStatusBannerKeys.selfFor(UserAccountStatus.automated),
      ),
      findsOneWidget,
    );
  });

  testWidgets('a user manager is not offered to approve the fingerprint bot', (
    tester,
  ) async {
    await pumpViewOf(
      tester,
      fingerprintBot,
      viewerPermissions: userManagerPermissions,
    );

    expect(find.byKey(ViewUserScreenKeys.approveButton), findsNothing);
  });

  testWidgets('a user manager is offered to approve an unapproved servant', (
    tester,
  ) async {
    await pumpViewOf(
      tester,
      unapprovedServant,
      viewerPermissions: userManagerPermissions,
    );

    expect(find.byKey(ViewUserScreenKeys.approveButton), findsOneWidget);
  });

  testWidgets('the fingerprint bot shows no invitation code', (tester) async {
    await pumpViewOf(
      tester,
      fingerprintBot,
      viewerPermissions: userManagerPermissions,
    );

    expect(find.byKey(UserInvitationCodeTileKeys.code), findsNothing);
  });

  testWidgets('a bot that never signed in shows no invitation code', (
    tester,
  ) async {
    final botWithoutAccount = User(
      uid: 'viewed-id',
      name: 'بصمة الحضور',
      userType: UserType.fingerprintBot,
      invitation: unclaimedInvitation,
      currentUserCanManageThisUser: true,
    );

    await pumpViewOf(
      tester,
      botWithoutAccount,
      viewerPermissions: userManagerPermissions,
    );

    expect(find.byKey(UserInvitationCodeTileKeys.code), findsNothing);
  });

  testWidgets('an unapproved servant who never signed in shows the invitation '
      'code', (tester) async {
    final servantWithoutAccount = User(
      uid: 'viewed-id',
      name: 'مينا',
      invitation: unclaimedInvitation,
      currentUserCanManageThisUser: true,
    );

    await pumpViewOf(
      tester,
      servantWithoutAccount,
      viewerPermissions: userManagerPermissions,
    );

    expect(find.byKey(UserInvitationCodeTileKeys.code), findsOneWidget);
  });

  testWidgets('the fingerprint bot offers no password reset', (tester) async {
    await pumpViewOf(
      tester,
      fingerprintBot,
      viewerPermissions: userManagerPermissions,
    );

    expect(find.byKey(SendPasswordResetButtonKeys.self), findsNothing);
  });

  testWidgets('an unapproved servant can be sent a password reset', (
    tester,
  ) async {
    await pumpViewOf(
      tester,
      unapprovedServant,
      viewerPermissions: userManagerPermissions,
    );

    expect(find.byKey(SendPasswordResetButtonKeys.self), findsOneWidget);
  });

  testWidgets('the fingerprint bot cannot be edited', (tester) async {
    await pumpViewOf(
      tester,
      fingerprintBot,
      viewerPermissions: userManagerPermissions,
    );

    expect(find.byKey(ViewUserScreenKeys.editButton), findsNothing);
  });

  testWidgets('a servant the manager manages can be edited', (tester) async {
    await pumpViewOf(
      tester,
      unapprovedServant,
      viewerPermissions: userManagerPermissions,
    );

    expect(find.byKey(ViewUserScreenKeys.editButton), findsOneWidget);
  });
}
