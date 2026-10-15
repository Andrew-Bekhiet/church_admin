import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonEditPastoralDatesSection extends StatelessWidget {
  final PersonPastoralDatesFormController form;

  const PersonEditPastoralDatesSection({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Divider(),
        AdvancedDateField<PersonEditError>(
          field: form.lastKodas,
          label: 'أخر تناول',
          clearable: false,
          translateError: PersonEditError.messageOf,
        ),
        AdvancedDateField<PersonEditError>(
          field: form.lastConfession,
          label: 'أخر اعتراف',
          clearable: false,
          translateError: PersonEditError.messageOf,
        ),
        const Divider(),
        AdvancedDateField<PersonEditError>(
          field: form.lastVisit,
          label: 'أخر افتقاد',
          clearable: false,
          withTime: true,
          translateError: PersonEditError.messageOf,
        ),
        AdvancedDateField<PersonEditError>(
          field: form.lastCall,
          label: 'أخر مكالمة',
          clearable: false,
          withTime: true,
          translateError: PersonEditError.messageOf,
        ),
      ],
    );
  }
}
