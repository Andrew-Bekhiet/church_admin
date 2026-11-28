import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

abstract class SendMessageBulkAction extends BulkAction<Person> {
  const SendMessageBulkAction();

  MessageChannel createChannel();

  @override
  Future<void> run(BuildContext context, Set<Person> selected) =>
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (context) =>
              SendMessageScreen(persons: selected, action: this),
        ),
      );
}
