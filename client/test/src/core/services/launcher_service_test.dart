import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

import 'launcher_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UrlLauncherPlatform>(as: #MockUrlLauncherPlatform_),
])
void main() {
  setUp(_setUp);
  tearDown(_tearDown);

  group(
    'Launcher Service =>',
    () {
      test(
        'launchUrl',
        () async {
          final url = Uri.parse('https://example.com/path?query=1#fragment');

          final unit = LauncherService();

          await unit.launchUrl(url);

          verify(
            (UrlLauncherPlatform.instance as MockUrlLauncherPlatform).launchUrl(
              url.toString(),
              any,
            ),
          );
        },
      );

      test(
        'launchSMSChat',
        () async {
          const phoneNumber = '+1234567890';

          final unit = LauncherService();

          await unit.launchSMSChat(phoneNumber);

          verify(
            (UrlLauncherPlatform.instance as MockUrlLauncherPlatform).launchUrl(
              Uri.parse('sms:$phoneNumber').toString(),
              any,
            ),
          );
        },
      );

      test(
        'launchPhoneCall',
        () async {
          const phoneNumber = '+1234567890';

          final unit = LauncherService();

          await unit.launchCall(phoneNumber);

          verify(
            (UrlLauncherPlatform.instance as MockUrlLauncherPlatform).launchUrl(
              Uri.parse('tel:$phoneNumber').toString(),
              any,
            ),
          );
        },
      );

      test(
        'launchWhatsappChat',
        () async {
          const phoneNumber = '1234567890';

          final unit = LauncherService();

          await unit.launchWhatsappChat(phoneNumber);

          verify(
            (UrlLauncherPlatform.instance as MockUrlLauncherPlatform).launchUrl(
              Uri.parse('whatsapp://send?phone=%2B$phoneNumber').toString(),
              any,
            ),
          );
        },
      );

      test(
        'launchWhatsappChat sends one plus for an internationally formatted '
        'phone',
        () async {
          const phoneNumber = '+201001234567';

          final unit = LauncherService();

          await unit.launchWhatsappChat(phoneNumber);

          verify(
            (UrlLauncherPlatform.instance as MockUrlLauncherPlatform).launchUrl(
              'whatsapp://send?phone=%2B201001234567',
              any,
            ),
          );
        },
      );

      test(
        'launchWhatsappChat percent-encodes the spaces of the message',
        () async {
          final unit = LauncherService();

          await unit.launchWhatsappChat('+201001234567', text: 'يا مينا 1+1');

          verify(
            (UrlLauncherPlatform.instance as MockUrlLauncherPlatform).launchUrl(
              'whatsapp://send?phone=%2B201001234567&text='
              '${Uri.encodeComponent('يا')}%20${Uri.encodeComponent('مينا')}'
              '%201%2B1',
              any,
            ),
          );
        },
      );
    },
  );
}

late UrlLauncherPlatform oldUrlLauncherPlatform;

void _setUp() {
  oldUrlLauncherPlatform = UrlLauncherPlatform.instance;

  UrlLauncherPlatform.instance = MockUrlLauncherPlatform();
}

void _tearDown() {
  UrlLauncherPlatform.instance = oldUrlLauncherPlatform;
}

class MockUrlLauncherPlatform extends MockUrlLauncherPlatform_
    with MockPlatformInterfaceMixin {}
