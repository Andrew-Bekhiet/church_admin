import 'package:flutter/material.dart';

class UserSectionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget child;

  const UserSectionCard({
    required this.icon,
    required this.title,
    required this.child,
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
