import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

/// Shows a dialog to confirm whether to use an existing family or create a new one
Widget showFamilySelectionDialog({
  required bool silent,
  required void Function(bool) complete,
  required Family family,
  required List<Person> familyMembers,
  required String personName,
  required String? personPhone,
  required String? personAddress,
  required String? personNotes,
}) {
  return _FamilySelectionDialog(
    key: ValueKey(family.id),
    complete: complete,
    family: family,
    familyMembers: familyMembers,
    personName: personName,
    personPhone: personPhone,
    personAddress: personAddress,
    personNotes: personNotes,
    silent: silent,
  );
}

class _FamilySelectionDialog extends StatefulWidget {
  final bool silent;
  final Family family;
  final List<Person> familyMembers;
  final String personName;
  final String? personPhone;
  final String? personAddress;
  final String? personNotes;
  final void Function(bool) complete;

  const _FamilySelectionDialog({
    super.key,
    required this.silent,
    required this.complete,
    required this.family,
    required this.familyMembers,
    required this.personName,
    required this.personPhone,
    required this.personAddress,
    required this.personNotes,
  });

  @override
  State<_FamilySelectionDialog> createState() => _FamilySelectionDialogState();
}

class _FamilySelectionDialogState extends State<_FamilySelectionDialog> {
  @override
  void initState() {
    super.initState();

    if (widget.silent) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => widget.complete(true),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Possible Family Found')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'A possible family was found for "${widget.personName}"',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildExistingFamilyCard(context),
                    _buildPersonToMigrateCard(context),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            _buildActionButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildExistingFamilyCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Existing Family',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Divider(),
            Text('Name: ${widget.family.name}'),
            Text('Address: ${widget.family.address?.specialLandmark}'),
            Text('Notes: ${widget.family.notes}'),
            Text('Church: ${widget.family.church?.name}'),
            const SizedBox(height: 8),
            if (widget.familyMembers.isNotEmpty) ...[
              Text(
                'Family Members (${widget.familyMembers.length}):',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 4),
              ...widget.familyMembers.map(
                (member) => Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: ${member.name}'),
                      Text('Phone: ${member.mainPhone}'),
                      Text('Address: ${member.address}'),
                      Text('Notes: ${member.notes}'),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildPersonToMigrateCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Person to Migrate',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Divider(),
            Text('Name: ${widget.personName}'),
            Text('Phone: ${widget.personPhone}'),
            Text('Address: ${widget.personAddress}'),
            Text('Notes: ${widget.personNotes}'),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () => widget.complete(false),
          child: const Text('Create a new family for this person'),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: () => widget.complete(true),
          child: const Text('Use the existing family'),
        ),
      ],
    );
  }
}
