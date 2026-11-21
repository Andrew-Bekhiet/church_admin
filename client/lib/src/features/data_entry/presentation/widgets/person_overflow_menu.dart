import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class PersonOverflowMenu extends StatelessWidget {
  final Person person;

  const PersonOverflowMenu({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PersonOverflowAction>(
      key: PersonOverflowMenuKeys.self,
      tooltip: 'المزيد',
      position: PopupMenuPosition.under,
      onSelected: (action) => switch (action) {
        PersonOverflowAction.manageFingerprintIds => unawaited(
          PersonFingerprintIdsSheet.show(context, person: person),
        ),
      },
      itemBuilder: (_) => [
        for (final action in PersonOverflowAction.values)
          PopupMenuItem(
            key: PersonOverflowMenuKeys.itemFor(action),
            value: action,
            child: Row(
              spacing: 12,
              children: [Icon(action.icon), Text(action.label)],
            ),
          ),
      ],
    );
  }
}

enum PersonOverflowAction {
  manageFingerprintIds(label: 'بصمة الحضور', icon: Symbols.fingerprint);

  final String label;
  final IconData icon;

  const PersonOverflowAction({required this.label, required this.icon});
}

abstract final class PersonOverflowMenuKeys extends WidgetKeys {
  static const Key self = ValueKey((PersonOverflowMenuKeys, #self));
  static Key itemFor(PersonOverflowAction action) =>
      ValueKey((PersonOverflowMenuKeys, #itemFor, action));
}
