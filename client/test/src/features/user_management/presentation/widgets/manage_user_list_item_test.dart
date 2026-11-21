import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/user_management/presentation/widgets/user_account_status_indicators.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/mock_auth_bloc.dart';
import '../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../material_ui_test_app.dart';
import '../../../../utils.dart';

void main() {
  const fingerprintBot = User(
    uid: 'fingerprint-bot-id',
    name: 'بصمة الحضور',
    userType: UserType.fingerprintBot,
  );
  const servantWithoutAccount = User(uid: 'servant-id', name: 'مينا');

  setUpAll(() => registerFallbackValue(const User(uid: '', name: '')));

  setUp(() {
    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.person);
    when(
      () => viewableObjects.getFormattedValue(any(), any()),
    ).thenReturn(null);
    initGlobalProviderContainer([
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
      authBlocProvider.overrideWithValue(MockAuthBloc()),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
    ]);
  });
  tearDown(defaultTearDown);

  Future<void> pumpListItemOf(WidgetTester tester, User user) =>
      tester.pumpWidget(
        MaterialUiTestApp.withThemeAndLocale(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ManageUserListItem(user),
          ),
        ),
      );

  testWidgets('the fingerprint bot says what it does automatically', (
    tester,
  ) async {
    await pumpListItemOf(tester, fingerprintBot);

    final description = tester.widget<Text>(
      find.byKey(ManageUserListItemKeys.automatedAccountDescription),
    );
    expect(
      description.data,
      UserType.fingerprintBot.automatedAccountDescription,
    );
  });

  testWidgets('the fingerprint bot is marked as an automated account', (
    tester,
  ) async {
    await pumpListItemOf(tester, fingerprintBot);

    expect(
      find.byKey(
        UserAccountStatusIndicatorsKeys.statusFor(UserAccountStatus.automated),
      ),
      findsOneWidget,
    );
  });

  testWidgets('the fingerprint bot is not marked as lacking an account', (
    tester,
  ) async {
    await pumpListItemOf(tester, fingerprintBot);

    expect(
      find.byKey(
        UserAccountStatusIndicatorsKeys.statusFor(UserAccountStatus.noAccount),
      ),
      findsNothing,
    );
  });

  testWidgets(
    'a servant who never registered is marked as lacking an account',
    (
      tester,
    ) async {
      await pumpListItemOf(tester, servantWithoutAccount);

      expect(
        find.byKey(
          UserAccountStatusIndicatorsKeys.statusFor(
            UserAccountStatus.noAccount,
          ),
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets('a servant carries no automated-account description', (
    tester,
  ) async {
    await pumpListItemOf(tester, servantWithoutAccount);

    expect(
      find.byKey(ManageUserListItemKeys.automatedAccountDescription),
      findsNothing,
    );
  });
}
