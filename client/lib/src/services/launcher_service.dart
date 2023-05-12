import 'package:church_admin/church_admin.dart';
import 'package:url_launcher/url_launcher.dart' as l;

class LauncherService {
  static LauncherService get I =>
      launcherServiceProvider.read(globalProviderContainer);

  Future<bool> launch(String url) {
    return launchUrl(Uri.parse(url));
  }

  Future<bool> launchUrl(Uri url) {
    return l.launchUrl(url, mode: l.LaunchMode.externalApplication);
  }

  Future<bool> launchSMSChat(String fomattedPhone) {
    return launch('sms:' + fomattedPhone);
  }

  Future<bool> launchCall(String fomattedPhone) {
    return launch('tel:' + fomattedPhone);
  }

  Future<bool> launchWhatsappChat(String fomattedPhone) {
    return launch('whatsapp://send?phone=+' + fomattedPhone);
  }
}
