import 'package:church_admin/church_admin.dart';

sealed class MessageChannel {
  const MessageChannel();

  Future<bool> tryOpen(PhoneContact contact, String message);
}

final class WhatsappMessageChannel extends MessageChannel {
  final LauncherService _launcherService;
  final PhoneNumberService _phoneNumberService;

  const WhatsappMessageChannel({
    required this._launcherService,
    required this._phoneNumberService,
  });

  @override
  Future<bool> tryOpen(PhoneContact contact, String message) =>
      _launcherService.launchWhatsappChat(
        _phoneNumberService.formatInternational(contact.phone),
        text: message,
      );
}
