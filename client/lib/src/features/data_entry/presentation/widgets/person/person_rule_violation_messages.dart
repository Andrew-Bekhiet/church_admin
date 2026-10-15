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
      builder: (context, shown, _) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          for (final violation in shown.where((v) => v.section == section))
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 8),
              child: Text(violation.message, style: errorStyle),
            ),
        ],
      ),
    );
  }
}
