import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../fakes/fake_box.dart';
import '../../../fakes/mock_auth_bloc.dart';
import '../../../fakes/mock_database_service.dart';
import '../../../fakes/mock_user_preferences_dao.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const uid = 'uid';
  final sentText =
      'اهلا ${MessageTemplate.tokenOf(WhatsappMessageFields.firstName)}';

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
      scalars: any(named: 'scalars'),
      orderByPatch: any(named: 'orderByPatch'),
      secondLinePatch: any(named: 'secondLinePatch'),
    ),
  ).thenAnswer((_) => Completer<UserPreferences>().future);

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

    final sentScalars =
        verify(
              () => userPreferencesDAO.updatePreferences(
                scalars: captureAny(named: 'scalars'),
                orderByPatch: any(named: 'orderByPatch'),
                secondLinePatch: any(named: 'secondLinePatch'),
              ),
            ).captured.single
            as Json;
    expect(sentScalars['lastWhatsappMessageText'], sentText);
  });
}
