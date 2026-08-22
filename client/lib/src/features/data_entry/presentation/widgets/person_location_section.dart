import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonLocationSection extends StatelessWidget {
  final Person person;

  const PersonLocationSection({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('المنطقة'),
          subtitle: person.address?.area != null
              ? ViewableObjectCard(person.address!.area!)
              : null,
        ),
        ListTile(
          title: const Text('الشارع'),
          subtitle: person.address?.street != null
              ? ViewableObjectCard(person.address!.street!)
              : null,
        ),
        if (person.family != null)
          ListTile(
            title: const Text('العائلة'),
            subtitle: Align(
              alignment: AlignmentDirectional.centerStart,
              child: ViewableObjectCard(person.family!),
            ),
          ),
      ],
    );
  }
}
