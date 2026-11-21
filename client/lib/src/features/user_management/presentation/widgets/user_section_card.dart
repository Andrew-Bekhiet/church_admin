import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class UserSectionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? helper;
  final Widget child;

  const UserSectionCard({
    required this.icon,
    required this.title,
    required this.child,
    this.helper,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title, style: TextTheme.of(context).titleMedium),
          subtitle: switch (helper) {
            final helper? => Text(helper, key: UserSectionCardKeys.helper),
            null => null,
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card.outlined(
            margin: EdgeInsets.zero,
            color: colorScheme.surfaceContainerLow,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: colorScheme.outlineVariant),
              borderRadius: BorderRadius.circular(16),
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}

abstract final class UserSectionCardKeys extends WidgetKeys {
  static const Key helper = ValueKey((UserSectionCardKeys, #helper));
}
