import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class PersonIdentitySection extends StatelessWidget {
  final Person person;

  const PersonIdentitySection({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('النوع'),
          subtitle: Text(person.gender.label),
        ),
        ListTile(
          title: const Text('الحالة الاجتماعية'),
          subtitle: Text(person.martialStatus?.label ?? ''),
        ),
        ListTile(
          title: const Text('نوع الفرد في العائلة'),
          subtitle: Text(person.personType?.name ?? ''),
        ),
      ],
    );
  }
}
