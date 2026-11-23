import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/edit_user_form.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_section_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_feature_flags_repo.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_auth_bloc.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';
import '../../../../material_ui_test_app.dart';
import '../../../../utils.dart';

class _MockUsersDAO extends Mock implements UsersDAO {}

class _MockUserPermissionsDAO extends Mock implements UserPermissionsDAO {}

class _MockInvitationsDAO extends Mock implements InvitationsDAO {}

void main() {
  late MockAuthBloc authBloc;
  late AnalyticsService analytics;

  setUp(() {
    authBloc = MockAuthBloc();
    analytics = AnalyticsService(
      [RecordingAnalyticsProvider()],
      FakeLoggingService(),
    );
    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      analyticsServiceProvider.overrideWithValue(analytics),
      databaseServiceProvider.overrideWithValue(MockDatabaseService()),
      featureFlagsRepoProvider.overrideWithValue(FakeFeatureFlagsRepo()),
    ]);
  });
  tearDown(defaultTearDown);

  Future<UserFormCubit> pumpFormEditedBy(
    WidgetTester tester, {
    required Set<UserPermission> callerPermissions,
    required Set<UserPermission> editedUserPermissions,
  }) async {
    when(() => authBloc.currentUserData).thenReturn(
      User(
        uid: 'caller-id',
        name: 'أمين الخدمة',
        permissions: PermissionsSet.fromSet(callerPermissions),
      ),
    );
    final editedUser = User(
      uid: 'edited-id',
      name: 'الخادم المعدَّل',
      authId: 'edited-auth-id',
      email: 'edited@example.com',
      permissions: PermissionsSet.fromSet(editedUserPermissions),
    );
    final cubit = EditUserCubit(
      user: editedUser,
      usersDao: _MockUsersDAO(),
      permissionsDao: _MockUserPermissionsDAO(),
      invitationsDao: _MockInvitationsDAO(),
      authBloc: authBloc,
      analyticsService: analytics,
    );
    addTearDown(cubit.close);

    await tester.pumpWidget(
      MaterialUiTestApp.withThemeAndLocale(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: BlocProvider<UserFormCubit>.value(
            value: cubit,
            child: BlocBuilder<UserFormCubit, UserFormState>(
              builder: (context, state) => SingleChildScrollView(
                child: EditUserForm(
                  intent: UpdateUser(user: editedUser),
                  draft: state.draft,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    return cubit;
  }

  Finder permissionInSection(
    UserPermission permission,
    UserPermissionSection section,
  ) => find.descendant(
    of: find.byKey(EditUserFormKeys.permissionsSectionFor(section)),
    matching: find.byKey(EditUserFormKeys.permission(permission)),
  );

  testWidgets(
    'a scope-bound permission the caller holds is offered in the scope-bound section',
    (tester) async {
      await pumpFormEditedBy(
        tester,
        callerPermissions: {
          UserPermission.approved,
          UserPermission.readAllData,
          UserPermission.manageFingerprintIds,
        },
        editedUserPermissions: {UserPermission.approved},
      );

      expect(
        permissionInSection(
          UserPermission.manageFingerprintIds,
          UserPermissionSection.scopeBound,
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'a general permission the caller holds is offered in the general section',
    (tester) async {
      await pumpFormEditedBy(
        tester,
        callerPermissions: {
          UserPermission.approved,
          UserPermission.readAllData,
          UserPermission.manageFingerprintIds,
        },
        editedUserPermissions: {UserPermission.approved},
      );

      expect(
        permissionInSection(
          UserPermission.readAllData,
          UserPermissionSection.general,
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'the scope-bound section says it only applies to people the user can edit',
    (tester) async {
      await pumpFormEditedBy(
        tester,
        callerPermissions: {
          UserPermission.approved,
          UserPermission.deleteData,
        },
        editedUserPermissions: {UserPermission.approved},
      );

      final helper = tester.widget<Text>(
        find.descendant(
          of: find.byKey(
            EditUserFormKeys.permissionsSectionFor(
              UserPermissionSection.scopeBound,
            ),
          ),
          matching: find.byKey(UserSectionCardKeys.helper),
        ),
      );
      expect(helper.data, UserPermissionSection.scopeBound.helper);
    },
  );

  testWidgets(
    'the scope-bound section is hidden from a caller holding none of its permissions',
    (tester) async {
      await pumpFormEditedBy(
        tester,
        callerPermissions: {
          UserPermission.approved,
          UserPermission.readAllData,
        },
        editedUserPermissions: {UserPermission.approved},
      );

      expect(
        find.byKey(
          EditUserFormKeys.permissionsSectionFor(
            UserPermissionSection.scopeBound,
          ),
        ),
        findsNothing,
      );
    },
  );

  testWidgets(
    'a permission the caller lacks is not offered',
    (tester) async {
      await pumpFormEditedBy(
        tester,
        callerPermissions: {
          UserPermission.approved,
          UserPermission.deleteData,
        },
        editedUserPermissions: {UserPermission.approved},
      );

      expect(
        find.byKey(
          EditUserFormKeys.permission(UserPermission.manageFingerprintIds),
        ),
        findsNothing,
      );
    },
  );

  testWidgets(
    'ticking a scope-bound permission grants it in the draft',
    (tester) async {
      final cubit = await pumpFormEditedBy(
        tester,
        callerPermissions: {
          UserPermission.approved,
          UserPermission.manageFingerprintIds,
        },
        editedUserPermissions: {UserPermission.approved},
      );
      final checkbox = find.byKey(
        EditUserFormKeys.permission(UserPermission.manageFingerprintIds),
      );

      await tester.ensureVisible(checkbox);
      await tester.tap(checkbox);
      await tester.pumpAndSettle();

      expect(
        cubit.state.draft.permissions,
        contains(UserPermission.manageFingerprintIds),
      );
    },
  );
}
