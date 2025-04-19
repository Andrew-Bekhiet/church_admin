import 'package:flutter/material.dart';

class HomeModeSection extends StatelessWidget {
  const HomeModeSection({
    required this.onTap,
    required this.title,
    required this.text,
    super.key,
  });

  final void Function() onTap;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Column(
        spacing: 6,
        mainAxisSize: MainAxisSize.min,
        children: [
          ColoredBox(
            color: themeData.colorScheme.primaryContainer,
            child: Center(
              child: Text(
                title,
                style: themeData.textTheme.headlineSmall?.copyWith(
                  color: themeData.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: themeData.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
