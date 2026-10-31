import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users_preferences/__generated__/fragments.gql.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_box.dart';

class MockUserPreferencesDAO extends Mock implements UserPreferencesDAO {}

class MockDatabaseService extends Mock implements DatabaseService {}

class MockAuthBloc extends Mock implements AuthBloc {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    registerFallbackValue(Input_UsersPreferencesSetInput());
    registerFallbackValue(Input_UsersPreferencesAppendInput());
  });

  late MockDatabaseService databaseService;
  late MockUserPreferencesDAO userPreferencesDAO;
  late MockAuthBloc authBloc;

  setUp(() {
    userPreferencesDAO = MockUserPreferencesDAO();
    when(
      () => userPreferencesDAO.updatePreferences(
        uid: any(named: 'uid'),
        set: any(named: 'set'),
        append: any(named: 'append'),
      ),
    ).thenAnswer((_) => Completer<Fragment_UserPreferences>().future);

    databaseService = MockDatabaseService();
    when(() => databaseService.userPreferences).thenReturn(userPreferencesDAO);

    authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(null);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
    ]);
  });

  tearDown(resetGlobalProviderContainer);

  UserPreferencesService createUnit({SyncKVStore? box}) =>
      UserPreferencesService(
        box: box ?? FakeSyncKVStore(),
        databaseService: databaseService,
        authBloc: authBloc,
      );

  void signInWith({String? lastWhatsappMessageTemplate}) =>
      when(() => authBloc.currentUserData).thenReturn(
        User(
          uid: 'uid',
          name: 'name',
          email: 'email',
          preferences: UserPreferences(
            uid: 'uid',
            lastWhatsappMessageTemplate: lastWhatsappMessageTemplate,
          ),
        ),
      );

  const savedTemplate = 'اهلا {name}';

  test('without a saved WhatsApp message template there is none', () {
    expect(createUnit().lastWhatsappMessageTemplate, isNull);
  });

  test('a saved WhatsApp message template reads back', () async {
    final unit = createUnit();

    await unit.setLastWhatsappMessageTemplate(savedTemplate);

    expect(unit.lastWhatsappMessageTemplate, savedTemplate);
  });

  test('the WhatsApp message template on the server reads back', () {
    signInWith(lastWhatsappMessageTemplate: savedTemplate);

    expect(createUnit().lastWhatsappMessageTemplate, savedTemplate);
  });

  test('a saved WhatsApp message template is sent to the server', () async {
    signInWith();
    final unit = createUnit();

    await unit.setLastWhatsappMessageTemplate(savedTemplate);
    await Future<void>.delayed(Duration.zero);

    final sentSet =
        verify(
              () => userPreferencesDAO.updatePreferences(
                uid: 'uid',
                set: captureAny(named: 'set'),
                append: any(named: 'append'),
              ),
            ).captured.single
            as Input_UsersPreferencesSetInput;
    expect(sentSet.lastWhatsappMessageTemplate, savedTemplate);
  });
}
