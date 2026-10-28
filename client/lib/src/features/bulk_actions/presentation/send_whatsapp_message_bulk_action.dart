import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class SendWhatsappMessageBulkAction extends BulkAction<Person> {
  @override
  String get key => 'whatsapp_message';

  @override
  String get label => 'رسالة واتساب';

  @override
  Widget get icon => const ImageIcon(AssetImage('assets/whatsapp.png'));

  const SendWhatsappMessageBulkAction();

  @override
  Future<void> run(BuildContext context, Set<Person> selected) =>
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (context) => BulkWhatsappMessageScreen(persons: selected),
        ),
      );
}
