import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users_preferences/__generated__/fragments.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_box.dart';
import '../../../fakes/mock_auth_bloc.dart';
import '../../../fakes/mock_database_service.dart';
import '../../../fakes/mock_user_preferences_dao.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const uid = 'uid';
  const sentText = 'اهلا {first_name}';

  setUpAll(() {
    registerFallbackValue(Input_UsersPreferencesSetInput());
    registerFallbackValue(Input_UsersPreferencesAppendInput());
  });

  late MockUserPreferencesDAO userPreferencesDAO;
  late MockDatabaseService databaseService;
  late MockAuthBloc authBloc;

  setUp(() {
    userPreferencesDAO = MockUserPreferencesDAO();
    databaseService = MockDatabaseService();
    when(() => databaseService.userPreferences).thenReturn(userPreferencesDAO);
    authBloc = MockAuthBloc();

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  UserPreferencesService createUnit() => UserPreferencesService(
    box: FakeSyncKVStore(),
    databaseService: databaseService,
    authBloc: authBloc,
  );

  void signInWith({String? lastWhatsappMessageText}) =>
      when(() => authBloc.currentUserData).thenReturn(
        User(
          uid: uid,
          name: 'name',
          email: 'email',
          preferences: UserPreferences(
            uid: uid,
            lastWhatsappMessageText: lastWhatsappMessageText,
          ),
        ),
      );

  void keepServerWritesPending() => when(
    () => userPreferencesDAO.updatePreferences(
      uid: any(named: 'uid'),
      set: any(named: 'set'),
      append: any(named: 'append'),
    ),
  ).thenAnswer((_) => Completer<Fragment_UserPreferences>().future);

  test('without a sent WhatsApp message there is no text', () {
    signInWith();

    expect(createUnit().lastWhatsappMessageText, isNull);
  });

  test('the sent WhatsApp message on the server reads back', () {
    signInWith(lastWhatsappMessageText: sentText);

    expect(createUnit().lastWhatsappMessageText, sentText);
  });

  test(
    'a newly sent WhatsApp message reads back before the server has it',
    () async {
      signInWith(lastWhatsappMessageText: 'رسالة قديمة');
      keepServerWritesPending();
      final unit = createUnit();

      await unit.setLastWhatsappMessageText(sentText);

      expect(unit.lastWhatsappMessageText, sentText);
    },
  );

  test('a sent WhatsApp message is saved to the server', () async {
    signInWith();
    keepServerWritesPending();
    final unit = createUnit();

    await unit.setLastWhatsappMessageText(sentText);
    await Future<void>.delayed(Duration.zero);

    final sentSet =
        verify(
              () => userPreferencesDAO.updatePreferences(
                uid: uid,
                set: captureAny(named: 'set'),
                append: any(named: 'append'),
              ),
            ).captured.single
            as Input_UsersPreferencesSetInput;
    expect(sentSet.lastWhatsappMessageText, sentText);
  });
}
