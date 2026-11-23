import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class PersonFingerprintIdTile extends StatelessWidget {
  final PersonFingerprintId fingerprintId;
  final VoidCallback? onRemove;

  const PersonFingerprintIdTile({
    required this.fingerprintId,
    required this.onRemove,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final addedOn = DateFormat.yMd().format(fingerprintId.addedAt);

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: colorScheme.secondaryContainer,
        foregroundColor: colorScheme.onSecondaryContainer,
        child: const Icon(Symbols.fingerprint),
      ),
      title: Text(
        fingerprintId.employeeCode,
        key: PersonFingerprintIdTileKeys.employeeCodeFor(fingerprintId.id),
        style: TextTheme.of(context).titleMedium,
      ),
      subtitle: Text(
        'بواسطة ${fingerprintId.addedBy.name} • '
        '${Unicode.LRI}$addedOn${Unicode.PDI}',
        key: PersonFingerprintIdTileKeys.addedByAndDateFor(fingerprintId.id),
      ),
      trailing: IconButton(
        key: PersonFingerprintIdTileKeys.removeButtonFor(fingerprintId.id),
        tooltip: 'حذف الرقم',
        color: colorScheme.error,
        onPressed: onRemove,
        icon: const Icon(Symbols.delete),
      ),
    );
  }
}

abstract final class PersonFingerprintIdTileKeys extends WidgetKeys {
  static Key employeeCodeFor(String fingerprintId) =>
      ValueKey((PersonFingerprintIdTileKeys, #employeeCodeFor, fingerprintId));
  static Key addedByAndDateFor(String fingerprintId) => ValueKey(
    (PersonFingerprintIdTileKeys, #addedByAndDateFor, fingerprintId),
  );
  static Key removeButtonFor(String fingerprintId) =>
      ValueKey((PersonFingerprintIdTileKeys, #removeButtonFor, fingerprintId));
}
