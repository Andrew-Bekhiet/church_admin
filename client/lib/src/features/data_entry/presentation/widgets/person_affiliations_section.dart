import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class PersonAffiliationsSection extends StatelessWidget {
  final Person person;
  final VoidCallback onLoadAllServices;
  final VoidCallback onLoadAllClasses;
  final VoidCallback onLoadAllGroups;

  const PersonAffiliationsSection({
    required this.person,
    required this.onLoadAllServices,
    required this.onLoadAllClasses,
    required this.onLoadAllGroups,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('الخدمات التي يوجد بها'),
          subtitle: ShowMoreList<Service>(
            items: person.services ?? [],
            onLoadAll: onLoadAllServices,
          ),
        ),
        ListTile(
          title: const Text('الفصول التي يوجد بها'),
          subtitle: ShowMoreList<Class>(
            items: person.classes ?? [],
            onLoadAll: onLoadAllClasses,
          ),
        ),
        ListTile(
          title: const Text('المجموعات التي يشارك بها'),
          subtitle: ShowMoreList<Group>(
            items: person.groups ?? [],
            onLoadAll: onLoadAllGroups,
          ),
        ),
      ],
    );
  }
}
