import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class DefaultMeetingFields extends StatelessWidget {
  final DefaultMeetingFormController form;

  const DefaultMeetingFields({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AdvancedCheckboxTile<ObjectEditError>(
          key: DefaultMeetingFieldsKeys.isCreated,
          field: form.isCreated,
          title: 'إنشاء اجتماع افتراضي',
        ),
        ListenableBuilder(
          listenable: form.isCreated,
          builder: (context, _) => form.isCreated.fieldValue
              ? AdvancedTextInput<ObjectEditError>(
                  key: DefaultMeetingFieldsKeys.name,
                  field: form.name,
                  translateError: ObjectEditError.messageOf,
                  labelText: 'اسم الاجتماع',
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}

abstract final class DefaultMeetingFieldsKeys {
  static const Key isCreated = ValueKey('Default Meeting Is Created Key');
  static const Key name = ValueKey('Default Meeting Name Key');
}
