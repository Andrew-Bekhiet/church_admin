import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class PersonDetailsList extends StatelessWidget {
  final Person person;
  final VoidCallback onLoadAllServices;
  final VoidCallback onLoadAllClasses;
  final VoidCallback onLoadAllGroups;

  const PersonDetailsList({
    required this.person,
    required this.onLoadAllServices,
    required this.onLoadAllClasses,
    required this.onLoadAllGroups,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        PersonContactSection(person: person),
        const Divider(thickness: 1),
        PersonAffiliationsSection(
          person: person,
          onLoadAllServices: onLoadAllServices,
          onLoadAllClasses: onLoadAllClasses,
          onLoadAllGroups: onLoadAllGroups,
        ),
        const Divider(),
        PersonWorkAndStudySection(person: person),
        const Divider(thickness: 1),
        PersonIdentitySection(person: person),
        const Divider(thickness: 1),
        PersonChurchSection(person: person),
        const Divider(),
        PersonTagsSection(person: person),
        CopiablePropertyWidget(
          'ملاحظات',
          person.notes,
          showErrorIfEmpty: false,
        ),
        const Divider(thickness: 1),
        PersonHistorySection(person: person),
        ListTile(
          title: FilledButton.icon(
            icon: const Icon(Symbols.query_stats),
            label: const Text('احصائيات'),
            onPressed: () => _analysis(context, person),
          ),
        ),
        const Divider(thickness: 1),
        PersonLocationSection(person: person),
        const SizedBox(height: 50),
      ]),
    );
  }

  Future<void> _analysis(BuildContext context, Person person) async {
    await PersonAnalysisRoute(
      $extra: PersonAnalysisExtra(person: person),
    ).push(context);
  }
}
