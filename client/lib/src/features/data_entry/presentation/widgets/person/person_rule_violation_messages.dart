import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PersonRuleViolationMessages extends StatelessWidget {
  final ValueListenable<Set<PersonRuleViolation>> violations;
  final PersonRuleViolationSection section;

  const PersonRuleViolationMessages({
    required this.violations,
    required this.section,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final errorStyle = TextTheme.of(
      context,
    ).bodySmall?.copyWith(color: ColorScheme.of(context).error);

    return ValueListenableBuilder<Set<PersonRuleViolation>>(
      valueListenable: violations,
      builder: (context, shown, _) {
        final messages = shown.where((v) => v.section == section);
        if (messages.isEmpty) return const SizedBox.shrink();

        return Padding(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              for (final violation in messages)
                Text(violation.message, style: errorStyle),
            ],
          ),
        );
      },
    );
  }
}
