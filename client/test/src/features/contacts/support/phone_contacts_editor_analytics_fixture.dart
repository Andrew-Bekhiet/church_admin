import 'package:church_admin/church_admin.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

final class PhoneContactsEditorAnalyticsFixture {
  static const father = PersonType(
    id: 'father',
    name: 'الأب',
    isFamilyAdmin: true,
  );
  static const ownMain = PhoneContact(
    id: 'own-main',
    phone: '+201001111111',
    isMainPhone: true,
  );
  static const ownWork = PhoneContact(
    id: 'own-work',
    phone: '+201002222222',
    label: 'عمل',
  );

  final analytics = RecordingAnalyticsProvider();

  Iterable<String> get trackedNames =>
      analytics.trackedEvents.map((event) => event.name);

  PhoneContactsEditorCubit createCubit() => PhoneContactsEditorCubit(
    own: const [ownMain, ownWork],
    family: const [],
    hasFamily: true,
    fetchFamilyRoles: () async => [father],
    newKey: () => 'new',
    analyticsService: AnalyticsService([analytics], FakeLoggingService()),
  );

  Json trackedPropertiesOf<T extends AnalyticsEvent>() =>
      analytics.trackedEvents.whereType<T>().single.properties;
}
