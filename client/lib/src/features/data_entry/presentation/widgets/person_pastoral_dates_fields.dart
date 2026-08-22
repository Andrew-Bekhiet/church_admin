import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonPastoralDatesFields extends StatelessWidget {
  final Person person;
  final ValueChanged<DateTime> onLastKodasChanged;
  final ValueChanged<DateTime> onLastConfessionChanged;
  final ValueChanged<DateTime> onLastVisitChanged;
  final ValueChanged<DateTime> onLastCallChanged;

  const PersonPastoralDatesFields({
    required this.person,
    required this.onLastKodasChanged,
    required this.onLastConfessionChanged,
    required this.onLastVisitChanged,
    required this.onLastCallChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Divider(),
        DateTimeField(
          nullable: true,
          withTime: false,
          label: 'أخر تناول',
          initialValue: person.lastKodas?.time,
          onChanged: (v) {
            if (v == null) return;

            onLastKodasChanged(v);
          },
          validator: (v) => null,
        ),
        DateTimeField(
          nullable: true,
          withTime: false,
          label: 'أخر اعتراف',
          initialValue: person.lastConfession?.time,
          onChanged: (v) {
            if (v == null) return;

            onLastConfessionChanged(v);
          },
          validator: (v) => null,
        ),
        const Divider(),
        DateTimeField(
          nullable: true,
          label: 'أخر افتقاد',
          initialValue: person.lastVisit?.time,
          onChanged: (v) {
            if (v == null) return;

            onLastVisitChanged(v);
          },
          validator: (v) => null,
        ),
        DateTimeField(
          nullable: true,
          label: 'أخر مكالمة',
          initialValue: person.lastCall?.time,
          onChanged: (v) {
            if (v == null) return;

            onLastCallChanged(v);
          },
          validator: (v) => null,
        ),
      ],
    );
  }
}
