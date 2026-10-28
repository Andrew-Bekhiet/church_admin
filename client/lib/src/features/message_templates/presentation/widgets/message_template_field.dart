import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class MessageTemplateField extends StatelessWidget {
  final PlaceholderTextEditingController controller;

  const MessageTemplateField({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            for (final field in controller.fields)
              ActionChip(
                key: MessageTemplateFieldKeys.insertButtonFor(field),
                avatar: const Icon(Symbols.add),
                label: Text(field.label),
                onPressed: () => controller.insertPlaceholder(field),
              ),
          ],
        ),
        TextField(
          key: MessageTemplateFieldKeys.textField,
          controller: controller,
          minLines: 3,
          maxLines: null,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(labelText: 'نص الرسالة'),
        ),
      ],
    );
  }
}

abstract final class MessageTemplateFieldKeys {
  static const Key textField = ValueKey('Message Template Text Field Key');

  static Key insertButtonFor(FieldMetadata field) =>
      ValueKey('Message Template Insert ${field.name} Key');
}
