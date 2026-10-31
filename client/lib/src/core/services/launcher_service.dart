import 'package:church_admin/church_admin.dart';
import 'package:url_launcher/url_launcher.dart' as l;

class LauncherService {
  static LauncherService get I =>
      globalProviderContainer.read(launcherServiceProvider);

  Future<bool> launchUrl(Uri url) {
    return l.launchUrl(url, mode: l.LaunchMode.externalApplication);
  }

  Future<bool> launchSMSChat(String fomattedPhone) {
    return launchUrl(Uri(scheme: 'sms', path: fomattedPhone));
  }

  Future<bool> launchCall(String fomattedPhone) {
    return launchUrl(Uri(scheme: 'tel', path: fomattedPhone));
  }

  String _withoutLeadingPlus(String phone) =>
      phone.startsWith('+') ? phone.substring(1) : phone;

  Future<bool> launchWhatsappChat(String formattedPhone, {String? text}) {
    final queryParameters = {
      'phone': '+${_withoutLeadingPlus(formattedPhone)}',
      'text': ?text,
    };

    return launchUrl(
      Uri(
        scheme: 'whatsapp',
        host: 'send',
        queryParameters: queryParameters,
      ),
    );
  }
}
