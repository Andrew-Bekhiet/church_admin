import 'package:flutter/material.dart';

class HomeModeSection extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final String text;
  final int? textMaxLines;
  const HomeModeSection({
    required this.onTap,
    required this.title,
    required this.text,
    this.textMaxLines,
    super.key,
  });

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
            maxLines: textMaxLines,
            overflow: textMaxLines != null ? TextOverflow.ellipsis : null,
            textAlign: TextAlign.center,
            style: themeData.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
