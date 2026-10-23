import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../fakes/fake_contacts_service.dart';
import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';
import '../../../../material_ui_test_app.dart';

class PersonContactSectionFixture {
  static const MethodChannel _permissions = MethodChannel(
    'flutter.baseflow.com/permissions/methods',
  );
  static const PhoneContact ownNumber = PhoneContact(
    id: 'own-number',
    phone: '+201001111111',
  );

  final RecordingAnalyticsProvider analytics = RecordingAnalyticsProvider();
  final List<Object> uncaughtErrors = [];
  final FakeContactsService contacts = FakeContactsService();
  final Person person = Person(
    id: 'mina',
    name: 'مينا',
    contacts: const [ownNumber],
  );

  PersonContactSectionFixture() {
    initGlobalProviderContainer([
      analyticsServiceProvider.overrideWithValue(
        AnalyticsService([analytics], FakeLoggingService()),
      ),
      contactsServiceProvider.overrideWithValue(contacts),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
    ]);
    _messenger.setMockMethodCallHandler(
      _permissions,
      (call) async => {
        Permission.contacts.value: PermissionStatus.granted.index,
      },
    );
    addTearDown(() => _messenger.setMockMethodCallHandler(_permissions, null));
  }

  static TestDefaultBinaryMessenger get _messenger =>
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  Future<void> pumpSection(WidgetTester tester) => tester.pumpWidget(
    MaterialUiTestApp.withThemeAndLocale(
      child: Scaffold(
        body: SingleChildScrollView(
          child: PersonContactSection(person: person),
        ),
      ),
    ),
  );

  Future<void> addOwnNumberToDeviceContacts(WidgetTester tester) async {
    await pumpSection(tester);
    await runZonedGuarded(
      () => tester.tap(find.byTooltip('اضافة الى جهات الاتصال')),
      (error, _) => uncaughtErrors.add(error),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('حفظ جهة الاتصال'));
    await tester.pumpAndSettle();
  }
}
