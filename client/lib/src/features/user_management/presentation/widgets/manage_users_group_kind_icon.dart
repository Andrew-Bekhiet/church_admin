import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ManageUsersGroupKindIcon extends StatelessWidget {
  static const _size = 36.0;

  final UserAdminGroupKind kind;

  const ManageUsersGroupKindIcon({required this.kind, super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final (icon, background, foreground) = switch (kind) {
      UserAdminGroupKind.superAdmins => (
        Symbols.shield_person,
        colors.primaryContainer,
        colors.onPrimaryContainer,
      ),
      UserAdminGroupKind.area => (
        Symbols.location_on,
        colors.tertiaryContainer,
        colors.onTertiaryContainer,
      ),
      UserAdminGroupKind.service => (
        Symbols.groups,
        colors.secondaryContainer,
        colors.onSecondaryContainer,
      ),
      UserAdminGroupKind.unscoped => (
        Symbols.person_off,
        colors.surfaceContainerHighest,
        colors.onSurfaceVariant,
      ),
    };

    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: SizedBox.square(
        dimension: _size,
        child: Icon(icon, size: 20, color: foreground),
      ),
    );
  }
}
