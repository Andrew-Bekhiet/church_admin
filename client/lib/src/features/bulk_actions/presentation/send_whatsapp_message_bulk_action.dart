import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class SendWhatsappMessageBulkAction extends SendMessageBulkAction {
  @override
  String get key => 'whatsapp_message';

  @override
  String get label => 'رسالة واتساب';

  @override
  Widget get icon => const ImageIcon(AssetImage('assets/whatsapp.png'));

  const SendWhatsappMessageBulkAction();

  @override
  MessageChannel createChannel() => WhatsappMessageChannel(
    launcherService: LauncherService.I,
    phoneNumberService: PhoneNumberService.I,
  );
}
